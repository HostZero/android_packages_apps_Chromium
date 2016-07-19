.class Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$4;
.super Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$OfflinePageModelObserver;
.source "BookmarkEditActivity.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$4;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$OfflinePageModelObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public offlinePageDeleted(JLorg/chromium/chrome/browser/offlinepages/ClientId;)V
    .locals 2

    .prologue
    .line 124
    invoke-static {p3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkIdForOfflineClientId(Lorg/chromium/chrome/browser/offlinepages/ClientId;)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$4;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mBookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;
    invoke-static {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/components/bookmarks/BookmarkId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$4;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;

    # invokes: Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->updateOfflineSection()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->access$300(Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;)V

    .line 128
    :cond_0
    return-void
.end method
