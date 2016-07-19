.class Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$5;
.super Ljava/lang/Object;
.source "BookmarkEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;

.field final synthetic val$button:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$5;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;

    iput-object p2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$5;->val$button:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 286
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$5;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;

    const/4 v1, 0x1

    # invokes: Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->recordOfflineButtonAction(Z)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->access$400(Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;Z)V

    .line 287
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$5;->val$button:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 288
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$5;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mBookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/offlinepages/ClientId;->createClientIdForBookmarkId(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/offlinepages/ClientId;

    move-result-object v0

    .line 289
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$5;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->mModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;
    invoke-static {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->access$100(Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;)Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getOfflinePageBridge()Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    move-result-object v1

    new-instance v2, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$5$1;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$5$1;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$5;)V

    invoke-virtual {v1, v0, v2}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->deletePage(Lorg/chromium/chrome/browser/offlinepages/ClientId;Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge$DeletePageCallback;)V

    .line 297
    return-void
.end method
