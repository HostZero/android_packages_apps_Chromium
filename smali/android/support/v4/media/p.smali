.class final Landroid/support/v4/media/p;
.super Ljava/lang/Object;
.source "TransportMediatorJellybeanMR2.java"

# interfaces
.implements Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;


# instance fields
.field private synthetic a:Landroid/support/v4/media/k;


# direct methods
.method constructor <init>(Landroid/support/v4/media/k;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Landroid/support/v4/media/p;->a:Landroid/support/v4/media/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetPlaybackPosition()J
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Landroid/support/v4/media/p;->a:Landroid/support/v4/media/k;

    iget-object v0, v0, Landroid/support/v4/media/k;->c:Landroid/support/v4/media/j;

    invoke-interface {v0}, Landroid/support/v4/media/j;->a()J

    move-result-wide v0

    return-wide v0
.end method
