.class public Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;
.super Ljava/lang/Object;
.source "ContextualSearchFieldTrial.java"


# static fields
.field static final DISABLE_AUTO_DETECT_TRANSLATION_ONEBOX:Ljava/lang/String; = "disable_auto_detect_translation_onebox"

.field static final DISABLE_FORCE_TRANSLATION_ONEBOX:Ljava/lang/String; = "disable_force_translation_onebox"

.field static final ENABLE_SERVER_CONTROLLED_ONEBOX:Ljava/lang/String; = "enable_server_controlled_onebox"

.field static final ENABLE_TRANSLATION:Ljava/lang/String; = "enable_translation"

.field static final MANDATORY_PROMO_DEFAULT_LIMIT:I = 0xa

.field static final MANDATORY_PROMO_ENABLED:Ljava/lang/String; = "mandatory_promo_enabled"

.field static final MANDATORY_PROMO_LIMIT:Ljava/lang/String; = "mandatory_promo_limit"

.field static final PEEK_PROMO_ENABLED:Ljava/lang/String; = "peek_promo_enabled"

.field private static sDisableSearchTermResolution:Ljava/lang/Boolean;

.field private static sEnabled:Ljava/lang/Boolean;

.field private static sIsAcceptLanguagesForTranslationDisabled:Ljava/lang/Boolean;

.field private static sIsAutoDetectTranslationOneboxDisabled:Ljava/lang/Boolean;

.field private static sIsEnglishTargetTranslationEnabled:Ljava/lang/Boolean;

.field private static sIsForceTranslationOneboxDisabled:Ljava/lang/Boolean;

.field private static sIsKeyboardLanguagesForTranslationDisabled:Ljava/lang/Boolean;

.field private static sIsMandatoryPromoEnabled:Ljava/lang/Boolean;

.field private static sIsPeekPromoEnabled:Ljava/lang/Boolean;

.field private static sIsQuickAnswersEnabled:Ljava/lang/Boolean;

.field private static sIsServerControlledOneboxEnabled:Ljava/lang/Boolean;

.field private static sIsTranslationEnabled:Ljava/lang/Boolean;

.field private static sMandatoryPromoLimit:Ljava/lang/Integer;

