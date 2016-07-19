.class public Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;
.super Ljava/lang/Object;
.source "PartnerBrowserCustomizations.java"


# static fields
.field static final PARTNER_DISABLE_BOOKMARKS_EDITING_PATH:Ljava/lang/String; = "disablebookmarksediting"

.field public static final PARTNER_DISABLE_INCOGNITO_MODE_PATH:Ljava/lang/String; = "disableincognitomode"

.field static final PARTNER_HOMEPAGE_PATH:Ljava/lang/String; = "homepage"

.field private static volatile sBookmarksEditingDisabled:Z

.field private static volatile sHomepage:Ljava/lang/String;

.field private static sIgnoreBrowserProviderSystemPackageCheck:Z

.field private static volatile sIncognitoModeDisabled:Z

.field private static sInitializeAsyncCallbacks:Ljava/util/List;

.field private static sIsInitialized:Z

.field private static sProviderAuthority:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "com.android.partnerbrowsercustomizations"

    sput-object v0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sProviderAuthority:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sIgnoreBrowserProviderSystemPackageCheck:Z

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sInitializeAsyncCallbacks:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sHomepage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 29
    sput-object p0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sHomepage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .prologue
    .line 29
    sput-boolean p0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sIncognitoModeDisabled:Z

    return p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sBookmarksEditingDisabled:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .prologue
    .line 29
    sput-boolean p0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sBookmarksEditingDisabled:Z

    return p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sProviderAuthority:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sIgnoreBrowserProviderSystemPackageCheck:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    .prologue
    .line 29
    sput-boolean p0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sIsInitialized:Z

    return p0
.end method

.method static synthetic access$600()Ljava/util/List;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sInitializeAsyncCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public static buildQueryUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sProviderAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static destroy()V
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    sput-boolean v0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sIsInitialized:Z

    .line 280
    sget-object v0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sInitializeAsyncCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 281
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sHomepage:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public static getHomePageUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 289
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    .line 290
    const-string/jumbo v1, "partner-homepage-for-testing"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    const-string/jumbo v1, "partner-homepage-for-testing"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sHomepage:Ljava/lang/String;

    goto :goto_0
.end method

.method public static ignoreBrowserProviderSystemPackageCheckForTests(Z)V
    .locals 0

    .prologue
    .line 94
    sput-boolean p0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sIgnoreBrowserProviderSystemPackageCheck:Z

    .line 95
    return-void
.end method

.method public static initializeAsync(Landroid/content/Context;J)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 113
    sput-boolean v2, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sIsInitialized:Z

    .line 115
    new-instance v0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$1;-><init>(Landroid/content/Context;)V

    .line 234
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 237
    new-instance v1, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$2;

    invoke-direct {v1, v0}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$2;-><init>(Landroid/os/AsyncTask;)V

    invoke-static {v1, p1, p2}, Lorg/chromium/base/ThreadUtils;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    .line 243
    return-void
.end method

.method static isBookmarksEditingDisabled()Z
    .locals 1

    .prologue
    .line 68
    sget-boolean v0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sBookmarksEditingDisabled:Z

    return v0
.end method

.method public static isHomepageProviderAvailableAndEnabled()Z
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->getHomePageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIncognitoDisabled()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sIncognitoModeDisabled:Z

    return v0
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sIsInitialized:Z

    return v0
.end method

.method public static setOnInitializeAsyncFinished(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 251
    sget-boolean v0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sIsInitialized:Z

    if-eqz v0, :cond_0

    .line 252
    invoke-static {p0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sInitializeAsyncCallbacks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static setOnInitializeAsyncFinished(Ljava/lang/Runnable;J)V
    .locals 3

    .prologue
    .line 266
    sget-object v0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sInitializeAsyncCallbacks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$3;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$3;-><init>(Ljava/lang/Runnable;)V

    sget-boolean v1, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sIsInitialized:Z

    if-eqz v1, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    invoke-static {v0, p1, p2}, Lorg/chromium/base/ThreadUtils;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    .line 276
    return-void
.end method

.method public static setProviderAuthorityForTests(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    sput-object p0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sProviderAuthority:Ljava/lang/String;

    .line 83
    return-void
.end method
