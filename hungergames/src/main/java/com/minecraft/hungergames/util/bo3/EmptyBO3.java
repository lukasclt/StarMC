

package com.minecraft.hungergames.util.bo3;

import org.bukkit.Location;

import java.util.Collections;
import java.util.Set;

public class EmptyBO3 extends BO3 {

    @Override
    public Set<BO3Block> getBlocks() {
        return Collections.emptySet();
    }

    @Override
    public void spawn(Location location, BlockHandle blockHandle) {
    }
}
