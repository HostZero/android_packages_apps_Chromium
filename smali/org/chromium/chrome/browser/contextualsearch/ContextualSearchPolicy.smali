.class Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;
.super Ljava/lang/Object;
.source "ContextualSearchPolicy.java"


# static fields
.field private static final CONTAINS_WHITESPACE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mDecidedStateForTesting:Z

.field private mDidOverrideDecidedStateForTesting:Z

.field private mNetworkCommunicator:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchNetworkCommunicator;

.field private final mPreferenceManager:Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

.field private mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

.field private final mSelectionController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

.field private mTapLimitForDecided:Ljava/lang/Integer;

.field private mTapLimitForUndecided:Ljava/lang/Integer;

.field private mTapTriggeredPromoLimitForTesting:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "\\s"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->CONTAINS_WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchNetworkCommunicator;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mPreferenceManager:Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    .line 56
    iput-object p2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mSelectionController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    .line 57
    iput-object p3, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mNetworkCommunicator:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchNetworkCommunicator;

    .line 58
    return-void
.end method

.method private getPromoTapTriggeredLimit()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mTapTriggeredPromoLimitForTesting:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mTapTriggeredPromoLimitForTesting:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 94
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x32

    goto :goto_0
.end method

.method private getTapLimit()I
    .locals 1

    .prologue
    .line 537
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->isUserUndecided()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->getTapLimitForUndecided()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->getTapLimitForDecided()I

    move-result v0

    goto :goto_0
.end method

.method private getTapLimitForDecided()I
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mTapLimitForDecided:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mTapLimitForDecided:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 544
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x32

    goto :goto_0
.end method

.method private getTapLimitForUndecided()I
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mTapLimitForUndecided:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mTapLimitForUndecided:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 552
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x14

    goto :goto_0
.end method

