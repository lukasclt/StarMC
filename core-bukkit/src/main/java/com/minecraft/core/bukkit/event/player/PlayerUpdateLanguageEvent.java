

package com.minecraft.core.bukkit.event.player;

import com.minecraft.core.account.Account;
import com.minecraft.core.bukkit.event.handler.AccountEvent;
import com.minecraft.core.translation.Language;

public class PlayerUpdateLanguageEvent extends AccountEvent {

    private final Language language;

    public PlayerUpdateLanguageEvent(Account account, Language language) {
        super(account);
        this.language = language;
    }

    public Language getLanguage() {
        return language;
    }

}