.class final Landroid/support/v4/media/session/n;
.super Landroid/support/v4/media/session/m;
.source "MediaControllerCompat.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 0

    .prologue
    .line 1354
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/session/m;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat;)V

    .line 1355
    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v4/media/session/q;
    .locals 2

    .prologue
    .line 1364
    iget-object v0, p0, Landroid/support/v4/media/session/n;->a:Ljava/lang/Object;

    .line 2056
    check-cast v0, Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v1

    .line 1365
    if-eqz v1, :cond_0

    new-instance v0, Landroid/support/v4/media/session/s;

    invoke-direct {v0, v1}, Landroid/support/v4/media/session/s;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
