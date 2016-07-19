.class public abstract Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;
.super Ljava/lang/Object;
.source "TabCreatorManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createFrozenTab(Lorg/chromium/chrome/browser/TabState;II)Lorg/chromium/chrome/browser/tab/Tab;
.end method

.method public abstract createNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/Tab;
.end method

.method public final createTabWithWebContents(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/WebContents;ILorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)Z
    .locals 6

    .prologue
    .line 83
    invoke-interface {p2}, Lorg/chromium/content_public/browser/WebContents;->getUrl()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;->createTabWithWebContents(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/WebContents;ILorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public abstract createTabWithWebContents(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/WebContents;ILorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Ljava/lang/String;)Z
.end method

.method public abstract createsTabsAsynchronously()Z
.end method

.method public final launchNTP()V
    .locals 2

    .prologue
    .line 92
    :try_start_0
    const-string/jumbo v0, "TabCreator.launchNTP"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 93
    const-string/jumbo v0, "chrome-native://newtab/"

    sget-object v1, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_CHROME_UI:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;->launchUrl(Ljava/lang/String;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)Lorg/chromium/chrome/browser/tab/Tab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    const-string/jumbo v0, "TabCreator.launchNTP"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v0

    const-string/jumbo v1, "TabCreator.launchNTP"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract launchUrl(Ljava/lang/String;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)Lorg/chromium/chrome/browser/tab/Tab;
.end method
