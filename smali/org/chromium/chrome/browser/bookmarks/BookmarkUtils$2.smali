.class final Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$2;
.super Ljava/lang/Object;
.source "BookmarkUtils.java"

# interfaces
.implements Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$bookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

.field final synthetic val$bookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;Landroid/app/Activity;Lorg/chromium/components/bookmarks/BookmarkId;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$2;->val$bookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iput-object p2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$2;->val$bookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAction(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 215
    const-string/jumbo v0, "EnhancedBookmarks.EditAfterCreateButtonClicked"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$2;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$2;->val$bookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

    check-cast p1, Lorg/chromium/content_public/browser/WebContents;

    invoke-static {v0, v1, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->startEditActivity(Landroid/content/Context;Lorg/chromium/components/bookmarks/BookmarkId;Lorg/chromium/content_public/browser/WebContents;)V

    .line 217
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$2;->val$bookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->destroy()V

    .line 218
    return-void
.end method

.method public final onDismissNoAction(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 208
    const-string/jumbo v0, "EnhancedBookmarks.EditAfterCreateButtonNotClicked"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils$2;->val$bookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->destroy()V

    .line 211
    return-void
.end method
