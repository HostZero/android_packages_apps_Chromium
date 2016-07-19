.class final Landroid/support/v4/media/session/o;
.super Ljava/lang/Object;
.source "MediaControllerCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/l;


# instance fields
.field private a:Landroid/support/v4/media/session/d;

.field private b:Landroid/support/v4/media/session/q;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 1

    .prologue
    .line 806
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 808
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Landroid/support/v4/media/session/e;->a(Landroid/os/IBinder;)Landroid/support/v4/media/session/d;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/o;->a:Landroid/support/v4/media/session/d;

    .line 809
    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v4/media/session/q;
    .locals 2

    .prologue
    .line 857
    iget-object v0, p0, Landroid/support/v4/media/session/o;->b:Landroid/support/v4/media/session/q;

    if-nez v0, :cond_0

    .line 858
    new-instance v0, Landroid/support/v4/media/session/t;

    iget-object v1, p0, Landroid/support/v4/media/session/o;->a:Landroid/support/v4/media/session/d;

    invoke-direct {v0, v1}, Landroid/support/v4/media/session/t;-><init>(Landroid/support/v4/media/session/d;)V

    iput-object v0, p0, Landroid/support/v4/media/session/o;->b:Landroid/support/v4/media/session/q;

    .line 861
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/o;->b:Landroid/support/v4/media/session/q;

    return-object v0
.end method

.method public final a(Landroid/support/v4/media/session/h;)V
    .locals 4

    .prologue
    .line 829
    if-nez p1, :cond_0

    .line 830
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callback may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 833
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/o;->a:Landroid/support/v4/media/session/d;

    invoke-static {p1}, Landroid/support/v4/media/session/h;->c(Landroid/support/v4/media/session/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/a;

    invoke-interface {v1, v0}, Landroid/support/v4/media/session/d;->b(Landroid/support/v4/media/session/a;)V

    .line 835
    iget-object v0, p0, Landroid/support/v4/media/session/o;->a:Landroid/support/v4/media/session/d;

    invoke-interface {v0}, Landroid/support/v4/media/session/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 836
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/media/session/h;->a(Landroid/support/v4/media/session/h;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    :goto_0
    return-void

    .line 837
    :catch_0
    move-exception v0

    .line 838
    const-string/jumbo v1, "MediaControllerCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Dead object in unregisterCallback. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final a(Landroid/support/v4/media/session/h;Landroid/os/Handler;)V
    .locals 4

    .prologue
    .line 813
    if-nez p1, :cond_0

    .line 814
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callback may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 817
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/o;->a:Landroid/support/v4/media/session/d;

    invoke-interface {v0}, Landroid/support/v4/media/session/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 818
    iget-object v1, p0, Landroid/support/v4/media/session/o;->a:Landroid/support/v4/media/session/d;

    invoke-static {p1}, Landroid/support/v4/media/session/h;->c(Landroid/support/v4/media/session/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/a;

    invoke-interface {v1, v0}, Landroid/support/v4/media/session/d;->a(Landroid/support/v4/media/session/a;)V

    .line 819
    invoke-static {p1, p2}, Landroid/support/v4/media/session/h;->a(Landroid/support/v4/media/session/h;Landroid/os/Handler;)V

    .line 820
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/support/v4/media/session/h;->a(Landroid/support/v4/media/session/h;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 825
    :goto_0
    return-void

    .line 821
    :catch_0
    move-exception v0

    .line 822
    const-string/jumbo v1, "MediaControllerCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Dead object in registerCallback. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    invoke-virtual {p1}, Landroid/support/v4/media/session/h;->a()V

    goto :goto_0
.end method

.method public final b()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 4

    .prologue
    .line 867
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/o;->a:Landroid/support/v4/media/session/d;

    invoke-interface {v0}, Landroid/support/v4/media/session/d;->o()Landroid/support/v4/media/session/PlaybackStateCompat;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 871
    :goto_0
    return-object v0

    .line 868
    :catch_0
    move-exception v0

    .line 869
    const-string/jumbo v1, "MediaControllerCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Dead object in getPlaybackState. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 4

    .prologue
    .line 877
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/o;->a:Landroid/support/v4/media/session/d;

    invoke-interface {v0}, Landroid/support/v4/media/session/d;->n()Landroid/support/v4/media/MediaMetadataCompat;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 881
    :goto_0
    return-object v0

    .line 878
    :catch_0
    move-exception v0

    .line 879
    const-string/jumbo v1, "MediaControllerCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Dead object in getMetadata. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    const/4 v0, 0x0

    goto :goto_0
.end method
