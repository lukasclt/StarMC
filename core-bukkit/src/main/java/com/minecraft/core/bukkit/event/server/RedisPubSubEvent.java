

package com.minecraft.core.bukkit.event.server;

import com.minecraft.core.bukkit.event.handler.ServerEvent;
import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public class RedisPubSubEvent extends ServerEvent {

    private final String channel, message;

}