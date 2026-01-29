

package com.minecraft.lobby.hall;

import com.minecraft.core.bukkit.util.reflection.ClassHandler;
import com.minecraft.lobby.Lobby;
import lombok.Getter;

import java.util.List;

public class HallStorage {

    @Getter
    private static final List<Class<?>> halls = ClassHandler.getClassesForPackage(Lobby.getLobby(), "com.minecraft.lobby.hall.types");

    public static Class<?> getHall(String name) {
        return halls.stream().filter(c -> c.getSimpleName().equalsIgnoreCase(name)).findFirst().orElse(null);
    }

}