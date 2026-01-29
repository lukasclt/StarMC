package com.minecraft.core.proxy.util.chat;

import com.minecraft.core.Constants;
import lombok.AllArgsConstructor;
import lombok.Getter;

@AllArgsConstructor
@Getter
public enum Broadcast {

    LANG("§eAltere seu idioma principal usando §6/idioma", "§eChange your primary language using §6/language"),
    TWITTER("§eAcompanhe novidades em nossas redes sociais §6@BlazeMC", "§eFollow in social §6@BlazeMC"),
    STATS("§eAcompanhe suas estatísticas usando §6/stats", "§eTrack your statistics using §6/stats"),
    DISCORD("§eVenha fazer parte de nossa comunidade! Acesse nosso discord: §6" + Constants.SERVER_DISCORD, "§eBe part of our community! Access our discord: §6" + Constants.SERVER_DISCORD),
    PREFERENCE("§eAltere sua experiência de jogo usando §6/preferencias", "§eChange your gaming experience using §6/preferences"),
    BETA("§eAdquira o exclusivo rank §1Beta §eem nossa loja §6" + Constants.SERVER_STORE, "§eBuy the exclusive rank §1Beta §ein our shop §6" + Constants.SERVER_STORE);

    private final String portuguese, english;

    public static Broadcast getRandomBroadcast() {
        return values()[Constants.RANDOM.nextInt(values().length)];
    }

}