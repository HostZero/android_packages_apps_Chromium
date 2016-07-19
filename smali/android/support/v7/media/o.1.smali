.class final Landroid/support/v7/media/o;
.super Ljava/lang/Object;
.source "MediaRouter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Landroid/support/v7/media/n;


# direct methods
.method constructor <init>(Landroid/support/v7/media/n;I)V
    .locals 0

    .prologue
    .line 2605
    iput-object p1, p0, Landroid/support/v7/media/o;->b:Landroid/support/v7/media/n;

    iput p2, p0, Landroid/support/v7/media/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 2608
    iget-object v0, p0, Landroid/support/v7/media/o;->b:Landroid/support/v7/media/n;

    iget-object v0, v0, Landroid/support/v7/media/n;->a:Landroid/support/v7/media/m;

    iget-object v0, v0, Landroid/support/v7/media/m;->a:Landroid/support/v7/media/j;

    invoke-static {v0}, Landroid/support/v7/media/j;->c(Landroid/support/v7/media/j;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2609
    iget-object v0, p0, Landroid/support/v7/media/o;->b:Landroid/support/v7/media/n;

    iget-object v0, v0, Landroid/support/v7/media/n;->a:Landroid/support/v7/media/m;

    iget-object v0, v0, Landroid/support/v7/media/m;->a:Landroid/support/v7/media/j;

    invoke-static {v0}, Landroid/support/v7/media/j;->c(Landroid/support/v7/media/j;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/media/o;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->b(I)V

    .line 2611
    :cond_0
    return-void
.end method
