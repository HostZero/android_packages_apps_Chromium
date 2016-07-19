.class public Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager;
.super Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager;
.source "MediaRouteChooserDialogManager.java"


# instance fields
.field private mCancelled:Z


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/media/router/cast/MediaSource;Landroid/content/Context;Lorg/chromium/chrome/browser/media/router/MediaRouteDialogDelegate;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager;-><init>(Lorg/chromium/chrome/browser/media/router/cast/MediaSource;Landroid/content/Context;Lorg/chromium/chrome/browser/media/router/MediaRouteDialogDelegate;)V

    .line 29
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager;->mCancelled:Z

    return v0
.end method

.method static synthetic access$002(Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager;->mCancelled:Z

    return p1
.end method


# virtual methods
.method protected openDialogInternal(Landroid/support/v4/app/FragmentManager;)Landroid/support/v4/app/DialogFragment;
    .locals 2

    .prologue
    .line 33
    const-string/jumbo v0, "android.support.v7.mediarouter:MediaRouteChooserDialogFragment"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 76
    :goto_0
    return-object v0

    .line 35
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager$1;-><init>(Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager;)V

    .line 72
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/router/MediaRouteChooserDialogManager;->mediaSource()Lorg/chromium/chrome/browser/media/router/cast/MediaSource;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->buildRouteSelector()Landroid/support/v7/media/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ai;->setRouteSelector(Landroid/support/v7/media/e;)V

    .line 73
    const-string/jumbo v1, "android.support.v7.mediarouter:MediaRouteChooserDialogFragment"

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/app/ai;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_0
.end method
