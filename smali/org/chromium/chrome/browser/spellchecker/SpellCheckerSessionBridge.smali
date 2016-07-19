.class public Lorg/chromium/chrome/browser/spellchecker/SpellCheckerSessionBridge;
.super Ljava/lang/Object;
.source "SpellCheckerSessionBridge.java"

# interfaces
.implements Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;


# instance fields
.field private final mNativeSpellCheckerSessionBridge:J

.field private final mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;


# direct methods
.method private constructor <init>(J)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p1, p0, Lorg/chromium/chrome/browser/spellchecker/SpellCheckerSessionBridge;->mNativeSpellCheckerSessionBridge:J

    .line 34
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 35
    const-string/jumbo v1, "textservices"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/TextServicesManager;

    .line 45
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v2, p0, v1}, Landroid/view/textservice/TextServicesManager;->newSpellCheckerSession(Landroid/os/Bundle;Ljava/util/Locale;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;Z)Landroid/view/textservice/SpellCheckerSession;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/spellchecker/SpellCheckerSessionBridge;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    .line 46
    return-void
.end method

.method private convertListToArray(Ljava/util/ArrayList;)[I
    .locals 3

    .prologue
    .line 110
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [I

    .line 111
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    .line 112
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v1

    .line 111
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 114
    :cond_0
    return-object v2
.end method

.method private static create(J)Lorg/chromium/chrome/browser/spellchecker/SpellCheckerSessionBridge;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lorg/chromium/chrome/browser/spellchecker/SpellCheckerSessionBridge;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/spellchecker/SpellCheckerSessionBridge;-><init>(J)V

    .line 57
    iget-object v1, v0, Lorg/chromium/chrome/browser/spellchecker/SpellCheckerSessionBridge;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-nez v1, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 60
    :cond_0
    return-object v0
.end method

.method private native nativeProcessSpellCheckResults(J[I[I)V
.end method

.method private requestTextCheck(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 73
    const-string/jumbo v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/spellchecker/SpellCheckerSessionBridge;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/textservice/TextInfo;

    new-instance v2, Landroid/view/textservice/TextInfo;

    invoke-direct {v2, p1}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1, v3}, Landroid/view/textservice/SpellCheckerSession;->getSentenceSuggestions([Landroid/view/textservice/TextInfo;I)V

    .line 77
    return-void
.end method


# virtual methods
.method public onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 85
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 86
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 88
    array-length v5, p1

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v6, p1, v2

    move v0, v1

    .line 89
    :goto_1
    invoke-virtual {v6}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsCount()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 91
    invoke-virtual {v6, v0}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsInfoAt(I)Landroid/view/textservice/SuggestionsInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsAttributes()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 94
    invoke-virtual {v6, v0}, Landroid/view/textservice/SentenceSuggestionsInfo;->getOffsetAt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {v6, v0}, Landroid/view/textservice/SentenceSuggestionsInfo;->getLengthAt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 100
    :cond_2
    iget-wide v0, p0, Lorg/chromium/chrome/browser/spellchecker/SpellCheckerSessionBridge;->mNativeSpellCheckerSessionBridge:J

    invoke-direct {p0, v3}, Lorg/chromium/chrome/browser/spellchecker/SpellCheckerSessionBridge;->convertListToArray(Ljava/util/ArrayList;)[I

    move-result-object v2

    invoke-direct {p0, v4}, Lorg/chromium/chrome/browser/spellchecker/SpellCheckerSessionBridge;->convertListToArray(Ljava/util/ArrayList;)[I

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/chromium/chrome/browser/spellchecker/SpellCheckerSessionBridge;->nativeProcessSpellCheckResults(J[I[I)V

    .line 102
    return-void
.end method

.method public onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method
