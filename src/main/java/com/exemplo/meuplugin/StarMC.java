package com.exemplo.meuplugin;

import org.bukkit.plugin.java.JavaPlugin;

/**
 * Classe principal do plugin StarMC.
 */
public class StarMC extends JavaPlugin {

    @Override
    public void onEnable() {
        // Código executado quando o plugin é habilitado.
        getLogger().info("StarMC foi habilitado!");
    }

    @Override
    public void onDisable() {
        // Código executado quando o plugin é desabilitado.
        getLogger().info("StarMC foi desabilitado!");
    }
}
