.class final Lcom/google/ipc/invalidation/ticl/H;
.super Ljava/lang/Object;
.source "ProtocolHandler.java"


# instance fields
.field private final a:Lcom/google/ipc/invalidation/ticl/a/R;

.field private final b:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

.field private final c:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

.field private final d:Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel;

.field private final e:Lcom/google/ipc/invalidation/ticl/K;

.field private final f:Lcom/google/ipc/invalidation/ticl/I;

.field private g:I

.field private h:J

.field private i:J

.field private final j:Lcom/google/ipc/invalidation/ticl/aa;

.field private final k:I


# direct methods
.method constructor <init>(Lcom/google/ipc/invalidation/external/client/SystemResources;Lcom/google/ipc/invalidation/ticl/aa;ILjava/lang/String;Lcom/google/ipc/invalidation/ticl/K;Lcom/google/ipc/invalidation/ticl/a/av;)V
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    const/4 v4, 0x1

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput v4, p0, Lcom/google/ipc/invalidation/ticl/H;->g:I

    .line 403
    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/H;->h:J

    .line 409
    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/H;->i:J

    .line 430
    invoke-interface {p1}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/H;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    .line 431
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/H;->j:Lcom/google/ipc/invalidation/ticl/aa;

    .line 432
    invoke-interface {p1}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getInternalScheduler()Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/H;->c:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    .line 433
    invoke-interface {p1}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getNetwork()Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/H;->d:Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel;

    .line 434
    iput-object p5, p0, Lcom/google/ipc/invalidation/ticl/H;->e:Lcom/google/ipc/invalidation/ticl/K;

    .line 435
    invoke-interface {p1}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getPlatform()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Java"

    .line 1075
    sget-object v2, Lcom/google/ipc/invalidation/ticl/a/L;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-static {v2, v0, v1, p4}, Lcom/google/ipc/invalidation/ticl/a/R;->a(Lcom/google/ipc/invalidation/ticl/a/ar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ipc/invalidation/ticl/a/R;

    move-result-object v0

    .line 435
    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/H;->a:Lcom/google/ipc/invalidation/ticl/a/R;

    .line 437
    iput p3, p0, Lcom/google/ipc/invalidation/ticl/H;->k:I

    .line 438
    if-nez p6, :cond_0

    .line 440
    new-instance v0, Lcom/google/ipc/invalidation/ticl/I;

    invoke-direct {v0, p1, p2}, Lcom/google/ipc/invalidation/ticl/I;-><init>(Lcom/google/ipc/invalidation/external/client/SystemResources;Lcom/google/ipc/invalidation/ticl/aa;)V

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/H;->f:Lcom/google/ipc/invalidation/ticl/I;

    .line 448
    :goto_0
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/H;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v1, "Created protocol handler for application %s, platform %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p4, v2, v3

    invoke-interface {p1}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getPlatform()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    return-void

    .line 443
    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/I;

    invoke-virtual {p6}, Lcom/google/ipc/invalidation/ticl/a/av;->e()Lcom/google/ipc/invalidation/ticl/a/as;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/google/ipc/invalidation/ticl/I;-><init>(Lcom/google/ipc/invalidation/external/client/SystemResources;Lcom/google/ipc/invalidation/ticl/aa;Lcom/google/ipc/invalidation/ticl/a/as;)V

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/H;->f:Lcom/google/ipc/invalidation/ticl/I;

    .line 444
    invoke-virtual {p6}, Lcom/google/ipc/invalidation/ticl/a/av;->a()I

    move-result v0

    iput v0, p0, Lcom/google/ipc/invalidation/ticl/H;->g:I

    .line 445
    invoke-virtual {p6}, Lcom/google/ipc/invalidation/ticl/a/av;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/H;->h:J

    .line 446
    invoke-virtual {p6}, Lcom/google/ipc/invalidation/ticl/a/av;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/H;->i:J

    goto :goto_0
.end method


# virtual methods
.method final a([B)Lcom/google/ipc/invalidation/ticl/J;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 489
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/H;->c:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v1}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->isRunningOnThread()Z

    move-result v1

    const-string/jumbo v2, "Not on internal thread"

    invoke-static {v1, v2}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 492
    :try_start_0
    invoke-static {p1}, Lcom/google/ipc/invalidation/ticl/a/ao;->a([B)Lcom/google/ipc/invalidation/ticl/a/ao;
    :try_end_0
    .catch Lcom/google/ipc/invalidation/b/p; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 500
    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/ao;->a()Lcom/google/ipc/invalidation/ticl/a/an;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/a/an;->a()Lcom/google/ipc/invalidation/ticl/a/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/a/ad;->a()Lcom/google/ipc/invalidation/ticl/a/ar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/a/ar;->a()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 502
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/H;->j:Lcom/google/ipc/invalidation/ticl/aa;

    sget-object v3, Lcom/google/ipc/invalidation/ticl/ab;->g:Lcom/google/ipc/invalidation/ticl/ab;

    invoke-virtual {v2, v3}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/ticl/ab;)V

    .line 503
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/H;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v3, "Dropping message with incompatible version: %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->severe(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    :cond_0
    :goto_0
    return-object v0

    .line 494
    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/H;->j:Lcom/google/ipc/invalidation/ticl/aa;

    sget-object v2, Lcom/google/ipc/invalidation/ticl/ab;->b:Lcom/google/ipc/invalidation/ticl/ab;

    invoke-virtual {v1, v2}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/ticl/ab;)V

    .line 495
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/H;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v2, "Incoming message is invalid: %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/ipc/invalidation/b/c;->b([B)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 509
    :cond_1
    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/ao;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 510
    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/ao;->i()Lcom/google/ipc/invalidation/ticl/a/S;

    move-result-object v1

    .line 511
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/H;->j:Lcom/google/ipc/invalidation/ticl/aa;

    sget-object v3, Lcom/google/ipc/invalidation/ticl/ae;->g:Lcom/google/ipc/invalidation/ticl/ae;

    invoke-virtual {v2, v3}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/ticl/ae;)V

    .line 512
    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/S;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 513
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/H;->c:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->getCurrentTimeMs()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/S;->a()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/ipc/invalidation/ticl/H;->i:J

    goto :goto_0

    .line 519
    :cond_2
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/H;->h:J

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/ao;->a()Lcom/google/ipc/invalidation/ticl/a/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/an;->e()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/ipc/invalidation/ticl/H;->h:J

    .line 520
    new-instance v0, Lcom/google/ipc/invalidation/ticl/J;

    invoke-direct {v0, v1}, Lcom/google/ipc/invalidation/ticl/J;-><init>(Lcom/google/ipc/invalidation/ticl/a/ao;)V

    goto :goto_0
