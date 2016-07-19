.class public Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;
.super Ljava/lang/Object;
.source "UndoBarController.java"

# interfaces
.implements Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

.field private final mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

.field private final mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/snackbar/SnackbarManager;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p3, p0, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    .line 61
    iput-object p2, p0, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    .line 62
    iput-object p1, p0, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->mContext:Landroid/content/Context;

    .line 63
    new-instance v0, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController$1;-><init>(Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->showUndoBar(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;)Lorg/chromium/chrome/browser/snackbar/SnackbarManager;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->showUndoCloseAllBar(Ljava/util/List;)V

    return-void
.end method

.method private cancelTabClosure(I)V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModelForTabId(I)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->cancelTabClosure(I)V

    .line 172
    :cond_0
    return-void
.end method

.method private commitTabClosure(I)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModelForTabId(I)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->commitTabClosure(I)V

    .line 193
    :cond_0
    return-void
.end method

.method private showUndoBar(ILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 126
    const-string/jumbo v2, "AndroidTabCloseUndo.Toast"

    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x5

    invoke-static {v2, v0, v3}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 130
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    invoke-static {p2, p0, v1}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->make(Ljava/lang/CharSequence;Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;I)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->mContext:Landroid/content/Context;

    sget v3, Lorg/chromium/chrome/R$string;->undo_bar_close_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->setTemplateText(Ljava/lang/String;)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->mContext:Landroid/content/Context;

    sget v3, Lorg/chromium/chrome/R$string;->undo:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->setAction(Ljava/lang/String;Ljava/lang/Object;)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->showSnackbar(Lorg/chromium/chrome/browser/snackbar/Snackbar;)V

    .line 133
    return-void

    :cond_0
    move v0, v1

    .line 126
    goto :goto_0
.end method

.method private showUndoCloseAllBar(Ljava/util/List;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 144
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string/jumbo v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    invoke-static {v0, p0, v4}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->make(Ljava/lang/CharSequence;Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;I)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v0

    iget-object v2, p0, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->mContext:Landroid/content/Context;

    sget v3, Lorg/chromium/chrome/R$string;->undo_bar_close_all_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->setTemplateText(Ljava/lang/String;)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v0

    iget-object v2, p0, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->mContext:Landroid/content/Context;

    sget v3, Lorg/chromium/chrome/R$string;->undo:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->setAction(Ljava/lang/String;Ljava/lang/Object;)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->showSnackbar(Lorg/chromium/chrome/browser/snackbar/Snackbar;)V

    .line 149
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->removeObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V

    .line 115
    :cond_0
    return-void
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V

    .line 106
    return-void
.end method

.method public onAction(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 158
    const-string/jumbo v0, "AndroidTabCloseUndo.Toast"

    const/4 v1, 0x2

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 160
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 161
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->cancelTabClosure(I)V

    .line 167
    :cond_0
    return-void

    .line 163
    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 164
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->cancelTabClosure(I)V

    goto :goto_0
.end method

.method public onDismissNoAction(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 181
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 182
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->commitTabClosure(I)V

    .line 188
    :cond_0
    return-void

    .line 184
    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 185
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->commitTabClosure(I)V

    goto :goto_0
.end method
