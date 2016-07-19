.class Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory$SystemVisibilitySaver;
.super Ljava/lang/Object;
.source "MediaRouteChooserDialogFactory.java"


# instance fields
.field private mRestoreSystemVisibility:Z

.field private mSystemVisibility:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory$1;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory$SystemVisibilitySaver;-><init>()V

    return-void
.end method


# virtual methods
.method restoreSystemVisibility(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 52
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory$SystemVisibilitySaver;->mRestoreSystemVisibility:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 56
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getSystemUiVisibility()I

    move-result v1

    .line 57
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_0

    .line 58
    iget v1, p0, Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory$SystemVisibilitySaver;->mSystemVisibility:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 61
    :cond_0
    return-void
.end method

.method saveSystemVisibility(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 46
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getSystemUiVisibility()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory$SystemVisibilitySaver;->mSystemVisibility:I

    .line 47
    iget v0, p0, Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory$SystemVisibilitySaver;->mSystemVisibility:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory$SystemVisibilitySaver;->mRestoreSystemVisibility:Z

    .line 49
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
