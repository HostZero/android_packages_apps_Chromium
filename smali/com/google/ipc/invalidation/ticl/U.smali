.class final Lcom/google/ipc/invalidation/ticl/U;
.super Lcom/google/ipc/invalidation/b/m;
.source "SafeStorage.java"


# instance fields
.field private synthetic a:Lcom/google/ipc/invalidation/external/client/types/SimplePair;

.field private synthetic b:Lcom/google/ipc/invalidation/ticl/T;


# direct methods
.method constructor <init>(Lcom/google/ipc/invalidation/ticl/T;Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/types/SimplePair;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/U;->b:Lcom/google/ipc/invalidation/ticl/T;

    iput-object p3, p0, Lcom/google/ipc/invalidation/ticl/U;->a:Lcom/google/ipc/invalidation/external/client/types/SimplePair;

    invoke-direct {p0, p2}, Lcom/google/ipc/invalidation/b/m;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/U;->b:Lcom/google/ipc/invalidation/ticl/T;

    iget-object v0, v0, Lcom/google/ipc/invalidation/ticl/T;->a:Lcom/google/ipc/invalidation/external/client/types/Callback;

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/U;->a:Lcom/google/ipc/invalidation/external/client/types/SimplePair;

    invoke-interface {v0, v1}, Lcom/google/ipc/invalidation/external/client/types/Callback;->accept(Ljava/lang/Object;)V

    .line 76
    return-void
.end method
