.class final Landroid/support/v7/media/r;
.super Ljava/lang/Object;
.source "MediaRouter.java"

# interfaces
.implements Landroid/support/v7/media/V;


# instance fields
.field private final a:Landroid/support/v7/media/Q;

.field private b:Z

.field private synthetic c:Landroid/support/v7/media/j;


# direct methods
.method public constructor <init>(Landroid/support/v7/media/j;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 2647
    iput-object p1, p0, Landroid/support/v7/media/r;->c:Landroid/support/v7/media/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2648
    invoke-static {p1}, Landroid/support/v7/media/j;->b(Landroid/support/v7/media/j;)Landroid/content/Context;

    move-result-object v1

    .line 3041
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    .line 3042
    new-instance v0, Landroid/support/v7/media/R;

    invoke-direct {v0, v1, p2}, Landroid/support/v7/media/R;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 2648
    :goto_0
    iput-object v0, p0, Landroid/support/v7/media/r;->a:Landroid/support/v7/media/Q;

    .line 2649
    iget-object v0, p0, Landroid/support/v7/media/r;->a:Landroid/support/v7/media/Q;

    invoke-virtual {v0, p0}, Landroid/support/v7/media/Q;->a(Landroid/support/v7/media/V;)V

    .line 2650
    invoke-virtual {p0}, Landroid/support/v7/media/r;->c()V

    .line 2651
    return-void

    .line 3044
    :cond_0
    new-instance v0, Landroid/support/v7/media/T;

    invoke-direct {v0, v1, p2}, Landroid/support/v7/media/T;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2654
    iget-object v0, p0, Landroid/support/v7/media/r;->a:Landroid/support/v7/media/Q;

    invoke-virtual {v0}, Landroid/support/v7/media/Q;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 2668
    iget-boolean v0, p0, Landroid/support/v7/media/r;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/r;->c:Landroid/support/v7/media/j;

    invoke-static {v0}, Landroid/support/v7/media/j;->c(Landroid/support/v7/media/j;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2669
    iget-object v0, p0, Landroid/support/v7/media/r;->c:Landroid/support/v7/media/j;

    invoke-static {v0}, Landroid/support/v7/media/j;->c(Landroid/support/v7/media/j;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->b(I)V

    .line 2671
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 2658
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/media/r;->b:Z

    .line 2659
    iget-object v0, p0, Landroid/support/v7/media/r;->a:Landroid/support/v7/media/Q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/media/Q;->a(Landroid/support/v7/media/V;)V

    .line 2660
    return-void
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 2675
    iget-boolean v0, p0, Landroid/support/v7/media/r;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/r;->c:Landroid/support/v7/media/j;

    invoke-static {v0}, Landroid/support/v7/media/j;->c(Landroid/support/v7/media/j;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2676
    iget-object v0, p0, Landroid/support/v7/media/r;->c:Landroid/support/v7/media/j;

    invoke-static {v0}, Landroid/support/v7/media/j;->c(Landroid/support/v7/media/j;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->c(I)V

    .line 2678
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 2663
    iget-object v0, p0, Landroid/support/v7/media/r;->a:Landroid/support/v7/media/Q;

    iget-object v1, p0, Landroid/support/v7/media/r;->c:Landroid/support/v7/media/j;

    invoke-static {v1}, Landroid/support/v7/media/j;->e(Landroid/support/v7/media/j;)Landroid/support/v7/media/U;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/media/Q;->a(Landroid/support/v7/media/U;)V

    .line 2664
    return-void
.end method
