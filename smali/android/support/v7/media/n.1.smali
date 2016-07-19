.class final Landroid/support/v7/media/n;
.super Landroid/support/v4/media/VolumeProviderCompat;
.source "MediaRouter.java"


# instance fields
.field final synthetic a:Landroid/support/v7/media/m;


# direct methods
.method constructor <init>(Landroid/support/v7/media/m;III)V
    .locals 0

    .prologue
    .line 2602
    iput-object p1, p0, Landroid/support/v7/media/n;->a:Landroid/support/v7/media/m;

    invoke-direct {p0, p2, p3, p4}, Landroid/support/v4/media/VolumeProviderCompat;-><init>(III)V

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 2

    .prologue
    .line 2605
    iget-object v0, p0, Landroid/support/v7/media/n;->a:Landroid/support/v7/media/m;

    iget-object v0, v0, Landroid/support/v7/media/m;->a:Landroid/support/v7/media/j;

    invoke-static {v0}, Landroid/support/v7/media/j;->d(Landroid/support/v7/media/j;)Landroid/support/v7/media/l;

    move-result-object v0

    new-instance v1, Landroid/support/v7/media/o;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/media/o;-><init>(Landroid/support/v7/media/n;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/media/l;->post(Ljava/lang/Runnable;)Z

    .line 2613
    return-void
.end method

.method public final c(I)V
    .locals 2

    .prologue
    .line 2617
    iget-object v0, p0, Landroid/support/v7/media/n;->a:Landroid/support/v7/media/m;

    iget-object v0, v0, Landroid/support/v7/media/m;->a:Landroid/support/v7/media/j;

    invoke-static {v0}, Landroid/support/v7/media/j;->d(Landroid/support/v7/media/j;)Landroid/support/v7/media/l;

    move-result-object v0

    new-instance v1, Landroid/support/v7/media/p;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/media/p;-><init>(Landroid/support/v7/media/n;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/media/l;->post(Ljava/lang/Runnable;)Z

    .line 2625
    return-void
.end method
