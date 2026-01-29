

package com.minecraft.hungergames.event.game;

import com.minecraft.core.bukkit.event.handler.ServerEvent;
import com.minecraft.hungergames.game.Game;
import lombok.AllArgsConstructor;
import lombok.Getter;

@AllArgsConstructor
@Getter
public class GameRecoveryModeToggleEvent extends ServerEvent {

    private Game game;

}
