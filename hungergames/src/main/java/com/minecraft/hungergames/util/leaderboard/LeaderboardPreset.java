

package com.minecraft.hungergames.util.leaderboard;

import com.minecraft.core.bukkit.util.leaderboard.Leaderboard;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import org.bukkit.Location;

@AllArgsConstructor
@Getter
@Setter
public class LeaderboardPreset {

    private Location location;
    private Leaderboard leaderboard;
    private String displayName;

    public Location getLocation() {
        return location.clone();
    }
}
