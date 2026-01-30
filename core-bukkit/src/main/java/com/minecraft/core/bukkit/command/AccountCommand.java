package com.minecraft.core.bukkit.command;

import com.minecraft.core.bukkit.user.UserDataHandler;
import org.bukkit.command.Command;
import org.bukkit.command.CommandExecutor;
import org.bukkit.command.CommandSender;
import org.bukkit.entity.Player;

public class AccountCommand implements CommandExecutor {

    private final UserDataHandler userDataHandler;

    public AccountCommand() {
        this.userDataHandler = new UserDataHandler();
    }

    @Override
    public boolean onCommand(CommandSender sender, Command command, String label, String[] args) {
        if (!(sender instanceof Player)) {
            sender.sendMessage("Only players can use this command.");
            return true;
        }

        Player player = (Player) sender;

        if (args.length < 2) {
            player.sendMessage("Usage: /acc <rank> <medals>");
            return true;
        }

        String rank = args[0];
        int medals;

        try {
            medals = Integer.parseInt(args[1]);
        } catch (NumberFormatException e) {
            player.sendMessage("Medals must be a number.");
            return true;
        }

        userDataHandler.saveUserData(player.getName(), rank, medals);
        player.sendMessage("Your account has been updated: Rank = " + rank + ", Medals = " + medals);

        return true;
    }
}