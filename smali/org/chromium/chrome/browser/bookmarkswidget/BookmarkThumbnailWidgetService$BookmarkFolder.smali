.class Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;
.super Ljava/lang/Object;
.source "BookmarkThumbnailWidgetService.java"


# instance fields
.field public final children:Ljava/util/List;

.field public folder:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;

.field public parent:Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$Bookmark;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;->children:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$1;)V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarkswidget/BookmarkThumbnailWidgetService$BookmarkFolder;-><init>()V

    return-void
.end method
