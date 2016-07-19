.class public Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;
.super Ljava/lang/Object;
.source "ContextualSearchTranslateController.java"


# instance fields
.field private mAcceptLanguages:Ljava/lang/String;

.field private final mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

.field private final mHost:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateInterface;

.field private final mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

.field private mTranslateServiceTargetLanguage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateInterface;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 35
    iput-object p2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    .line 36
    iput-object p3, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->mHost:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateInterface;

    .line 37
    return-void
.end method

.method private getAcceptLanguages()Ljava/util/List;
    .locals 5

    .prologue
    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 154
    invoke-static {}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->isAcceptLanguagesForTranslationDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->getNativeAcceptLanguages()Ljava/lang/String;

    move-result-object v0

    .line 156
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 157
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_0
    return-object v1
.end method

.method private getNativeAcceptLanguages()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->mAcceptLanguages:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->mHost:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateInterface;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateInterface;->getAcceptLanguages()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->mAcceptLanguages:Ljava/lang/String;

    .line 181
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->mAcceptLanguages:Ljava/lang/String;

    return-object v0
.end method

.method private getNativeTranslateServiceTargetLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->mTranslateServiceTargetLanguage:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->mHost:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateInterface;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateInterface;->getTranslateServiceTargetLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->mTranslateServiceTargetLanguage:Ljava/lang/String;

    .line 192
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->mTranslateServiceTargetLanguage:Ljava/lang/String;

    return-object v0
.end method

.method private getProficientLanguageList()Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->getProficientLanguages()Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private getProficientLanguages()Ljava/util/LinkedHashSet;
    .locals 3

    .prologue
    .line 133
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 135
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->getNativeTranslateServiceTargetLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->trimLocaleToLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-static {}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->isKeyboardLanguagesForTranslationDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_0

    .line 140
    invoke-static {v0}, Lorg/chromium/ui/UiUtils;->getIMELocales(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->trimLocaleToLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    :cond_0
    return-object v1
.end method

.method private getReadableLanguages()Ljava/util/List;
    .locals 4

    .prologue
    .line 106
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->getProficientLanguages()Ljava/util/LinkedHashSet;

    move-result-object v2

    .line 110
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->getAcceptLanguages()Ljava/util/List;

    move-result-object v3

    .line 111
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 112
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->trimLocaleToLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 114
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private trimLocaleToLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 171
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method cacheNativeTranslateData()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->isTranslationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->isForceTranslationOneboxDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->getNativeTranslateServiceTargetLanguage()Ljava/lang/String;

    .line 94
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->getNativeAcceptLanguages()Ljava/lang/String;

    goto :goto_0
.end method

.method forceAutoDetectTranslateUnlessDisabled(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;)V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->isTranslationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->isAutoDetectTranslationOneboxDisabled()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 75
    :goto_1
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 78
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->getProficientLanguageList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->bestTargetLanguage(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->forceAutoDetectTranslation(Ljava/lang/String;)V

    .line 83
    :cond_1
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->logTranslateOnebox(Z)V

    goto :goto_0

    .line 74
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method forceTranslateIfNeeded(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->isTranslationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->isForceTranslationOneboxDisabled()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->isServerControlledOneboxEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->getReadableLanguages()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->needsTranslation(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 55
    :goto_1
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 56
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->getProficientLanguageList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->bestTargetLanguage(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->forceTranslation(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_2
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->logTranslateOnebox(Z)V

    goto :goto_0

    .line 50
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
