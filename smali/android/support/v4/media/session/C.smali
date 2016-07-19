.class final Landroid/support/v4/media/session/C;
.super Landroid/support/v4/media/t;
.source "MediaSessionCompat.java"


# instance fields
.field private synthetic a:Landroid/support/v4/media/session/B;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/B;)V
    .locals 0

    .prologue
    .line 1038
    iput-object p1, p0, Landroid/support/v4/media/session/C;->a:Landroid/support/v4/media/session/B;

    invoke-direct {p0}, Landroid/support/v4/media/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/media/VolumeProviderCompat;)V
    .locals 6

    .prologue
    .line 1041
    iget-object v0, p0, Landroid/support/v4/media/session/C;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->a(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/VolumeProviderCompat;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 1048
    :goto_0
    return-void

    .line 1044
    :cond_0
    new-instance v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    iget-object v1, p0, Landroid/support/v4/media/session/C;->a:Landroid/support/v4/media/session/B;

    invoke-static {v1}, Landroid/support/v4/media/session/B;->b(Landroid/support/v4/media/session/B;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/media/session/C;->a:Landroid/support/v4/media/session/B;

    invoke-static {v2}, Landroid/support/v4/media/session/B;->c(Landroid/support/v4/media/session/B;)I

    move-result v2

    invoke-virtual {p1}, Landroid/support/v4/media/VolumeProviderCompat;->b()I

    move-result v3

    invoke-virtual {p1}, Landroid/support/v4/media/VolumeProviderCompat;->c()I

    move-result v4

    invoke-virtual {p1}, Landroid/support/v4/media/VolumeProviderCompat;->a()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    .line 1047
    iget-object v1, p0, Landroid/support/v4/media/session/C;->a:Landroid/support/v4/media/session/B;

    invoke-static {v1, v0}, Landroid/support/v4/media/session/B;->a(Landroid/support/v4/media/session/B;Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    goto :goto_0
.end method
