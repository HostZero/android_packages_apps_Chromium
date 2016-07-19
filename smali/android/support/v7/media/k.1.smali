.class final Landroid/support/v7/media/k;
.super Ljava/lang/Object;
.source "MediaRouter.java"

# interfaces
.implements Landroid/support/v4/media/session/H;


# instance fields
.field private synthetic a:Landroid/support/v7/media/j;


# direct methods
.method constructor <init>(Landroid/support/v7/media/j;)V
    .locals 0

    .prologue
    .line 1850
    iput-object p1, p0, Landroid/support/v7/media/k;->a:Landroid/support/v7/media/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 1853
    iget-object v0, p0, Landroid/support/v7/media/k;->a:Landroid/support/v7/media/j;

    invoke-static {v0}, Landroid/support/v7/media/j;->a(Landroid/support/v7/media/j;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1854
    iget-object v0, p0, Landroid/support/v7/media/k;->a:Landroid/support/v7/media/j;

    invoke-static {v0}, Landroid/support/v7/media/j;->a(Landroid/support/v7/media/j;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1855
    iget-object v0, p0, Landroid/support/v7/media/k;->a:Landroid/support/v7/media/j;

    iget-object v1, p0, Landroid/support/v7/media/k;->a:Landroid/support/v7/media/j;

    invoke-static {v1}, Landroid/support/v7/media/j;->a(Landroid/support/v7/media/j;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/media/j;->a(Ljava/lang/Object;)V

    .line 1860
    :cond_0
    :goto_0
    return-void

    .line 1857
    :cond_1
    iget-object v0, p0, Landroid/support/v7/media/k;->a:Landroid/support/v7/media/j;

    iget-object v1, p0, Landroid/support/v7/media/k;->a:Landroid/support/v7/media/j;

    invoke-static {v1}, Landroid/support/v7/media/j;->a(Landroid/support/v7/media/j;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/media/j;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method
