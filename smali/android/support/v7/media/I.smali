.class final Landroid/support/v7/media/I;
.super Ljava/lang/Object;
.source "RegisteredMediaRouteProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/support/v7/media/G;


# direct methods
.method constructor <init>(Landroid/support/v7/media/G;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Landroid/support/v7/media/I;->a:Landroid/support/v7/media/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Landroid/support/v7/media/I;->a:Landroid/support/v7/media/G;

    iget-object v0, v0, Landroid/support/v7/media/G;->a:Landroid/support/v7/media/F;

    iget-object v1, p0, Landroid/support/v7/media/I;->a:Landroid/support/v7/media/G;

    invoke-static {v0, v1}, Landroid/support/v7/media/F;->b(Landroid/support/v7/media/F;Landroid/support/v7/media/G;)V

    .line 510
    return-void
.end method
