

package com.minecraft.core.translation;

import java.text.MessageFormat;
import java.util.Map;

public interface TranslationInterface {

    Map<Language, Map<String, MessageFormat>> loadTranslations();

}