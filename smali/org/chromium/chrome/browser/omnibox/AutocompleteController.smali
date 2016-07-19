.class public Lorg/chromium/chrome/browser/omnibox/AutocompleteController;
.super Ljava/lang/Object;
.source "AutocompleteController.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mCurrentNativeAutocompleteResult:J

.field private final mListener:Lorg/chromium/chrome/browser/omnibox/AutocompleteController$OnSuggestionsReceivedListener;

.field private mNativeAutocompleteControllerAndroid:J

.field private final mVoiceSuggestionProvider:Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/omnibox/AutocompleteController$OnSuggestionsReceivedListener;)V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;Lorg/chromium/chrome/browser/omnibox/AutocompleteController$OnSuggestionsReceivedListener;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/profiles/Profile;Lorg/chromium/chrome/browser/omnibox/AutocompleteController$OnSuggestionsReceivedListener;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->mVoiceSuggestionProvider:Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider;

    .line 49
    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->nativeInit(Lorg/chromium/chrome/browser/profiles/Profile;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->mNativeAutocompleteControllerAndroid:J

    .line 52
    :cond_0
    iput-object p2, p0, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->mListener:Lorg/chromium/chrome/browser/omnibox/AutocompleteController$OnSuggestionsReceivedListener;

    .line 53
    return-void
.end method

.method private static addOmniboxSuggestionToList(Ljava/util/List;Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;)V
    .locals 0

    .prologue
    .line 265
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    return-void
.end method

.method private static buildOmniboxSuggestion(IZIILjava/lang/String;[I[ILjava/lang/String;[I[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;
    .locals 16

    .prologue
    .line 276
    sget-boolean v1, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p5

    array-length v1, v0

    move-object/from16 v0, p6

    array-length v2, v0

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 277
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 278
    const/4 v1, 0x0

    :goto_0
    move-object/from16 v0, p5

    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 279
    new-instance v2, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion$MatchClassification;

    aget v3, p5, v1

    aget v4, p6, v1

    invoke-direct {v2, v3, v4}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion$MatchClassification;-><init>(II)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    :cond_1
    sget-boolean v1, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    move-object/from16 v0, p8

    array-length v1, v0

    move-object/from16 v0, p9

    array-length v2, v0

    if-eq v1, v2, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 285
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 286
    const/4 v1, 0x0

    :goto_1
    move-object/from16 v0, p8

    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 287
    new-instance v2, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion$MatchClassification;

    aget v3, p8, v1

    aget v4, p9, v1

    invoke-direct {v2, v3, v4}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion$MatchClassification;-><init>(II)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 291
    :cond_3
    new-instance v1, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    move/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p7

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-direct/range {v1 .. v15}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;-><init>(IZIILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v1
.end method

.method private static createOmniboxSuggestionList(I)Ljava/util/List;
    .locals 1

    .prologue
    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method private native nativeClassify(JLjava/lang/String;)Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;
.end method

.method private native nativeDeleteSuggestion(JI)V
.end method

.method private native nativeOnOmniboxFocused(JLjava/lang/String;Ljava/lang/String;ZZ)V
.end method

.method private native nativeOnSuggestionSelected(JILjava/lang/String;ZZJILorg/chromium/content_public/browser/WebContents;)V
.end method

.method public static native nativePrefetchZeroSuggestResults()V
.end method

.method public static native nativeQualifyPartialURLQuery(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeResetSession(J)V
.end method

.method private native nativeStart(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZ)V
.end method

.method private native nativeStop(JZ)V
.end method

.method private native nativeUpdateMatchDestinationURLWithQueryFormulationTime(JIJ)Ljava/lang/String;
.end method

.method private notifyNativeDestroyed()V
    .locals 2

    .prologue
    .line 218
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->mNativeAutocompleteControllerAndroid:J

    .line 219
    return-void
.end method


# virtual methods
.method public classify(Ljava/lang/String;)Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;
    .locals 4

    .prologue
    .line 123
    iget-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->mNativeAutocompleteControllerAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 124
    iget-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->mNativeAutocompleteControllerAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->nativeClassify(JLjava/lang/String;)Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteSuggestion(I)V
    .locals 4

    .prologue
    .line 183
    iget-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->mNativeAutocompleteControllerAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 184
    iget-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->mNativeAutocompleteControllerAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->nativeDeleteSuggestion(JI)V

    .line 186
    :cond_0
    return-void
.end method

.method public getCurrentNativeAutocompleteResult()J
    .locals 2

    .prologue
    .line 193
    iget-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->mCurrentNativeAutocompleteResult:J

    return-wide v0
.end method

.method protected native nativeInit(Lorg/chromium/chrome/browser/profiles/Profile;)J
.end method

.method public onSuggestionSelected(IILjava/lang/String;ZZJILorg/chromium/content_public/browser/WebContents;)V
    .locals 12

    .prologue
    .line 239
    const/16 v0, 0x14

    if-ne p2, v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-wide v2, p0, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->mNativeAutocompleteControllerAndroid:J

    move-object v1, p0

    move v4, p1

    move-object v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->nativeOnSuggestionSelected(JILjava/lang/String;ZZJILorg/chromium/content_public/browser/WebContents;)V

    goto :goto_0
.end method

.method protected onSuggestionsReceived(Ljava/util/List;Ljava/lang/String;J)V
    .locals 3

    .prologue
    const/4 v1, 0x5

    .line 201
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 203
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->mVoiceSuggestionProvider:Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider;->addVoiceSuggestions(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 210
    iput-wide p3, p0, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->mCurrentNativeAutocompleteResult:J

    .line 213
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->mListener:Lorg/chromium/chrome/browser/omnibox/AutocompleteController$OnSuggestionsReceivedListener;

    invoke-interface {v1, v0, p2}, Lorg/chromium/chrome/browser/omnibox/AutocompleteController$OnSuggestionsReceivedListener;->onSuggestionsReceived(Ljava/util/List;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public onVoiceResults(Landroid/os/Bundle;)Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider$VoiceResult;
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->mVoiceSuggestionProvider:Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider;->setVoiceResultsFromIntentBundle(Landroid/os/Bundle;)V

    .line 253
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->mVoiceSuggestionProvider:Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider;->getResults()Ljava/util/List;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider$VoiceResult;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetSession()V
    .locals 4

    .prologue
    .line 173
    iget-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->mNativeAutocompleteControllerAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 174
    iget-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->mNativeAutocompleteControllerAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->nativeResetSession(J)V

    .line 176
    :cond_0
    return-void
.end method

.method public setProfile(Lorg/chromium/chrome/browser/profiles/Profile;)V
    .locals 2

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->stop(Z)V

    .line 67
    if-nez p1, :cond_0

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->mNativeAutocompleteControllerAndroid:J

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->nativeInit(Lorg/chromium/chrome/browser/profiles/Profile;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->mNativeAutocompleteControllerAndroid:J

    goto :goto_0
.end method

.method public start(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 12

    .prologue
    .line 99
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->nativeInit(Lorg/chromium/chrome/browser/profiles/Profile;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->mNativeAutocompleteControllerAndroid:J

    .line 103
    iget-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->mNativeAutocompleteControllerAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 104
    iget-wide v2, p0, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->mNativeAutocompleteControllerAndroid:J

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v1, p0

    move-object v4, p3

    move/from16 v5, p4

    move-object v7, p2

    move/from16 v8, p5

    invoke-direct/range {v1 .. v11}, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->nativeStart(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZ)V

    goto :goto_0
.end method

.method public start(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 85
    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->start(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 86
    return-void
.end method

.method public startZeroSuggest(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 8

    .prologue
    .line 141
    if-eqz p1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->nativeInit(Lorg/chromium/chrome/browser/profiles/Profile;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->mNativeAutocompleteControllerAndroid:J

    .line 143
    iget-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->mNativeAutocompleteControllerAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 144
    iget-wide v2, p0, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->mNativeAutocompleteControllerAndroid:J

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->nativeOnOmniboxFocused(JLjava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public stop(Z)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 161
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->mVoiceSuggestionProvider:Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/VoiceSuggestionProvider;->clearVoiceSearchResults()V

    .line 162
    :cond_0
    iput-wide v2, p0, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->mCurrentNativeAutocompleteResult:J

    .line 163
    iget-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->mNativeAutocompleteControllerAndroid:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 164
    iget-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->mNativeAutocompleteControllerAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->nativeStop(JZ)V

    .line 166
    :cond_1
    return-void
.end method

.method public updateMatchDestinationUrlWithQueryFormulationTime(IJ)Ljava/lang/String;
    .locals 6

    .prologue
    .line 311
    iget-wide v1, p0, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->mNativeAutocompleteControllerAndroid:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->nativeUpdateMatchDestinationURLWithQueryFormulationTime(JIJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
