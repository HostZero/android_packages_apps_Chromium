.class final Landroid/support/v4/media/session/O;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi19.java"

# interfaces
.implements Landroid/media/RemoteControlClient$OnMetadataUpdateListener;


# instance fields
.field private a:Landroid/support/v4/media/session/L;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/L;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Landroid/support/v4/media/session/O;->a:Landroid/support/v4/media/session/L;

    .line 91
    return-void
.end method


# virtual methods
.method public final onMetadataUpdate(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 95
    const v0, 0x10000001

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Landroid/media/Rating;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Landroid/support/v4/media/session/O;->a:Landroid/support/v4/media/session/L;

    invoke-interface {v0, p2}, Landroid/support/v4/media/session/L;->a(Ljava/lang/Object;)V

    .line 98
    :cond_0
    return-void
.end method
