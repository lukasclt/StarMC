

package com.minecraft.core.proxy.command;

import com.minecraft.core.Constants;
import com.minecraft.core.command.annotation.Command;
import com.minecraft.core.command.command.Context;
import com.minecraft.core.enums.Rank;
import com.minecraft.core.proxy.util.command.ProxyInterface;
import net.md_5.bungee.api.ChatColor;
import net.md_5.bungee.api.ProxyServer;
import net.md_5.bungee.api.chat.TextComponent;
import net.md_5.bungee.api.connection.ProxiedPlayer;

public class BroadcastCommand implements ProxyInterface {

    @Command(name = "broadcast", aliases = {"bc", "aviso", "anuncio"}, rank = Rank.PRIMARY_MOD, usage = "{label} <message>")
    public void handleCommand(Context<ProxiedPlayer> context, String[] strings) {
        String message = ChatColor.translateAlternateColorCodes('&', String.join(" ", strings));
        ProxyServer.getInstance().broadcast(TextComponent.fromLegacyText("§6§l" + Constants.SERVER_NAME.toUpperCase() + " §7» §r" + message));
    }
}