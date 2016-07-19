.class Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1$1;
.super Landroid/os/AsyncTask;
.source "BookmarkUtils.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1;

.field final synthetic val$bookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

.field final synthetic val$saveResult:I


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1;Lorg/chromium/components/bookmarks/BookmarkId;I)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1;

    iput-object p2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1$1;->val$bookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

    iput p3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1$1;->val$saveResult:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 184
    invoke-static {}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->isStorageAlmostFull()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 181
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 7

    .prologue
    .line 189
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1;

    iget-object v0, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1;->val$bookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1;

    iget-object v1, v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1;->val$snackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1;

    iget-object v2, v2, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1$1;->val$bookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

    iget v4, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1$1;->val$saveResult:I

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v6, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1;

    iget-object v6, v6, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1;->val$webContents:Lorg/chromium/content_public/browser/WebContents;

    # invokes: Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->showSnackbarForAddingBookmark(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;Lorg/chromium/chrome/browser/snackbar/SnackbarManager;Landroid/app/Activity;Lorg/chromium/components/bookmarks/BookmarkId;IZLorg/chromium/content_public/browser/WebContents;)V
    invoke-static/range {v0 .. v6}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;Lorg/chromium/chrome/browser/snackbar/SnackbarManager;Landroid/app/Activity;Lorg/chromium/components/bookmarks/BookmarkId;IZLorg/chromium/content_public/browser/WebContents;)V

    .line 191
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 181
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$1$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
