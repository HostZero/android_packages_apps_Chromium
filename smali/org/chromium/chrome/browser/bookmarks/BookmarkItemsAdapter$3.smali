.class Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter$3;
.super Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$OfflinePageModelObserver;
.source "BookmarkItemsAdapter.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter$3;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$OfflinePageModelObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public offlinePageDeleted(JLorg/chromium/chrome/browser/offlinepages/ClientId;)V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter$3;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->access$100(Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;)Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getCurrentState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 288
    invoke-static {p3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkIdForOfflineClientId(Lorg/chromium/chrome/browser/offlinepages/ClientId;)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    .line 289
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter$3;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;

    # invokes: Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->getPositionForBookmark(Lorg/chromium/components/bookmarks/BookmarkId;)I
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;Lorg/chromium/components/bookmarks/BookmarkId;)I

    move-result v0

    .line 290
    if-ltz v0, :cond_0

    .line 291
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter$3;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;

    # invokes: Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->removeItem(I)V
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->access$200(Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;I)V

    .line 294
    :cond_0
    return-void
.end method

.method public offlinePageModelChanged()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter$3;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->access$100(Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;)Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter$3;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->notifyStateChange(Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;)V

    .line 283
    return-void
.end method
