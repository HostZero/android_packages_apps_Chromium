.class final Landroid/support/v7/app/at;
.super Landroid/support/v7/media/g;
.source "MediaRouteControllerDialog.java"


# instance fields
.field private synthetic a:Landroid/support/v7/app/aj;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/aj;)V
    .locals 0

    .prologue
    .line 769
    iput-object p1, p0, Landroid/support/v7/app/at;->a:Landroid/support/v7/app/aj;

    invoke-direct {p0}, Landroid/support/v7/media/g;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/aj;B)V
    .locals 0

    .prologue
    .line 769
    invoke-direct {p0, p1}, Landroid/support/v7/app/at;-><init>(Landroid/support/v7/app/aj;)V

    return-void
.end method


# virtual methods
.method public final onRouteChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Landroid/support/v7/app/at;->a:Landroid/support/v7/app/aj;

    invoke-static {v0}, Landroid/support/v7/app/aj;->h(Landroid/support/v7/app/aj;)V

    .line 778
    return-void
.end method

.method public final onRouteUnselected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Landroid/support/v7/app/at;->a:Landroid/support/v7/app/aj;

    invoke-static {v0}, Landroid/support/v7/app/aj;->h(Landroid/support/v7/app/aj;)V

    .line 773
    return-void
.end method

.method public final onRouteVolumeChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Landroid/support/v7/app/at;->a:Landroid/support/v7/app/aj;

    invoke-static {v0}, Landroid/support/v7/app/aj;->i(Landroid/support/v7/app/aj;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 783
    iget-object v0, p0, Landroid/support/v7/app/at;->a:Landroid/support/v7/app/aj;

    invoke-static {v0}, Landroid/support/v7/app/aj;->j(Landroid/support/v7/app/aj;)V

    .line 785
    :cond_0
    return-void
.end method
