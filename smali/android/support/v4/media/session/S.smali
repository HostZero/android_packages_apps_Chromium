.class final Landroid/support/v4/media/session/S;
.super Landroid/support/v4/media/session/Q;
.source "MediaSessionCompatApi23.java"


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/R;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/Q;-><init>(Landroid/support/v4/media/session/P;)V

    .line 35
    return-void
.end method


# virtual methods
.method public final onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Landroid/support/v4/media/session/S;->a:Landroid/support/v4/media/session/P;

    check-cast v0, Landroid/support/v4/media/session/R;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/R;->a(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 40
    return-void
.end method
