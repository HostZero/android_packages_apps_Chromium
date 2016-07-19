.class Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;
.super Ljava/lang/Object;
.source "BookmarkThumbnailWidgetService.java"


# instance fields
.field private mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

.field private mFaviconHelper:Lorg/chromium/chrome/browser/favicon/FaviconHelper;

.field private mFaviconSizePx:I

.field private mFolder:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;

.field private mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

.field private mRemainingTaskCount:I

.field private final mResultQueue:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lorg/chromium/components/bookmarks/BookmarkId;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->mResultQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 179
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    .line 180
    new-instance v0, Lorg/chromium/chrome/browser/favicon/FaviconHelper;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/favicon/FaviconHelper;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->mFaviconHelper:Lorg/chromium/chrome/browser/favicon/FaviconHelper;

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->default_favicon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->mFaviconSizePx:I

    .line 183
    iput v2, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->mRemainingTaskCount:I

    .line 184
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    .line 185
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    new-instance v1, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader$2;

    invoke-direct {v1, p0, p2}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader$2;-><init>(Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;Lorg/chromium/components/bookmarks/BookmarkId;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->runAfterBookmarkModelLoaded(Ljava/lang/Runnable;)Z

    .line 191
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lorg/chromium/components/bookmarks/BookmarkId;Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$1;)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;-><init>(Landroid/content/Context;Lorg/chromium/components/bookmarks/BookmarkId;)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;Lorg/chromium/components/bookmarks/BookmarkId;)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->loadBookmarks(Lorg/chromium/components/bookmarks/BookmarkId;)V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->taskFinished()V

    return-void
.end method

.method private destroy()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->destroy()V

    .line 248
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->mFaviconHelper:Lorg/chromium/chrome/browser/favicon/FaviconHelper;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/favicon/FaviconHelper;->destroy()V

    .line 249
    return-void
.end method

.method private loadBookmarks(Lorg/chromium/components/bookmarks/BookmarkId;)V
    .locals 3

    .prologue
    .line 195
    new-instance v0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;-><init>(Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$1;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->mFolder:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;

    .line 198
    if-eqz p1, :cond_0

    .line 199
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->mFolder:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v1, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkById(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;->fromBookmarkItem(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;)Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;->folder:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;

    .line 202
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->mFolder:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;

    iget-object v0, v0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;->folder:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;

    if-nez v0, :cond_1

    .line 203
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getDefaultFolder()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object p1

    .line 204
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->mFolder:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v1, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkById(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;->fromBookmarkItem(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;)Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;->folder:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;

    .line 208
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->mFolder:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->mFolder:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;

    iget-object v2, v2, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;->folder:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;

    iget-object v2, v2, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;->parentId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkById(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;->fromBookmarkItem(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;)Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;->parent:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;

    .line 211
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarksForFolder(Lorg/chromium/components/bookmarks/BookmarkId;)Ljava/util/List;

    move-result-object v0

    .line 212
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    .line 213
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;->fromBookmarkItem(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;)Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;

    move-result-object v0

    .line 214
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->loadFavicon(Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;)V

    .line 215
    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->mFolder:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;

    iget-object v2, v2, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;->children:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    :cond_2
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->taskFinished()V

    .line 219
    return-void
.end method

.method public static loadBookmarksOnBinderThread(Landroid/content/Context;Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;
    .locals 1

    .prologue
    .line 162
    new-instance v0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader$1;-><init>(Landroid/content/Context;Lorg/chromium/components/bookmarks/BookmarkId;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThreadBlockingNoException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;

    .line 170
    :try_start_0
    iget-object v0, v0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->mResultQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadFavicon(Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;)V
    .locals 5

    .prologue
    .line 223
    iget-boolean v0, p1, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;->isFolder:Z

    if-nez v0, :cond_0

    .line 224
    iget v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->mRemainingTaskCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->mRemainingTaskCount:I

    .line 225
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->mFaviconHelper:Lorg/chromium/chrome/browser/favicon/FaviconHelper;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    iget-object v2, p1, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;->url:Ljava/lang/String;

    iget v3, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->mFaviconSizePx:I

    new-instance v4, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader$3;

    invoke-direct {v4, p0, p1}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader$3;-><init>(Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/chromium/chrome/browser/favicon/FaviconHelper;->getLocalFaviconImageForURL(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;ILorg/chromium/chrome/browser/favicon/FaviconHelper$FaviconImageCallback;)Z

    .line 234
    :cond_0
    return-void
.end method

.method private taskFinished()V
    .locals 2

    .prologue
    .line 238
    iget v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->mRemainingTaskCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->mRemainingTaskCount:I

    .line 239
    iget v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->mRemainingTaskCount:I

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->mResultQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->mFolder:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->destroy()V

    .line 243
    :cond_0
    return-void
.end method
