.class final Lcom/google/ipc/invalidation/ticl/q;
.super Lcom/google/ipc/invalidation/ticl/M;
.source "InvalidationClientCore.java"


# instance fields
.field private final a:Lcom/google/ipc/invalidation/ticl/H;


# direct methods
.method constructor <init>(Lcom/google/ipc/invalidation/ticl/H;Lcom/google/ipc/invalidation/external/client/SystemResources;Lcom/google/ipc/invalidation/b/q;I)V
    .locals 8

    .prologue
    .line 305
    const-string/jumbo v1, "Batching"

    invoke-interface {p2}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getInternalScheduler()Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v2

    invoke-interface {p2}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/ipc/invalidation/ticl/M;-><init>(Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;Lcom/google/ipc/invalidation/b/q;Lcom/google/ipc/invalidation/ticl/ai;II)V

    .line 307
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/q;->a:Lcom/google/ipc/invalidation/ticl/H;

    .line 308
    return-void
.end method

.method constructor <init>(Lcom/google/ipc/invalidation/ticl/H;Lcom/google/ipc/invalidation/external/client/SystemResources;Lcom/google/ipc/invalidation/b/q;Lcom/google/ipc/invalidation/ticl/a/aw;)V
    .locals 7

    .prologue
    .line 313
    const-string/jumbo v1, "Batching"

    invoke-interface {p2}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getInternalScheduler()Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v2

    invoke-interface {p2}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/ipc/invalidation/ticl/M;-><init>(Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;Lcom/google/ipc/invalidation/b/q;Lcom/google/ipc/invalidation/ticl/ai;Lcom/google/ipc/invalidation/ticl/a/aw;)V

    .line 315
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/q;->a:Lcom/google/ipc/invalidation/ticl/H;

    .line 316
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/q;->a:Lcom/google/ipc/invalidation/ticl/H;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/H;->a()V

    .line 321
    const/4 v0, 0x0

    return v0
.end method
