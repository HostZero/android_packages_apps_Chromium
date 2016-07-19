.class public Lorg/chromium/chrome/browser/tab/TabDelegateFactory;
.super Ljava/lang/Object;
.source "TabDelegateFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAppBannerManager(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/banners/AppBannerManager;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lorg/chromium/chrome/browser/banners/AppBannerManager;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/chromium/chrome/browser/banners/AppBannerManager;-><init>(Lorg/chromium/chrome/browser/tab/Tab;Landroid/content/Context;)V

    return-object v0
.end method

.method public createContextMenuPopulator(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;

    new-instance v1, Lorg/chromium/chrome/browser/tab/TabContextMenuItemDelegate;

    invoke-direct {v1, p1}, Lorg/chromium/chrome/browser/tab/TabContextMenuItemDelegate;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;-><init>(Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;I)V

    return-object v0
.end method

.method public createInterceptNavigationDelegate(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-object v0
.end method

.method public createTopControlsVisibilityDelegate(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/TopControlsVisibilityDelegate;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lorg/chromium/chrome/browser/tab/TopControlsVisibilityDelegate;

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/tab/TopControlsVisibilityDelegate;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-object v0
.end method

.method public createWebContentsDelegate(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-object v0
.end method
