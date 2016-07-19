.class public final Landroid/support/v7/media/Y;
.super Landroid/support/v7/media/MediaRouteProvider$RouteController;
.source "SystemMediaRouteProvider.java"


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/support/v7/media/X;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 691
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteProvider$RouteController;-><init>()V

    .line 692
    iput-object p2, p0, Landroid/support/v7/media/Y;->a:Ljava/lang/Object;

    .line 693
    return-void
.end method


# virtual methods
.method public final onSetVolume(I)V
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Landroid/support/v7/media/Y;->a:Ljava/lang/Object;

    .line 1164
    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    .line 698
    return-void
.end method

.method public final onUpdateVolume(I)V
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Landroid/support/v7/media/Y;->a:Ljava/lang/Object;

    .line 1168
    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    .line 703
    return-void
.end method
