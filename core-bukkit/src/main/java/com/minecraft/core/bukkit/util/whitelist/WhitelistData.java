

package com.minecraft.core.bukkit.util.whitelist;

import lombok.AllArgsConstructor;
import lombok.Getter;

import java.util.UUID;

@Getter
@AllArgsConstructor
public class WhitelistData {

    private String name;
    private UUID uniqueId;
    private long addedAt;

}