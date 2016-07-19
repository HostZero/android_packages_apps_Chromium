.class Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter$2;
.super Ljava/lang/Object;
.source "BookmarkThumbnailWidgetService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter$2;->this$0:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter$2;->this$0:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;

    # getter for: Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->access$500(Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;)Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter$2;->this$0:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;

    # getter for: Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->access$500(Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;)Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->destroy()V

    .line 342
    :cond_0
    return-void
.end method
