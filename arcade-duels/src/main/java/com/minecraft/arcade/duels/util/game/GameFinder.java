

package com.minecraft.arcade.duels.util.game;

import com.minecraft.arcade.duels.Duels;
import com.minecraft.core.bukkit.util.reflection.ClassHandler;

import java.util.List;

public class GameFinder {

    private static final List<Class<?>> games = ClassHandler.getClassesForPackage(Duels.getInstance(), "com.minecraft.arcade.duels.game.list");

    public static Class<?> find(String name) {
        return games.stream().filter(c -> c.getSimpleName().equalsIgnoreCase(name)).findFirst().orElse(null);
    }

}