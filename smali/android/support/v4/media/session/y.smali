.class final Landroid/support/v4/media/session/y;
.super Landroid/support/v4/media/session/x;
.source "MediaSessionCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/R;


# instance fields
.field private synthetic a:Landroid/support/v4/media/session/w;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/session/w;)V
    .locals 1

    .prologue
    .line 720
    iput-object p1, p0, Landroid/support/v4/media/session/y;->a:Landroid/support/v4/media/session/w;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/session/x;-><init>(Landroid/support/v4/media/session/w;B)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/session/w;B)V
    .locals 0

    .prologue
    .line 720
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/y;-><init>(Landroid/support/v4/media/session/w;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Landroid/support/v4/media/session/y;->a:Landroid/support/v4/media/session/w;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/w;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 725
    return-void
.end method
