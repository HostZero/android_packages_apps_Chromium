.class final Landroid/support/v7/app/ad;
.super Landroid/support/v7/media/g;
.source "MediaRouteButton.java"


# instance fields
.field private synthetic a:Landroid/support/v7/app/ac;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/ac;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Landroid/support/v7/app/ad;->a:Landroid/support/v7/app/ac;

    invoke-direct {p0}, Landroid/support/v7/media/g;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/ac;B)V
    .locals 0

    .prologue
    .line 523
    invoke-direct {p0, p1}, Landroid/support/v7/app/ad;-><init>(Landroid/support/v7/app/ac;)V

    return-void
.end method


# virtual methods
.method public final onProviderAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/s;)V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Landroid/support/v7/app/ad;->a:Landroid/support/v7/app/ac;

    # invokes: Landroid/support/v7/app/ac;->refreshRoute()V
    invoke-static {v0}, Landroid/support/v7/app/ac;->access$100(Landroid/support/v7/app/ac;)V

    .line 552
    return-void
.end method

.method public final onProviderChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/s;)V
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Landroid/support/v7/app/ad;->a:Landroid/support/v7/app/ac;

    # invokes: Landroid/support/v7/app/ac;->refreshRoute()V
    invoke-static {v0}, Landroid/support/v7/app/ac;->access$100(Landroid/support/v7/app/ac;)V

    .line 562
    return-void
.end method

.method public final onProviderRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/s;)V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Landroid/support/v7/app/ad;->a:Landroid/support/v7/app/ac;

    # invokes: Landroid/support/v7/app/ac;->refreshRoute()V
    invoke-static {v0}, Landroid/support/v7/app/ac;->access$100(Landroid/support/v7/app/ac;)V

    .line 557
    return-void
.end method

.method public final onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Landroid/support/v7/app/ad;->a:Landroid/support/v7/app/ac;

    # invokes: Landroid/support/v7/app/ac;->refreshRoute()V
    invoke-static {v0}, Landroid/support/v7/app/ac;->access$100(Landroid/support/v7/app/ac;)V

    .line 527
    return-void
.end method

.method public final onRouteChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Landroid/support/v7/app/ad;->a:Landroid/support/v7/app/ac;

    # invokes: Landroid/support/v7/app/ac;->refreshRoute()V
    invoke-static {v0}, Landroid/support/v7/app/ac;->access$100(Landroid/support/v7/app/ac;)V

    .line 537
    return-void
.end method

.method public final onRouteRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Landroid/support/v7/app/ad;->a:Landroid/support/v7/app/ac;

    # invokes: Landroid/support/v7/app/ac;->refreshRoute()V
    invoke-static {v0}, Landroid/support/v7/app/ac;->access$100(Landroid/support/v7/app/ac;)V

    .line 532
    return-void
.end method

.method public final onRouteSelected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Landroid/support/v7/app/ad;->a:Landroid/support/v7/app/ac;

    # invokes: Landroid/support/v7/app/ac;->refreshRoute()V
    invoke-static {v0}, Landroid/support/v7/app/ac;->access$100(Landroid/support/v7/app/ac;)V

    .line 542
    return-void
.end method

.method public final onRouteUnselected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Landroid/support/v7/app/ad;->a:Landroid/support/v7/app/ac;

    # invokes: Landroid/support/v7/app/ac;->refreshRoute()V
    invoke-static {v0}, Landroid/support/v7/app/ac;->access$100(Landroid/support/v7/app/ac;)V

    .line 547
    return-void
.end method
