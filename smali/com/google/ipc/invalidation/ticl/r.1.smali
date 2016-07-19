.class final Lcom/google/ipc/invalidation/ticl/r;
.super Lcom/google/ipc/invalidation/ticl/w;
.source "InvalidationClientCore.java"


# instance fields
.field private a:J

.field private synthetic b:Lcom/google/ipc/invalidation/ticl/m;


# direct methods
.method constructor <init>(Lcom/google/ipc/invalidation/ticl/m;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 267
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/r;->b:Lcom/google/ipc/invalidation/ticl/m;

    .line 268
    const-string/jumbo v2, "Heartbeat"

    invoke-static {p1}, Lcom/google/ipc/invalidation/ticl/m;->d(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/ticl/a/N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/N;->d()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/ipc/invalidation/ticl/w;-><init>(Lcom/google/ipc/invalidation/ticl/m;Ljava/lang/String;IIZ)V

    .line 269
    return-void
.end method

.method constructor <init>(Lcom/google/ipc/invalidation/ticl/m;Lcom/google/ipc/invalidation/ticl/a/aw;)V
    .locals 2

    .prologue
    .line 271
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/r;->b:Lcom/google/ipc/invalidation/ticl/m;

    .line 272
    const-string/jumbo v0, "Heartbeat"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/ipc/invalidation/ticl/w;-><init>(Lcom/google/ipc/invalidation/ticl/m;Ljava/lang/String;Lcom/google/ipc/invalidation/ticl/a/aw;B)V

    .line 273
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 279
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/r;->b:Lcom/google/ipc/invalidation/ticl/m;

    invoke-static {v2}, Lcom/google/ipc/invalidation/ticl/m;->b(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v2

    const-string/jumbo v3, "Sending heartbeat to server: %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p0, v4, v0

    invoke-interface {v2, v3, v4}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/r;->a:J

    iget-object v4, p0, Lcom/google/ipc/invalidation/ticl/r;->b:Lcom/google/ipc/invalidation/ticl/m;

    invoke-static {v4}, Lcom/google/ipc/invalidation/ticl/m;->a(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->getCurrentTimeMs()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    move v2, v1

    .line 282
    :goto_0
    if-eqz v2, :cond_0

    .line 283
    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/r;->b:Lcom/google/ipc/invalidation/ticl/m;

    invoke-static {v3}, Lcom/google/ipc/invalidation/ticl/m;->a(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->getCurrentTimeMs()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/r;->b()Lcom/google/ipc/invalidation/b/q;

    move-result-object v3

    iget-object v6, p0, Lcom/google/ipc/invalidation/ticl/r;->b:Lcom/google/ipc/invalidation/ticl/m;

    invoke-static {v6}, Lcom/google/ipc/invalidation/ticl/m;->d(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/ticl/a/N;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/ipc/invalidation/ticl/a/N;->e()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/google/ipc/invalidation/b/q;->a(I)I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/ipc/invalidation/ticl/r;->a:J

    .line 286
    :cond_0
    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/r;->b:Lcom/google/ipc/invalidation/ticl/m;

    iget-object v4, p0, Lcom/google/ipc/invalidation/ticl/r;->b:Lcom/google/ipc/invalidation/ticl/m;

    invoke-static {v4}, Lcom/google/ipc/invalidation/ticl/m;->k(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/ticl/O;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/ipc/invalidation/ticl/O;->c()Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v3, v2, v0}, Lcom/google/ipc/invalidation/ticl/m;->a(Lcom/google/ipc/invalidation/ticl/m;ZZ)V

    .line 287
    return v1

    :cond_2
    move v2, v0

    .line 280
    goto :goto_0
.end method
