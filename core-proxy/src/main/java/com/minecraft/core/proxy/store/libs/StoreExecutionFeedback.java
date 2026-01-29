

package com.minecraft.core.proxy.store.libs;

import lombok.Getter;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Getter
public class StoreExecutionFeedback {

    private final List<StoreHistoryData> feedback = new ArrayList<>();

    public List<StoreHistoryData> getExecuted() {
        return feedback.stream().filter(StoreHistoryData::isExecuted).collect(Collectors.toList());
    }

    public List<StoreHistoryData> getPendingCommands() {
        return feedback.stream().filter(c -> !c.isExecuted()).collect(Collectors.toList());
    }

    public boolean isEmpty() {
        return feedback.isEmpty();
    }
}
