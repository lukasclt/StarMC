package com.minecraft.core.proxy.command;

import com.minecraft.core.command.annotation.Command;
import com.minecraft.core.command.command.Context;
import com.minecraft.core.command.platform.Platform;
import com.minecraft.core.proxy.util.command.ProxyInterface;
import net.md_5.bungee.api.CommandSender;

public class PluginInfoCommand implements ProxyInterface {

    @Command(name = "plugins", aliases = {"bungee", "bunge", "version", "bungeversion", "proxyversion", "bver", "about", "info", "sobre"}, platform = Platform.BOTH)
    public void handleCommand(Context<CommandSender> context) {
        context.sendMessage("Plugins: §6BlazeServer");
    }
}