.field private static sPeekPromoMaxCount:Ljava/lang/Integer;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static areExtraSearchBarAnimationsDisabled()Z
    .locals 1

    .prologue
    .line 191
    const-string/jumbo v0, "disable_extra_search_bar_animations"

    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static detectEnabled(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 102
    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 110
    :cond_1
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v2

    const-string/jumbo v3, "enable-contextual-search-for-testing"

    invoke-virtual {v2, v3}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 112
    goto :goto_0

    .line 116
    :cond_2
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v2

    const-string/jumbo v3, "disable-contextual-search"

    invoke-virtual {v2, v3}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v2

    const-string/jumbo v3, "enable-contextual-search"

    invoke-virtual {v2, v3}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 122
    goto :goto_0

    .line 126
    :cond_3
    const-string/jumbo v2, "disabled"

    invoke-static {v2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->getBooleanParam(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 130
    goto :goto_0
.end method

.method private static getBooleanParam(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 309
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    const/4 v0, 0x1

    .line 312
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ContextualSearch"

    invoke-static {v1, p0}, Lorg/chromium/components/variations/VariationsAssociatedData;->getVariationParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method private static getIntParamValueOrDefault(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 324
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/base/CommandLine;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    const-string/jumbo v0, "ContextualSearch"

    invoke-static {v0, p0}, Lorg/chromium/components/variations/VariationsAssociatedData;->getVariationParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 330
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 336
    :cond_1
    :goto_0
    return p1

    .line 332
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static getMandatoryPromoLimit()I
    .locals 2

    .prologue
    .line 162
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sMandatoryPromoLimit:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 163
    const-string/jumbo v0, "mandatory_promo_limit"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->getIntParamValueOrDefault(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sMandatoryPromoLimit:Ljava/lang/Integer;

    .line 167
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sMandatoryPromoLimit:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static getPeekPromoMaxShowCount()I
    .locals 2

    .prologue
    .line 205
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sPeekPromoMaxCount:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 206
    const-string/jumbo v0, "peek_promo_max_show_count"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->getIntParamValueOrDefault(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sPeekPromoMaxCount:Ljava/lang/Integer;

    .line 210
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sPeekPromoMaxCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static isAcceptLanguagesForTranslationDisabled()Z
    .locals 1

    .prologue
    .line 249
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sIsAcceptLanguagesForTranslationDisabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 250
    const-string/jumbo v0, "disable_accept_languages_for_translation"

    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sIsAcceptLanguagesForTranslationDisabled:Ljava/lang/Boolean;

    .line 253
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sIsAcceptLanguagesForTranslationDisabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static isAutoDetectTranslationOneboxDisabled()Z
    .locals 1

    .prologue
    .line 238
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sIsAutoDetectTranslationOneboxDisabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 239
    const-string/jumbo v0, "disable_auto_detect_translation_onebox"

    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sIsAutoDetectTranslationOneboxDisabled:Ljava/lang/Boolean;

    .line 242
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sIsAutoDetectTranslationOneboxDisabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static isDigitBlacklistEnabled()Z
    .locals 1

    .prologue
    .line 198
    const-string/jumbo v0, "enable_digit_blacklist"

    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 96
    invoke-static {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->detectEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sEnabled:Ljava/lang/Boolean;

    .line 98
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static isEnglishTargetTranslationEnabled()Z
    .locals 1

    .prologue
    .line 271
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sIsEnglishTargetTranslationEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 272
    const-string/jumbo v0, "enable_english_target_translation"

    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sIsEnglishTargetTranslationEnabled:Ljava/lang/Boolean;

    .line 274
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sIsEnglishTargetTranslationEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static isForceTranslationOneboxDisabled()Z
    .locals 1

    .prologue
    .line 227
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sIsForceTranslationOneboxDisabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 228
    const-string/jumbo v0, "disable_force_translation_onebox"

    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sIsForceTranslationOneboxDisabled:Ljava/lang/Boolean;

    .line 230
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sIsForceTranslationOneboxDisabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static isKeyboardLanguagesForTranslationDisabled()Z
    .locals 1

    .prologue
    .line 260
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sIsKeyboardLanguagesForTranslationDisabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 261
    const-string/jumbo v0, "disable_keyboard_languages_for_translation"

    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sIsKeyboardLanguagesForTranslationDisabled:Ljava/lang/Boolean;

    .line 264
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sIsKeyboardLanguagesForTranslationDisabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static isMandatoryPromoEnabled()Z
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sIsMandatoryPromoEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 153
    const-string/jumbo v0, "mandatory_promo_enabled"

    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sIsMandatoryPromoEnabled:Ljava/lang/Boolean;

    .line 155
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sIsMandatoryPromoEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static isPeekPromoEnabled()Z
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sIsPeekPromoEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 182
    const-string/jumbo v0, "peek_promo_enabled"

    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sIsPeekPromoEnabled:Ljava/lang/Boolean;

    .line 184
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sIsPeekPromoEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static isPeekPromoForced()Z
    .locals 2

    .prologue
    .line 174
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string/jumbo v1, "peek_promo_forced"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isQuickAnswersEnabled()Z
    .locals 1

    .prologue
    .line 291
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sIsQuickAnswersEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 292
    const-string/jumbo v0, "enable_quick_answers"

    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sIsQuickAnswersEnabled:Ljava/lang/Boolean;

    .line 294
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sIsQuickAnswersEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static isSearchTermResolutionEnabled()Z
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sDisableSearchTermResolution:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 138
    const-string/jumbo v0, "disable_search_term_resolution"

    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sDisableSearchTermResolution:Ljava/lang/Boolean;

    .line 141
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sDisableSearchTermResolution:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    const/4 v0, 0x0

    .line 145
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static isServerControlledOneboxEnabled()Z
    .locals 1

    .prologue
    .line 281
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sIsServerControlledOneboxEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 282
    const-string/jumbo v0, "enable_server_controlled_onebox"

    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sIsServerControlledOneboxEnabled:Ljava/lang/Boolean;

    .line 284
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sIsServerControlledOneboxEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static isTranslationEnabled()Z
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sIsTranslationEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 218
    const-string/jumbo v0, "enable_translation"

    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sIsTranslationEnabled:Ljava/lang/Boolean;

    .line 220
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->sIsTranslationEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
