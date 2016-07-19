.class public Lorg/chromium/chrome/browser/infobar/TranslateOptions;
.super Ljava/lang/Object;
.source "TranslateOptions.java"


# instance fields
.field private final mAllLanguages:Ljava/util/ArrayList;

.field private mCodeToRepresentation:Ljava/util/Map;

.field private final mOptions:[Z

.field private final mOriginalOptions:[Z

.field private final mOriginalSourceLanguageCode:Ljava/lang/String;

.field private final mOriginalTargetLanguageCode:Ljava/lang/String;

.field private mSourceLanguageCode:Ljava/lang/String;

.field private mTargetLanguageCode:Ljava/lang/String;

.field private final mTriggeredFromMenu:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZZ)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 111
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZZZZ[Z)V

    .line 113
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZZZZ[Z)V
    .locals 4

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mOptions:[Z

    .line 85
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mOptions:[Z

    const/4 v1, 0x0

    aput-boolean p4, v0, v1

    .line 86
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mOptions:[Z

    const/4 v1, 0x1

    aput-boolean p5, v0, v1

    .line 87
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mOptions:[Z

    const/4 v1, 0x2

    aput-boolean p6, v0, v1

    .line 89
    if-nez p8, :cond_0

    .line 90
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mOptions:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mOriginalOptions:[Z

    .line 95
    :goto_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mSourceLanguageCode:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mTargetLanguageCode:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mSourceLanguageCode:Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mOriginalSourceLanguageCode:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mTargetLanguageCode:Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mOriginalTargetLanguageCode:Ljava/lang/String;

    .line 99
    iput-boolean p7, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mTriggeredFromMenu:Z

    .line 101
    iput-object p3, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mAllLanguages:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mCodeToRepresentation:Ljava/util/Map;

    .line 103
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/infobar/TranslateOptions$TranslateLanguagePair;

    .line 104
    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mCodeToRepresentation:Ljava/util/Map;

    iget-object v3, v0, Lorg/chromium/chrome/browser/infobar/TranslateOptions$TranslateLanguagePair;->mLanguageCode:Ljava/lang/String;

    iget-object v0, v0, Lorg/chromium/chrome/browser/infobar/TranslateOptions$TranslateLanguagePair;->mLanguageRepresentation:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 92
    :cond_0
    invoke-virtual {p8}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mOriginalOptions:[Z

    goto :goto_0

    .line 106
    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/infobar/TranslateOptions;)V
    .locals 9

    .prologue
    .line 119
    iget-object v1, p1, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mSourceLanguageCode:Ljava/lang/String;

    iget-object v2, p1, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mTargetLanguageCode:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mAllLanguages:Ljava/util/ArrayList;

    iget-object v0, p1, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mOptions:[Z

    const/4 v4, 0x0

    aget-boolean v4, v0, v4

    iget-object v0, p1, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mOptions:[Z

    const/4 v5, 0x1

    aget-boolean v5, v0, v5

    iget-object v0, p1, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mOptions:[Z

    const/4 v6, 0x2

    aget-boolean v6, v0, v6

    iget-boolean v7, p1, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mTriggeredFromMenu:Z

    iget-object v8, p1, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mOriginalOptions:[Z

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZZZZ[Z)V

    .line 122
    return-void
.end method

.method private canSetLanguage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->isValidLanguageCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->isValidLanguageCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkElementBoundaries(I)Z
    .locals 1

    .prologue
    .line 242
    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidLanguageCode(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 234
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mCodeToRepresentation:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toggleState(IZ)Z
    .locals 1

    .prologue
    .line 227
    invoke-static {p1}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->checkElementBoundaries(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 230
    :goto_0
    return v0

    .line 229
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mOptions:[Z

    aput-boolean p2, v0, p1

    .line 230
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public allLanguages()Ljava/util/List;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mAllLanguages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public alwaysTranslateLanguageState()Z
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mOptions:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public neverTranslateDomainState()Z
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mOptions:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public neverTranslateLanguageState()Z
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mOptions:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public optionsChanged()Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 151
    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mSourceLanguageCode:Ljava/lang/String;

    iget-object v3, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mOriginalSourceLanguageCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mTargetLanguageCode:Ljava/lang/String;

    iget-object v3, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mOriginalTargetLanguageCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mOptions:[Z

    aget-boolean v2, v2, v0

    iget-object v3, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mOriginalOptions:[Z

    aget-boolean v3, v3, v0

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mOptions:[Z

    aget-boolean v2, v2, v1

    iget-object v3, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mOriginalOptions:[Z

    aget-boolean v3, v3, v1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mOptions:[Z

    aget-boolean v2, v2, v4

    iget-object v3, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mOriginalOptions:[Z

    aget-boolean v3, v3, v4

    if-eq v2, v3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public setSourceLanguage(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mTargetLanguageCode:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->canSetLanguage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 176
    if-eqz v0, :cond_0

    .line 177
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mSourceLanguageCode:Ljava/lang/String;

    .line 179
    :cond_0
    return v0
.end method

.method public setTargetLanguage(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mSourceLanguageCode:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->canSetLanguage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 184
    if-eqz v0, :cond_0

    .line 185
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mTargetLanguageCode:Ljava/lang/String;

    .line 187
    :cond_0
    return v0
.end method

.method public sourceLanguageCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mSourceLanguageCode:Ljava/lang/String;

    return-object v0
.end method

.method public sourceLanguageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mSourceLanguageCode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->isValidLanguageCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mCodeToRepresentation:Ljava/util/Map;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mSourceLanguageCode:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public targetLanguageCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mTargetLanguageCode:Ljava/lang/String;

    return-object v0
.end method

.method public targetLanguageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mTargetLanguageCode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->isValidLanguageCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mCodeToRepresentation:Ljava/util/Map;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mTargetLanguageCode:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->sourceLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->targetLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " - Never Language:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mOptions:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Always Language:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mOptions:[Z

    const/4 v2, 0x2

    aget-boolean v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Never Domain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mOptions:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toggleAlwaysTranslateLanguageState(Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 220
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mOptions:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 223
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->toggleState(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public toggleNeverTranslateDomainState(Z)Z
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->toggleState(IZ)Z

    move-result v0

    return v0
.end method

.method public toggleNeverTranslateLanguageState(Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 207
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mOptions:[Z

    const/4 v2, 0x2

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 210
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->toggleState(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public triggeredFromMenu()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->mTriggeredFromMenu:Z

    return v0
.end method
