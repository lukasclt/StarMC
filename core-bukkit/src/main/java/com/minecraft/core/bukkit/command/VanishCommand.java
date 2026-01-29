package com.minecraft.core.bukkit.command;

import com.minecraft.core.bukkit.util.BukkitInterface;
import com.minecraft.core.bukkit.util.vanish.Vanish;
import com.minecraft.core.command.annotation.Command;
import com.minecraft.core.command.annotation.Completer;
import com.minecraft.core.command.command.Context;
import com.minecraft.core.command.platform.Platform;
import com.minecraft.core.enums.Rank;
import org.bukkit.entity.Player;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;

public class VanishCommand implements BukkitInterface {

    Vanish vanish = Vanish.getInstance();

    // Armazenando a visibilidade forçada
    private static Set<UUID> forcedVisibility = new HashSet<>();

    @Command(name = "vanish", aliases = {"v"}, platform = Platform.PLAYER, rank = Rank.PARTNER_PLUS)
    public void handleCommand(Context<Player> context) {
        if (context.argsCount() == 0) {
            boolean vanished = vanish.isVanished(context.getUniqueId());
            if (vanished) {
                vanish.setVanished(context.getSender(), null, false);
                forcedVisibility.remove(context.getUniqueId()); // Remove a visibilidade forçada
            } else {
                vanish.setVanished(context.getSender(), context.getAccount().getRank(), false);
            }
            log(context.getAccount(), context.getAccount().getDisplayName() + (!vanished ? " entrou no modo vanish" : " saiu do modo vanish"));
        } else {
            if (context.getArg(0).equalsIgnoreCase("v") || context.getArg(0).equalsIgnoreCase("visible")) {
                forcedVisibility.add(context.getUniqueId()); // Marca o jogador como visível
                context.getSender().performCommand("visible");
                log(context.getAccount(), context.getAccount().getDisplayName() + " entrou no modo visível.");
            }
        }
    }

    @Command(name = "visible", platform = Platform.PLAYER, rank = Rank.PARTNER_PLUS)
    public void handleCommandVisible(Context<Player> context) {
        if (!vanish.visible(context.getUniqueId())) {
            vanish.setVanished(context.getSender(), Rank.MEMBER, false);
            forcedVisibility.add(context.getUniqueId()); // Marca o jogador como visível
            log(context.getAccount(), context.getAccount().getDisplayName() + " agora está visível.");
        } else {
            vanish.setVanished(context.getSender(), context.getAccount().getRank(), false);
            forcedVisibility.remove(context.getUniqueId()); // Remove a visibilidade forçada
            log(context.getAccount(), context.getAccount().getDisplayName() + " saiu do modo visível.");
        }
    }

    // Método para verificar se o jogador está visível
    public static boolean isVisible(UUID uniqueId) {
        return forcedVisibility.contains(uniqueId) || !Vanish.getInstance().isVanished(uniqueId);
    }

    // Log para registrar as ações
    private void log(Object account, String message) {
        // Aqui você pode substituir pelo método real de log que sua aplicação utiliza.
        System.out.println(message);
    }

    @Completer(name = "vanish")
    public List<String> handleComplete(Context<Player> context) {
        ArrayList<String> list = new ArrayList<>();
        if (context.argsCount() == 1) {
            list.add("v");
            list.add("visible");
            return list;
        }
        return Collections.emptyList();
    }

    @Completer(name = "vanishlevel")
    public List<String> handleVanishLevelComplete(Context<Player> context) {
        ArrayList<String> list = new ArrayList<>();
        for (Rank.Category cat : Rank.Category.values()) {
            if (context.getAccount().getRank().getCategory().getImportance() >= cat.getImportance()) {
                list.add(cat.name().toLowerCase());
            }
        }
        return list;
    }
}
