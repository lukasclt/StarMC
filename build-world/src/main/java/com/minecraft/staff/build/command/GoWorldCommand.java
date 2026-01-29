package com.minecraft.staff.build.command;

import com.minecraft.core.command.annotation.Command;
import com.minecraft.core.command.annotation.Completer;
import com.minecraft.core.command.command.Context;
import com.minecraft.core.bukkit.util.command.BukkitInterface;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import org.bukkit.Bukkit;
import org.bukkit.World;
import org.bukkit.WorldCreator;
import org.bukkit.command.CommandSender;
import org.bukkit.entity.Player;

import java.io.*;
import java.nio.file.*;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.*;
import java.util.stream.Collectors;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

public class GoWorldCommand implements BukkitInterface {

    private static final String MISC_PATH = System.getProperty("user.home") + File.separator + "StarMC" + File.separator + "misc";
    private static final String[] MINIGAMES = {"bedwars", "skywars", "thebridge", "duels", "tiogerson"};

    @Command(name = "goworld")
    public void handleCommand(Context<CommandSender> context, String minigame) {
        Player player = (Player) context.getSender();
        
        if (!Arrays.asList(MINIGAMES).contains(minigame.toLowerCase())) {
            player.sendMessage("§cMinigame inválido! Use: " + String.join(", ", MINIGAMES));
            return;
        }

        player.sendMessage("§aCarregando mundo do minigame: " + minigame);
        
        async(() -> {
            try {
                File metadataFile = new File(MISC_PATH, minigame.toLowerCase() + "_metadata.json");
                
                if (!metadataFile.exists()) {
                    player.sendMessage("§c✗ Nenhum mundo encontrado para: " + minigame);
                    return;
                }
                
                String metadataContent = new String(Files.readAllBytes(metadataFile.toPath()));
                JsonObject metadata = JsonParser.parseString(metadataContent).getAsJsonObject();
                
                String zipPath = metadata.get("zip_path").getAsString();
                String worldName = metadata.get("world_name").getAsString();
                
                File zipFile = new File(zipPath);
                if (!zipFile.exists()) {
                    player.sendMessage("§c✗ Arquivo ZIP não encontrado: " + zipPath);
                    return;
                }
                
                // Extrair mundo
                File worldsDir = new File(Bukkit.getWorldContainer().getAbsolutePath());
                File extractDir = new File(worldsDir, worldName + "_extracted");
                extractDir.mkdirs();
                
                unzipDirectory(zipFile, extractDir);
                
                // Carregar mundo
                WorldCreator creator = new WorldCreator(worldName + "_extracted");
                World world = Bukkit.createWorld(creator);
                
                if (world != null) {
                    player.teleport(world.getSpawnLocation());
                    player.sendMessage("§a✓ Mundo carregado com sucesso!");
                    player.sendMessage("§aVocê pode agora configurar o mapa.");
                } else {
                    player.sendMessage("§c✗ Erro ao carregar o mundo.");
                }
                
            } catch (Exception e) {
                player.sendMessage("§c✗ Erro ao extrair mundo: " + e.getMessage());
                e.printStackTrace();
            }
        });
    }

    @Completer(name = "goworld")
    public List<String> handleComplete(Context<CommandSender> context) {
        return Arrays.stream(MINIGAMES).collect(Collectors.toList());
    }

    private void unzipDirectory(File zipFile, File extractDir) throws IOException {
        try (ZipInputStream zis = new ZipInputStream(new FileInputStream(zipFile))) {
            ZipEntry entry;
            while ((entry = zis.getNextEntry()) != null) {
                File file = new File(extractDir, entry.getName());
                
                if (entry.isDirectory()) {
                    file.mkdirs();
                } else {
                    file.getParentFile().mkdirs();
                    try (FileOutputStream fos = new FileOutputStream(file)) {
                        byte[] buffer = new byte[1024];
                        int len;
                        while ((len = zis.read(buffer)) > 0) {
                            fos.write(buffer, 0, len);
                        }
                    }
                }
                zis.closeEntry();
            }
        }
    }
}
