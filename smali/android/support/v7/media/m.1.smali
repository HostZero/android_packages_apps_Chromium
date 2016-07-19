.class final Landroid/support/v7/media/m;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# instance fields
.field final synthetic a:Landroid/support/v7/media/j;

.field private final b:Landroid/support/v4/media/session/MediaSessionCompat;

.field private c:Landroid/support/v4/media/VolumeProviderCompat;


# direct methods
.method public constructor <init>(Landroid/support/v7/media/j;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 2590
    iput-object p1, p0, Landroid/support/v7/media/m;->a:Landroid/support/v7/media/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2591
    invoke-static {p1}, Landroid/support/v7/media/j;->b(Landroid/support/v7/media/j;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/content/Context;Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/m;->b:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 2592
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 2632
    iget-object v0, p0, Landroid/support/v7/media/m;->b:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v1, p0, Landroid/support/v7/media/m;->a:Landroid/support/v7/media/j;

    invoke-static {v1}, Landroid/support/v7/media/j;->e(Landroid/support/v7/media/j;)Landroid/support/v7/media/U;

    move-result-object v1

    iget v1, v1, Landroid/support/v7/media/U;->d:I

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->b(I)V

    .line 2633
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/media/m;->c:Landroid/support/v4/media/VolumeProviderCompat;

    .line 2634
    return-void
.end method

.method public final a(III)V
    .locals 2

    .prologue
    .line 2596
    iget-object v0, p0, Landroid/support/v7/media/m;->c:Landroid/support/v4/media/VolumeProviderCompat;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 2599
    iget-object v0, p0, Landroid/support/v7/media/m;->c:Landroid/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v0, p3}, Landroid/support/v4/media/VolumeProviderCompat;->a(I)V

    .line 2629
    :goto_0
    return-void

    .line 2602
    :cond_0
    new-instance v0, Landroid/support/v7/media/n;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/support/v7/media/n;-><init>(Landroid/support/v7/media/m;III)V

    iput-object v0, p0, Landroid/support/v7/media/m;->c:Landroid/support/v4/media/VolumeProviderCompat;

    .line 2627
    iget-object v0, p0, Landroid/support/v7/media/m;->b:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v1, p0, Landroid/support/v7/media/m;->c:Landroid/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/support/v4/media/VolumeProviderCompat;)V

    goto :goto_0
.end method

.method public final b()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .prologue
    .line 2637
    iget-object v0, p0, Landroid/support/v7/media/m;->b:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->c()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0
.end method
