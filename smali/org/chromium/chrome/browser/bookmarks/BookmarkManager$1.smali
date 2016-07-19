.class Lorg/chromium/chrome/browser/bookmarks/BookmarkManager$1;
.super Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;
.source "BookmarkManager.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public bookmarkModelChanged()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->getCurrentState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 91
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mStateStack:Ljava/util/Stack;
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;

    # invokes: Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->setState(Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;)V
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->access$200(Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->clearSelection()V

    .line 94
    return-void
.end method

.method public bookmarkNodeMoved(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;ILorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;I)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->clearSelection()V

    .line 84
    return-void
.end method

.method public bookmarkNodeRemoved(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;ILorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 68
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->getCurrentState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getId()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v1

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mStateStack:Ljava/util/Stack;
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;

    iget-object v0, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUIState;->mFolder:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v1, v0}, Lorg/chromium/components/bookmarks/BookmarkId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->access$100(Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;)Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getTopLevelFolderIDs(ZZ)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getId()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->openAllBookmarks()V

    .line 77
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->clearSelection()V

    .line 78
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getId()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->openFolder(Lorg/chromium/components/bookmarks/BookmarkId;)V

    goto :goto_0
.end method
