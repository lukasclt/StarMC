

package com.minecraft.core.bukkit.util.variable;

import com.minecraft.core.bukkit.BukkitGame;
import com.minecraft.core.bukkit.util.variable.object.SimpleVariable;

public interface VariableStorage {

    default void loadVariables() {
        BukkitGame.getEngine().getVariableLoader().load(this);
    }

    default SimpleVariable getVariable(String name) {
        return BukkitGame.getEngine().getVariableLoader().getVariable(name);
    }

}
