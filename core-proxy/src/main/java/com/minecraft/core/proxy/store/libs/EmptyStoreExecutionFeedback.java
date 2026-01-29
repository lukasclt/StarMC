

package com.minecraft.core.proxy.store.libs;

import java.util.ArrayList;
import java.util.List;

public class EmptyStoreExecutionFeedback extends StoreExecutionFeedback {

    @Override
    public List<StoreHistoryData> getFeedback() {
        return new ArrayList<>();
    }

    @Override
    public List<StoreHistoryData> getExecuted() {
        return new ArrayList<>();
    }

    @Override
    public List<StoreHistoryData> getPendingCommands() {
        return new ArrayList<>();
    }

    @Override
    public boolean isEmpty() {
        return true;
    }
}
