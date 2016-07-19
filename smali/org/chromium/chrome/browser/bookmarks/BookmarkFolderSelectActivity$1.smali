.class Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$1;
.super Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;
.source "BookmarkFolderSelectActivity.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public bookmarkModelChanged()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;

    # invokes: Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->updateFolderList()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;)V

    .line 62
    return-void
.end method

.method public bookmarkNodeRemoved(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;ILorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;Z)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mBookmarksToMove:Ljava/util/List;
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->access$100(Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getId()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mBookmarksToMove:Ljava/util/List;
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->access$100(Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getId()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->mBookmarksToMove:Ljava/util/List;
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->access$100(Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->finish()V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-virtual {p3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->isFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;

    # invokes: Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->updateFolderList()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;)V

    goto :goto_0
.end method
