.class Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;
.super Ljava/lang/Object;
.source "SnackbarCollection.java"


# instance fields
.field private mSnackbars:Ljava/util/Deque;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;->mSnackbars:Ljava/util/Deque;

    return-void
.end method

.method private static objectsAreEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 122
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    .line 123
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private removeCurrent(Z)Lorg/chromium/chrome/browser/snackbar/Snackbar;
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;->mSnackbars:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/snackbar/Snackbar;

    .line 47
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->getController()Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;

    move-result-object v1

    .line 49
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->getActionData()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;->onAction(Ljava/lang/Object;)V

    .line 52
    :cond_0
    :goto_0
    return-object v0

    .line 50
    :cond_1
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->getActionData()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;->onDismissNoAction(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method add(Lorg/chromium/chrome/browser/snackbar/Snackbar;)V
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->isTypeAction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;->getCurrent()Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;->getCurrent()Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->isTypeAction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;->removeCurrent(Z)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    .line 31
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;->mSnackbars:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;->mSnackbars:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method clear()V
    .locals 1

    .prologue
    .line 67
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;->removeCurrent(Z)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method

.method getCurrent()Lorg/chromium/chrome/browser/snackbar/Snackbar;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;->mSnackbars:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/snackbar/Snackbar;

    return-object v0
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;->mSnackbars:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    return v0
.end method

.method removeCurrentDueToAction()Lorg/chromium/chrome/browser/snackbar/Snackbar;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;->removeCurrent(Z)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method removeCurrentDueToTimeout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;->removeCurrent(Z)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    .line 75
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;->getCurrent()Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->isTypeAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;->removeCurrent(Z)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method removeMatchingSnackbars(Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;)Z
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    iget-object v1, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;->mSnackbars:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 83
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/snackbar/Snackbar;

    .line 85
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->getController()Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 86
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 87
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 89
    goto :goto_0

    .line 90
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method removeMatchingSnackbars(Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    iget-object v1, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;->mSnackbars:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 96
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/snackbar/Snackbar;

    .line 98
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->getController()Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;

    move-result-object v3

    if-ne v3, p1, :cond_1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->getActionData()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;->objectsAreEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 101
    const/4 v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    .line 103
    goto :goto_0

    .line 104
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method
