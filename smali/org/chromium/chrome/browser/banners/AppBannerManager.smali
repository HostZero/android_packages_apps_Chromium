.class public Lorg/chromium/chrome/browser/banners/AppBannerManager;
.super Lorg/chromium/chrome/browser/tab/EmptyTabObserver;
.source "AppBannerManager.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field private static sAppDetailsDelegate:Lorg/chromium/chrome/browser/banners/AppDetailsDelegate;

.field private static sIsEnabled:Ljava/lang/Boolean;


# instance fields
.field private mNativePointer:J


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/EmptyTabObserver;-><init>()V

    .line 69
    invoke-direct {p0}, Lorg/chromium/chrome/browser/banners/AppBannerManager;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/banners/AppBannerManager;->mNativePointer:J

    .line 70
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/banners/AppBannerManager;->updatePointers(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/banners/AppBannerManager;)J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lorg/chromium/chrome/browser/banners/AppBannerManager;->mNativePointer:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/banners/AppBannerManager;JLorg/chromium/chrome/browser/banners/AppData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 31
    invoke-direct/range {p0 .. p6}, Lorg/chromium/chrome/browser/banners/AppBannerManager;->nativeOnAppDetailsRetrieved(JLorg/chromium/chrome/browser/banners/AppData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private createAppDetailsObserver()Lorg/chromium/chrome/browser/banners/AppDetailsDelegate$Observer;
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lorg/chromium/chrome/browser/banners/AppBannerManager$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/banners/AppBannerManager$1;-><init>(Lorg/chromium/chrome/browser/banners/AppBannerManager;)V

    return-object v0
.end method

.method static disableSecureSchemeCheckForTesting()V
    .locals 0

    .prologue
    .line 156
    invoke-static {}, Lorg/chromium/chrome/browser/banners/AppBannerManager;->nativeDisableSecureSchemeCheckForTesting()V

    .line 157
    return-void
.end method

.method private fetchAppDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 107
    sget-object v0, Lorg/chromium/chrome/browser/banners/AppBannerManager;->sAppDetailsDelegate:Lorg/chromium/chrome/browser/banners/AppDetailsDelegate;

    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p4

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 112
    sget-object v0, Lorg/chromium/chrome/browser/banners/AppBannerManager;->sAppDetailsDelegate:Lorg/chromium/chrome/browser/banners/AppDetailsDelegate;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/banners/AppBannerManager;->createAppDetailsObserver()Lorg/chromium/chrome/browser/banners/AppDetailsDelegate$Observer;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/chrome/browser/banners/AppDetailsDelegate;->getAppDetailsAsynchronously(Lorg/chromium/chrome/browser/banners/AppDetailsDelegate$Observer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static isEnabled()Z
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lorg/chromium/chrome/browser/banners/AppBannerManager;->sIsEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 49
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lorg/chromium/chrome/browser/ShortcutHelper;->isAddToHomeIntentSupported(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/banners/AppBannerManager;->sIsEnabled:Ljava/lang/Boolean;

    .line 52
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/banners/AppBannerManager;->sIsEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private native nativeDestroy(J)V
.end method

.method private static native nativeDisableSecureSchemeCheckForTesting()V
.end method

.method private native nativeInit()J
.end method

.method private native nativeIsFetcherActive(J)Z
.end method

.method private native nativeOnAppDetailsRetrieved(JLorg/chromium/chrome/browser/banners/AppData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeReplaceWebContents(JLorg/chromium/content_public/browser/WebContents;)V
.end method

.method private native nativeRequestAppBanner(J)V
.end method

.method private static native nativeSetEngagementWeights(DD)V
.end method

.method private static native nativeSetTimeDeltaForTesting(I)V
.end method

.method public static setAppDetailsDelegate(Lorg/chromium/chrome/browser/banners/AppDetailsDelegate;)V
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lorg/chromium/chrome/browser/banners/AppBannerManager;->sAppDetailsDelegate:Lorg/chromium/chrome/browser/banners/AppDetailsDelegate;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/banners/AppBannerManager;->sAppDetailsDelegate:Lorg/chromium/chrome/browser/banners/AppDetailsDelegate;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/banners/AppDetailsDelegate;->destroy()V

    .line 61
    :cond_0
    sput-object p0, Lorg/chromium/chrome/browser/banners/AppBannerManager;->sAppDetailsDelegate:Lorg/chromium/chrome/browser/banners/AppDetailsDelegate;

    .line 62
    return-void
.end method

.method static setEngagementWeights(DD)V
    .locals 0

    .prologue
    .line 162
    invoke-static {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/banners/AppBannerManager;->nativeSetEngagementWeights(DD)V

    .line 163
    return-void
.end method

.method static setIsEnabledForTesting(Z)V
    .locals 1

    .prologue
    .line 144
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/banners/AppBannerManager;->sIsEnabled:Ljava/lang/Boolean;

    .line 145
    return-void
.end method

.method static setTimeDeltaForTesting(I)V
    .locals 0

    .prologue
    .line 150
    invoke-static {p0}, Lorg/chromium/chrome/browser/banners/AppBannerManager;->nativeSetTimeDeltaForTesting(I)V

    .line 151
    return-void
.end method

.method private updatePointers(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 3

    .prologue
    .line 96
    iget-wide v0, p0, Lorg/chromium/chrome/browser/banners/AppBannerManager;->mNativePointer:J

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/chrome/browser/banners/AppBannerManager;->nativeReplaceWebContents(JLorg/chromium/content_public/browser/WebContents;)V

    .line 97
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lorg/chromium/chrome/browser/banners/AppBannerManager;->mNativePointer:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/banners/AppBannerManager;->nativeDestroy(J)V

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/banners/AppBannerManager;->mNativePointer:J

    .line 90
    return-void
.end method

.method public isFetcherActiveForTesting()Z
    .locals 2

    .prologue
    .line 168
    iget-wide v0, p0, Lorg/chromium/chrome/browser/banners/AppBannerManager;->mNativePointer:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/banners/AppBannerManager;->nativeIsFetcherActive(J)Z

    move-result v0

    return v0
.end method

.method public onContentChanged(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/banners/AppBannerManager;->updatePointers(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 82
    return-void
.end method

.method public onWebContentsSwapped(Lorg/chromium/chrome/browser/tab/Tab;ZZ)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/banners/AppBannerManager;->updatePointers(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 77
    return-void
.end method

.method public requestAppBanner()V
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Lorg/chromium/chrome/browser/banners/AppBannerManager;->mNativePointer:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/banners/AppBannerManager;->nativeRequestAppBanner(J)V

    .line 139
    return-void
.end method
