.class public Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService;
.super Landroid/widget/RemoteViewsService;
.source "BookmarkThumbnailWidgetService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    .line 255
    return-void
.end method

.method static changeFolder(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 92
    const-string/jumbo v0, "appWidgetId"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    .line 93
    const-string/jumbo v1, "folderId"

    const-wide/16 v2, -0x1

    invoke-static {p1, v1, v2, v3}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetLongExtra(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v2

    .line 94
    if-ltz v0, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 95
    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService;->getWidgetState(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 96
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v4, "current_folder"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 97
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$id;->bookmarks_list:I

    invoke-virtual {v1, v0, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 100
    :cond_0
    return-void
.end method

.method static deleteWidgetState(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 87
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService;->getWidgetState(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 89
    :cond_0
    return-void
.end method

.method static getChangeFolderAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".CHANGE_FOLDER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getWidgetState(Landroid/content/Context;I)Landroid/content/SharedPreferences;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 81
    const-string/jumbo v0, "widgetState-%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 2

    .prologue
    .line 68
    const-string/jumbo v0, "appWidgetId"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v1

    .line 69
    if-gez v1, :cond_0

    .line 70
    const-string/jumbo v0, "BookmarkThumbnailWidgetService"

    const-string/jumbo v1, "Missing EXTRA_APPWIDGET_ID!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;-><init>(Landroid/content/Context;I)V

    goto :goto_0
.end method
