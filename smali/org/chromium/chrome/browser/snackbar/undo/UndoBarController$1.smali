.class Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController$1;
.super Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelObserver;
.source "UndoBarController.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController$1;->this$0:Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelObserver;-><init>()V

    return-void
.end method

.method private disableUndo()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController$1;->this$0:Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;

    # getter for: Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->access$000(Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->isAccessibilityModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->enableAccessibilityLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public allTabsClosureCommitted()V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController$1;->disableUndo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController$1;->this$0:Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;

    # getter for: Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->access$200(Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;)Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController$1;->this$0:Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->dismissSnackbars(Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;)V

    goto :goto_0
.end method

.method public allTabsPendingClosure(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController$1;->disableUndo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController$1;->this$0:Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;

    # invokes: Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->showUndoCloseAllBar(Ljava/util/List;)V
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->access$300(Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;Ljava/util/List;)V

    goto :goto_0
.end method

.method public tabClosureCommitted(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 3

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController$1;->disableUndo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController$1;->this$0:Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;

    # getter for: Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->access$200(Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;)Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController$1;->this$0:Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->dismissSnackbars(Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public tabClosureUndone(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 3

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController$1;->disableUndo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController$1;->this$0:Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;

    # getter for: Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->access$200(Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;)Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController$1;->this$0:Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->dismissSnackbars(Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public tabPendingClosure(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 3

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController$1;->disableUndo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController$1;->this$0:Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getTitle()Ljava/lang/String;

    move-result-object v2

    # invokes: Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->showUndoBar(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->access$100(Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;ILjava/lang/String;)V

    goto :goto_0
.end method
