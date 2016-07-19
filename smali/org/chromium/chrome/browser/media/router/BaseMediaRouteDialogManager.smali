.class public abstract Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager;
.super Ljava/lang/Object;
.source "BaseMediaRouteDialogManager.java"

# interfaces
.implements Lorg/chromium/chrome/browser/media/router/MediaRouteDialogManager;


# instance fields
.field private final mAndroidMediaRouter:Landroid/support/v7/media/MediaRouter;

.field private final mDelegate:Lorg/chromium/chrome/browser/media/router/MediaRouteDialogDelegate;

.field protected mDialogFragment:Landroid/support/v4/app/DialogFragment;

.field private final mMediaSource:Lorg/chromium/chrome/browser/media/router/cast/MediaSource;


# direct methods
.method protected constructor <init>(Lorg/chromium/chrome/browser/media/router/cast/MediaSource;Landroid/content/Context;Lorg/chromium/chrome/browser/media/router/MediaRouteDialogDelegate;)V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager;->mMediaSource:Lorg/chromium/chrome/browser/media/router/cast/MediaSource;

    .line 96
    invoke-static {p2}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->getAndroidMediaRouter(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager;->mAndroidMediaRouter:Landroid/support/v7/media/MediaRouter;

    .line 97
    iput-object p3, p0, Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager;->mDelegate:Lorg/chromium/chrome/browser/media/router/MediaRouteDialogDelegate;

    .line 98
    return-void
.end method


# virtual methods
.method protected androidMediaRouter()Landroid/support/v7/media/MediaRouter;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager;->mAndroidMediaRouter:Landroid/support/v7/media/MediaRouter;

    return-object v0
.end method

.method public closeDialog()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager;->mDialogFragment:Landroid/support/v4/app/DialogFragment;

    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager;->mDialogFragment:Landroid/support/v4/app/DialogFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager;->mDialogFragment:Landroid/support/v4/app/DialogFragment;

    goto :goto_0
.end method

.method protected delegate()Lorg/chromium/chrome/browser/media/router/MediaRouteDialogDelegate;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager;->mDelegate:Lorg/chromium/chrome/browser/media/router/MediaRouteDialogDelegate;

    return-object v0
.end method

.method public isShowingDialog()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager;->mDialogFragment:Landroid/support/v4/app/DialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager;->mDialogFragment:Landroid/support/v4/app/DialogFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected mediaSource()Lorg/chromium/chrome/browser/media/router/cast/MediaSource;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager;->mMediaSource:Lorg/chromium/chrome/browser/media/router/cast/MediaSource;

    return-object v0
.end method

.method public openDialog()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager;->mAndroidMediaRouter:Landroid/support/v7/media/MediaRouter;

    if-nez v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/w;

    .line 72
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Landroid/support/v4/app/w;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager;->openDialogInternal(Landroid/support/v4/app/FragmentManager;)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager;->mDialogFragment:Landroid/support/v4/app/DialogFragment;

    goto :goto_0
.end method

.method protected abstract openDialogInternal(Landroid/support/v4/app/FragmentManager;)Landroid/support/v4/app/DialogFragment;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
