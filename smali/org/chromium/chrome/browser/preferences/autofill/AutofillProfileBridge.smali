.class public Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge;
.super Ljava/lang/Object;
.source "AutofillProfileBridge.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# instance fields
.field private mCurrentBestLanguageCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static getDefaultCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge;->nativeGetDefaultCountryCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getSupportedCountries()Ljava/util/List;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 77
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 78
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 79
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-static {v4, v5}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge;->nativeGetSupportedCountries(Ljava/util/List;Ljava/util/List;)V

    move v2, v3

    .line 83
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 84
    new-instance v7, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge$Country;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v7, v0, v1}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge$Country;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    .line 88
    invoke-virtual {v0, v3}, Ljava/text/Collator;->setStrength(I)V

    .line 89
    new-instance v1, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge$1;

    invoke-direct {v1, v0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge$1;-><init>(Ljava/text/Collator;)V

    invoke-static {v6, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 98
    return-object v6
.end method

.method private static intArrayToList([ILjava/util/List;)V
    .locals 3

    .prologue
    .line 151
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p0, v0

    .line 152
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_0
    return-void
.end method

.method private static native nativeGetAddressUiComponents(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
.end method

.method private static native nativeGetDefaultCountryCode()Ljava/lang/String;
.end method

.method private static native nativeGetSupportedCountries(Ljava/util/List;Ljava/util/List;)V
.end method

.method private static stringArrayToList([Ljava/lang/String;Ljava/util/List;)V
    .locals 3

    .prologue
    .line 144
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p0, v0

    .line 145
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    return-void
.end method


# virtual methods
.method getAddressUiComponents(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7

    .prologue
    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 120
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 121
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 123
    invoke-static {p1, p2, v1, v2}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge;->nativeGetAddressUiComponents(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge;->mCurrentBestLanguageCode:Ljava/lang/String;

    .line 127
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 128
    new-instance v4, Landroid/util/Pair;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    return-object v3
.end method

.method getCurrentBestLanguageCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge;->mCurrentBestLanguageCode:Ljava/lang/String;

    return-object v0
.end method
