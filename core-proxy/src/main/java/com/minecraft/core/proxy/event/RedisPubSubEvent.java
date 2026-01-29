

package com.minecraft.core.proxy.event;

import lombok.AllArgsConstructor;
import lombok.Getter;
import net.md_5.bungee.api.plugin.Event;

@Getter
@AllArgsConstructor
public class RedisPubSubEvent extends Event {

    private final String channel, message;

}