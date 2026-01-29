

package com.minecraft.pvp.util;

import com.minecraft.pvp.PvP;
import org.bukkit.metadata.FixedMetadataValue;

public class GameMetadata extends FixedMetadataValue {

    public GameMetadata(Object value) {
        super(PvP.getPvP(), value);
    }

}