

package com.minecraft.pvp.kit.list;

import com.minecraft.core.enums.Rank;
import com.minecraft.pvp.kit.Kit;
import com.minecraft.pvp.kit.KitCategory;
import com.minecraft.pvp.user.User;
import org.bukkit.Material;
import org.bukkit.inventory.ItemStack;

public class Nenhum extends Kit {

    public Nenhum() {
        setIcon(new ItemStack(Material.BARRIER));
        setCategory(KitCategory.NONE);
        setDefaultRank(Rank.MEMBER);
    }

    @Override
    public void resetAttributes(User user) {

    }

}