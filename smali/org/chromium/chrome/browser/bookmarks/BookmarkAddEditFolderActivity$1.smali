.class Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity$1;
.super Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;
.source "BookmarkAddEditFolderActivity.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public bookmarkModelChanged()V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mIsAddMode:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->access$200(Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;)Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mParentId:Lorg/chromium/components/bookmarks/BookmarkId;
    invoke-static {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->access$100(Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->doesBookmarkExist(Lorg/chromium/components/bookmarks/BookmarkId;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mParentId:Lorg/chromium/components/bookmarks/BookmarkId;
    invoke-static {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->access$100(Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v1

    # invokes: Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->updateParent(Lorg/chromium/components/bookmarks/BookmarkId;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->access$300(Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;Lorg/chromium/components/bookmarks/BookmarkId;)V

    .line 68
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;
    invoke-static {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->access$200(Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;)Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getDefaultFolder()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v1

    # invokes: Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->updateParent(Lorg/chromium/components/bookmarks/BookmarkId;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->access$300(Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;Lorg/chromium/components/bookmarks/BookmarkId;)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->access$200(Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;)Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mFolderId:Lorg/chromium/components/bookmarks/BookmarkId;
    invoke-static {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->access$400(Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->doesBookmarkExist(Lorg/chromium/components/bookmarks/BookmarkId;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;
    invoke-static {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->access$200(Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;)Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mFolderId:Lorg/chromium/components/bookmarks/BookmarkId;
    invoke-static {v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->access$400(Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkById(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getParentId()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v1

    # invokes: Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->updateParent(Lorg/chromium/components/bookmarks/BookmarkId;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->access$300(Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;Lorg/chromium/components/bookmarks/BookmarkId;)V

    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->finish()V

    goto :goto_0
.end method

.method public bookmarkNodeMoved(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;ILorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;I)V
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getId()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    invoke-virtual {p3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getId()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/components/bookmarks/BookmarkId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->access$200(Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;)Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v0

    invoke-virtual {p3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getId()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getChildAt(Lorg/chromium/components/bookmarks/BookmarkId;I)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mFolderId:Lorg/chromium/components/bookmarks/BookmarkId;
    invoke-static {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->access$400(Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/components/bookmarks/BookmarkId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;

    invoke-virtual {p3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getId()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v1

    # invokes: Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->updateParent(Lorg/chromium/components/bookmarks/BookmarkId;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->access$300(Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;Lorg/chromium/components/bookmarks/BookmarkId;)V

    .line 77
    :cond_0
    return-void
.end method

.method public bookmarkNodeRemoved(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;ILorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;Z)V
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getId()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->mFolderId:Lorg/chromium/components/bookmarks/BookmarkId;
    invoke-static {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->access$400(Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/components/bookmarks/BookmarkId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->finish()V

    goto :goto_0
.end method
