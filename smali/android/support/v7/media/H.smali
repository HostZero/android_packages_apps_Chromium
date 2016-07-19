.class final Landroid/support/v7/media/H;
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
    .line 427
    iput-object p1, p0, Landroid/support/v7/media/H;->a:Landroid/support/v7/media/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Landroid/support/v7/media/H;->a:Landroid/support/v7/media/G;

    invoke-static {v0}, Landroid/support/v7/media/G;->a(Landroid/support/v7/media/G;)V

    .line 431
    return-void
.end method
