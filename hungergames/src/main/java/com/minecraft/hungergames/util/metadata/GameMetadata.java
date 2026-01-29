

package com.minecraft.hungergames.util.metadata;

import com.minecraft.hungergames.HungerGames;
import org.bukkit.metadata.FixedMetadataValue;

public class GameMetadata extends FixedMetadataValue {

    public GameMetadata(Object value) {
        super(HungerGames.getInstance(), value);
    }
}
