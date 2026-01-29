package com.minecraft.staff.build.command;

import com.minecraft.core.command.annotation.Command;
import com.minecraft.core.command.annotation.Completer;
import com.minecraft.core.command.command.Context;
import com.minecraft.core.bukkit.util.command.BukkitInterface;
import com.google.gson.JsonObject;
import org.bukkit.Bukkit;
import org.bukkit.World;
import org.bukkit.command.CommandSender;
import org.bukkit.entity.Player;

import java.io.*;
import java.nio.file.*;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.*;
import java.util.stream.Collectors;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public class ZipWorldCommand implements BukkitInterface {

    private static final String MISC_PATH = System.getProperty("user.home") + File.separator + "StarMC" + File.separator + "misc";
    private static final String[] MINIGAMES = {"bedwars", "skywars", "thebridge", "duels", "tiogerson"};

    @Command(name = "zipworld")
    public void handleCommand(Context<CommandSender> context, String minigame) {
        Player player = (Player) context.getSender();
        
        if (!Arrays.asList(MINIGAMES).contains(minigame.toLowerCase())) {
            player.sendMessage("§cMinigame inválido! Use: " + String.join(", ", MINIGAMES));
            return;
        }

        World world = player.getWorld();
        String worldName = world.getName();
        
        player.sendMessage("§aCompactando mundo: " + worldName);
        
        async(() -> {
            try {
                File worldFolder = world.getWorldFolder();
                File miscDir = new File(MISC_PATH, minigame.toLowerCase());
                miscDir.mkdirs();
                
                File zipFile = new File(miscDir, worldName + ".zip");
                
                zipDirectory(worldFolder, zipFile);
                
                // Salvar metadados no JSON
                saveWorldMetadata(minigame, worldName, zipFile);
                
                player.sendMessage("§a✓ Mundo compactado com sucesso!");
                player.sendMessage("§aArquivo: " + zipFile.getAbsolutePath());
                
            } catch (Exception e) {
                player.sendMessage("§c✗ Erro ao compactar mundo: " + e.getMessage());
                e.printStackTrace();
            }
        });
    }

    @Completer(name = "zipworld")
    public List<String> handleComplete(Context<CommandSender> context) {
        return Arrays.stream(MINIGAMES).collect(Collectors.toList());
    }

    private void zipDirectory(File sourceDir, File zipFile) throws IOException {
        try (ZipOutputStream zos = new ZipOutputStream(new FileOutputStream(zipFile))) {
            Files.walkFileTree(sourceDir.toPath(), new SimpleFileVisitor<Path>() {
                @Override
                public FileVisitResult visitFile(Path file, BasicFileAttributes attrs) throws IOException {
                    Path relativePath = sourceDir.toPath().relativize(file);
                    zos.putNextEntry(new ZipEntry(relativePath.toString()));
                    Files.copy(file, zos);
                    zos.closeEntry();
                    return FileVisitResult.CONTINUE;
                }
            });
        }
    }

    private void saveWorldMetadata(String minigame, String worldName, File zipFile) {
        try {
            File metadataFile = new File(MISC_PATH, minigame.toLowerCase() + "_metadata.json");
            JsonObject metadata = new JsonObject();
            
            metadata.addProperty("world_name", worldName);
            metadata.addProperty("minigame", minigame);
            metadata.addProperty("zip_path", zipFile.getAbsolutePath());
            metadata.addProperty("created_at", System.currentTimeMillis());
            metadata.addProperty("file_size", zipFile.length());
            
            Files.write(metadataFile.toPath(), metadata.toString().getBytes());
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
