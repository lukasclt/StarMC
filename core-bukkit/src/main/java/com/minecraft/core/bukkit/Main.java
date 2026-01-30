package com.minecraft.core.bukkit;

import com.minecraft.core.bukkit.command.AccountCommand;
import org.bukkit.plugin.java.JavaPlugin;

public class Main extends JavaPlugin {

    @Override
    public void onEnable() {
        getCommand("acc").setExecutor(new AccountCommand());
    }

    @Override
    public void onDisable() {
        // Plugin shutdown logic
    }
}