.class final Landroid/support/v4/media/u;
.super Landroid/media/VolumeProvider;
.source "VolumeProviderCompatApi21.java"


# instance fields
.field private synthetic a:Landroid/support/v4/media/v;


# direct methods
.method constructor <init>(IIILandroid/support/v4/media/v;)V
    .locals 0

    .prologue
    .line 24
    iput-object p4, p0, Landroid/support/v4/media/u;->a:Landroid/support/v4/media/v;

    invoke-direct {p0, p1, p2, p3}, Landroid/media/VolumeProvider;-><init>(III)V

    return-void
.end method


# virtual methods
.method public final onAdjustVolume(I)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Landroid/support/v4/media/u;->a:Landroid/support/v4/media/v;

    invoke-interface {v0, p1}, Landroid/support/v4/media/v;->b(I)V

    .line 33
    return-void
.end method

.method public final onSetVolumeTo(I)V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Landroid/support/v4/media/u;->a:Landroid/support/v4/media/v;

    invoke-interface {v0, p1}, Landroid/support/v4/media/v;->a(I)V

    .line 28
    return-void
.end method