.method private isBasePageHTTP(Ljava/net/URL;)Z
    .locals 2

    .prologue
    .line 523
    if-eqz p1, :cond_0

    const-string/jumbo v0, "http"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTapBeyondTheLimit()Z
    .locals 2

    .prologue
    .line 530
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->getTapCount()I

    move-result v0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->getTapLimit()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUserUndecided()Z
    .locals 1

    .prologue
    .line 513
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mDidOverrideDecidedStateForTesting:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mDecidedStateForTesting:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 515
    :goto_0
    return v0

    .line 513
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 515
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isContextualSearchUninitialized()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method bestTargetLanguage(Ljava/util/List;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 450
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->isEnglishTargetTranslationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 457
    :goto_0
    return-object v0

    .line 454
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 455
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 457
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method canSendSurroundings()Z
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->isUserUndecided()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 154
    :goto_0
    return v0

    .line 152
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->isPromoAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mNetworkCommunicator:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchNetworkCommunicator;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchNetworkCommunicator;->getBasePageUrl()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->isBasePageHTTP(Ljava/net/URL;)Z

    move-result v0

    goto :goto_0

    .line 154
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method getPromoOpenCount()I
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mPreferenceManager:Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getContextualSearchPromoOpenCount()I

    move-result v0

    return v0
.end method

.method getPromoTapCounter()Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mPreferenceManager:Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;->getInstance(Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;)Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;

    move-result-object v0

    return-object v0
.end method

.method getPromoTapsRemaining()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 78
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->isUserUndecided()Z

    move-result v1

    if-nez v1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->getPromoTapCounter()Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->getPromoTapTriggeredLimit()I

    move-result v2

    .line 84
    if-ltz v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;->getCount()I

    move-result v1

    sub-int v1, v2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method getTapCount()I
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mPreferenceManager:Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getContextualSearchTapCount()I

    move-result v0

    return v0
.end method

.method isAutoDetectTranslationOneboxDisabled()Z
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->isForceTranslationOneboxDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 482
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->isAutoDetectTranslationOneboxDisabled()Z

    move-result v0

    goto :goto_0
.end method

.method isContextualSearchJsApiEnabled()Z
    .locals 1

    .prologue
    .line 386
    invoke-static {}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->isQuickAnswersEnabled()Z

    move-result v0

    return v0
.end method

.method isForceTranslationOneboxDisabled()Z
    .locals 1

    .prologue
    .line 472
    invoke-static {}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->isForceTranslationOneboxDisabled()Z

    move-result v0

    return v0
.end method

.method isMandatoryPromoAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 161
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->isUserUndecided()Z

    move-result v1

    if-nez v1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v0

    .line 163
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->isMandatoryPromoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->getPromoOpenCount()I

    move-result v1

    invoke-static {}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->getMandatoryPromoLimit()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPeekPromoAvailable()Z
    .locals 1

    .prologue
    .line 180
    invoke-static {}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->isPeekPromoForced()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 185
    :goto_0
    return v0

    .line 183
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->isPeekPromoEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->isPeekPromoConditionSatisfied()Z

    move-result v0

    goto :goto_0
.end method

.method public isPeekPromoConditionSatisfied()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->getPromoOpenCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v0

    .line 198
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->isUserUndecided()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mSelectionController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->getSelectionType()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    move-result-object v1

    sget-object v2, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;->LONG_PRESS:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    if-ne v1, v2, :cond_0

    .line 204
    invoke-static {}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->getPeekPromoMaxShowCount()I

    move-result v1

    .line 205
    iget-object v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mPreferenceManager:Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getContextualSearchPeekPromoShowCount()I

    move-result v2

    .line 206
    if-ge v2, v1, :cond_0

    .line 209
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isPromoAvailable()Z
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->isUserUndecided()Z

    move-result v0

    return v0
.end method

.method isTapSupported()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 108
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->isUserUndecided()Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->getPromoTapsRemaining()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTranslationEnabled()Z
    .locals 1

    .prologue
    .line 465
    invoke-static {}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->isTranslationEnabled()Z

    move-result v0

    return v0
.end method

.method logCurrentState()V
    .locals 2

    .prologue
    .line 299
    invoke-static {}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->logPreferenceState()V

    .line 302
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->getPromoTapsRemaining()I

    move-result v0

    .line 303
    if-ltz v0, :cond_0

    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->logPromoTapsRemaining(I)V

    .line 308
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->getPromoTapCounter()Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;

    move-result-object v1

    .line 309
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 310
    :goto_0
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;->getCount()I

    move-result v1

    .line 311
    if-eqz v0, :cond_2

    .line 312
    invoke-static {v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->logPromoTapsBeforeFirstOpen(I)V

    .line 316
    :goto_1
    return-void

    .line 309
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 314
    :cond_2
    invoke-static {v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->logPromoTapsForNeverOpened(I)V

    goto :goto_1
.end method

.method public logPeekPromoMetrics(ZZ)V
    .locals 2

    .prologue
    .line 226
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->getPromoOpenCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 227
    :goto_0
    invoke-static {p1, p2, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->logPeekPromoOutcome(ZZZ)V

    .line 229
    if-eqz p1, :cond_0

    .line 230
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mPreferenceManager:Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getContextualSearchPeekPromoShowCount()I

    move-result v1

    .line 231
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->logPeekPromoShowCount(IZ)V

    .line 233
    :cond_0
    return-void

    .line 226
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method logSearchTermResolutionDetails(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 328
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->isUserUndecided()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mNetworkCommunicator:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchNetworkCommunicator;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchNetworkCommunicator;->getBasePageUrl()Ljava/net/URL;

    move-result-object v0

    .line 330
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->isBasePageHTTP(Ljava/net/URL;)Z

    move-result v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->logBasePageProtocol(Z)V

    .line 331
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->CONTAINS_WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 332
    :goto_0
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->logSearchTermResolvedWords(Z)V

    .line 334
    :cond_0
    return-void

    .line 331
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method maySendBasePageUrl()Z
    .locals 1

    .prologue
    .line 346
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->isUserUndecided()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method needsTranslation(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2

    .prologue
    .line 431
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 432
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    const/4 v0, 0x0

    .line 436
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method overrideDecidedStateForTesting(Z)V
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mDidOverrideDecidedStateForTesting:Z

    .line 400
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mDecidedStateForTesting:Z

    .line 401
    return-void
.end method

.method public registerPeekPromoSeen()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mPreferenceManager:Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getContextualSearchPeekPromoShowCount()I

    move-result v0

    .line 217
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mPreferenceManager:Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->setContextualSearchPeekPromoShowCount(I)V

    .line 218
    return-void
.end method

.method registerTap()V
    .locals 2

    .prologue
    .line 239
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->isPromoAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->getPromoTapCounter()Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;->increment()V

    .line 246
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mPreferenceManager:Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getContextualSearchTapCount()I

    move-result v0

    .line 247
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mPreferenceManager:Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->setContextualSearchTapCount(I)V

    .line 248
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->isUserUndecided()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->logTapsSinceOpenForUndecided(I)V

    .line 253
    :goto_0
    return-void

    .line 251
    :cond_1
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->logTapsSinceOpenForDecided(I)V

    goto :goto_0
.end method

.method public setContextualSearchPanel(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    .line 66
    return-void
.end method

.method public setNetworkCommunicator(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchNetworkCommunicator;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mNetworkCommunicator:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchNetworkCommunicator;

    .line 567
    return-void
.end method

.method setPromoTapTriggeredLimitForTesting(I)V
    .locals 1

    .prologue
    .line 490
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mTapTriggeredPromoLimitForTesting:Ljava/lang/Integer;

    .line 491
    return-void
.end method

.method setTapLimitForDecidedForTesting(I)V
    .locals 1

    .prologue
    .line 495
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mTapLimitForDecided:Ljava/lang/Integer;

    .line 496
    return-void
.end method

.method setTapLimitForUndecidedForTesting(I)V
    .locals 1

    .prologue
    .line 500
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mTapLimitForUndecided:Ljava/lang/Integer;

    .line 501
    return-void
.end method

.method shouldAnimateSearchProviderIcon()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 356
    iget-object v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 378
    :cond_0
    :goto_0
    return v0

    .line 360
    :cond_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mSelectionController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->getSelectionType()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    move-result-object v2

    .line 361
    sget-object v3, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;->TAP:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    if-ne v2, v3, :cond_2

    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 363
    iget-object v4, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mPreferenceManager:Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getContextualSearchLastAnimationTime()J

    move-result-wide v4

    .line 365
    sub-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 366
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mPreferenceManager:Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    invoke-virtual {v0, v2, v3}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->setContextualSearchLastAnimationTime(J)V

    move v0, v1

    .line 367
    goto :goto_0

    .line 371
    :cond_2
    sget-object v3, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;->LONG_PRESS:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    if-ne v2, v3, :cond_0

    .line 375
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->isUserUndecided()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->getPromoOpenCount()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method shouldCreateVerbatimRequest()Z
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mSelectionController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->getSelectionType()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mSelectionController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->getSelectedText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;->LONG_PRESS:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;->TAP:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->shouldPreviousTapResolve()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method shouldPrefetchSearchResult()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->isMandatoryPromoAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v0

    .line 119
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getNetworkPredictionEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->isTapBeyondTheLimit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mSelectionController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->getSelectionType()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    move-result-object v1

    sget-object v2, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;->TAP:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method shouldPreviousTapResolve()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->isMandatoryPromoAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->isSearchTermResolutionEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->isTapBeyondTheLimit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->isPromoAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mNetworkCommunicator:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchNetworkCommunicator;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchNetworkCommunicator;->getBasePageUrl()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->isBasePageHTTP(Ljava/net/URL;)Z

    move-result v0

    goto :goto_0

    .line 142
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method shouldShowErrorCodeInBar()Z
    .locals 1

    .prologue
    .line 292
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeVersionInfo;->isStableBuild()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/ChromeVersionInfo;->isBetaBuild()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateCountersForOpen()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mPreferenceManager:Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->setContextualSearchTapCount(I)V

    .line 265
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->isPromoAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->getPromoTapCounter()Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;->disable()V

    .line 269
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mPreferenceManager:Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getContextualSearchPromoOpenCount()I

    move-result v0

    .line 270
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->mPreferenceManager:Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->setContextualSearchPromoOpenCount(I)V

    .line 271
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->logPromoOpenCount(I)V

    .line 273
    :cond_0
    return-void
.end method
