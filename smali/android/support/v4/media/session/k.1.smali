.class final Landroid/support/v4/media/session/k;
.super Landroid/support/v4/media/session/b;
.source "MediaControllerCompat.java"


# instance fields
.field private synthetic a:Landroid/support/v4/media/session/h;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/session/h;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Landroid/support/v4/media/session/k;->a:Landroid/support/v4/media/session/h;

    invoke-direct {p0}, Landroid/support/v4/media/session/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/session/h;B)V
    .locals 0

    .prologue
    .line 462
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/k;-><init>(Landroid/support/v4/media/session/h;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 471
    iget-object v0, p0, Landroid/support/v4/media/session/k;->a:Landroid/support/v4/media/session/h;

    invoke-static {v0}, Landroid/support/v4/media/session/h;->a(Landroid/support/v4/media/session/h;)Landroid/support/v4/media/session/i;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/i;->a(ILjava/lang/Object;)V

    .line 472
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Landroid/support/v4/media/session/k;->a:Landroid/support/v4/media/session/h;

    invoke-static {v0}, Landroid/support/v4/media/session/h;->a(Landroid/support/v4/media/session/h;)Landroid/support/v4/media/session/i;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/session/i;->a(ILjava/lang/Object;)V

    .line 497
    return-void
.end method

.method public final a(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Landroid/support/v4/media/session/k;->a:Landroid/support/v4/media/session/h;

    invoke-static {v0}, Landroid/support/v4/media/session/h;->a(Landroid/support/v4/media/session/h;)Landroid/support/v4/media/session/i;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/session/i;->a(ILjava/lang/Object;)V

    .line 482
    return-void
.end method

.method public final a(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    .locals 6

    .prologue
    .line 501
    const/4 v0, 0x0

    .line 502
    if-eqz p1, :cond_0

    .line 503
    new-instance v0, Landroid/support/v4/media/session/p;

    iget v1, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->a:I

    iget v2, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->b:I

    iget v3, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->c:I

    iget v4, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->d:I

    iget v5, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->e:I

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/p;-><init>(IIIII)V

    .line 506
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/session/k;->a:Landroid/support/v4/media/session/h;

    invoke-static {v1}, Landroid/support/v4/media/session/h;->a(Landroid/support/v4/media/session/h;)Landroid/support/v4/media/session/i;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/media/session/i;->a(ILjava/lang/Object;)V

    .line 507
    return-void
.end method

.method public final a(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Landroid/support/v4/media/session/k;->a:Landroid/support/v4/media/session/h;

    invoke-static {v0}, Landroid/support/v4/media/session/h;->a(Landroid/support/v4/media/session/h;)Landroid/support/v4/media/session/i;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/session/i;->a(ILjava/lang/Object;)V

    .line 477
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Landroid/support/v4/media/session/k;->a:Landroid/support/v4/media/session/h;

    invoke-static {v0}, Landroid/support/v4/media/session/h;->a(Landroid/support/v4/media/session/h;)Landroid/support/v4/media/session/i;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/session/i;->a(ILjava/lang/Object;)V

    .line 492
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Landroid/support/v4/media/session/k;->a:Landroid/support/v4/media/session/h;

    invoke-static {v0}, Landroid/support/v4/media/session/h;->a(Landroid/support/v4/media/session/h;)Landroid/support/v4/media/session/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/session/i;->a(ILjava/lang/Object;)V

    .line 467
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Landroid/support/v4/media/session/k;->a:Landroid/support/v4/media/session/h;

    invoke-static {v0}, Landroid/support/v4/media/session/h;->a(Landroid/support/v4/media/session/h;)Landroid/support/v4/media/session/i;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/session/i;->a(ILjava/lang/Object;)V

    .line 487
    return-void
.end method
