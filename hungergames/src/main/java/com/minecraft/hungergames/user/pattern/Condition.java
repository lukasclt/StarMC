

package com.minecraft.hungergames.user.pattern;

import lombok.AllArgsConstructor;

@AllArgsConstructor
public enum Condition {

    LOADING("Carregando"), DEAD("Morto"), ALIVE("Vivo"), SPECTATOR("Espectador");

    private final String fancyName;

    @Override
    public String toString() {
        return fancyName;
    }
}
