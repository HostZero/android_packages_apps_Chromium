.class final Landroid/support/v7/media/ae;
.super Landroid/support/v7/media/MediaRouteProvider$RouteController;
.source "SystemMediaRouteProvider.java"


# instance fields
.field private synthetic a:Landroid/support/v7/media/ad;


# direct methods
.method constructor <init>(Landroid/support/v7/media/ad;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Landroid/support/v7/media/ae;->a:Landroid/support/v7/media/ad;

    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteProvider$RouteController;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSetVolume(I)V
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Landroid/support/v7/media/ae;->a:Landroid/support/v7/media/ad;

    invoke-static {v0}, Landroid/support/v7/media/ad;->a(Landroid/support/v7/media/ad;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 162
    iget-object v0, p0, Landroid/support/v7/media/ae;->a:Landroid/support/v7/media/ad;

    invoke-static {v0}, Landroid/support/v7/media/ad;->b(Landroid/support/v7/media/ad;)V

    .line 163
    return-void
.end method

.method public final onUpdateVolume(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 167
    iget-object v0, p0, Landroid/support/v7/media/ae;->a:Landroid/support/v7/media/ad;

    invoke-static {v0}, Landroid/support/v7/media/ad;->a(Landroid/support/v7/media/ad;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 168
    iget-object v1, p0, Landroid/support/v7/media/ae;->a:Landroid/support/v7/media/ad;

    invoke-static {v1}, Landroid/support/v7/media/ad;->a(Landroid/support/v7/media/ad;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 169
    add-int v2, v0, p1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 170
    if-eq v1, v0, :cond_0

    .line 171
    iget-object v1, p0, Landroid/support/v7/media/ae;->a:Landroid/support/v7/media/ad;

    invoke-static {v1}, Landroid/support/v7/media/ad;->a(Landroid/support/v7/media/ad;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v3, v0, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 173
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/ae;->a:Landroid/support/v7/media/ad;

    invoke-static {v0}, Landroid/support/v7/media/ad;->b(Landroid/support/v7/media/ad;)V

    .line 174
    return-void
.end method
