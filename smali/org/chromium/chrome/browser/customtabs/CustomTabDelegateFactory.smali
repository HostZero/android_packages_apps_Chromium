.class public Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory;
.super Lorg/chromium/chrome/browser/tab/TabDelegateFactory;
.source "CustomTabDelegateFactory.java"


# instance fields
.field private mNavigationDelegate:Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory$CustomTabNavigationDelegate;

.field private mNavigationHandler:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;

.field private mShouldHideTopControls:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/TabDelegateFactory;-><init>()V

    .line 151
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory;->mShouldHideTopControls:Z

    .line 152
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory;->mShouldHideTopControls:Z

    return v0
.end method


# virtual methods
.method public createAppBannerManager(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/banners/AppBannerManager;
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public createContextMenuPopulator(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;
    .locals 3

    .prologue
    .line 178
    new-instance v0, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;

    new-instance v1, Lorg/chromium/chrome/browser/tab/TabContextMenuItemDelegate;

    invoke-direct {v1, p1}, Lorg/chromium/chrome/browser/tab/TabContextMenuItemDelegate;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/contextmenu/ChromeContextMenuPopulator;-><init>(Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;I)V

    return-object v0
.end method

.method public createInterceptNavigationDelegate(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;
    .locals 2

    .prologue
    .line 171
    new-instance v0, Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory$CustomTabNavigationDelegate;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getAppAssociatedWith()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory$CustomTabNavigationDelegate;-><init>(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory;->mNavigationDelegate:Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory$CustomTabNavigationDelegate;

    .line 172
    new-instance v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory;->mNavigationDelegate:Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory$CustomTabNavigationDelegate;

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;-><init>(Lorg/chromium/chrome/browser/externalnav/ExternalNavigationDelegate;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory;->mNavigationHandler:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;

    .line 173
    new-instance v0, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory;->mNavigationHandler:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;

    invoke-direct {v0, v1, p1}, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;-><init>(Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;Lorg/chromium/chrome/browser/tab/Tab;)V

    return-object v0
.end method

.method public createTopControlsVisibilityDelegate(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/TopControlsVisibilityDelegate;
    .locals 1

    .prologue
    .line 156
    new-instance v0, Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory$1;-><init>(Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory;Lorg/chromium/chrome/browser/tab/Tab;)V

    return-object v0
.end method

.method public createWebContentsDelegate(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory$CustomTabWebContentsDelegate;

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory$CustomTabWebContentsDelegate;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-object v0
.end method

.method getExternalNavigationDelegate()Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory$CustomTabNavigationDelegate;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory;->mNavigationDelegate:Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory$CustomTabNavigationDelegate;

    return-object v0
.end method

.method getExternalNavigationHandler()Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabDelegateFactory;->mNavigationHandler:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;

    return-object v0
.end method
