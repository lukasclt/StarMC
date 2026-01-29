

package com.minecraft.core.proxy.util.command.command;

import com.minecraft.core.command.command.CommandHolder;
import com.minecraft.core.proxy.util.command.ProxyFrame;

import java.util.Optional;

public class ProxyChildCommand extends ProxyCommand {

    private final ProxyCommand parentCommand;

    public ProxyChildCommand(ProxyFrame frame, String name, ProxyCommand parentCommand) {
        super(frame, name, parentCommand.getPosition() + 1);
        this.parentCommand = parentCommand;
    }

    @Override
    public String getFancyName() {
        return parentCommand.getFancyName() + " " + getName();
    }

    public Optional<CommandHolder<?, ?>> getParentCommand() {
        return Optional.of(parentCommand);
    }
}
