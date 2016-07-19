.class Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;
.super Ljava/lang/Object;
.source "DisableablePromoTapCounter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sInstance:Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;


# instance fields
.field private mCounter:I

.field private final mPrefsManager:Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;->mPrefsManager:Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    .line 54
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getContextualSearchTapTriggeredPromoCount()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;->setRawCounter(I)V

    .line 55
    return-void
.end method

.method static getInstance(Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;)Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;->sInstance:Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;-><init>(Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;)V

    sput-object v0, Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;->sInstance:Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;

    .line 45
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;->sInstance:Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;

    return-object v0
.end method

.method private getToggledCounter(I)I
    .locals 1

    .prologue
    .line 121
    rsub-int/lit8 v0, p1, -0x1

    return v0
.end method

.method private setRawCounter(I)V
    .locals 0

    .prologue
    .line 101
    iput p1, p0, Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;->mCounter:I

    .line 102
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;->writeRawCounter()V

    .line 103
    return-void
.end method

.method private writeRawCounter()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;->mPrefsManager:Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    iget v1, p0, Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;->mCounter:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->setContextualSearchTapTriggeredPromoCount(I)V

    .line 110
    return-void
.end method


# virtual methods
.method disable()V
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;->mCounter:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;->getToggledCounter(I)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;->setRawCounter(I)V

    .line 69
    :cond_0
    return-void
.end method

.method getCount()I
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;->mCounter:I

    .line 77
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;->mCounter:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;->getToggledCounter(I)I

    move-result v0

    goto :goto_0
.end method

.method increment()V
    .locals 1

    .prologue
    .line 84
    sget-boolean v0, Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;->setRawCounter(I)V

    .line 86
    return-void
.end method

.method isEnabled()Z
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;->mCounter:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method reset()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/DisableablePromoTapCounter;->setRawCounter(I)V

    .line 94
    return-void
.end method
