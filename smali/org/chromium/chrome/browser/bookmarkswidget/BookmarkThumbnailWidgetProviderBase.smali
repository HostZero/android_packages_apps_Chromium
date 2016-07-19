.class public Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetProviderBase;
.super Landroid/appwidget/AppWidgetProvider;
.source "BookmarkThumbnailWidgetProviderBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static getBookmarkAppWidgetUpdateAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".BOOKMARK_APPWIDGET_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/google/android/apps/chrome/appwidget/bookmarks/BookmarkThumbnailWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private performUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 10

    .prologue
    const/high16 v9, 0x8000000

    const/4 v1, 0x0

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    invoke-static {p1, v1, v0, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 101
    array-length v3, p3

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, p3, v0

    .line 102
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService;

    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    const-string/jumbo v6, "appWidgetId"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 106
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/chromium/chrome/R$layout;->bookmark_thumbnail_widget:I

    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 108
    sget v7, Lorg/chromium/chrome/R$id;->app_shortcut:I

    invoke-virtual {v6, v7, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 109
    sget v7, Lorg/chromium/chrome/R$id;->bookmarks_list:I

    invoke-virtual {v6, v7, v5}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 111
    sget v5, Lorg/chromium/chrome/R$id;->bookmarks_list:I

    invoke-virtual {p2, v4, v5}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 112
    new-instance v5, Landroid/content/Intent;

    const-class v7, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkWidgetProxy;

    invoke-direct {v5, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    sget v7, Lorg/chromium/chrome/R$id;->bookmarks_list:I

    invoke-static {p1, v1, v5, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 116
    invoke-virtual {p2, v4, v6}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    return-void
.end method

.method public static refreshAllWidgets(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-static {p0}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetProviderBase;->getBookmarkAppWidgetUpdateAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-class v3, Lcom/google/android/apps/chrome/appwidget/bookmarks/BookmarkThumbnailWidgetProvider;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 76
    return-void
.end method

.method private removeOrphanedStates(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 86
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 87
    invoke-static {p1}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetProviderBase;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 88
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, v1, v0

    .line 89
    invoke-static {p1, v3}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService;->deleteWidgetState(Landroid/content/Context;I)V

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 3

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 57
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p2, v0

    .line 58
    invoke-static {p1, v2}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService;->deleteWidgetState(Landroid/content/Context;I)V

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetProviderBase;->removeOrphanedStates(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 66
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetProviderBase;->removeOrphanedStates(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {p1}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetProviderBase;->getBookmarkAppWidgetUpdateAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 35
    const-string/jumbo v1, "appWidgetId"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const-string/jumbo v3, "appWidgetId"

    const/4 v4, -0x1

    invoke-static {p2, v3, v4}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetProviderBase;->performUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 46
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-static {p1}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetProviderBase;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetProviderBase;->performUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto :goto_0

    .line 44
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetProviderBase;->performUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 52
    return-void
.end method
