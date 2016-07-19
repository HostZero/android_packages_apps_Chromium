.class public Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager;
.super Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager;
.source "MediaRouteControllerDialogManager.java"


# instance fields
.field private final mCallback:Landroid/support/v7/media/g;

.field private final mMediaRouteId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/media/router/cast/MediaSource;Ljava/lang/String;Landroid/content/Context;Lorg/chromium/chrome/browser/media/router/MediaRouteDialogDelegate;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p3, p4}, Lorg/chromium/chrome/browser/media/router/BaseMediaRouteDialogManager;-><init>(Lorg/chromium/chrome/browser/media/router/cast/MediaSource;Landroid/content/Context;Lorg/chromium/chrome/browser/media/router/MediaRouteDialogDelegate;)V

    .line 26
    new-instance v0, Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager$1;-><init>(Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager;->mCallback:Landroid/support/v7/media/g;

    .line 37
    iput-object p2, p0, Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager;->mMediaRouteId:Ljava/lang/String;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager;->mMediaRouteId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager;)Landroid/support/v7/media/g;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager;->mCallback:Landroid/support/v7/media/g;

    return-object v0
.end method


# virtual methods
.method protected openDialogInternal(Landroid/support/v4/app/FragmentManager;)Landroid/support/v4/app/DialogFragment;
    .locals 4

    .prologue
    .line 42
    const-string/jumbo v0, "android.support.v7.mediarouter:MediaRouteControllerDialogFragment"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    .line 44
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager$2;-><init>(Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager;)V

    .line 68
    const-string/jumbo v1, "android.support.v7.mediarouter:MediaRouteControllerDialogFragment"

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/app/ax;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 71
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager;->androidMediaRouter()Landroid/support/v7/media/MediaRouter;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager;->mediaSource()Lorg/chromium/chrome/browser/media/router/cast/MediaSource;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->buildRouteSelector()Landroid/support/v7/media/e;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/media/router/MediaRouteControllerDialogManager;->mCallback:Landroid/support/v7/media/g;

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/media/MediaRouter;->a(Landroid/support/v7/media/e;Landroid/support/v7/media/g;)V

    goto :goto_0
.end method
