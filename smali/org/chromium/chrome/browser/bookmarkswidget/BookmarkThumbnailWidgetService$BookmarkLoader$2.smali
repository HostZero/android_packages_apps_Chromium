.class Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader$2;
.super Ljava/lang/Object;
.source "BookmarkThumbnailWidgetService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;

.field final synthetic val$folderId:Lorg/chromium/components/bookmarks/BookmarkId;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;Lorg/chromium/components/bookmarks/BookmarkId;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader$2;->this$0:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;

    iput-object p2, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader$2;->val$folderId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader$2;->this$0:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader$2;->val$folderId:Lorg/chromium/components/bookmarks/BookmarkId;

    # invokes: Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->loadBookmarks(Lorg/chromium/components/bookmarks/BookmarkId;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->access$100(Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;Lorg/chromium/components/bookmarks/BookmarkId;)V

    .line 189
    return-void
.end method
