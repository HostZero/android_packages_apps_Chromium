.class final Lcom/google/ipc/invalidation/ticl/Y;
.super Lcom/google/ipc/invalidation/b/m;
.source "SafeStorage.java"


# instance fields
.field private synthetic a:Lcom/google/ipc/invalidation/external/client/types/SimplePair;

.field private synthetic b:Lcom/google/ipc/invalidation/ticl/X;


# direct methods
.method constructor <init>(Lcom/google/ipc/invalidation/ticl/X;Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/types/SimplePair;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/Y;->b:Lcom/google/ipc/invalidation/ticl/X;

    iput-object p3, p0, Lcom/google/ipc/invalidation/ticl/Y;->a:Lcom/google/ipc/invalidation/external/client/types/SimplePair;

    invoke-direct {p0, p2}, Lcom/google/ipc/invalidation/b/m;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/Y;->b:Lcom/google/ipc/invalidation/ticl/X;

    iget-object v0, v0, Lcom/google/ipc/invalidation/ticl/X;->a:Lcom/google/ipc/invalidation/external/client/types/Callback;

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/Y;->a:Lcom/google/ipc/invalidation/external/client/types/SimplePair;

    invoke-interface {v0, v1}, Lcom/google/ipc/invalidation/external/client/types/Callback;->accept(Ljava/lang/Object;)V

    .line 106
    return-void
.end method
