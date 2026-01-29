/*
 * Copyright (C) Trydent, All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * Proprietary and confidential.
 */

 package com.minecraft.bedwars.commands;

 import com.minecraft.bedwars.room.Room;
 import com.minecraft.bedwars.user.User;
 import com.minecraft.core.bukkit.util.BukkitInterface;
 import com.minecraft.core.command.annotation.Command;
 import com.minecraft.core.command.command.Context;
 import com.minecraft.core.command.platform.Platform;
 import com.minecraft.core.enums.Rank;
 import net.md_5.bungee.api.chat.ClickEvent;
 import net.md_5.bungee.api.chat.HoverEvent;
 import net.md_5.bungee.api.chat.TextComponent;
 import org.bukkit.Location;
 import org.bukkit.Material;
 import org.bukkit.World;
 import org.bukkit.block.Block;
 import org.bukkit.entity.Player;
 import com.google.gson.Gson;
 import com.google.gson.JsonObject;
 
 import java.io.File;
 import java.io.FileWriter;
 import java.io.IOException;
 import java.util.Set;
 
 public class ConfigureCommand implements BukkitInterface {
 
     private String spawnPoint = "";
     private String bedPoint = "";
     private String shopPoint = "";
     private String upgradePoint = "";
     private String generatorPoint = "";
 
     @Command(name = "configureisland", platform = Platform.PLAYER, rank = Rank.DEVELOPER_ADMIN)
     public void configureIsland(Context<Player> context, String teamColor) {
         Player player = context.getSender();
 
         // Iniciar o processo de configuração
         player.sendMessage("§ePosicione-se onde deseja o ponto de spawn da ilha e digite §7/configurespawn");
     }
 
     @Command(name = "configurespawn", platform = Platform.PLAYER, rank = Rank.DEVELOPER_ADMIN)
     public void configureSpawn(Context<Player> context) {
         Player player = context.getSender();
         Location spawnLocation = player.getLocation();
 
         double x = spawnLocation.getX();
         double y = spawnLocation.getY();
         double z = spawnLocation.getZ();
         float yaw = spawnLocation.getYaw();
         float pitch = spawnLocation.getPitch();
 
         spawnPoint = x + ", " + y + ", " + z + ", " + yaw + ", " + pitch;
 
         player.sendMessage("§ePonto de spawn configurado! Agora, vá para o local onde deseja a cama e digite §7/configurebed");
     }
 
     @Command(name = "configurebed", platform = Platform.PLAYER, rank = Rank.DEVELOPER_ADMIN)
     public void configureBed(Context<Player> context) {
         Player player = context.getSender();
         Location bedLocation = player.getLocation();
 
         double x = bedLocation.getX();
         double y = bedLocation.getY();
         double z = bedLocation.getZ();
         float yaw = bedLocation.getYaw();
         float pitch = bedLocation.getPitch();
 
         bedPoint = x + ", " + y + ", " + z + ", " + yaw + ", " + pitch;
 
         player.sendMessage("§ePonto de cama configurado! Agora, vá para o local onde deseja a loja e digite §7/configureshop");
     }
 
     @Command(name = "configureshop", platform = Platform.PLAYER, rank = Rank.DEVELOPER_ADMIN)
     public void configureShop(Context<Player> context) {
         Player player = context.getSender();
         Location shopLocation = player.getLocation();
 
         double x = shopLocation.getX();
         double y = shopLocation.getY();
         double z = shopLocation.getZ();
         float yaw = shopLocation.getYaw();
         float pitch = shopLocation.getPitch();
 
         shopPoint = x + ", " + y + ", " + z + ", " + yaw + ", " + pitch;
 
         player.sendMessage("§ePonto de loja configurado! Agora, vá para o local onde deseja o upgrade e digite §7/configureupgrade");
     }
 
     @Command(name = "configureupgrade", platform = Platform.PLAYER, rank = Rank.DEVELOPER_ADMIN)
     public void configureUpgrade(Context<Player> context) {
         Player player = context.getSender();
         Location upgradeLocation = player.getLocation();
 
         double x = upgradeLocation.getX();
         double y = upgradeLocation.getY();
         double z = upgradeLocation.getZ();
         float yaw = upgradeLocation.getYaw();
         float pitch = upgradeLocation.getPitch();
 
         upgradePoint = x + ", " + y + ", " + z + ", " + yaw + ", " + pitch;
 
         player.sendMessage("§ePonto de upgrade configurado! Agora, vá para o local onde deseja o gerador e digite §7/configuregenerator");
     }
 
     @Command(name = "configuregenerator", platform = Platform.PLAYER, rank = Rank.DEVELOPER_ADMIN)
     public void configureGenerator(Context<Player> context) {
         Player player = context.getSender();
         Location generatorLocation = player.getLocation();
 
         double x = generatorLocation.getX();
         double y = generatorLocation.getY();
         double z = generatorLocation.getZ();
         float yaw = generatorLocation.getYaw();
         float pitch = generatorLocation.getPitch();
 
         generatorPoint = x + ", " + y + ", " + z + ", " + yaw + ", " + pitch;
 
         // Agora vamos gerar o arquivo islands.json com todas as configurações
         JsonObject islandsJson = new JsonObject();
         JsonObject islandData = new JsonObject();
 
         islandData.addProperty("size", 100); // Tamanho da ilha
         islandData.addProperty("height", 10); // Altura da ilha
         islandData.addProperty("spawnPoint", spawnPoint);
         islandData.addProperty("shopLocation", shopPoint);
         islandData.addProperty("upgradeLocation", upgradePoint);
         islandData.addProperty("bedLocation", bedPoint);
         islandData.addProperty("generatorLocation", generatorPoint);
 
         islandsJson.add("islands", new JsonObject());
         islandsJson.getAsJsonObject("islands").add(player.getName(), islandData); // Usar nome do jogador ou time como chave
 
         // Verificar se o diretório 'maps' existe, caso contrário, criá-lo
         File mapsDir = new File("maps");
         if (!mapsDir.exists()) {
             mapsDir.mkdir();
         }
 
         // Salvar o arquivo islands.json
         try (FileWriter writer = new FileWriter(new File("maps", "islands.json"))) {
             new Gson().toJson(islandsJson, writer);
             player.sendMessage("§aIlha para o time " + player.getName() + " criada e salva com sucesso!");
         } catch (IOException e) {
             e.printStackTrace();
             player.sendMessage("§cErro ao salvar a configuração da ilha!");
         }
     }
 
     @Command(name = "getblock", platform = Platform.PLAYER, rank = Rank.DEVELOPER_ADMIN)
     public void getblock(Context<Player> context) {
         Player player = context.getSender();
         Location location = player.getLocation();
 
         World world = location.getWorld();
 
         int maxDistance = 100;
         Block targetBlock = player.getTargetBlock((Set<Material>) null, maxDistance);
 
         if (targetBlock != null) {
             Location blockLocation = targetBlock.getLocation();
             double x = blockLocation.getX();
             double y = blockLocation.getY();
             double z = blockLocation.getBlockZ();
 
             float yaw = Math.round(location.getYaw());
 
             String loc = "" + world.getName() + ", " + x + ", " + y + ", " + z + ", " + yaw + ", 0";
 
             TextComponent textComponent = new TextComponent("§ePara copiar a localização do bloco, clique ");
             TextComponent textComponent2 = createTextComponent("§b§lAQUI", HoverEvent.Action.SHOW_TEXT, "§7Clique para copiar.", ClickEvent.Action.SUGGEST_COMMAND, loc);
 
             player.spigot().sendMessage(textComponent, textComponent2);
         }
     }
 
     @Command(name = "minplayers", platform = Platform.PLAYER, rank = Rank.DEVELOPER_ADMIN)
     public void minplayers(Context<Player> context, int value) {
         Player player = context.getSender();
         User user = User.fetch(player.getUniqueId());
 
         Room room = user.getRoom();
 
         if (room == null) return;
 
         room.setMinPlayers(value);
         player.sendMessage("§c* §eValor de 'minplayers' alterado para §f" + value);
     }
 
     @Command(name = "start", platform = Platform.PLAYER, rank = Rank.DEVELOPER_ADMIN)
     public void start(Context<Player> context) {
         Player player = context.getSender();
         User user = User.fetch(player.getUniqueId());
 
         Room room = user.getRoom();
 
         if (room == null) return;
 
         room.setMinPlayers(room.getWorld().getPlayers().size());
     }
 
     @Command(name = "shop", platform = Platform.PLAYER, rank = Rank.DEVELOPER_ADMIN)
     public void shop(Context<Player> context) {
         Player player = context.getSender();
         User user = User.fetch(player.getUniqueId());
 
         Room room = user.getRoom();
 
         if (room == null) return;
 
         // new Shop(player, user.getAccount(), ShopCategory.SHOP).openInventory();
     }
 }
 