.class final Lcom/google/ipc/invalidation/ticl/T;
.super Ljava/lang/Object;
.source "SafeStorage.java"

# interfaces
.implements Lcom/google/ipc/invalidation/external/client/types/Callback;


# instance fields
.field final synthetic a:Lcom/google/ipc/invalidation/external/client/types/Callback;

.field private synthetic b:Lcom/google/ipc/invalidation/ticl/Q;


# direct methods
.method constructor <init>(Lcom/google/ipc/invalidation/ticl/Q;Lcom/google/ipc/invalidation/external/client/types/Callback;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/T;->b:Lcom/google/ipc/invalidation/ticl/Q;

    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/T;->a:Lcom/google/ipc/invalidation/external/client/types/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 69
    check-cast p1, Lcom/google/ipc/invalidation/external/client/types/SimplePair;

    .line 1072
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/T;->b:Lcom/google/ipc/invalidation/ticl/Q;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/Q;->a(Lcom/google/ipc/invalidation/ticl/Q;)Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/google/ipc/invalidation/ticl/U;

    const-string/jumbo v3, "SafeStorage.readKey"

    invoke-direct {v2, p0, v3, p1}, Lcom/google/ipc/invalidation/ticl/U;-><init>(Lcom/google/ipc/invalidation/ticl/T;Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/types/SimplePair;)V

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->schedule(ILjava/lang/Runnable;)V

    .line 69
    return-void
.end method
