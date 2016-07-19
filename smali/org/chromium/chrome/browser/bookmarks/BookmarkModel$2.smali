.class Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$2;
.super Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$OfflinePageModelObserver;
.source "BookmarkModel.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$OfflinePageModelObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public offlinePageModelLoaded()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    const/4 v1, 0x1

    # setter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->mIsOfflinePageModelLoaded:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->access$002(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;Z)Z

    .line 110
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->isBookmarkModelLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->notifyBookmarkModelLoaded()V

    .line 113
    :cond_0
    return-void
.end method
