.class public Lcom/google/ipc/invalidation/external/client/InvalidationClientFactory;
.super Ljava/lang/Object;
.source "InvalidationClientFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createClient(Lcom/google/ipc/invalidation/external/client/SystemResources;Lcom/google/ipc/invalidation/external/client/InvalidationClientConfig;Lcom/google/ipc/invalidation/external/client/InvalidationListener;)Lcom/google/ipc/invalidation/external/client/InvalidationClient;
    .locals 8

    .prologue
    .line 40
    invoke-static {}, Lcom/google/ipc/invalidation/ticl/m;->a()Lcom/google/ipc/invalidation/ticl/a/N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/N;->m()Lcom/google/ipc/invalidation/ticl/a/O;

    move-result-object v0

    .line 41
    iget-boolean v1, p1, Lcom/google/ipc/invalidation/external/client/InvalidationClientConfig;->allowSuppression:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/ipc/invalidation/ticl/a/O;->k:Ljava/lang/Boolean;

    .line 42
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/O;->a()Lcom/google/ipc/invalidation/ticl/a/N;

    move-result-object v5

    .line 43
    new-instance v2, Ljava/util/Random;

    invoke-interface {p0}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getInternalScheduler()Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->getCurrentTimeMs()J

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 44
    new-instance v0, Lcom/google/ipc/invalidation/ticl/x;

    iget v3, p1, Lcom/google/ipc/invalidation/external/client/InvalidationClientConfig;->clientType:I

    iget-object v4, p1, Lcom/google/ipc/invalidation/external/client/InvalidationClientConfig;->clientName:[B

    iget-object v6, p1, Lcom/google/ipc/invalidation/external/client/InvalidationClientConfig;->applicationName:Ljava/lang/String;

    move-object v1, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/ipc/invalidation/ticl/x;-><init>(Lcom/google/ipc/invalidation/external/client/SystemResources;Ljava/util/Random;I[BLcom/google/ipc/invalidation/ticl/a/N;Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/InvalidationListener;)V

    return-object v0
.end method
