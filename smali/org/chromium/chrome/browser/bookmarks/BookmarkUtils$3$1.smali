.class Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$3$1;
.super Ljava/lang/Object;
.source "BookmarkUtils.java"

# interfaces
.implements Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$3;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$3;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$3$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFreeUpSpaceCancelled()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$3$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$3;

    iget-object v0, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$3;->val$bookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->destroy()V

    .line 255
    return-void
.end method

.method public onFreeUpSpaceDone()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$3$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$3;

    iget-object v0, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$3;->val$snackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$3$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$3;

    iget-object v1, v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$3;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageFreeUpSpaceDialog;->createStorageClearedSnackbar(Landroid/content/Context;)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->showSnackbar(Lorg/chromium/chrome/browser/snackbar/Snackbar;)V

    .line 250
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$3$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$3;

    iget-object v0, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$3;->val$bookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->destroy()V

    .line 251
    return-void
.end method
