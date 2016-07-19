.class Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter$1;
.super Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;
.source "BookmarkThumbnailWidgetService.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter$1;->this$0:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public bookmarkModelChanged()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter$1;->this$0:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;

    # invokes: Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->refreshWidget()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;->access$400(Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkAdapter;)V

    .line 306
    return-void
.end method

.method public bookmarkModelLoaded()V
    .locals 0

    .prologue
    .line 301
    return-void
.end method
