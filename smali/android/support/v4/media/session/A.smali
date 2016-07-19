.class final Landroid/support/v4/media/session/A;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/z;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3039
    new-instance v0, Landroid/media/session/MediaSession;

    invoke-direct {v0, p1, p2}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1958
    iput-object v0, p0, Landroid/support/v4/media/session/A;->a:Ljava/lang/Object;

    .line 1959
    new-instance v1, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v0, p0, Landroid/support/v4/media/session/A;->a:Ljava/lang/Object;

    .line 3096
    check-cast v0, Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    .line 1959
    invoke-direct {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/support/v4/media/session/A;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 1960
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4043
    instance-of v0, p1, Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    .line 1963
    iput-object p1, p0, Landroid/support/v4/media/session/A;->a:Ljava/lang/Object;

    .line 1964
    new-instance v1, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v0, p0, Landroid/support/v4/media/session/A;->a:Ljava/lang/Object;

    .line 4096
    check-cast v0, Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    .line 1964
    invoke-direct {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/support/v4/media/session/A;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 1965
    return-void

    .line 4046
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "mediaSession is not a valid MediaSession object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 1975
    iget-object v0, p0, Landroid/support/v4/media/session/A;->a:Ljava/lang/Object;

    .line 5065
    check-cast v0, Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 1976
    return-void
.end method

.method public final a(Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 2034
    iget-object v0, p0, Landroid/support/v4/media/session/A;->a:Ljava/lang/Object;

    .line 5112
    check-cast v0, Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    .line 2035
    return-void
.end method

.method public final a(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 2

    .prologue
    .line 2022
    iget-object v0, p0, Landroid/support/v4/media/session/A;->a:Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 5104
    :goto_0
    check-cast v0, Landroid/media/session/MediaSession;

    check-cast v1, Landroid/media/MediaMetadata;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    .line 2024
    return-void

    .line 2022
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->c()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public final a(Landroid/support/v4/media/VolumeProviderCompat;)V
    .locals 2

    .prologue
    .line 1985
    iget-object v0, p0, Landroid/support/v4/media/session/A;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/VolumeProviderCompat;->d()Ljava/lang/Object;

    move-result-object v1

    .line 5076
    check-cast v0, Landroid/media/session/MediaSession;

    check-cast v1, Landroid/media/VolumeProvider;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setPlaybackToRemote(Landroid/media/VolumeProvider;)V

    .line 1987
    return-void
.end method

.method public final a(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 2

    .prologue
    .line 2016
    iget-object v0, p0, Landroid/support/v4/media/session/A;->a:Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 5100
    :goto_0
    check-cast v0, Landroid/media/session/MediaSession;

    check-cast v1, Landroid/media/session/PlaybackState;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    .line 2018
    return-void

    .line 2016
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->f()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public final a(Landroid/support/v4/media/session/w;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 1969
    iget-object v0, p0, Landroid/support/v4/media/session/A;->a:Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 5061
    :goto_0
    check-cast v0, Landroid/media/session/MediaSession;

    check-cast v1, Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v0, v1, p2}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V

    .line 1971
    return-void

    .line 1969
    :cond_0
    iget-object v1, p1, Landroid/support/v4/media/session/w;->mCallbackObj:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 1991
    iget-object v0, p0, Landroid/support/v4/media/session/A;->a:Ljava/lang/Object;

    .line 5080
    check-cast v0, Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setActive(Z)V

    .line 1992
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 1996
    iget-object v0, p0, Landroid/support/v4/media/session/A;->a:Ljava/lang/Object;

    .line 5084
    check-cast v0, Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->isActive()Z

    move-result v0

    .line 1996
    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 2006
    iget-object v0, p0, Landroid/support/v4/media/session/A;->a:Ljava/lang/Object;

    .line 5092
    check-cast v0, Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->release()V

    .line 2007
    return-void
.end method

.method public final b(I)V
    .locals 2

    .prologue
    .line 1980
    iget-object v0, p0, Landroid/support/v4/media/session/A;->a:Ljava/lang/Object;

    .line 5070
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 5071
    invoke-virtual {v1, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 5072
    check-cast v0, Landroid/media/session/MediaSession;

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setPlaybackToLocal(Landroid/media/AudioAttributes;)V

    .line 1981
    return-void
.end method

.method public final c()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .prologue
    .line 2011
    iget-object v0, p0, Landroid/support/v4/media/session/A;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2070
    iget-object v0, p0, Landroid/support/v4/media/session/A;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2075
    const/4 v0, 0x0

    return-object v0
.end method