.end method

.method final a()V
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 613
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/H;->c:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->isRunningOnThread()Z

    move-result v0

    const-string/jumbo v1, "Not on internal thread"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 614
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/H;->i:J

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/H;->c:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->getCurrentTimeMs()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 615
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/H;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v1, "In quiet period: not sending message to server: %s > %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/ipc/invalidation/ticl/H;->i:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v11

    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/H;->c:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v3}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->getCurrentTimeMs()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    :try_start_0
    iget-object v12, p0, Lcom/google/ipc/invalidation/ticl/H;->f:Lcom/google/ipc/invalidation/ticl/I;

    .line 1649
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/H;->c:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->isRunningOnThread()Z

    move-result v0

    const-string/jumbo v1, "Not on internal thread"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 1650
    sget-object v1, Lcom/google/ipc/invalidation/ticl/a/L;->b:Lcom/google/ipc/invalidation/ticl/a/ad;

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/H;->e:Lcom/google/ipc/invalidation/ticl/K;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/ticl/K;->e()Lcom/google/ipc/invalidation/b/c;

    move-result-object v2

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/H;->e:Lcom/google/ipc/invalidation/ticl/K;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/ticl/K;->g()Lcom/google/ipc/invalidation/ticl/a/ak;

    move-result-object v3

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/H;->c:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->getCurrentTimeMs()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/ipc/invalidation/ticl/H;->h:J

    iget v0, p0, Lcom/google/ipc/invalidation/ticl/H;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    iget v0, p0, Lcom/google/ipc/invalidation/ticl/H;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {v1 .. v9}, Lcom/google/ipc/invalidation/ticl/a/P;->a(Lcom/google/ipc/invalidation/ticl/a/ad;Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/ticl/a/ak;JJLjava/lang/String;Ljava/lang/Integer;)Lcom/google/ipc/invalidation/ticl/a/P;

    move-result-object v1

    .line 623
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/H;->e:Lcom/google/ipc/invalidation/ticl/K;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/ticl/K;->e()Lcom/google/ipc/invalidation/b/c;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v10

    :goto_1
    invoke-virtual {v12, v1, v0}, Lcom/google/ipc/invalidation/ticl/I;->a(Lcom/google/ipc/invalidation/ticl/a/P;Z)Lcom/google/ipc/invalidation/ticl/a/Q;
    :try_end_0
    .catch Lcom/google/ipc/invalidation/b/o; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 624
    if-eqz v0, :cond_0

    .line 634
    iget v1, p0, Lcom/google/ipc/invalidation/ticl/H;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/ipc/invalidation/ticl/H;->g:I

    .line 636
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/H;->j:Lcom/google/ipc/invalidation/ticl/aa;

    sget-object v2, Lcom/google/ipc/invalidation/ticl/af;->f:Lcom/google/ipc/invalidation/ticl/af;

    invoke-virtual {v1, v2}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/ticl/af;)V

    .line 637
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/H;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v2, "Sending message to server: %s"

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v0, v3, v11

    invoke-interface {v1, v2, v3}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/H;->d:Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/Q;->a()[B

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel;->sendMessage([B)V

    .line 644
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/H;->e:Lcom/google/ipc/invalidation/ticl/K;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/ticl/K;->f()V

    goto :goto_0

    :cond_2
    move v0, v11

    .line 623
    goto :goto_1

    .line 630
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/H;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v1, "Tried to send invalid message: %s"

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/H;->f:Lcom/google/ipc/invalidation/ticl/I;

    aput-object v3, v2, v11

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->severe(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 631
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/H;->j:Lcom/google/ipc/invalidation/ticl/aa;

    sget-object v1, Lcom/google/ipc/invalidation/ticl/ab;->c:Lcom/google/ipc/invalidation/ticl/ab;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/ticl/ab;)V

    goto/16 :goto_0
.end method

.method final a(Lcom/google/ipc/invalidation/ticl/a/M;Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/ticl/q;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 532
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/H;->c:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->isRunningOnThread()Z

    move-result v0

    const-string/jumbo v1, "Not on internal thread"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 533
    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/M;->a()I

    move-result v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/H;->k:I

    if-eq v0, v1, :cond_0

    .line 535
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/H;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v1, "Client type in application id does not match constructor-provided type: %s vs %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    iget v3, p0, Lcom/google/ipc/invalidation/ticl/H;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 541
    :cond_0
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/H;->k:I

    invoke-static {v0, p2, p1, v4}, Lcom/google/ipc/invalidation/ticl/a/W;->a(ILcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/ticl/a/M;I)Lcom/google/ipc/invalidation/ticl/a/W;

    move-result-object v0

    .line 543
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/H;->f:Lcom/google/ipc/invalidation/ticl/I;

    invoke-virtual {v1, v0}, Lcom/google/ipc/invalidation/ticl/I;->a(Lcom/google/ipc/invalidation/ticl/a/W;)V

    .line 544
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/H;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v2, "Batching initialize message for client: %s, %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p4, v3, v5

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 545
    invoke-virtual {p3, p4}, Lcom/google/ipc/invalidation/ticl/q;->a(Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method final a(Lcom/google/ipc/invalidation/ticl/a/Y;Lcom/google/ipc/invalidation/ticl/q;)V
    .locals 4

    .prologue
    .line 591
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/H;->c:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->isRunningOnThread()Z

    move-result v0

    const-string/jumbo v1, "Not on internal thread"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 594
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/H;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v1, "Sending ack for invalidation %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 595
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/H;->f:Lcom/google/ipc/invalidation/ticl/I;

    invoke-virtual {v0, p1}, Lcom/google/ipc/invalidation/ticl/I;->a(Lcom/google/ipc/invalidation/ticl/a/Y;)V

    .line 596
    const-string/jumbo v0, "Send-Ack"

    invoke-virtual {p2, v0}, Lcom/google/ipc/invalidation/ticl/q;->a(Ljava/lang/String;)V

    .line 597
    return-void
.end method

.method final a(Lcom/google/ipc/invalidation/ticl/a/aj;Lcom/google/ipc/invalidation/ticl/q;)V
    .locals 4

    .prologue
    .line 605
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/H;->c:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->isRunningOnThread()Z

    move-result v0

    const-string/jumbo v1, "Not on internal thread"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 606
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/H;->f:Lcom/google/ipc/invalidation/ticl/I;

    invoke-virtual {v0, p1}, Lcom/google/ipc/invalidation/ticl/I;->a(Lcom/google/ipc/invalidation/ticl/a/aj;)V

    .line 607
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/H;->b:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v1, "Adding subtree: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 608
    const-string/jumbo v0, "Send-reg-sync"

    invoke-virtual {p2, v0}, Lcom/google/ipc/invalidation/ticl/q;->a(Ljava/lang/String;)V

    .line 609
    return-void
.end method

.method final a(Ljava/util/Collection;Ljava/lang/Integer;Lcom/google/ipc/invalidation/ticl/q;)V
    .locals 3

    .prologue
    .line 582
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/H;->c:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->isRunningOnThread()Z

    move-result v0

    const-string/jumbo v1, "Not on internal thread"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 583
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/aa;

    .line 584
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/H;->f:Lcom/google/ipc/invalidation/ticl/I;

    invoke-virtual {v2, v0, p2}, Lcom/google/ipc/invalidation/ticl/I;->a(Lcom/google/ipc/invalidation/ticl/a/aa;Ljava/lang/Integer;)V

    goto :goto_0

    .line 586
    :cond_0
    const-string/jumbo v0, "Send-registrations"

    invoke-virtual {p3, v0}, Lcom/google/ipc/invalidation/ticl/q;->a(Ljava/lang/String;)V

    .line 587
    return-void
.end method

.method final a(Ljava/util/List;Lcom/google/ipc/invalidation/ticl/a/N;ZLcom/google/ipc/invalidation/ticl/q;)V
    .locals 4

    .prologue
    .line 559
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/H;->c:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->isRunningOnThread()Z

    move-result v0

    const-string/jumbo v1, "Not on internal thread"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 561
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 563
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/external/client/types/SimplePair;

    .line 564
    iget-object v1, v0, Lcom/google/ipc/invalidation/external/client/types/SimplePair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lcom/google/ipc/invalidation/external/client/types/SimplePair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v1, v0}, Lcom/google/ipc/invalidation/ticl/a/ab;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/ipc/invalidation/ticl/a/ab;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/H;->a:Lcom/google/ipc/invalidation/ticl/a/R;

    const/4 v1, 0x0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, p2}, Lcom/google/ipc/invalidation/ticl/a/U;->a(Lcom/google/ipc/invalidation/ticl/a/R;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/Boolean;Lcom/google/ipc/invalidation/ticl/a/N;)Lcom/google/ipc/invalidation/ticl/a/U;

    move-result-object v0

    .line 570
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/H;->f:Lcom/google/ipc/invalidation/ticl/I;

    invoke-virtual {v1, v0}, Lcom/google/ipc/invalidation/ticl/I;->a(Lcom/google/ipc/invalidation/ticl/a/U;)V

    .line 571
    const-string/jumbo v0, "Send-info"

    invoke-virtual {p4, v0}, Lcom/google/ipc/invalidation/ticl/q;->a(Ljava/lang/String;)V

    .line 572
    return-void
.end method

.method public final b()Lcom/google/ipc/invalidation/ticl/a/av;
    .locals 4

    .prologue
    .line 658
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/H;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/H;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/H;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/H;->f:Lcom/google/ipc/invalidation/ticl/I;

    invoke-virtual {v3}, Lcom/google/ipc/invalidation/ticl/I;->a()Lcom/google/ipc/invalidation/ticl/a/as;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/ipc/invalidation/ticl/a/av;->a(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Lcom/google/ipc/invalidation/ticl/a/as;)Lcom/google/ipc/invalidation/ticl/a/av;

    move-result-object v0

    return-object v0
.end method
