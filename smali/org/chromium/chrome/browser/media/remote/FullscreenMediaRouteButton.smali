.class public Lorg/chromium/chrome/browser/media/remote/FullscreenMediaRouteButton;
.super Landroid/support/v7/app/ac;
.source "FullscreenMediaRouteButton.java"


# instance fields
.field private mVisibilityRequested:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/ac;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/FullscreenMediaRouteButton;->mVisibilityRequested:Z

    .line 27
    return-void
.end method

.method private setButtonVisibility(I)V
    .locals 1

    .prologue
    .line 63
    if-nez p1, :cond_1

    .line 64
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/FullscreenMediaRouteButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/media/remote/FullscreenMediaRouteButton;->setVisibility(I)V

    .line 72
    :goto_0
    return-void

    .line 67
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/media/remote/FullscreenMediaRouteButton;->setVisibility(I)V

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/media/remote/FullscreenMediaRouteButton;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public initialize(Lorg/chromium/chrome/browser/media/remote/MediaRouteController;)V
    .locals 1

    .prologue
    .line 37
    invoke-interface {p1}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->buildMediaRouteSelector()Landroid/support/v7/media/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/media/remote/FullscreenMediaRouteButton;->setRouteSelector(Landroid/support/v7/media/e;)V

    .line 38
    new-instance v0, Lorg/chromium/chrome/browser/media/remote/MediaRouteControllerDialogFactory;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteControllerDialogFactory;-><init>()V

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/media/remote/FullscreenMediaRouteButton;->setDialogFactory(Landroid/support/v7/app/ay;)V

    .line 39
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/FullscreenMediaRouteButton;->isEnabled()Z

    move-result v0

    .line 49
    invoke-super {p0, p1}, Landroid/support/v7/app/ac;->setEnabled(Z)V

    .line 51
    if-ne v0, p1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 53
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/FullscreenMediaRouteButton;->mVisibilityRequested:Z

    if-eqz v0, :cond_1

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/media/remote/FullscreenMediaRouteButton;->setButtonVisibility(I)V

    goto :goto_0

    .line 56
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/media/remote/FullscreenMediaRouteButton;->setVisibility(I)V

    goto :goto_0
.end method
