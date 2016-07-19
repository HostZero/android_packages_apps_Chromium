.class public Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager$SystemVisibilitySaver;
.super Ljava/lang/Object;
.source "BaseMediaRouteDialogManager.java"


# instance fields
.field private mSystemVisibilityToRestore:I

.field private mWasFullscreenBeforeShowing:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method restoreSystemVisibility(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 47
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager$SystemVisibilitySaver;->mWasFullscreenBeforeShowing:Z

    if-nez v0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 52
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getSystemUiVisibility()I

    move-result v1

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 54
    :goto_1
    if-eqz v1, :cond_0

    .line 56
    iget v1, p0, Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager$SystemVisibilitySaver;->mSystemVisibilityToRestore:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 52
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method saveSystemVisibility(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 41
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getSystemUiVisibility()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager$SystemVisibilitySaver;->mSystemVisibilityToRestore:I

    .line 42
    iget v0, p0, Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager$SystemVisibilitySaver;->mSystemVisibilityToRestore:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager$SystemVisibilitySaver;->mWasFullscreenBeforeShowing:Z

    .line 44
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
