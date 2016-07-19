.class final Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$3;
.super Ljava/lang/Object;
.source "BookmarkUtils.java"

# interfaces
.implements Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$bookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

.field final synthetic val$snackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;Lorg/chromium/chrome/browser/snackbar/SnackbarManager;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$3;->val$bookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iput-object p2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$3;->val$snackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    iput-object p3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAction(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 240
    const-string/jumbo v0, "OfflinePages.SaveStatusSnackbar.FreeUpSpaceButtonClicked"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 241
    new-instance v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpacePolicy;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$3;->val$bookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getOfflinePageBridge()Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpacePolicy;-><init>(Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;)V

    .line 243
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageStorageSpacePolicy;->hasPagesToCleanUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$3$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$3$1;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$3;)V

    .line 257
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$3;->val$bookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getOfflinePageBridge()Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;->newInstance(Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceCallback;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$3;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageOpenStorageSettingsDialog;->showDialog(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final onDismissNoAction(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 233
    const-string/jumbo v0, "OfflinePages.SaveStatusSnackbar.FreeUpSpaceButtonNotClicked"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$3;->val$bookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->destroy()V

    .line 236
    return-void
.end method
