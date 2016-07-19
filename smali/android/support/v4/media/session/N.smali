.class final Landroid/support/v4/media/session/N;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi18.java"

# interfaces
.implements Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;


# instance fields
.field private a:Landroid/support/v4/media/session/L;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/L;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Landroid/support/v4/media/session/N;->a:Landroid/support/v4/media/session/L;

    .line 114
    return-void
.end method


# virtual methods
.method public final onPlaybackPositionUpdate(J)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Landroid/support/v4/media/session/N;->a:Landroid/support/v4/media/session/L;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/L;->a(J)V

    .line 119
    return-void
.end method
