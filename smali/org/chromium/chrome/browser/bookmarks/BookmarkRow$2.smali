.class Lorg/chromium/chrome/browser/bookmarks/BookmarkRow$2;
.super Ljava/lang/Object;
.source "BookmarkRow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 149
    if-nez p3, :cond_1

    .line 150
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;

    iget-object v1, v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;

    iget-object v2, v2, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mBookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-interface {v1, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->toggleSelectionForBookmark(Lorg/chromium/components/bookmarks/BookmarkId;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->setChecked(Z)V

    .line 166
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mPopupMenu:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 167
    return-void

    .line 151
    :cond_1
    if-ne p3, v1, :cond_3

    .line 152
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;

    iget-object v0, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;

    iget-object v1, v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mBookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkById(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->isFolder()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getId()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkAddEditFolderActivity;->startEditFolderActivity(Landroid/content/Context;Lorg/chromium/components/bookmarks/BookmarkId;)V

    goto :goto_0

    .line 157
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getId()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->startEditActivity(Landroid/content/Context;Lorg/chromium/components/bookmarks/BookmarkId;Lorg/chromium/content_public/browser/WebContents;)V

    goto :goto_0

    .line 160
    :cond_3
    const/4 v0, 0x2

    if-ne p3, v0, :cond_4

    .line 161
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v1, [Lorg/chromium/components/bookmarks/BookmarkId;

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;

    iget-object v2, v2, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mBookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity;->startFolderSelectActivity(Landroid/content/Context;[Lorg/chromium/components/bookmarks/BookmarkId;)V

    goto :goto_0

    .line 163
    :cond_4
    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    .line 164
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;

    iget-object v0, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v0

    new-array v1, v1, [Lorg/chromium/components/bookmarks/BookmarkId;

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;

    iget-object v2, v2, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mBookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->deleteBookmarks([Lorg/chromium/components/bookmarks/BookmarkId;)V

    goto :goto_0
.end method
