

package com.minecraft.core.bukkit.server;

import lombok.AllArgsConstructor;
import net.minecraft.server.v1_8_R3.MinecraftServer;

@AllArgsConstructor
public class BukkitServerInformationThread extends Thread {

    private final BukkitServerStorage serverStorage;

    public void run() {
        while (MinecraftServer.getServer().isRunning()) {
            try {
                serverStorage.send();
                Thread.sleep(1000);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
