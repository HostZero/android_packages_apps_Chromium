.class public Lorg/chromium/chrome/browser/snackbar/SnackbarManager;
.super Ljava/lang/Object;
.source "SnackbarManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static sAccessibilitySnackbarDurationMs:I

.field private static sSnackbarDurationMs:I


# instance fields
.field private mActivityInForeground:Z

.field private final mHideRunnable:Ljava/lang/Runnable;

.field private mIsDisabledForTesting:Z

.field private mParentView:Landroid/view/ViewGroup;

.field private mSnackbars:Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;

.field private final mUIThreadHandler:Landroid/os/Handler;

.field private mView:Lorg/chromium/chrome/browser/snackbar/SnackbarView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0xbb8

    sput v0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->sSnackbarDurationMs:I

    .line 71
    const/16 v0, 0x1770

    sput v0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->sAccessibilitySnackbarDurationMs:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mSnackbars:Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;

    .line 79
    new-instance v0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager$1;-><init>(Lorg/chromium/chrome/browser/snackbar/SnackbarManager;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mHideRunnable:Ljava/lang/Runnable;

    .line 92
    iput-object p1, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mParentView:Landroid/view/ViewGroup;

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mUIThreadHandler:Landroid/os/Handler;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/snackbar/SnackbarManager;)Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mSnackbars:Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/snackbar/SnackbarManager;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->updateView()V

    return-void
.end method

.method private getDuration(Lorg/chromium/chrome/browser/snackbar/Snackbar;)I
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->getDuration()I

    move-result v0

    .line 207
    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->isAccessibilityModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->sAccessibilitySnackbarDurationMs:I

    .line 211
    :cond_0
    :goto_0
    return v0

    .line 208
    :cond_1
    sget v0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->sSnackbarDurationMs:I

    goto :goto_0
.end method

.method public static setDurationForTesting(I)V
    .locals 0

    .prologue
    .line 228
    sput p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->sSnackbarDurationMs:I

    .line 229
    sput p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->sAccessibilitySnackbarDurationMs:I

    .line 230
    return-void
.end method

.method private updateView()V
    .locals 6

    .prologue
    .line 178
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mActivityInForeground:Z

    if-nez v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mSnackbars:Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;->getCurrent()Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v1

    .line 180
    if-nez v1, :cond_2

    .line 181
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mUIThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 182
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mView:Lorg/chromium/chrome/browser/snackbar/SnackbarView;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mView:Lorg/chromium/chrome/browser/snackbar/SnackbarView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->dismiss()V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mView:Lorg/chromium/chrome/browser/snackbar/SnackbarView;

    goto :goto_0

    .line 187
    :cond_2
    const/4 v0, 0x1

    .line 188
    iget-object v2, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mView:Lorg/chromium/chrome/browser/snackbar/SnackbarView;

    if-nez v2, :cond_3

    .line 189
    new-instance v2, Lorg/chromium/chrome/browser/snackbar/SnackbarView;

    iget-object v3, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mParentView:Landroid/view/ViewGroup;

    invoke-direct {v2, v3, p0, v1}, Lorg/chromium/chrome/browser/snackbar/SnackbarView;-><init>(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;Lorg/chromium/chrome/browser/snackbar/Snackbar;)V

    iput-object v2, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mView:Lorg/chromium/chrome/browser/snackbar/SnackbarView;

    .line 190
    iget-object v2, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mView:Lorg/chromium/chrome/browser/snackbar/SnackbarView;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->show()V

    .line 195
    :goto_1
    if-eqz v0, :cond_0

    .line 196
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->getDuration(Lorg/chromium/chrome/browser/snackbar/Snackbar;)I

    move-result v0

    .line 197
    iget-object v1, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mUIThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 198
    iget-object v1, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mUIThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mHideRunnable:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 199
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mView:Lorg/chromium/chrome/browser/snackbar/SnackbarView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->announceforAccessibility()V

    goto :goto_0

    .line 192
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mView:Lorg/chromium/chrome/browser/snackbar/SnackbarView;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->update(Lorg/chromium/chrome/browser/snackbar/Snackbar;)Z

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public disableForTesting()V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mIsDisabledForTesting:Z

    .line 220
    return-void
.end method

.method public dismissSnackbars(Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mSnackbars:Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;->removeMatchingSnackbars(Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->updateView()V

    .line 132
    :cond_0
    return-void
.end method

.method public dismissSnackbars(Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mSnackbars:Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;->removeMatchingSnackbars(Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-direct {p0}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->updateView()V

    .line 144
    :cond_0
    return-void
.end method

.method getCurrentSnackbarForTesting()Lorg/chromium/chrome/browser/snackbar/Snackbar;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mSnackbars:Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;->getCurrent()Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mView:Lorg/chromium/chrome/browser/snackbar/SnackbarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mView:Lorg/chromium/chrome/browser/snackbar/SnackbarView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mSnackbars:Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;->removeCurrentDueToAction()Lorg/chromium/chrome/browser/snackbar/Snackbar;

    .line 163
    invoke-direct {p0}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->updateView()V

    .line 164
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mActivityInForeground:Z

    .line 101
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mSnackbars:Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;->clear()V

    .line 108
    invoke-direct {p0}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->updateView()V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mActivityInForeground:Z

    .line 110
    return-void
.end method

.method public showSnackbar(Lorg/chromium/chrome/browser/snackbar/Snackbar;)V
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mActivityInForeground:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mIsDisabledForTesting:Z

    if-eqz v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mSnackbars:Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/snackbar/SnackbarCollection;->add(Lorg/chromium/chrome/browser/snackbar/Snackbar;)V

    .line 119
    invoke-direct {p0}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->updateView()V

    .line 120
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->mView:Lorg/chromium/chrome/browser/snackbar/SnackbarView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->announceforAccessibility()V

    goto :goto_0
.end method
