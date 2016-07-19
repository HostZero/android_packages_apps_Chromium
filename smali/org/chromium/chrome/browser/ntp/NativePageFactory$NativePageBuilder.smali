.class Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageBuilder;
.super Ljava/lang/Object;
.source "NativePageFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildBookmarksPage(Landroid/app/Activity;Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/NativePage;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkPage;

    invoke-direct {v0, p1, p2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkPage;-><init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/tab/Tab;)V

    return-object v0
.end method

.method protected buildNewTabPage(Landroid/app/Activity;Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)Lorg/chromium/chrome/browser/NativePage;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPage;-><init>(Landroid/app/Activity;)V

    .line 36
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/ntp/NewTabPage;

    invoke-direct {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/ntp/NewTabPage;-><init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    goto :goto_0
.end method

.method protected buildPhysicalWebDiagnosticsPage(Landroid/app/Activity;)Lorg/chromium/chrome/browser/NativePage;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected buildRecentTabsPage(Landroid/app/Activity;Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/NativePage;
    .locals 2

    .prologue
    .line 45
    invoke-static {p1}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDocumentMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;

    invoke-direct {v0, p2, p1}, Lorg/chromium/chrome/browser/ntp/DocumentRecentTabsManager;-><init>(Lorg/chromium/chrome/browser/tab/Tab;Landroid/app/Activity;)V

    .line 48
    :goto_0
    new-instance v1, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;

    invoke-direct {v1, p1, v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsPage;-><init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/ntp/RecentTabsManager;)V

    return-object v1

    .line 45
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->getProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v1

    invoke-direct {v0, p2, v1, p1}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;-><init>(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/profiles/Profile;Landroid/content/Context;)V

    goto :goto_0
.end method
