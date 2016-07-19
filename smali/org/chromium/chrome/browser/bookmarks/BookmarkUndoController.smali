.class public Lorg/chromium/chrome/browser/bookmarks/BookmarkUndoController;
.super Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;
.source "BookmarkUndoController.java"

# interfaces
.implements Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$BookmarkDeleteObserver;
.implements Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

.field private final mContext:Landroid/content/Context;

.field private final mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUndoController;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUndoController;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;Lorg/chromium/chrome/browser/snackbar/SnackbarManager;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;-><init>()V

    .line 38
    iput-object p2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUndoController;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    .line 39
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUndoController;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->addDeleteObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$BookmarkDeleteObserver;)V

    .line 40
    iput-object p3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUndoController;->mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    .line 41
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUndoController;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method


# virtual methods
.method public bookmarkModelChanged()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUndoController;->mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->dismissSnackbars(Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;)V

    .line 66
    return-void
.end method

.method public bookmarkNodeAdded(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;I)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public bookmarkNodeChanged(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUndoController;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->removeDeleteObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkModel$BookmarkDeleteObserver;)V

    .line 49
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUndoController;->mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->dismissSnackbars(Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;)V

    .line 50
    return-void
.end method

.method public onAction(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUndoController;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->undo()V

    .line 55
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUndoController;->mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->dismissSnackbars(Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;)V

    .line 56
    return-void
.end method

.method public onDeleteBookmarks([Ljava/lang/String;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 81
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUndoController;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 83
    :cond_1
    if-nez p2, :cond_2

    .line 96
    :goto_0
    return-void

    .line 85
    :cond_2
    array-length v0, p1

    if-ne v0, v3, :cond_3

    .line 86
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUndoController;->mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    aget-object v1, p1, v5

    invoke-static {v1, p0, v5}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->make(Ljava/lang/CharSequence;Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;I)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUndoController;->mContext:Landroid/content/Context;

    sget v3, Lorg/chromium/chrome/R$string;->undo_bar_delete_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->setTemplateText(Ljava/lang/String;)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUndoController;->mContext:Landroid/content/Context;

    sget v3, Lorg/chromium/chrome/R$string;->undo:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->setAction(Ljava/lang/String;Ljava/lang/Object;)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->showSnackbar(Lorg/chromium/chrome/browser/snackbar/Snackbar;)V

    goto :goto_0

    .line 90
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUndoController;->mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "%d"

    new-array v3, v3, [Ljava/lang/Object;

    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0, v5}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->make(Ljava/lang/CharSequence;Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;I)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUndoController;->mContext:Landroid/content/Context;

    sget v3, Lorg/chromium/chrome/R$string;->undo_bar_multiple_delete_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->setTemplateText(Ljava/lang/String;)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkUndoController;->mContext:Landroid/content/Context;

    sget v3, Lorg/chromium/chrome/R$string;->undo:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->setAction(Ljava/lang/String;Ljava/lang/Object;)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->showSnackbar(Lorg/chromium/chrome/browser/snackbar/Snackbar;)V

    goto :goto_0
.end method

.method public onDismissNoAction(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 60
    return-void
.end method
