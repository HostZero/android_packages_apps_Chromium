.class final Landroid/support/v7/media/O;
.super Ljava/lang/Object;
.source "RegisteredMediaRouteProviderWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/support/v7/media/M;


# direct methods
.method constructor <init>(Landroid/support/v7/media/M;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Landroid/support/v7/media/O;->a:Landroid/support/v7/media/M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Landroid/support/v7/media/O;->a:Landroid/support/v7/media/M;

    invoke-static {v0}, Landroid/support/v7/media/M;->a(Landroid/support/v7/media/M;)V

    .line 150
    return-void
.end method
