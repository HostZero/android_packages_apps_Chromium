.class public Lorg/chromium/chrome/browser/bookmarks/BookmarkActivity;
.super Lorg/chromium/chrome/browser/bookmarks/BookmarkActivityBase;
.source "BookmarkActivity.java"

# interfaces
.implements Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarManageable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final EDIT_BOOKMARK_REQUEST_CODE:I = 0xe

.field public static final INTENT_VISIT_BOOKMARK_ID:Ljava/lang/String; = "BookmarkEditActivity.VisitBookmarkId"


# instance fields
.field private mBookmarkManager:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

.field private mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivity;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getSnackbarManager()Lorg/chromium/chrome/browser/snackbar/SnackbarManager;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivity;->mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 80
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 81
    const/16 v0, 0xe

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 82
    const-string/jumbo v0, "BookmarkEditActivity.VisitBookmarkId"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/components/bookmarks/BookmarkId;->getBookmarkIdFromString(Ljava/lang/String;)Lorg/chromium/components/bookmarks/BookmarkId;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivity;->mBookmarkManager:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->openBookmark(Lorg/chromium/components/bookmarks/BookmarkId;I)V

    .line 86
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivity;->mBookmarkManager:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivityBase;->onBackPressed()V

    .line 76
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 36
    new-instance v1, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v1, v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivity;->mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    .line 37
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivity;->mBookmarkManager:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    .line 38
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "chrome-native://bookmarks/"

    .line 40
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivity;->mBookmarkManager:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->updateForUrl(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivity;->mBookmarkManager:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivity;->setContentView(Landroid/view/View;)V

    .line 43
    sget v0, Lorg/chromium/chrome/R$string;->bookmarks:I

    invoke-static {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->getStringId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->setTaskDescriptionInDocumentMode(Landroid/app/Activity;Ljava/lang/String;)V

    .line 47
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    sget v0, Lorg/chromium/chrome/R$layout;->bookmark_main_content:I

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivityBase;->onDestroy()V

    .line 65
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivity;->mBookmarkManager:Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkManager;->destroy()V

    .line 66
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivityBase;->onStart()V

    .line 53
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivity;->mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->onStart()V

    .line 54
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivityBase;->onStop()V

    .line 59
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActivity;->mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->onStop()V

    .line 60
    return-void
.end method
