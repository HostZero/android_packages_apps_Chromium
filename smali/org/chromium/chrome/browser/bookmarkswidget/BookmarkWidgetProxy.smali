.class public Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkWidgetProxy;
.super Landroid/content/BroadcastReceiver;
.source "BookmarkWidgetProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 24
    invoke-static {p1}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService;->getChangeFolderAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-static {p1, p2}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService;->changeFolder(Landroid/content/Context;Landroid/content/Intent;)V

    .line 34
    :goto_0
    return-void

    .line 28
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 29
    const-class v1, Lorg/chromium/chrome/browser/document/ChromeLauncherActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 30
    const-string/jumbo v1, "org.chromium.chrome.browser.webapp_source"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    const-string/jumbo v1, "REUSE_URL_MATCHING_TAB_ELSE_NEW_TAB"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 32
    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkWidgetProxy;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 38
    const/high16 v0, 0x10000000

    :try_start_0
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 39
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    const-string/jumbo v1, "BookmarkWidgetProxy"

    const-string/jumbo v2, "Failed to start intent activity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
