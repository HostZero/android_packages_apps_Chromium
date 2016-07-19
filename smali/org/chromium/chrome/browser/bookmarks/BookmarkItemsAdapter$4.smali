.class Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter$4;
.super Ljava/lang/Object;
.source "BookmarkItemsAdapter.java"

# interfaces
.implements Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter$4;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFreeUpSpaceCancelled()V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public onFreeUpSpaceDone()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter$4;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;

    # invokes: Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->refreshOfflinePagesFilterView()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->access$400(Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;)V

    .line 303
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter$4;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->access$100(Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;)Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getSnackbarManager()Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter$4;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;->access$500(Lorg/chromium/chrome/browser/bookmarks/BookmarkItemsAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;->createStorageClearedSnackbar(Landroid/content/Context;)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->showSnackbar(Lorg/chromium/chrome/browser/snackbar/Snackbar;)V

    .line 306
    return-void
.end method
