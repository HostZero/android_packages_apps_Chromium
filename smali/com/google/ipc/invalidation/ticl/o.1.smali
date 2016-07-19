.class final Lcom/google/ipc/invalidation/ticl/o;
.super Ljava/lang/Object;
.source "InvalidationClientCore.java"

# interfaces
.implements Lcom/google/ipc/invalidation/external/client/types/Callback;


# instance fields
.field private synthetic a:Lcom/google/ipc/invalidation/ticl/m;


# direct methods
.method constructor <init>(Lcom/google/ipc/invalidation/ticl/m;)V
    .locals 0

    .prologue
    .line 1400
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/o;->a:Lcom/google/ipc/invalidation/ticl/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 1400
    check-cast p1, Lcom/google/ipc/invalidation/external/client/types/SimplePair;

    .line 2403
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/o;->a:Lcom/google/ipc/invalidation/ticl/m;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/m;->a(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->isRunningOnThread()Z

    move-result v0

    const-string/jumbo v1, "Not on internal thread"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 2404
    invoke-virtual {p1}, Lcom/google/ipc/invalidation/external/client/types/SimplePair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/external/client/types/Status;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/external/client/types/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/ipc/invalidation/external/client/types/SimplePair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v1, v0

    .line 2407
    :goto_0
    invoke-virtual {p1}, Lcom/google/ipc/invalidation/external/client/types/SimplePair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/external/client/types/Status;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/external/client/types/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2408
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/o;->a:Lcom/google/ipc/invalidation/ticl/m;

    iget-object v0, v0, Lcom/google/ipc/invalidation/ticl/m;->c:Lcom/google/ipc/invalidation/ticl/aa;

    sget-object v2, Lcom/google/ipc/invalidation/ticl/ab;->e:Lcom/google/ipc/invalidation/ticl/ab;

    invoke-virtual {v0, v2}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/ticl/ab;)V

    .line 2409
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/o;->a:Lcom/google/ipc/invalidation/ticl/m;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/m;->b(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v2

    const-string/jumbo v3, "Could not read state blob: %s"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/google/ipc/invalidation/external/client/types/SimplePair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/external/client/types/Status;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/external/client/types/Status;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2411
    :cond_0
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/o;->a:Lcom/google/ipc/invalidation/ticl/m;

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/m;->a(Lcom/google/ipc/invalidation/ticl/m;[B)V

    .line 1400
    return-void

    .line 2404
    :cond_1
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0
.end method
