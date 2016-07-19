.class Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$3;
.super Ljava/lang/Object;
.source "BookmarkModel.java"

# interfaces
.implements Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$SavePageCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

.field final synthetic val$bookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

.field final synthetic val$callback:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$AddBookmarkCallback;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$AddBookmarkCallback;Lorg/chromium/components/bookmarks/BookmarkId;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$3;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iput-object p2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$3;->val$callback:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$AddBookmarkCallback;

    iput-object p3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$3;->val$bookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSavePageDone(ILjava/lang/String;J)V
    .locals 3

    .prologue
    .line 241
    if-nez p1, :cond_0

    .line 242
    const/4 v0, 0x0

    .line 248
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$3;->val$callback:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$AddBookmarkCallback;

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$3;->val$bookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-interface {v1, v2, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$AddBookmarkCallback;->onBookmarkAdded(Lorg/chromium/components/bookmarks/BookmarkId;I)V

    .line 249
    return-void

    .line 243
    :cond_0
    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 244
    const/4 v0, 0x1

    goto :goto_0

    .line 246
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method
