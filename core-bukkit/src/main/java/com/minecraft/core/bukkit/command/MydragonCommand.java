package com.minecraft.core.bukkit.command;

import com.minecraft.core.account.Account;
import com.minecraft.core.bukkit.BukkitGame;
import com.minecraft.core.bukkit.util.BukkitInterface;
import com.minecraft.core.bukkit.util.disguise.UndeadDisguise;
import com.minecraft.core.command.annotation.Command;
import com.minecraft.core.command.annotation.Optional;
import com.minecraft.core.command.command.Context;
import com.minecraft.core.command.platform.Platform;
import com.minecraft.core.enums.Rank;
import net.minecraft.server.v1_8_R3.EntityEnderDragon;
import org.bukkit.craftbukkit.v1_8_R3.entity.CraftEnderDragon;
import org.bukkit.entity.EnderDragon;
import org.bukkit.entity.EnderDragonPart;
import org.bukkit.entity.Entity;
import org.bukkit.entity.Player;
import org.bukkit.event.EventHandler;
import org.bukkit.event.Listener;
import org.bukkit.event.entity.EntityDamageByEntityEvent;
import org.bukkit.event.entity.EntityExplodeEvent;
import org.bukkit.event.player.PlayerMoveEvent;
import org.bukkit.event.player.PlayerToggleFlightEvent;
import org.bukkit.metadata.FixedMetadataValue;
import org.bukkit.scheduler.BukkitRunnable;
import org.bukkit.util.Vector;

import java.util.HashMap;

public class MydragonCommand implements BukkitInterface, Listener {

    private final HashMap<Player, Boolean> playerDragonMovementStatus = new HashMap<>(); // Armazena o estado de movimento do dragão

    @Command(name = "mydragon", platform = Platform.PLAYER, rank = Rank.ADMINISTRATOR)
    public void handleCommand(Context<Player> context, @Optional(def = "§d§lDragao") String[] name) {
        Player player = context.getSender();

        Account account = context.getAccount();
        boolean mounted = account.getProperty("dragon.mounted", false).getAsBoolean();

        if (mounted) {
            context.info("command.mydragon.already_in_a_dragon");
            return;
        }

        account.setProperty("dragon.mounted", true);

        EnderDragon entity = player.getWorld().spawn(player.getLocation(), EnderDragon.class);
        entity.setCustomNameVisible(false);
        entity.setMetadata("MyDragon", new FixedMetadataValue(BukkitGame.getEngine(), true));
        entity.setCustomName(String.join(" ", name).replace("&", "§"));
        entity.setPassenger(player);

        context.sendMessage("§aSHEEEESH!");

        // Definindo o estado do movimento como verdadeiro (inicia movendo o dragão)
        playerDragonMovementStatus.put(player, true);

        new BukkitRunnable() {
            public void run() {
                if (entity.getPassenger() == null) {
                    entity.remove();
                    account.setProperty("dragon.mounted", false); // Marca como não montado
                    cancel();
                    return;
                }

                if (!player.isOnline()) {
                    entity.remove();
                    account.setProperty("dragon.mounted", false); // Marca como não montado
                    cancel();
                    return;
                }

                if (playerDragonMovementStatus.getOrDefault(player, true)) {
                    Vector vector = player.getLocation().toVector();

                    double rotX = player.getLocation().getYaw();
                    double rotY = player.getLocation().getPitch();

                    vector.setY(-Math.sin(Math.toRadians(rotY)));

                    double h = Math.cos(Math.toRadians(rotY));

                    vector.setX(-h * Math.sin(Math.toRadians(rotX)));
                    vector.setZ(h * Math.cos(Math.toRadians(rotX)));

                    EntityEnderDragon ec = ((CraftEnderDragon) entity).getHandle();

                    ec.hurtTicks = -1;

                    ec.getBukkitEntity().setVelocity(vector);

                    ec.pitch = player.getLocation().getPitch();
                    ec.yaw = player.getLocation().getYaw() - 180;
                }
            }
        }.runTaskTimerAsynchronously(BukkitGame.getEngine(), 0, 1);
    }

    @Command(name = "dragonmyself", platform = Platform.PLAYER, rank = Rank.ADMINISTRATOR)
    public void handleOtherCommand(Context<Player> context) {
        UndeadDisguise dis = new UndeadDisguise(UndeadDisguise.DisguiseType.ENDER_DRAGON, context.getSender());
        dis.disguiseToAll();

        context.sendMessage("§dDragão invocado com sucesso!");
    }

    @EventHandler
    public void stopDragonDamage(EntityExplodeEvent event) {
        Entity e = event.getEntity();
        if (e instanceof EnderDragonPart)
            e = ((EnderDragonPart) e).getParent();
        if (e instanceof EnderDragon && e.hasMetadata("MyDragon"))
            event.setCancelled(true);
    }

    @EventHandler
    public void onEntityDamage(EntityDamageByEntityEvent event) {
        Entity e = event.getDamager();
        if (e instanceof EnderDragonPart)
            e = ((EnderDragonPart) e).getParent();
        if (e instanceof EnderDragon && e.hasMetadata("MyDragon"))
            event.setCancelled(true);
    }

    @EventHandler
    public void onPlayerMove(PlayerMoveEvent event) {
        Player player = event.getPlayer();

        // Detecta se o jogador está no ar e pressionou a tecla de pulo (espaço)
        if (player.isFlying() || player.getLocation().getY() != event.getTo().getY()) {
            // Se o jogador está no ar (pressionou a tecla de pulo), pausa o movimento do dragão e o deixa imóvel
            playerDragonMovementStatus.put(player, false);

            // Impede que o dragão se mova
            EnderDragon dragon = (EnderDragon) player.getPassenger();
            if (dragon != null) {
                dragon.setVelocity(new Vector(0, 0, 0)); // Dragão completamente imóvel
            }
        } else {
            // Quando o jogador volta ao chão, retoma o movimento do dragão
            playerDragonMovementStatus.put(player, true);
        }
    }

    @EventHandler
    public void onPlayerToggleFlight(PlayerToggleFlightEvent event) {
        Player player = event.getPlayer();

        // Detecta quando o jogador sai do dragão (pressionando Shift para agachar ou pular)
        if (!player.isFlying() && player.getPassenger() instanceof EnderDragon) {
            EnderDragon dragon = (EnderDragon) player.getPassenger();
            dragon.remove(); // Remove o dragão
            playerDragonMovementStatus.put(player, false); // Pausa o movimento do dragão
        }
    }
}
