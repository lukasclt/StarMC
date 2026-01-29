

package com.minecraft.core.bukkit.util.language;

import com.minecraft.core.translation.Language;
import com.minecraft.core.translation.TranslationExecutor;
import com.minecraft.core.translation.TranslationInterface;
import org.bukkit.ChatColor;

public class BukkitTranslationExecutor extends TranslationExecutor {

    public BukkitTranslationExecutor(TranslationInterface dataTranslation) {
        super();
        addTranslation(dataTranslation);
    }

    @Override
    public String translate(Language language, String tag, Object... format) {
        return ChatColor.translateAlternateColorCodes('&', super.translate(language, tag, format));
    }
}