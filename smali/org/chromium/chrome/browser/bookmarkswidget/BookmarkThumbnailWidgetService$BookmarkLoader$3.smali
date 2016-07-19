.class Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader$3;
.super Ljava/lang/Object;
.source "BookmarkThumbnailWidgetService.java"

# interfaces
.implements Lorg/chromium/chrome/browser/favicon/FaviconHelper$FaviconImageCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;

.field final synthetic val$bookmark:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader$3;->this$0:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;

    iput-object p2, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader$3;->val$bookmark:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaviconAvailable(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader$3;->val$bookmark:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;

    iput-object p1, v0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;->favicon:Landroid/graphics/Bitmap;

    .line 230
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader$3;->this$0:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;

    # invokes: Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->taskFinished()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;->access$300(Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkLoader;)V

    .line 231
    return-void
.end method
