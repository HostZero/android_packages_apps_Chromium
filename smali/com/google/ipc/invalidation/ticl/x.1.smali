.class public final Lcom/google/ipc/invalidation/ticl/x;
.super Lcom/google/ipc/invalidation/ticl/m;
.source "InvalidationClientImpl.java"


# direct methods
.method public constructor <init>(Lcom/google/ipc/invalidation/external/client/SystemResources;Ljava/util/Random;I[BLcom/google/ipc/invalidation/ticl/a/N;Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/InvalidationListener;)V
    .locals 8

    .prologue
    .line 43
    new-instance v7, Lcom/google/ipc/invalidation/ticl/c;

    invoke-interface {p1}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getInternalScheduler()Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getListenerScheduler()Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v2

    invoke-direct {v7, p7, v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/c;-><init>(Lcom/google/ipc/invalidation/external/client/InvalidationListener;Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/ipc/invalidation/ticl/m;-><init>(Lcom/google/ipc/invalidation/external/client/SystemResources;Ljava/util/Random;I[BLcom/google/ipc/invalidation/ticl/a/N;Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/InvalidationListener;)V

    .line 60
    new-instance v0, Lcom/google/ipc/invalidation/ticl/Q;

    invoke-interface {p1}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getStorage()Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ipc/invalidation/ticl/Q;-><init>(Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;)V

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/x;->a:Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;

    .line 61
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/x;->a:Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;

    invoke-interface {v0, p1}, Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;->setSystemResources(Lcom/google/ipc/invalidation/external/client/SystemResources;)V

    .line 65
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/x;->b:Lcom/google/ipc/invalidation/external/client/InvalidationListener;

    check-cast v0, Lcom/google/ipc/invalidation/ticl/c;

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/x;->c:Lcom/google/ipc/invalidation/ticl/aa;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/ticl/c;->a(Lcom/google/ipc/invalidation/ticl/aa;)V

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/google/ipc/invalidation/ticl/x;)V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Lcom/google/ipc/invalidation/ticl/m;->start()V

    return-void
.end method

.method static synthetic a(Lcom/google/ipc/invalidation/ticl/x;Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/google/ipc/invalidation/ticl/m;->acknowledge(Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V

    return-void
.end method

.method static synthetic a(Lcom/google/ipc/invalidation/ticl/x;Lcom/google/ipc/invalidation/external/client/types/ObjectId;)V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/google/ipc/invalidation/ticl/m;->register(Lcom/google/ipc/invalidation/external/client/types/ObjectId;)V

    return-void
.end method

.method static synthetic a(Lcom/google/ipc/invalidation/ticl/x;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/google/ipc/invalidation/ticl/m;->register(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic a(Lcom/google/ipc/invalidation/ticl/x;Z)V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/google/ipc/invalidation/ticl/m;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/ipc/invalidation/ticl/x;[B)V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/google/ipc/invalidation/ticl/m;->a([B)V

    return-void
.end method

.method static synthetic b(Lcom/google/ipc/invalidation/ticl/x;)V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Lcom/google/ipc/invalidation/ticl/m;->stop()V

    return-void
.end method

.method static synthetic b(Lcom/google/ipc/invalidation/ticl/x;Lcom/google/ipc/invalidation/external/client/types/ObjectId;)V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/google/ipc/invalidation/ticl/m;->unregister(Lcom/google/ipc/invalidation/external/client/types/ObjectId;)V

    return-void
.end method

.method static synthetic b(Lcom/google/ipc/invalidation/ticl/x;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/google/ipc/invalidation/ticl/m;->unregister(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/x;->d()Lcom/google/ipc/invalidation/external/client/SystemResources;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getInternalScheduler()Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/google/ipc/invalidation/ticl/G;

    invoke-direct {v2, p0, p1}, Lcom/google/ipc/invalidation/ticl/G;-><init>(Lcom/google/ipc/invalidation/ticl/x;Z)V

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->schedule(ILjava/lang/Runnable;)V

    .line 162
    return-void
.end method

.method final a([B)V
    .locals 3

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/x;->d()Lcom/google/ipc/invalidation/external/client/SystemResources;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getInternalScheduler()Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/google/ipc/invalidation/ticl/F;

    invoke-direct {v2, p0, p1}, Lcom/google/ipc/invalidation/ticl/F;-><init>(Lcom/google/ipc/invalidation/ticl/x;[B)V

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->schedule(ILjava/lang/Runnable;)V

    .line 152
    return-void
.end method

.method public final acknowledge(Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V
    .locals 3

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/x;->d()Lcom/google/ipc/invalidation/external/client/SystemResources;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getInternalScheduler()Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/google/ipc/invalidation/ticl/E;

    invoke-direct {v2, p0, p1}, Lcom/google/ipc/invalidation/ticl/E;-><init>(Lcom/google/ipc/invalidation/ticl/x;Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->schedule(ILjava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method public final register(Lcom/google/ipc/invalidation/external/client/types/ObjectId;)V
    .locals 3

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/x;->d()Lcom/google/ipc/invalidation/external/client/SystemResources;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getInternalScheduler()Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/google/ipc/invalidation/ticl/A;

    invoke-direct {v2, p0, p1}, Lcom/google/ipc/invalidation/ticl/A;-><init>(Lcom/google/ipc/invalidation/ticl/x;Lcom/google/ipc/invalidation/external/client/types/ObjectId;)V

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->schedule(ILjava/lang/Runnable;)V

    .line 100
    return-void
.end method

.method public final register(Ljava/util/Collection;)V
    .locals 3

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/x;->d()Lcom/google/ipc/invalidation/external/client/SystemResources;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getInternalScheduler()Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/google/ipc/invalidation/ticl/B;

    invoke-direct {v2, p0, p1}, Lcom/google/ipc/invalidation/ticl/B;-><init>(Lcom/google/ipc/invalidation/ticl/x;Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->schedule(ILjava/lang/Runnable;)V

    .line 110
    return-void
.end method

.method public final start()V
    .locals 3

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/x;->d()Lcom/google/ipc/invalidation/external/client/SystemResources;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getInternalScheduler()Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/google/ipc/invalidation/ticl/y;

    invoke-direct {v2, p0}, Lcom/google/ipc/invalidation/ticl/y;-><init>(Lcom/google/ipc/invalidation/ticl/x;)V

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->schedule(ILjava/lang/Runnable;)V

    .line 80
    return-void
.end method

.method public final stop()V
    .locals 3

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/x;->d()Lcom/google/ipc/invalidation/external/client/SystemResources;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getInternalScheduler()Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/google/ipc/invalidation/ticl/z;

    invoke-direct {v2, p0}, Lcom/google/ipc/invalidation/ticl/z;-><init>(Lcom/google/ipc/invalidation/ticl/x;)V

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->schedule(ILjava/lang/Runnable;)V

    .line 90
    return-void
.end method

.method public final unregister(Lcom/google/ipc/invalidation/external/client/types/ObjectId;)V
    .locals 3

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/x;->d()Lcom/google/ipc/invalidation/external/client/SystemResources;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getInternalScheduler()Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/google/ipc/invalidation/ticl/C;

    invoke-direct {v2, p0, p1}, Lcom/google/ipc/invalidation/ticl/C;-><init>(Lcom/google/ipc/invalidation/ticl/x;Lcom/google/ipc/invalidation/external/client/types/ObjectId;)V

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->schedule(ILjava/lang/Runnable;)V

    .line 120
    return-void
.end method

.method public final unregister(Ljava/util/Collection;)V
    .locals 3

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/x;->d()Lcom/google/ipc/invalidation/external/client/SystemResources;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getInternalScheduler()Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/google/ipc/invalidation/ticl/D;

    invoke-direct {v2, p0, p1}, Lcom/google/ipc/invalidation/ticl/D;-><init>(Lcom/google/ipc/invalidation/ticl/x;Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->schedule(ILjava/lang/Runnable;)V

    .line 130
    return-void
.end method
