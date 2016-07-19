.class public Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider;
.super Ljava/lang/Object;
.source "VoiceSuggestionProvider.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mConfidenceThresholdHideAlts:F

.field private final mConfidenceThresholdShow:F

.field private final mResults:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider;->mResults:Ljava/util/List;

    .line 35
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider;->mConfidenceThresholdShow:F

    .line 36
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider;->mConfidenceThresholdHideAlts:F

    .line 37
    return-void
.end method

.method protected constructor <init>(FF)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider;->mResults:Ljava/util/List;

    .line 51
    iput p1, p0, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider;->mConfidenceThresholdShow:F

    .line 52
    iput p2, p0, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider;->mConfidenceThresholdHideAlts:F

    .line 53
    return-void
.end method

.method private addVoiceResultToOmniboxSuggestions(Ljava/util/List;Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider$VoiceResult;F)V
    .locals 16

    .prologue
    .line 140
    invoke-direct/range {p0 .. p2}, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider;->doesVoiceResultHaveMatch(Ljava/util/List;Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider$VoiceResult;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider$VoiceResult;->getConfidence()F

    move-result v1

    cmpg-float v1, v1, p3

    if-gez v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider$VoiceResult;->getConfidence()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 142
    :cond_2
    invoke-static {}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider$VoiceResult;->getMatch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getUrlForVoiceSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 144
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 145
    new-instance v1, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion$MatchClassification;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion$MatchClassification;-><init>(II)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v1, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    const/16 v2, 0x14

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider$VoiceResult;->getMatch()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v9, v7

    invoke-direct/range {v1 .. v15}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;-><init>(IZIILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private doesVoiceResultHaveMatch(Ljava/util/List;Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider$VoiceResult;)Z
    .locals 3

    .prologue
    .line 165
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    .line 166
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider$VoiceResult;->getMatch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 169
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addVoiceSuggestions(Ljava/util/List;I)Ljava/util/List;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider;->mResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-object p1

    .line 118
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 119
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 120
    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider;->mResults:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider$VoiceResult;

    .line 124
    const/4 v2, 0x0

    invoke-direct {p0, v3, v0, v2}, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider;->addVoiceResultToOmniboxSuggestions(Ljava/util/List;Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider$VoiceResult;F)V

    .line 126
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 127
    :cond_3
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider$VoiceResult;->getConfidence()F

    move-result v0

    iget v2, p0, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider;->mConfidenceThresholdHideAlts:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    .line 128
    const/4 v0, 0x1

    move v2, v0

    .line 129
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider;->mResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int v4, v1, p2

    if-ge v0, v4, :cond_4

    .line 130
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider;->mResults:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider$VoiceResult;

    iget v4, p0, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider;->mConfidenceThresholdShow:F

    invoke-direct {p0, v3, v0, v4}, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider;->addVoiceResultToOmniboxSuggestions(Ljava/util/List;Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider$VoiceResult;F)V

    .line 129
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    move-object p1, v3

    .line 135
    goto :goto_0
.end method

.method public clearVoiceSearchResults()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider;->mResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 60
    return-void
.end method

.method public getResults()Ljava/util/List;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider;->mResults:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setVoiceResultsFromIntentBundle(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 79
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider;->clearVoiceSearchResults()V

    .line 81
    if-nez p1, :cond_1

    .line 105
    :cond_0
    return-void

    .line 83
    :cond_1
    const-string/jumbo v0, "android.speech.extra.RESULTS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 85
    const-string/jumbo v0, "android.speech.extra.CONFIDENCE_SCORES"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v3

    .line 88
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 90
    sget-boolean v0, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v1, v3

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 91
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v1, v3

    if-ne v0, v1, :cond_0

    .line 93
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 100
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v4, " "

    const-string/jumbo v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->nativeQualifyPartialURLQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 102
    iget-object v5, p0, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider;->mResults:Ljava/util/List;

    new-instance v6, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider$VoiceResult;

    if-nez v4, :cond_3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_3
    aget v4, v3, v1

    invoke-direct {v6, v0, v4}, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider$VoiceResult;-><init>(Ljava/lang/String;F)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
