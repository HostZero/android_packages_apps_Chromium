.class Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;
.super Ljava/lang/Object;
.source "BookmarkThumbnailWidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# instance fields
.field private mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

.field private final mContext:Landroid/content/Context;

.field private mCurrentFolder:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;

.field private final mPreferences:Landroid/content/SharedPreferences;

.field private final mWidgetId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mContext:Landroid/content/Context;

    .line 271
    iput p2, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mWidgetId:I

    .line 272
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mContext:Landroid/content/Context;

    iget v1, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mWidgetId:I

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService;->getWidgetState(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mPreferences:Landroid/content/SharedPreferences;

    .line 273
    return-void
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;)V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->refreshWidget()V

    return-void
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;)Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    return-object v0
.end method

.method private getBookmarkForPosition(I)Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mCurrentFolder:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 379
    :goto_0
    return-object v0

    .line 375
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mCurrentFolder:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;

    iget-object v0, v0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;->parent:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;

    if-eqz v0, :cond_2

    .line 376
    if-nez p1, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mCurrentFolder:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;

    iget-object v0, v0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;->folder:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;

    goto :goto_0

    .line 377
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 379
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mCurrentFolder:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;

    iget-object v0, v0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;

    goto :goto_0
.end method

.method private isWidgetNewlyCreated()Z
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 314
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "current_folder"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 315
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshWidget()V
    .locals 6

    .prologue
    .line 320
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetProviderBase;->getBookmarkAppWidgetUpdateAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mContext:Landroid/content/Context;

    const-class v5, Lcom/google/android/apps/chrome/appwidget/bookmarks/BookmarkThumbnailWidgetProvider;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "appWidgetId"

    iget v3, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mWidgetId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 324
    return-void
.end method

