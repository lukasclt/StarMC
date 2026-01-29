

package com.minecraft.pvp.util;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum Type {

    PRIMARY("kit"), SECONDARY("kit2");

    private final String command;

}
