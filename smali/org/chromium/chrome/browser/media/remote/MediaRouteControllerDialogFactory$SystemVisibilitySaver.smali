.class Lorg/chromium/chrome/browser/media/remote/MediaRouteControllerDialogFactory$SystemVisibilitySaver;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialogFactory.java"


# instance fields
.field private mRestoreSystemVisibility:Z

.field private mSystemVisibility:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/media/remote/MediaRouteControllerDialogFactory$1;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteControllerDialogFactory$SystemVisibilitySaver;-><init>()V

    return-void
.end method


# virtual methods
.method restoreSystemVisibility(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 37
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/MediaRouteControllerDialogFactory$SystemVisibilitySaver;->mRestoreSystemVisibility:Z

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 41
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getSystemUiVisibility()I

    move-result v1

    .line 42
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_0

    .line 43
    iget v1, p0, Lorg/chromium/chrome/browser/media/remote/MediaRouteControllerDialogFactory$SystemVisibilitySaver;->mSystemVisibility:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 46
    :cond_0
    return-void
.end method

.method saveSystemVisibility(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 31
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getSystemUiVisibility()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/media/remote/MediaRouteControllerDialogFactory$SystemVisibilitySaver;->mSystemVisibility:I

    .line 32
    iget v0, p0, Lorg/chromium/chrome/browser/media/remote/MediaRouteControllerDialogFactory$SystemVisibilitySaver;->mSystemVisibility:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/MediaRouteControllerDialogFactory$SystemVisibilitySaver;->mRestoreSystemVisibility:Z

    .line 34
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
