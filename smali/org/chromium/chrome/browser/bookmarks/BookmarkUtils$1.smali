.class final Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1;
.super Ljava/lang/Object;
.source "BookmarkUtils.java"

# interfaces
.implements Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$AddBookmarkCallback;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$bookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

.field final synthetic val$snackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

.field final synthetic val$webContents:Lorg/chromium/content_public/browser/WebContents;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;Lorg/chromium/chrome/browser/snackbar/SnackbarManager;Landroid/app/Activity;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1;->val$bookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iput-object p2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1;->val$snackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    iput-object p3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1;->val$webContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBookmarkAdded(Lorg/chromium/components/bookmarks/BookmarkId;I)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 173
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1;->val$bookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getOfflinePageBridge()Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    move-result-object v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1;->val$bookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1;->val$snackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1;->val$activity:Landroid/app/Activity;

    iget-object v6, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1;->val$webContents:Lorg/chromium/content_public/browser/WebContents;

    move-object v3, p1

    move v4, p2

    # invokes: Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->showSnackbarForAddingBookmark(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;Lorg/chromium/chrome/browser/snackbar/SnackbarManager;Landroid/app/Activity;Lorg/chromium/components/bookmarks/BookmarkId;IZLorg/chromium/content_public/browser/WebContents;)V
    invoke-static/range {v0 .. v6}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;Lorg/chromium/chrome/browser/snackbar/SnackbarManager;Landroid/app/Activity;Lorg/chromium/components/bookmarks/BookmarkId;IZLorg/chromium/content_public/browser/WebContents;)V

    .line 193
    :goto_0
    return-void

    .line 181
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1$1;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1;Lorg/chromium/components/bookmarks/BookmarkId;I)V

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
