.class Landroid/support/v4/media/session/m;
.super Ljava/lang/Object;
.source "MediaControllerCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/l;


# instance fields
.field protected final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 1

    .prologue
    .line 1149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1150
    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/media/session/g;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/m;->a:Ljava/lang/Object;

    .line 1152
    iget-object v0, p0, Landroid/support/v4/media/session/m;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1153
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 1

    .prologue
    .line 1143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1144
    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->c()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/media/session/g;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/m;->a:Ljava/lang/Object;

    .line 1146
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v4/media/session/q;
    .locals 2

    .prologue
    .line 1172
    iget-object v0, p0, Landroid/support/v4/media/session/m;->a:Ljava/lang/Object;

    .line 2056
    check-cast v0, Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v1

    .line 1173
    if-eqz v1, :cond_0

    new-instance v0, Landroid/support/v4/media/session/r;

    invoke-direct {v0, v1}, Landroid/support/v4/media/session/r;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/support/v4/media/session/h;)V
    .locals 2

    .prologue
    .line 1162
    iget-object v0, p0, Landroid/support/v4/media/session/m;->a:Ljava/lang/Object;

    invoke-static {p1}, Landroid/support/v4/media/session/h;->c(Landroid/support/v4/media/session/h;)Ljava/lang/Object;

    move-result-object v1

    .line 2051
    check-cast v0, Landroid/media/session/MediaController;

    check-cast v1, Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 1163
    return-void
.end method

.method public final a(Landroid/support/v4/media/session/h;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 1157
    iget-object v0, p0, Landroid/support/v4/media/session/m;->a:Ljava/lang/Object;

    invoke-static {p1}, Landroid/support/v4/media/session/h;->c(Landroid/support/v4/media/session/h;)Ljava/lang/Object;

    move-result-object v1

    .line 2046
    check-cast v0, Landroid/media/session/MediaController;

    check-cast v1, Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1, p2}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    .line 1158
    return-void
.end method

.method public final b()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Landroid/support/v4/media/session/m;->a:Ljava/lang/Object;

    .line 2060
    check-cast v0, Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    .line 1179
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->a(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1

    .prologue
    .line 1184
    iget-object v0, p0, Landroid/support/v4/media/session/m;->a:Ljava/lang/Object;

    .line 2064
    check-cast v0, Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    .line 1185
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/support/v4/media/MediaMetadataCompat;->a(Ljava/lang/Object;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
