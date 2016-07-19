.class Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;
.super Ljava/lang/Object;
.source "BookmarkThumbnailWidgetService.java"


# instance fields
.field public favicon:Landroid/graphics/Bitmap;

.field public id:Lorg/chromium/components/bookmarks/BookmarkId;

.field public isFolder:Z

.field public parentId:Lorg/chromium/components/bookmarks/BookmarkId;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromBookmarkItem(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;)Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 114
    if-nez p0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-object v0

    .line 119
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getId()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/components/bookmarks/BookmarkId;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 121
    new-instance v0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;-><init>()V

    .line 122
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;->title:Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;->url:Ljava/lang/String;

    .line 124
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getId()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;->id:Lorg/chromium/components/bookmarks/BookmarkId;

    .line 125
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getParentId()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;->parentId:Lorg/chromium/components/bookmarks/BookmarkId;

    .line 126
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->isFolder()Z

    move-result v1

    iput-boolean v1, v0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;->isFolder:Z

    goto :goto_0
.end method
