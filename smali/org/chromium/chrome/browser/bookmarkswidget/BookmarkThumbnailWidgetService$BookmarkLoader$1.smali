.class final Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader$1;
.super Ljava/lang/Object;
.source "BookmarkThumbnailWidgetService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$folderId:Lorg/chromium/components/bookmarks/BookmarkId;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/chromium/components/bookmarks/BookmarkId;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader$1;->val$folderId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader$1;->call()Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;

    move-result-object v0

    return-object v0
.end method

.method public final call()Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;
    .locals 4

    .prologue
    .line 166
    new-instance v0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader$1;->val$folderId:Lorg/chromium/components/bookmarks/BookmarkId;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;-><init>(Landroid/content/Context;Lorg/chromium/components/bookmarks/BookmarkId;Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$1;)V

    return-object v0
.end method
