.class final Landroid/support/v4/media/session/t;
.super Landroid/support/v4/media/session/q;
.source "MediaControllerCompat.java"


# instance fields
.field private a:Landroid/support/v4/media/session/d;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/d;)V
    .locals 0

    .prologue
    .line 1004
    invoke-direct {p0}, Landroid/support/v4/media/session/q;-><init>()V

    .line 1005
    iput-object p1, p0, Landroid/support/v4/media/session/t;->a:Landroid/support/v4/media/session/d;

    .line 1006
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 1011
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/t;->a:Landroid/support/v4/media/session/d;

    invoke-interface {v0}, Landroid/support/v4/media/session/d;->g()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1015
    :goto_0
    return-void

    .line 1012
    :catch_0
    move-exception v0

    .line 1013
    const-string/jumbo v1, "MediaControllerCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Dead object in play. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 1056
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/t;->a:Landroid/support/v4/media/session/d;

    invoke-interface {v0}, Landroid/support/v4/media/session/d;->h()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1060
    :goto_0
    return-void

    .line 1057
    :catch_0
    move-exception v0

    .line 1058
    const-string/jumbo v1, "MediaControllerCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Dead object in pause. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
