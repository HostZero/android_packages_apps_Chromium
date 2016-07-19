.class final Lcom/google/ipc/invalidation/ticl/G;
.super Ljava/lang/Object;
.source "InvalidationClientImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/google/ipc/invalidation/ticl/x;


# direct methods
.method constructor <init>(Lcom/google/ipc/invalidation/ticl/x;Z)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/G;->b:Lcom/google/ipc/invalidation/ticl/x;

    iput-boolean p2, p0, Lcom/google/ipc/invalidation/ticl/G;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/G;->b:Lcom/google/ipc/invalidation/ticl/x;

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/G;->a:Z

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/x;->a(Lcom/google/ipc/invalidation/ticl/x;Z)V

    .line 160
    return-void
.end method