.method private updateBookmarkList()V
    .locals 6

    .prologue
    const-wide/16 v2, -0x1

    .line 355
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "current_folder"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 356
    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    new-instance v0, Lorg/chromium/components/bookmarks/BookmarkId;

    const/4 v1, 0x0

    invoke-direct {v0, v4, v5, v1}, Lorg/chromium/components/bookmarks/BookmarkId;-><init>(JI)V

    .line 360
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->loadBookmarksOnBinderThread(Landroid/content/Context;Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mCurrentFolder:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;

    .line 362
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "current_folder"

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mCurrentFolder:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mCurrentFolder:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;

    iget-object v0, v0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;->folder:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;

    iget-object v0, v0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;->id:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v0}, Lorg/chromium/components/bookmarks/BookmarkId;->getId()J

    move-result-wide v0

    :goto_1
    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 367
    return-void

    .line 356
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-wide v0, v2

    .line 362
    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 397
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mCurrentFolder:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;

    if-nez v1, :cond_0

    .line 398
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mCurrentFolder:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;

    iget-object v1, v1, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mCurrentFolder:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;

    iget-object v2, v2, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;->parent:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 404
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->getBookmarkForPosition(I)Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;

    move-result-object v0

    iget-object v0, v0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;->id:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v0}, Lorg/chromium/components/bookmarks/BookmarkId;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    .line 410
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$layout;->bookmark_thumbnail_widget_item:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 417
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mCurrentFolder:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;

    if-nez v0, :cond_0

    .line 418
    const-string/jumbo v0, "BookmarkThumbnailWidgetService"

    const-string/jumbo v1, "No current folder data available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :goto_0
    return-object v2

    .line 422
    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->getBookmarkForPosition(I)Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;

    move-result-object v5

    .line 423
    if-nez v5, :cond_1

    .line 424
    const-string/jumbo v0, "BookmarkThumbnailWidgetService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Couldn\'t get bookmark for position "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 428
    :cond_1
    iget-object v3, v5, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;->title:Ljava/lang/String;

    .line 429
    iget-object v4, v5, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;->url:Ljava/lang/String;

    .line 430
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mCurrentFolder:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;

    iget-object v0, v0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;->folder:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;

    if-ne v5, v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mCurrentFolder:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;

    iget-object v0, v0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;->parent:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;

    iget-object v0, v0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;->id:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v0}, Lorg/chromium/components/bookmarks/BookmarkId;->getId()J

    move-result-wide v0

    .line 436
    :goto_1
    iget-boolean v2, v5, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;->isFolder:Z

    if-eqz v2, :cond_4

    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/chromium/chrome/R$layout;->bookmark_thumbnail_widget_item_folder:I

    invoke-direct {v2, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 443
    :goto_2
    sget v6, Lorg/chromium/chrome/R$id;->label:I

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v3, v4

    :cond_2
    invoke-virtual {v2, v6, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 445
    iget-boolean v3, v5, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;->isFolder:Z

    if-eqz v3, :cond_6

    .line 446
    iget-object v3, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mCurrentFolder:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;

    iget-object v3, v3, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;->folder:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;

    if-ne v5, v3, :cond_5

    sget v3, Lorg/chromium/chrome/R$drawable;->thumb_bookmark_widget_folder_back_holo:I

    .line 449
    :goto_3
    sget v6, Lorg/chromium/chrome/R$id;->thumb:I

    invoke-virtual {v2, v6, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 450
    sget v3, Lorg/chromium/chrome/R$id;->favicon:I

    sget v6, Lorg/chromium/chrome/R$drawable;->ic_bookmark_widget_bookmark_holo_dark:I

    invoke-virtual {v2, v3, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 464
    :goto_4
    iget-boolean v3, v5, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;->isFolder:Z

    if-eqz v3, :cond_8

    .line 465
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService;->getChangeFolderAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "appWidgetId"

    iget v5, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mWidgetId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "folderId"

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    .line 477
    :goto_5
    sget v1, Lorg/chromium/chrome/R$id;->list_item:I

    invoke-virtual {v2, v1, v0}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 430
    :cond_3
    iget-object v0, v5, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;->id:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v0}, Lorg/chromium/components/bookmarks/BookmarkId;->getId()J

    move-result-wide v0

    goto :goto_1

    .line 436
    :cond_4
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/chromium/chrome/R$layout;->bookmark_thumbnail_widget_item:I

    invoke-direct {v2, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    .line 446
    :cond_5
    sget v3, Lorg/chromium/chrome/R$drawable;->thumb_bookmark_widget_folder_holo:I

    goto :goto_3

    .line 453
    :cond_6
    iget-object v3, v5, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;->favicon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_7

    .line 454
    sget v3, Lorg/chromium/chrome/R$id;->favicon:I

    iget-object v6, v5, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;->favicon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 460
    :goto_6
    sget v3, Lorg/chromium/chrome/R$id;->thumb:I

    sget v6, Lorg/chromium/chrome/R$drawable;->browser_thumbnail:I

    invoke-virtual {v2, v3, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_4

    .line 456
    :cond_7
    sget v3, Lorg/chromium/chrome/R$id;->favicon:I

    sget v6, Lorg/chromium/chrome/R$drawable;->globe_favicon:I

    invoke-virtual {v2, v3, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_6

    .line 469
    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 470
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 471
    const-string/jumbo v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_5

    .line 474
    :cond_9
    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_5
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 282
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->handleSynchronousStartup()V
    :try_end_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->isWidgetNewlyCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    const-string/jumbo v0, "BookmarkNavigatorWidgetAdded"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 294
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksShim;->kickOffReading(Landroid/content/Context;)V

    .line 296
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    .line 297
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    new-instance v1, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter$1;-><init>(Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->addObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;)V

    .line 308
    return-void

    .line 283
    :catch_0
    move-exception v0

    .line 284
    const-string/jumbo v1, "BookmarkThumbnailWidgetService"

    const-string/jumbo v2, "Failed to start browser process."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method public onDataSetChanged()V
    .locals 0

    .prologue
    .line 350
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->updateBookmarkList()V

    .line 351
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 338
    new-instance v0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter$2;-><init>(Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 344
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mContext:Landroid/content/Context;

    iget v1, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mWidgetId:I

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService;->deleteWidgetState(Landroid/content/Context;I)V

    .line 345
    return-void
.end method
