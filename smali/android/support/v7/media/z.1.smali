.class final Landroid/support/v7/media/z;
.super Landroid/media/MediaRouter$VolumeCallback;
.source "MediaRouterJellybean.java"


# instance fields
.field private a:Landroid/support/v7/media/y;


# direct methods
.method public constructor <init>(Landroid/support/v7/media/y;)V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Landroid/media/MediaRouter$VolumeCallback;-><init>()V

    .line 427
    iput-object p1, p0, Landroid/support/v7/media/z;->a:Landroid/support/v7/media/y;

    .line 428
    return-void
.end method


# virtual methods
.method public final onVolumeSetRequest(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Landroid/support/v7/media/z;->a:Landroid/support/v7/media/y;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/media/y;->a(Ljava/lang/Object;I)V

    .line 434
    return-void
.end method

.method public final onVolumeUpdateRequest(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Landroid/support/v7/media/z;->a:Landroid/support/v7/media/y;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/media/y;->b(Ljava/lang/Object;I)V

    .line 440
    return-void
.end method
