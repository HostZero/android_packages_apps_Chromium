.class Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter$1;
.super Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;
.source "BookmarkItemsAdapter.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public bookmarkModelChanged()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->access$100(Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;)Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->notifyStateChange(Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;)V

    .line 78
    return-void
.end method

.method public bookmarkNodeChanged(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getId()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v1

    # invokes: Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->getPositionForBookmark(Lorg/chromium/components/bookmarks/BookmarkId;)I
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;Lorg/chromium/components/bookmarks/BookmarkId;)I

    move-result v0

    .line 59
    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->notifyItemChanged(I)V

    .line 60
    :cond_0
    return-void
.end method

.method public bookmarkNodeRemoved(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;ILorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;Z)V
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->isFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->access$100(Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;)Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->notifyStateChange(Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;)V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;

    invoke-virtual {p3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getId()Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v1

    # invokes: Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->getPositionForBookmark(Lorg/chromium/components/bookmarks/BookmarkId;)I
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;Lorg/chromium/components/bookmarks/BookmarkId;)I

    move-result v0

    .line 69
    if-ltz v0, :cond_0

    .line 70
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;

    # invokes: Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->removeItem(I)V
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->access$200(Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;I)V

    goto :goto_0
.end method
