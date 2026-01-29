

package com.minecraft.hungergames.user.kits.pattern;

import lombok.AllArgsConstructor;
import lombok.Getter;

@AllArgsConstructor
@Getter
public enum CooldownType {

    COMBAT("Combate: ", true), DEFAULT("Kit ", true);

    private final String word;
    private final boolean display;
}