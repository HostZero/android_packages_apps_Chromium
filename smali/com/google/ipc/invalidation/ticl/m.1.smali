.class public abstract Lcom/google/ipc/invalidation/ticl/m;
.super Lcom/google/ipc/invalidation/b/h;
.source "InvalidationClientCore.java"

# interfaces
.implements Lcom/google/ipc/invalidation/ticl/K;
.implements Lcom/google/ipc/invalidation/ticl/ag;


# instance fields
.field a:Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;

.field final b:Lcom/google/ipc/invalidation/external/client/InvalidationListener;

.field final c:Lcom/google/ipc/invalidation/ticl/aa;

.field private final d:Lcom/google/ipc/invalidation/external/client/SystemResources;

.field private final e:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

.field private final f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

.field private g:Lcom/google/ipc/invalidation/ticl/a/N;

.field private final h:Lcom/google/ipc/invalidation/ticl/a/M;

.field private final i:Lcom/google/ipc/invalidation/ticl/O;

.field private final j:Lcom/google/ipc/invalidation/ticl/H;

.field private final k:Lcom/google/ipc/invalidation/a/a;

.field private final l:Lcom/google/ipc/invalidation/ticl/P;

.field private final m:Lcom/google/ipc/invalidation/b/q;

.field private n:Lcom/google/ipc/invalidation/b/c;

.field private o:Lcom/google/ipc/invalidation/b/c;

.field private p:Z

.field private q:Z

.field private final r:Ljava/util/Random;

.field private s:J

.field private t:Lcom/google/ipc/invalidation/ticl/p;

.field private u:Lcom/google/ipc/invalidation/ticl/v;

.field private v:Lcom/google/ipc/invalidation/ticl/t;

.field private w:Lcom/google/ipc/invalidation/ticl/r;

.field private x:Lcom/google/ipc/invalidation/ticl/q;

.field private y:Lcom/google/ipc/invalidation/ticl/s;

.field private final z:Lcom/google/ipc/invalidation/ticl/a;


# direct methods
.method public constructor <init>(Lcom/google/ipc/invalidation/external/client/SystemResources;Ljava/util/Random;I[BLcom/google/ipc/invalidation/ticl/a/N;Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/InvalidationListener;)V
    .locals 12

    .prologue
    .line 488
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v11, p7

    invoke-direct/range {v0 .. v11}, Lcom/google/ipc/invalidation/ticl/m;-><init>(Lcom/google/ipc/invalidation/external/client/SystemResources;Ljava/util/Random;I[BLcom/google/ipc/invalidation/ticl/a/N;Ljava/lang/String;Lcom/google/ipc/invalidation/ticl/a/K;Lcom/google/ipc/invalidation/ticl/a/ax;Lcom/google/ipc/invalidation/ticl/a/av;Lcom/google/ipc/invalidation/ticl/a/ay;Lcom/google/ipc/invalidation/external/client/InvalidationListener;)V

    .line 490
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/ipc/invalidation/ticl/m;->a(Lcom/google/ipc/invalidation/ticl/a/at;)V

    .line 491
    invoke-direct {p0, p1}, Lcom/google/ipc/invalidation/ticl/m;->a(Lcom/google/ipc/invalidation/external/client/SystemResources;)V

    .line 492
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v1, "Created client: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 493
    return-void
.end method

.method private constructor <init>(Lcom/google/ipc/invalidation/external/client/SystemResources;Ljava/util/Random;I[BLcom/google/ipc/invalidation/ticl/a/N;Ljava/lang/String;Lcom/google/ipc/invalidation/ticl/a/K;Lcom/google/ipc/invalidation/ticl/a/ax;Lcom/google/ipc/invalidation/ticl/a/av;Lcom/google/ipc/invalidation/ticl/a/ay;Lcom/google/ipc/invalidation/external/client/InvalidationListener;)V
    .locals 9

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/h;-><init>()V

    .line 383
    new-instance v2, Lcom/google/ipc/invalidation/a/a;

    invoke-direct {v2}, Lcom/google/ipc/invalidation/a/a;-><init>()V

    iput-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->k:Lcom/google/ipc/invalidation/a/a;

    .line 395
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->n:Lcom/google/ipc/invalidation/b/c;

    .line 400
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->o:Lcom/google/ipc/invalidation/b/c;

    .line 406
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/ipc/invalidation/ticl/m;->q:Z

    .line 412
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/ipc/invalidation/ticl/m;->s:J

    .line 433
    new-instance v2, Lcom/google/ipc/invalidation/ticl/a;

    invoke-direct {v2}, Lcom/google/ipc/invalidation/ticl/a;-><init>()V

    iput-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->z:Lcom/google/ipc/invalidation/ticl/a;

    .line 455
    invoke-static {p1}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ipc/invalidation/external/client/SystemResources;

    iput-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->d:Lcom/google/ipc/invalidation/external/client/SystemResources;

    .line 456
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/m;->r:Ljava/util/Random;

    .line 457
    invoke-interface {p1}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v2

    invoke-static {v2}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    iput-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    .line 458
    invoke-interface {p1}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getInternalScheduler()Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v2

    iput-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->e:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    .line 459
    invoke-interface {p1}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getStorage()Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;

    move-result-object v2

    iput-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->a:Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;

    .line 460
    iput-object p5, p0, Lcom/google/ipc/invalidation/ticl/m;->g:Lcom/google/ipc/invalidation/ticl/a/N;

    .line 461
    if-nez p7, :cond_0

    new-instance v2, Lcom/google/ipc/invalidation/ticl/P;

    invoke-direct {v2}, Lcom/google/ipc/invalidation/ticl/P;-><init>()V

    :goto_0
    iput-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->l:Lcom/google/ipc/invalidation/ticl/P;

    .line 462
    new-instance v2, Lcom/google/ipc/invalidation/b/q;

    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/m;->g:Lcom/google/ipc/invalidation/ticl/a/N;

    invoke-virtual {v3}, Lcom/google/ipc/invalidation/ticl/a/N;->g()I

    move-result v3

    invoke-direct {v2, p2, v3}, Lcom/google/ipc/invalidation/b/q;-><init>(Ljava/util/Random;I)V

    iput-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->m:Lcom/google/ipc/invalidation/b/q;

    .line 463
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/google/ipc/invalidation/b/c;

    invoke-direct {v3, p4}, Lcom/google/ipc/invalidation/b/c;-><init>([B)V

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/M;->a(Ljava/lang/Integer;Lcom/google/ipc/invalidation/b/c;)Lcom/google/ipc/invalidation/ticl/a/M;

    move-result-object v2

    iput-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->h:Lcom/google/ipc/invalidation/ticl/a/M;

    .line 464
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->b:Lcom/google/ipc/invalidation/external/client/InvalidationListener;

    .line 465
    if-eqz p10, :cond_1

    invoke-interface {p1}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v2

    invoke-virtual/range {p10 .. p10}, Lcom/google/ipc/invalidation/ticl/a/ay;->a()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;Ljava/util/Collection;)Lcom/google/ipc/invalidation/ticl/aa;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->c:Lcom/google/ipc/invalidation/ticl/aa;

    .line 468
    new-instance v2, Lcom/google/ipc/invalidation/ticl/O;

    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/m;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    iget-object v4, p0, Lcom/google/ipc/invalidation/ticl/m;->c:Lcom/google/ipc/invalidation/ticl/aa;

    iget-object v5, p0, Lcom/google/ipc/invalidation/ticl/m;->k:Lcom/google/ipc/invalidation/a/a;

    move-object/from16 v0, p8

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/google/ipc/invalidation/ticl/O;-><init>(Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;Lcom/google/ipc/invalidation/ticl/aa;Lcom/google/ipc/invalidation/a/a;Lcom/google/ipc/invalidation/ticl/a/ax;)V

    iput-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->i:Lcom/google/ipc/invalidation/ticl/O;

    .line 470
    new-instance v2, Lcom/google/ipc/invalidation/ticl/H;

    invoke-virtual {p5}, Lcom/google/ipc/invalidation/ticl/a/N;->i()Lcom/google/ipc/invalidation/ticl/a/ac;

    iget-object v4, p0, Lcom/google/ipc/invalidation/ticl/m;->c:Lcom/google/ipc/invalidation/ticl/aa;

    move-object v3, p1

    move v5, p3

    move-object v6, p6

    move-object v7, p0

    move-object/from16 v8, p9

    invoke-direct/range {v2 .. v8}, Lcom/google/ipc/invalidation/ticl/H;-><init>(Lcom/google/ipc/invalidation/external/client/SystemResources;Lcom/google/ipc/invalidation/ticl/aa;ILjava/lang/String;Lcom/google/ipc/invalidation/ticl/K;Lcom/google/ipc/invalidation/ticl/a/av;)V

    iput-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->j:Lcom/google/ipc/invalidation/ticl/H;

    .line 472
    return-void

    .line 461
    :cond_0
    new-instance v2, Lcom/google/ipc/invalidation/ticl/P;

    move-object/from16 v0, p7

    invoke-direct {v2, v0}, Lcom/google/ipc/invalidation/ticl/P;-><init>(Lcom/google/ipc/invalidation/ticl/a/K;)V

    goto :goto_0

    .line 465
    :cond_1
    new-instance v2, Lcom/google/ipc/invalidation/ticl/aa;

    invoke-direct {v2}, Lcom/google/ipc/invalidation/ticl/aa;-><init>()V

    goto :goto_1
.end method

.method public constructor <init>(Lcom/google/ipc/invalidation/external/client/SystemResources;Ljava/util/Random;I[BLcom/google/ipc/invalidation/ticl/a/N;Ljava/lang/String;Lcom/google/ipc/invalidation/ticl/a/at;Lcom/google/ipc/invalidation/external/client/InvalidationListener;)V
    .locals 14

    .prologue
    .line 509
    invoke-virtual/range {p7 .. p7}, Lcom/google/ipc/invalidation/ticl/a/at;->a()Lcom/google/ipc/invalidation/ticl/a/K;

    move-result-object v9

    invoke-virtual/range {p7 .. p7}, Lcom/google/ipc/invalidation/ticl/a/at;->k()Lcom/google/ipc/invalidation/ticl/a/ax;

    move-result-object v10

    invoke-virtual/range {p7 .. p7}, Lcom/google/ipc/invalidation/ticl/a/at;->j()Lcom/google/ipc/invalidation/ticl/a/av;

    move-result-object v11

    invoke-virtual/range {p7 .. p7}, Lcom/google/ipc/invalidation/ticl/a/at;->s()Lcom/google/ipc/invalidation/ticl/a/ay;

    move-result-object v12

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v13, p8

    invoke-direct/range {v2 .. v13}, Lcom/google/ipc/invalidation/ticl/m;-><init>(Lcom/google/ipc/invalidation/external/client/SystemResources;Ljava/util/Random;I[BLcom/google/ipc/invalidation/ticl/a/N;Ljava/lang/String;Lcom/google/ipc/invalidation/ticl/a/K;Lcom/google/ipc/invalidation/ticl/a/ax;Lcom/google/ipc/invalidation/ticl/a/av;Lcom/google/ipc/invalidation/ticl/a/ay;Lcom/google/ipc/invalidation/external/client/InvalidationListener;)V

    .line 513
    invoke-virtual/range {p7 .. p7}, Lcom/google/ipc/invalidation/ticl/a/at;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 514
    invoke-virtual/range {p7 .. p7}, Lcom/google/ipc/invalidation/ticl/a/at;->c()Lcom/google/ipc/invalidation/b/c;

    move-result-object v2

    iput-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->n:Lcom/google/ipc/invalidation/b/c;

    .line 516
    :cond_0
    invoke-virtual/range {p7 .. p7}, Lcom/google/ipc/invalidation/ticl/a/at;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 517
    invoke-virtual/range {p7 .. p7}, Lcom/google/ipc/invalidation/ticl/a/at;->e()Lcom/google/ipc/invalidation/b/c;

    move-result-object v2

    iput-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->o:Lcom/google/ipc/invalidation/b/c;

    .line 519
    :cond_1
    invoke-virtual/range {p7 .. p7}, Lcom/google/ipc/invalidation/ticl/a/at;->g()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/ipc/invalidation/ticl/m;->p:Z

    .line 520
    invoke-virtual/range {p7 .. p7}, Lcom/google/ipc/invalidation/ticl/a/at;->h()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/ipc/invalidation/ticl/m;->s:J

    .line 521
    invoke-virtual/range {p7 .. p7}, Lcom/google/ipc/invalidation/ticl/a/at;->i()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/ipc/invalidation/ticl/m;->q:Z

    .line 522
    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/google/ipc/invalidation/ticl/m;->a(Lcom/google/ipc/invalidation/ticl/a/at;)V

    .line 528
    invoke-direct {p0, p1}, Lcom/google/ipc/invalidation/ticl/m;->a(Lcom/google/ipc/invalidation/external/client/SystemResources;)V

    .line 529
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v3, "Created client: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 530
    return-void
.end method

.method static a(Ljava/util/Random;)Lcom/google/ipc/invalidation/b/c;
    .locals 2

    .prologue
    .line 1448
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 1449
    invoke-virtual {p0, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 1450
    new-instance v1, Lcom/google/ipc/invalidation/b/c;

    invoke-direct {v1, v0}, Lcom/google/ipc/invalidation/b/c;-><init>([B)V

    return-object v1
.end method

.method private static a(I)Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;
    .locals 1

    .prologue
    .line 1421
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;->REGISTERED:Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;

    .line 1425
    :goto_0
    return-object v0

    .line 1421
    :cond_0
    sget-object v0, Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;->UNREGISTERED:Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->e:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    return-object v0
.end method

.method public static a()Lcom/google/ipc/invalidation/ticl/a/N;
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 557
    const/4 v0, 0x2

    invoke-static {v3, v0}, Lcom/google/ipc/invalidation/ticl/a/ar;->a(II)Lcom/google/ipc/invalidation/ticl/a/ar;

    move-result-object v0

    .line 2458
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2459
    const/16 v2, 0x1388

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/ae;->a(II)Lcom/google/ipc/invalidation/ticl/a/ae;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2460
    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/google/ipc/invalidation/ticl/a/ac;->a(Ljava/lang/Integer;Ljava/util/Collection;)Lcom/google/ipc/invalidation/ticl/a/ac;

    move-result-object v1

    .line 560
    new-instance v2, Lcom/google/ipc/invalidation/ticl/a/O;

    invoke-direct {v2, v0, v1}, Lcom/google/ipc/invalidation/ticl/a/O;-><init>(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/ac;)V

    .line 561
    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/a/O;->a()Lcom/google/ipc/invalidation/ticl/a/N;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/ipc/invalidation/ticl/m;ILcom/google/ipc/invalidation/ticl/a/H;)Lcom/google/ipc/invalidation/ticl/ai;
    .locals 3

    .prologue
    .line 92
    .line 7495
    if-eqz p2, :cond_0

    .line 7496
    new-instance v0, Lcom/google/ipc/invalidation/ticl/ai;

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/m;->r:Ljava/util/Random;

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->g:Lcom/google/ipc/invalidation/ticl/a/N;

    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/a/N;->f()I

    move-result v2

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/google/ipc/invalidation/ticl/ai;-><init>(Ljava/util/Random;IILcom/google/ipc/invalidation/ticl/a/H;)V

    :goto_0
    return-object v0

    .line 7499
    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/ai;

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/m;->r:Ljava/util/Random;

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->g:Lcom/google/ipc/invalidation/ticl/a/N;

    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/a/N;->f()I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/ipc/invalidation/ticl/ai;-><init>(Ljava/util/Random;II)V

    goto :goto_0
.end method

.method private a(Lcom/google/ipc/invalidation/b/c;)V
    .locals 3

    .prologue
    .line 1436
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->n:Lcom/google/ipc/invalidation/b/c;

    if-eqz v0, :cond_0

    .line 1437
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Tried to set nonce with existing token "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->n:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1439
    :cond_0
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/m;->o:Lcom/google/ipc/invalidation/b/c;

    .line 1440
    return-void
.end method

.method private a(Lcom/google/ipc/invalidation/external/client/SystemResources;)V
    .locals 2

    .prologue
    .line 537
    invoke-interface {p1}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getNetwork()Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel;

    move-result-object v0

    new-instance v1, Lcom/google/ipc/invalidation/ticl/n;

    invoke-direct {v1, p0}, Lcom/google/ipc/invalidation/ticl/n;-><init>(Lcom/google/ipc/invalidation/ticl/m;)V

    invoke-interface {v0, v1}, Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel;->setListener(Lcom/google/ipc/invalidation/external/client/SystemResources$NetworkChannel$NetworkListener;)V

    .line 553
    return-void
.end method

.method private a(Lcom/google/ipc/invalidation/ticl/L;ILjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 1295
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->e:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->isRunningOnThread()Z

    move-result v0

    const-string/jumbo v2, "Not on internal thread"

    invoke-static {v0, v2}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 1298
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v2, "Received error message: %s, %s, %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->severe(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1302
    packed-switch p2, :pswitch_data_0

    .line 1308
    const/4 v0, -0x1

    .line 1313
    :goto_0
    const/4 v2, 0x0

    invoke-static {v0, v5, p3, v2}, Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;->newInstance(IZLjava/lang/String;Lcom/google/ipc/invalidation/external/client/types/ErrorContext;)Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;

    move-result-object v0

    .line 1314
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->b:Lcom/google/ipc/invalidation/external/client/InvalidationListener;

    invoke-interface {v2, p0, v0}, Lcom/google/ipc/invalidation/external/client/InvalidationListener;->informError(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/ErrorInfo;)V

    .line 1317
    if-eq p2, v1, :cond_1

    .line 1329
    :cond_0
    return-void

    :pswitch_0
    move v0, v1

    .line 1305
    goto :goto_0

    .line 1322
    :cond_1
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->i:Lcom/google/ipc/invalidation/ticl/O;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/O;->a()Ljava/util/Collection;

    move-result-object v0

    .line 1323
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v3, "Issuing failure for %s objects"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-interface {v2, v3, v1}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1324
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/aa;

    .line 1325
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->b:Lcom/google/ipc/invalidation/external/client/InvalidationListener;

    invoke-static {v0}, Landroid/support/customtabs/a;->convertFromObjectIdProto(Lcom/google/ipc/invalidation/ticl/a/aa;)Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Auth error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p0, v0, v5, v3}, Lcom/google/ipc/invalidation/external/client/InvalidationListener;->informRegistrationFailure(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/ObjectId;ZLjava/lang/String;)V

    goto :goto_1

    .line 1302
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/google/ipc/invalidation/ticl/a/at;)V
    .locals 5

    .prologue
    .line 583
    if-nez p1, :cond_1

    .line 584
    new-instance v0, Lcom/google/ipc/invalidation/ticl/p;

    invoke-direct {v0, p0}, Lcom/google/ipc/invalidation/ticl/p;-><init>(Lcom/google/ipc/invalidation/ticl/m;)V

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->t:Lcom/google/ipc/invalidation/ticl/p;

    .line 585
    new-instance v0, Lcom/google/ipc/invalidation/ticl/r;

    invoke-direct {v0, p0}, Lcom/google/ipc/invalidation/ticl/r;-><init>(Lcom/google/ipc/invalidation/ticl/m;)V

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->w:Lcom/google/ipc/invalidation/ticl/r;

    .line 586
    new-instance v0, Lcom/google/ipc/invalidation/ticl/v;

    invoke-direct {v0, p0}, Lcom/google/ipc/invalidation/ticl/v;-><init>(Lcom/google/ipc/invalidation/ticl/m;)V

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->u:Lcom/google/ipc/invalidation/ticl/v;

    .line 587
    new-instance v0, Lcom/google/ipc/invalidation/ticl/t;

    invoke-direct {v0, p0}, Lcom/google/ipc/invalidation/ticl/t;-><init>(Lcom/google/ipc/invalidation/ticl/m;)V

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->v:Lcom/google/ipc/invalidation/ticl/t;

    .line 588
    new-instance v0, Lcom/google/ipc/invalidation/ticl/q;

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/m;->j:Lcom/google/ipc/invalidation/ticl/H;

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->d:Lcom/google/ipc/invalidation/external/client/SystemResources;

    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/m;->m:Lcom/google/ipc/invalidation/b/q;

    iget-object v4, p0, Lcom/google/ipc/invalidation/ticl/m;->g:Lcom/google/ipc/invalidation/ticl/a/N;

    invoke-virtual {v4}, Lcom/google/ipc/invalidation/ticl/a/N;->i()Lcom/google/ipc/invalidation/ticl/a/ac;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/ipc/invalidation/ticl/a/ac;->a()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/ipc/invalidation/ticl/q;-><init>(Lcom/google/ipc/invalidation/ticl/H;Lcom/google/ipc/invalidation/external/client/SystemResources;Lcom/google/ipc/invalidation/b/q;I)V

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->x:Lcom/google/ipc/invalidation/ticl/q;

    .line 608
    :cond_0
    :goto_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/ipc/invalidation/ticl/s;-><init>(Lcom/google/ipc/invalidation/ticl/m;I)V

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->y:Lcom/google/ipc/invalidation/ticl/s;

    .line 609
    return-void

    .line 591
    :cond_1
    new-instance v0, Lcom/google/ipc/invalidation/ticl/p;

    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/at;->l()Lcom/google/ipc/invalidation/ticl/a/aw;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/ipc/invalidation/ticl/p;-><init>(Lcom/google/ipc/invalidation/ticl/m;Lcom/google/ipc/invalidation/ticl/a/aw;)V

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->t:Lcom/google/ipc/invalidation/ticl/p;

    .line 592
    new-instance v0, Lcom/google/ipc/invalidation/ticl/r;

    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/at;->o()Lcom/google/ipc/invalidation/ticl/a/aw;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/ipc/invalidation/ticl/r;-><init>(Lcom/google/ipc/invalidation/ticl/m;Lcom/google/ipc/invalidation/ticl/a/aw;)V

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->w:Lcom/google/ipc/invalidation/ticl/r;

    .line 593
    new-instance v0, Lcom/google/ipc/invalidation/ticl/v;

    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/at;->m()Lcom/google/ipc/invalidation/ticl/a/aw;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/ipc/invalidation/ticl/v;-><init>(Lcom/google/ipc/invalidation/ticl/m;Lcom/google/ipc/invalidation/ticl/a/aw;)V

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->u:Lcom/google/ipc/invalidation/ticl/v;

    .line 595
    new-instance v0, Lcom/google/ipc/invalidation/ticl/t;

    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/at;->n()Lcom/google/ipc/invalidation/ticl/a/aw;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/ipc/invalidation/ticl/t;-><init>(Lcom/google/ipc/invalidation/ticl/m;Lcom/google/ipc/invalidation/ticl/a/aw;)V

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->v:Lcom/google/ipc/invalidation/ticl/t;

    .line 597
    new-instance v0, Lcom/google/ipc/invalidation/ticl/q;

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/m;->j:Lcom/google/ipc/invalidation/ticl/H;

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->d:Lcom/google/ipc/invalidation/external/client/SystemResources;

    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/m;->m:Lcom/google/ipc/invalidation/b/q;

    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/at;->p()Lcom/google/ipc/invalidation/ticl/a/aw;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/ipc/invalidation/ticl/q;-><init>(Lcom/google/ipc/invalidation/ticl/H;Lcom/google/ipc/invalidation/external/client/SystemResources;Lcom/google/ipc/invalidation/b/q;Lcom/google/ipc/invalidation/ticl/a/aw;)V

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->x:Lcom/google/ipc/invalidation/ticl/q;

    .line 599
    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/at;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->v:Lcom/google/ipc/invalidation/ticl/t;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/t;->a(Lcom/google/ipc/invalidation/ticl/t;)Lcom/google/ipc/invalidation/b/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/at;->q()Lcom/google/ipc/invalidation/ticl/a/J;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/b;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/ipc/invalidation/ticl/m;Lcom/google/ipc/invalidation/b/c;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/google/ipc/invalidation/ticl/m;->a(Lcom/google/ipc/invalidation/b/c;)V

    return-void
.end method

.method static synthetic a(Lcom/google/ipc/invalidation/ticl/m;ZZ)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/google/ipc/invalidation/ticl/m;->a(ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/google/ipc/invalidation/ticl/m;[B)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 92
    .line 7787
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->e:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->isRunningOnThread()Z

    move-result v0

    const-string/jumbo v2, "Not on internal thread"

    invoke-static {v0, v2}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 7790
    if-nez p1, :cond_1

    move-object v0, v1

    .line 7794
    :goto_0
    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 7797
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->c:Lcom/google/ipc/invalidation/ticl/aa;

    sget-object v3, Lcom/google/ipc/invalidation/ticl/ab;->d:Lcom/google/ipc/invalidation/ticl/ab;

    invoke-virtual {v2, v3}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/ticl/ab;)V

    .line 7798
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v3, "Failed deserializing persistent state: %s"

    new-array v4, v11, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/ipc/invalidation/b/c;->b([B)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-interface {v2, v3, v4}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->severe(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7801
    :cond_0
    if-eqz v0, :cond_5

    .line 7810
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v3, "Restarting from persistent state: %s"

    new-array v4, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/J;->a()Lcom/google/ipc/invalidation/b/c;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-interface {v2, v3, v4}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7811
    invoke-direct {p0, v1}, Lcom/google/ipc/invalidation/ticl/m;->a(Lcom/google/ipc/invalidation/b/c;)V

    .line 7812
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/J;->a()Lcom/google/ipc/invalidation/b/c;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/ipc/invalidation/ticl/m;->b(Lcom/google/ipc/invalidation/b/c;)V

    .line 7813
    iput-boolean v10, p0, Lcom/google/ipc/invalidation/ticl/m;->p:Z

    .line 7816
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/m;->g:Lcom/google/ipc/invalidation/ticl/a/N;

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->d:Lcom/google/ipc/invalidation/external/client/SystemResources;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/J;->c()J

    move-result-wide v4

    .line 7863
    invoke-interface {v2}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getInternalScheduler()Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->getCurrentTimeMs()J

    move-result-wide v6

    .line 7865
    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/N;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7867
    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/N;->h()I

    move-result v0

    .line 7888
    :goto_1
    invoke-interface {v2}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v2

    const-string/jumbo v3, "Computed heartbeat delay %s from: offline-delivery = %s, initial-persistent-delay = %s, heartbeat-interval = %s, nowMs = %s"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/N;->j()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v11

    const/4 v5, 0x2

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/N;->h()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/N;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7818
    new-instance v1, Lcom/google/ipc/invalidation/ticl/s;

    invoke-direct {v1, p0, v0}, Lcom/google/ipc/invalidation/ticl/s;-><init>(Lcom/google/ipc/invalidation/ticl/m;I)V

    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/m;->y:Lcom/google/ipc/invalidation/ticl/s;

    .line 7819
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->y:Lcom/google/ipc/invalidation/ticl/s;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/ticl/s;->a(Ljava/lang/String;)V

    .line 7824
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->w:Lcom/google/ipc/invalidation/ticl/r;

    const-string/jumbo v1, "Startup-after-persistence"

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/ticl/r;->a(Ljava/lang/String;)V

    .line 7825
    :goto_2
    return-void

    .line 7790
    :cond_1
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->k:Lcom/google/ipc/invalidation/a/a;

    invoke-static {v0, p1, v2}, Landroid/support/customtabs/a;->deserializeState(Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;[BLcom/google/ipc/invalidation/a/a;)Lcom/google/ipc/invalidation/ticl/a/J;

    move-result-object v0

    goto/16 :goto_0

    .line 7872
    :cond_2
    cmp-long v0, v4, v6

    if-gtz v0, :cond_3

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/N;->d()I

    move-result v0

    int-to-long v8, v0

    add-long/2addr v8, v4

    cmp-long v0, v8, v6

    if-gez v0, :cond_4

    .line 7876
    :cond_3
    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/N;->h()I

    move-result v0

    goto :goto_1

    .line 7881
    :cond_4
    sub-long v4, v6, v4

    .line 7882
    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/N;->d()I

    move-result v0

    int-to-long v8, v0

    sub-long v4, v8, v4

    long-to-int v0, v4

    .line 7884
    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/N;->h()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_1

    .line 7831
    :cond_5
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v1, "Starting with no previous state"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7832
    iput-boolean v11, p0, Lcom/google/ipc/invalidation/ticl/m;->p:Z

    .line 7833
    const-string/jumbo v0, "Startup"

    invoke-direct {p0, v0}, Lcom/google/ipc/invalidation/ticl/m;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->e:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->isRunningOnThread()Z

    move-result v0

    const-string/jumbo v1, "Not on internal thread"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 1373
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/ipc/invalidation/ticl/m;->b(Lcom/google/ipc/invalidation/b/c;)V

    .line 1374
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->t:Lcom/google/ipc/invalidation/ticl/p;

    invoke-virtual {v0, p1}, Lcom/google/ipc/invalidation/ticl/p;->a(Ljava/lang/String;)V

    .line 1375
    return-void
.end method

.method private a(Ljava/util/Collection;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1199
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->e:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->isRunningOnThread()Z

    move-result v0

    const-string/jumbo v1, "Not on internal thread"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 1201
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/Y;

    .line 1202
    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/a/G;->a(Lcom/google/ipc/invalidation/ticl/a/Y;)Lcom/google/ipc/invalidation/ticl/a/G;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/a/G;->c()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/ipc/invalidation/external/client/types/AckHandle;->newInstance([B)Lcom/google/ipc/invalidation/external/client/types/AckHandle;

    move-result-object v2

    .line 1203
    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/m;->z:Lcom/google/ipc/invalidation/ticl/a;

    invoke-virtual {v3, v0}, Lcom/google/ipc/invalidation/ticl/a;->b(Lcom/google/ipc/invalidation/ticl/a/Y;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1207
    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/m;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v4, "Stale invalidation {0}, not delivering"

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v0, v5, v9

    invoke-interface {v3, v4, v5}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1208
    invoke-virtual {p0, v2}, Lcom/google/ipc/invalidation/ticl/m;->acknowledge(Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V

    .line 1209
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->c:Lcom/google/ipc/invalidation/ticl/aa;

    sget-object v2, Lcom/google/ipc/invalidation/ticl/ae;->h:Lcom/google/ipc/invalidation/ticl/ae;

    invoke-virtual {v0, v2}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/ticl/ae;)V

    goto :goto_0

    .line 1210
    :cond_0
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/Y;->a()Lcom/google/ipc/invalidation/ticl/a/aa;

    move-result-object v3

    .line 6038
    sget-object v4, Lcom/google/ipc/invalidation/ticl/a/L;->c:Lcom/google/ipc/invalidation/ticl/a/aa;

    invoke-virtual {v4, v3}, Lcom/google/ipc/invalidation/ticl/a/aa;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1210
    if-eqz v3, :cond_1

    .line 1211
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v3, "Issuing invalidate all"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1212
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->b:Lcom/google/ipc/invalidation/external/client/InvalidationListener;

    invoke-interface {v0, p0, v2}, Lcom/google/ipc/invalidation/external/client/InvalidationListener;->invalidateAll(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V

    goto :goto_0

    .line 1215
    :cond_1
    invoke-static {v0}, Landroid/support/customtabs/a;->convertFromInvalidationProto(Lcom/google/ipc/invalidation/ticl/a/Y;)Lcom/google/ipc/invalidation/external/client/types/Invalidation;

    move-result-object v3

    .line 1217
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/Y;->g()Z

    move-result v4

    .line 1218
    iget-object v5, p0, Lcom/google/ipc/invalidation/ticl/m;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v6, "Issuing invalidate (known-version = %s, is-trickle-restart = %s): %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/Y;->c()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x2

    aput-object v3, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1223
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/Y;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->g:Lcom/google/ipc/invalidation/ticl/a/N;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/N;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1225
    :cond_2
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->b:Lcom/google/ipc/invalidation/external/client/InvalidationListener;

    invoke-interface {v0, p0, v3, v2}, Lcom/google/ipc/invalidation/external/client/InvalidationListener;->invalidate(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/Invalidation;Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V

    goto/16 :goto_0

    .line 1228
    :cond_3
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->b:Lcom/google/ipc/invalidation/external/client/InvalidationListener;

    invoke-virtual {v3}, Lcom/google/ipc/invalidation/external/client/types/Invalidation;->getObjectId()Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    move-result-object v3

    invoke-interface {v0, p0, v3, v2}, Lcom/google/ipc/invalidation/external/client/InvalidationListener;->invalidateUnknownVersion(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/ObjectId;Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V

    goto/16 :goto_0

    .line 1233
    :cond_4
    return-void
.end method

.method private a(Ljava/util/Collection;I)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 936
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string/jumbo v3, "Must specify some object id"

    invoke-static {v0, v3}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 937
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->e:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->isRunningOnThread()Z

    move-result v0

    const-string/jumbo v3, "Not running on internal thread"

    invoke-static {v0, v3}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 940
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->l:Lcom/google/ipc/invalidation/ticl/P;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/P;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 943
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v3, "Ticl stopped: register (%s) of %s ignored."

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p1, v4, v1

    invoke-interface {v0, v3, v4}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->severe(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 982
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 936
    goto :goto_0

    .line 946
    :cond_2
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->l:Lcom/google/ipc/invalidation/ticl/P;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/P;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 949
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v3, "Ticl is not yet started; failing registration call; client = %s, objects = %s, op = %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object p1, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v9

    invoke-interface {v0, v3, v4}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->severe(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 952
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    .line 953
    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/m;->b:Lcom/google/ipc/invalidation/external/client/InvalidationListener;

    const-string/jumbo v4, "Client not yet ready"

    invoke-interface {v3, p0, v0, v1, v4}, Lcom/google/ipc/invalidation/external/client/InvalidationListener;->informRegistrationFailure(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/ObjectId;ZLjava/lang/String;)V

    goto :goto_2

    .line 958
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 959
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    .line 960
    const-string/jumbo v5, "Must specify object id"

    invoke-static {v0, v5}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    invoke-static {v0}, Landroid/support/customtabs/a;->convertToObjectIdProto(Lcom/google/ipc/invalidation/external/client/types/ObjectId;)Lcom/google/ipc/invalidation/ticl/a/aa;

    move-result-object v5

    .line 962
    if-ne p2, v1, :cond_4

    sget-object v0, Lcom/google/ipc/invalidation/ticl/ac;->b:Lcom/google/ipc/invalidation/ticl/ac;

    .line 964
    :goto_4
    iget-object v6, p0, Lcom/google/ipc/invalidation/ticl/m;->c:Lcom/google/ipc/invalidation/ticl/aa;

    invoke-virtual {v6, v0}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/ticl/ac;)V

    .line 965
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v6, "Register %s, %s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v5, v7, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-interface {v0, v6, v7}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 966
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 962
    :cond_4
    sget-object v0, Lcom/google/ipc/invalidation/ticl/ac;->c:Lcom/google/ipc/invalidation/ticl/ac;

    goto :goto_4

    .line 973
    :cond_5
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->i:Lcom/google/ipc/invalidation/ticl/O;

    invoke-virtual {v0, v3, p2}, Lcom/google/ipc/invalidation/ticl/O;->a(Ljava/util/Collection;I)Ljava/util/Collection;

    move-result-object v0

    .line 978
    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/m;->p:Z

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 979
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/m;->j:Lcom/google/ipc/invalidation/ticl/H;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/m;->x:Lcom/google/ipc/invalidation/ticl/q;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/ipc/invalidation/ticl/H;->a(Ljava/util/Collection;Ljava/lang/Integer;Lcom/google/ipc/invalidation/ticl/q;)V

    .line 981
    :cond_6
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->u:Lcom/google/ipc/invalidation/ticl/v;

    const-string/jumbo v1, "performRegister"

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/ticl/v;->a(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private a(Ljava/util/List;)V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1237
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->e:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->isRunningOnThread()Z

    move-result v0

    const-string/jumbo v1, "Not on internal thread"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 1238
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->i:Lcom/google/ipc/invalidation/ticl/O;

    invoke-virtual {v0, p1}, Lcom/google/ipc/invalidation/ticl/O;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 1240
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    move v0, v2

    :goto_0
    const-string/jumbo v1, "Not all registration statuses were processed"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    move v4, v3

    .line 1245
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_5

    .line 1246
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/ah;

    .line 1247
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1248
    iget-object v6, p0, Lcom/google/ipc/invalidation/ticl/m;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v7, "Process reg status: %s"

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v0, v8, v3

    invoke-interface {v6, v7, v8}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1250
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ah;->a()Lcom/google/ipc/invalidation/ticl/a/ag;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/ipc/invalidation/ticl/a/ag;->a()Lcom/google/ipc/invalidation/ticl/a/aa;

    move-result-object v6

    invoke-static {v6}, Landroid/support/customtabs/a;->convertFromObjectIdProto(Lcom/google/ipc/invalidation/ticl/a/aa;)Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    move-result-object v6

    .line 1252
    if-eqz v1, :cond_1

    .line 1254
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ah;->a()Lcom/google/ipc/invalidation/ticl/a/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ag;->c()I

    move-result v0

    .line 1255
    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/m;->a(I)Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;

    move-result-object v0

    .line 1256
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/m;->b:Lcom/google/ipc/invalidation/external/client/InvalidationListener;

    invoke-interface {v1, p0, v6, v0}, Lcom/google/ipc/invalidation/external/client/InvalidationListener;->informRegistrationStatus(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/ObjectId;Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;)V

    .line 1245
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_0
    move v0, v3

    .line 1240
    goto :goto_0

    .line 1260
    :cond_1
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ah;->c()Lcom/google/ipc/invalidation/ticl/a/ap;

    move-result-object v1

    invoke-static {v1}, Landroid/support/customtabs/a;->isSuccess(Lcom/google/ipc/invalidation/ticl/a/ap;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "Registration discrepancy detected"

    .line 1262
    :goto_3
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ah;->c()Lcom/google/ipc/invalidation/ticl/a/ap;

    move-result-object v0

    .line 6043
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ap;->a()I

    move-result v0

    const/4 v7, 0x3

    if-ne v0, v7, :cond_3

    move v0, v2

    .line 1263
    :goto_4
    iget-object v7, p0, Lcom/google/ipc/invalidation/ticl/m;->b:Lcom/google/ipc/invalidation/external/client/InvalidationListener;

    if-nez v0, :cond_4

    move v0, v2

    :goto_5
    invoke-interface {v7, p0, v6, v0, v1}, Lcom/google/ipc/invalidation/external/client/InvalidationListener;->informRegistrationFailure(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/ObjectId;ZLjava/lang/String;)V

    goto :goto_2

    .line 1260
    :cond_2
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ah;->c()Lcom/google/ipc/invalidation/ticl/a/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/ap;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    move v0, v3

    .line 6043
    goto :goto_4

    :cond_4
    move v0, v3

    .line 1263
    goto :goto_5

    .line 1267
    :cond_5
    return-void
.end method

.method private a(ZZ)V
    .locals 5

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v1, "Sending info message to server; request server summary = %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1385
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->e:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->isRunningOnThread()Z

    move-result v0

    const-string/jumbo v1, "Not on internal thread"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 1387
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1389
    const/4 v0, 0x0

    .line 1390
    if-eqz p1, :cond_0

    .line 1391
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->c:Lcom/google/ipc/invalidation/ticl/aa;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/ticl/aa;->a(Ljava/util/List;)V

    .line 1392
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->g:Lcom/google/ipc/invalidation/ticl/a/N;

    .line 1394
    :cond_0
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->j:Lcom/google/ipc/invalidation/ticl/H;

    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/m;->x:Lcom/google/ipc/invalidation/ticl/q;

    invoke-virtual {v2, v1, v0, p2, v3}, Lcom/google/ipc/invalidation/ticl/H;->a(Ljava/util/List;Lcom/google/ipc/invalidation/ticl/a/N;ZLcom/google/ipc/invalidation/ticl/q;)V

    .line 1396
    return-void
.end method

.method static synthetic b(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    return-object v0
.end method

.method private b(Lcom/google/ipc/invalidation/b/c;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1461
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->o:Lcom/google/ipc/invalidation/b/c;

    if-eqz v0, :cond_0

    .line 1462
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Tried to set token with existing nonce "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->o:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1467
    :cond_0
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->l:Lcom/google/ipc/invalidation/ticl/P;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/P;->c()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->n:Lcom/google/ipc/invalidation/b/c;

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    move v0, v1

    .line 1469
    :goto_0
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/m;->n:Lcom/google/ipc/invalidation/b/c;

    .line 1471
    if-eqz v0, :cond_1

    .line 6478
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->l:Lcom/google/ipc/invalidation/ticl/P;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/P;->c()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Landroid/support/customtabs/a;->checkState(Z)V

    .line 6479
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->l:Lcom/google/ipc/invalidation/ticl/P;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/P;->a()V

    .line 6480
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->b:Lcom/google/ipc/invalidation/external/client/InvalidationListener;

    invoke-interface {v0, p0}, Lcom/google/ipc/invalidation/external/client/InvalidationListener;->ready(Lcom/google/ipc/invalidation/external/client/InvalidationClient;)V

    .line 6485
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->b:Lcom/google/ipc/invalidation/external/client/InvalidationListener;

    sget-object v3, Lcom/google/ipc/invalidation/ticl/O;->a:[B

    invoke-interface {v0, p0, v3, v2}, Lcom/google/ipc/invalidation/external/client/InvalidationListener;->reissueRegistrations(Lcom/google/ipc/invalidation/external/client/InvalidationClient;[BI)V

    .line 6486
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v3, "Ticl started: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-interface {v0, v3, v1}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1474
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 1467
    goto :goto_0

    :cond_3
    move v0, v2

    .line 6478
    goto :goto_1
.end method

.method private b(Ljava/util/Collection;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1281
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->e:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->isRunningOnThread()Z

    move-result v0

    const-string/jumbo v3, "Not on internal thread"

    invoke-static {v0, v3}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 1283
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1284
    if-ne v0, v2, :cond_3

    move v0, v2

    .line 1285
    :goto_0
    if-eqz v0, :cond_0

    .line 1289
    :cond_1
    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/m;->i:Lcom/google/ipc/invalidation/ticl/O;

    invoke-virtual {v3}, Lcom/google/ipc/invalidation/ticl/O;->c()Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/google/ipc/invalidation/ticl/m;->a(ZZ)V

    .line 1291
    return-void

    :cond_3
    move v0, v1

    .line 1284
    goto :goto_0
.end method

.method static synthetic c(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/b/q;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->m:Lcom/google/ipc/invalidation/b/q;

    return-object v0
.end method

.method static synthetic d(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/ticl/a/N;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->g:Lcom/google/ipc/invalidation/ticl/a/N;

    return-object v0
.end method

.method static synthetic e(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/b/c;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->n:Lcom/google/ipc/invalidation/b/c;

    return-object v0
.end method

.method static synthetic f(Lcom/google/ipc/invalidation/ticl/m;)Ljava/util/Random;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->r:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic g(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/ticl/a/M;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->h:Lcom/google/ipc/invalidation/ticl/a/M;

    return-object v0
.end method

.method static synthetic h(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/b/c;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->o:Lcom/google/ipc/invalidation/b/c;

    return-object v0
.end method

.method static synthetic i(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/ticl/q;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->x:Lcom/google/ipc/invalidation/ticl/q;

    return-object v0
.end method

.method static synthetic j(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/ticl/H;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->j:Lcom/google/ipc/invalidation/ticl/H;

    return-object v0
.end method

.method static synthetic k(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/ticl/O;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->i:Lcom/google/ipc/invalidation/ticl/O;

    return-object v0
.end method

.method static synthetic l(Lcom/google/ipc/invalidation/ticl/m;)J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/m;->s:J

    return-wide v0
.end method

.method static synthetic m(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/a/a;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->k:Lcom/google/ipc/invalidation/a/a;

    return-object v0
.end method

.method static synthetic n(Lcom/google/ipc/invalidation/ticl/m;)Lcom/google/ipc/invalidation/external/client/SystemResources;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->d:Lcom/google/ipc/invalidation/external/client/SystemResources;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 1520
    const-string/jumbo v0, "Client: "

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/m;->h:Lcom/google/ipc/invalidation/ticl/a/M;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/m;->n:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/m;->l:Lcom/google/ipc/invalidation/ticl/P;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/Object;)Lcom/google/ipc/invalidation/b/r;

    .line 1522
    return-void
.end method

.method a(Z)V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1063
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->e:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->isRunningOnThread()Z

    move-result v2

    const-string/jumbo v3, "Not on internal thread"

    invoke-static {v2, v3}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 1064
    iget-boolean v2, p0, Lcom/google/ipc/invalidation/ticl/m;->q:Z

    .line 1065
    iput-boolean p1, p0, Lcom/google/ipc/invalidation/ticl/m;->q:Z

    .line 1066
    if-eqz p1, :cond_0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->e:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->getCurrentTimeMs()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/ipc/invalidation/ticl/m;->s:J

    iget-object v6, p0, Lcom/google/ipc/invalidation/ticl/m;->g:Lcom/google/ipc/invalidation/ticl/a/N;

    invoke-virtual {v6}, Lcom/google/ipc/invalidation/ticl/a/N;->k()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1068
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string/jumbo v4, "Sending heartbeat after reconnection, previous send was %s ms ago"

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/ipc/invalidation/ticl/m;->e:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v6}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->getCurrentTimeMs()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/ipc/invalidation/ticl/m;->s:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-interface {v2, v3, v4, v5}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1071
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->i:Lcom/google/ipc/invalidation/ticl/O;

    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/O;->c()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/google/ipc/invalidation/ticl/m;->a(ZZ)V

    .line 1073
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1071
    goto :goto_0
.end method

.method a([B)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1081
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->e:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->isRunningOnThread()Z

    move-result v0

    const-string/jumbo v2, "Not on internal thread"

    invoke-static {v0, v2}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 1082
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->c:Lcom/google/ipc/invalidation/ticl/aa;

    sget-object v2, Lcom/google/ipc/invalidation/ticl/ae;->i:Lcom/google/ipc/invalidation/ticl/ae;

    invoke-virtual {v0, v2}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/ticl/ae;)V

    .line 1083
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->j:Lcom/google/ipc/invalidation/ticl/H;

    invoke-virtual {v0, p1}, Lcom/google/ipc/invalidation/ticl/H;->a([B)Lcom/google/ipc/invalidation/ticl/J;

    move-result-object v5

    .line 1084
    if-nez v5, :cond_1

    .line 1133
    :cond_0
    :goto_0
    return-void

    .line 4336
    :cond_1
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->n:Lcom/google/ipc/invalidation/b/c;

    if-eqz v0, :cond_5

    .line 4338
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->n:Lcom/google/ipc/invalidation/b/c;

    iget-object v2, v5, Lcom/google/ipc/invalidation/ticl/J;->a:Lcom/google/ipc/invalidation/ticl/L;

    iget-object v2, v2, Lcom/google/ipc/invalidation/ticl/L;->a:Lcom/google/ipc/invalidation/b/c;

    invoke-static {v0, v2}, Landroid/support/customtabs/a;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4339
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v2, "Incoming message has bad token: server = %s, client = %s"

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, v5, Lcom/google/ipc/invalidation/ticl/J;->a:Lcom/google/ipc/invalidation/ticl/L;

    iget-object v7, v7, Lcom/google/ipc/invalidation/ticl/L;->a:Lcom/google/ipc/invalidation/b/c;

    aput-object v7, v6, v3

    iget-object v7, p0, Lcom/google/ipc/invalidation/ticl/m;->n:Lcom/google/ipc/invalidation/b/c;

    aput-object v7, v6, v4

    invoke-interface {v0, v2, v6}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4341
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->c:Lcom/google/ipc/invalidation/ticl/aa;

    sget-object v2, Lcom/google/ipc/invalidation/ticl/ab;->j:Lcom/google/ipc/invalidation/ticl/ab;

    invoke-virtual {v0, v2}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/ticl/ab;)V

    move v0, v3

    .line 1090
    :goto_1
    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, v5, Lcom/google/ipc/invalidation/ticl/J;->b:Lcom/google/ipc/invalidation/ticl/a/aq;

    if-eqz v0, :cond_3

    .line 1096
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->c:Lcom/google/ipc/invalidation/ticl/aa;

    sget-object v2, Lcom/google/ipc/invalidation/ticl/ae;->e:Lcom/google/ipc/invalidation/ticl/ae;

    invoke-virtual {v0, v2}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/ticl/ae;)V

    .line 1097
    iget-object v0, v5, Lcom/google/ipc/invalidation/ticl/J;->a:Lcom/google/ipc/invalidation/ticl/L;

    iget-object v2, v0, Lcom/google/ipc/invalidation/ticl/L;->a:Lcom/google/ipc/invalidation/b/c;

    iget-object v0, v5, Lcom/google/ipc/invalidation/ticl/J;->b:Lcom/google/ipc/invalidation/ticl/a/aq;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/aq;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v5, Lcom/google/ipc/invalidation/ticl/J;->b:Lcom/google/ipc/invalidation/ticl/a/aq;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/aq;->a()Lcom/google/ipc/invalidation/b/c;

    move-result-object v0

    .line 5141
    :goto_2
    iget-object v6, p0, Lcom/google/ipc/invalidation/ticl/m;->e:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v6}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->isRunningOnThread()Z

    move-result v6

    const-string/jumbo v7, "Not on internal thread"

    invoke-static {v6, v7}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 5146
    if-eqz v0, :cond_b

    .line 5148
    iget-object v6, p0, Lcom/google/ipc/invalidation/ticl/m;->o:Lcom/google/ipc/invalidation/b/c;

    invoke-static {v2, v6}, Landroid/support/customtabs/a;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 5149
    iget-object v7, p0, Lcom/google/ipc/invalidation/ticl/m;->n:Lcom/google/ipc/invalidation/b/c;

    invoke-static {v2, v7}, Landroid/support/customtabs/a;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 5150
    if-nez v6, :cond_2

    if-eqz v2, :cond_9

    :cond_2
    move v2, v4

    .line 5151
    :goto_3
    if-nez v2, :cond_a

    .line 5152
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/m;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v2, "Ignoring new token; %s does not match nonce = %s or existing token = %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v3

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->o:Lcom/google/ipc/invalidation/b/c;

    aput-object v0, v6, v4

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->n:Lcom/google/ipc/invalidation/b/c;

    aput-object v0, v6, v9

    invoke-interface {v1, v2, v6}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1104
    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->n:Lcom/google/ipc/invalidation/b/c;

    if-eqz v0, :cond_0

    .line 1109
    iget-object v0, v5, Lcom/google/ipc/invalidation/ticl/J;->a:Lcom/google/ipc/invalidation/ticl/L;

    .line 5171
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/m;->e:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v1}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->isRunningOnThread()Z

    move-result v1

    const-string/jumbo v2, "Not on internal thread"

    invoke-static {v1, v2}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 5172
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/m;->o:Lcom/google/ipc/invalidation/b/c;

    if-eqz v1, :cond_c

    .line 5173
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Cannot process server header with non-null nonce (have "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/m;->o:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    move v0, v4

    .line 4344
    goto/16 :goto_1

    .line 4345
    :cond_5
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->o:Lcom/google/ipc/invalidation/b/c;

    if-eqz v0, :cond_7

    .line 4347
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->o:Lcom/google/ipc/invalidation/b/c;

    iget-object v2, v5, Lcom/google/ipc/invalidation/ticl/J;->a:Lcom/google/ipc/invalidation/ticl/L;

    iget-object v2, v2, Lcom/google/ipc/invalidation/ticl/L;->a:Lcom/google/ipc/invalidation/b/c;

    invoke-static {v0, v2}, Landroid/support/customtabs/a;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 4348
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->c:Lcom/google/ipc/invalidation/ticl/aa;

    sget-object v2, Lcom/google/ipc/invalidation/ticl/ab;->i:Lcom/google/ipc/invalidation/ticl/ab;

    invoke-virtual {v0, v2}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/ticl/ab;)V

    .line 4349
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v2, "Rejecting server message with mismatched nonce: Client = %s, Server = %s"

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/ipc/invalidation/ticl/m;->o:Lcom/google/ipc/invalidation/b/c;

    aput-object v7, v6, v3

    iget-object v7, v5, Lcom/google/ipc/invalidation/ticl/J;->a:Lcom/google/ipc/invalidation/ticl/L;

    iget-object v7, v7, Lcom/google/ipc/invalidation/ticl/L;->a:Lcom/google/ipc/invalidation/b/c;

    aput-object v7, v6, v4

    invoke-interface {v0, v2, v6}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v3

    .line 4351
    goto/16 :goto_1

    .line 4353
    :cond_6
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v2, "Accepting server message with matching nonce: %s"

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/ipc/invalidation/ticl/m;->o:Lcom/google/ipc/invalidation/b/c;

    aput-object v7, v6, v3

    invoke-interface {v0, v2, v6}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v4

    .line 4354
    goto/16 :goto_1

    .line 4358
    :cond_7
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v2, "Neither token nor nonce was set in validateToken: %s, %s"

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/ipc/invalidation/ticl/m;->n:Lcom/google/ipc/invalidation/b/c;

    aput-object v7, v6, v3

    iget-object v7, p0, Lcom/google/ipc/invalidation/ticl/m;->o:Lcom/google/ipc/invalidation/b/c;

    aput-object v7, v6, v4

    invoke-interface {v0, v2, v6}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v3

    .line 4359
    goto/16 :goto_1

    :cond_8
    move-object v0, v1

    .line 1097
    goto/16 :goto_2

    :cond_9
    move v2, v3

    .line 5150
    goto/16 :goto_3

    .line 5156
    :cond_a
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v6, "New token being assigned at client: %s, Old = %s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v3

    iget-object v8, p0, Lcom/google/ipc/invalidation/ticl/m;->n:Lcom/google/ipc/invalidation/b/c;

    aput-object v8, v7, v4

    invoke-interface {v2, v6, v7}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5159
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->w:Lcom/google/ipc/invalidation/ticl/r;

    const-string/jumbo v6, "Heartbeat-after-new-token"

    invoke-virtual {v2, v6}, Lcom/google/ipc/invalidation/ticl/r;->a(Ljava/lang/String;)V

    .line 5160
    invoke-direct {p0, v1}, Lcom/google/ipc/invalidation/ticl/m;->a(Lcom/google/ipc/invalidation/b/c;)V

    .line 5161
    invoke-direct {p0, v0}, Lcom/google/ipc/invalidation/ticl/m;->b(Lcom/google/ipc/invalidation/b/c;)V

    .line 5162
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->v:Lcom/google/ipc/invalidation/ticl/t;

    const-string/jumbo v1, "Write-after-new-token"

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/ticl/t;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 5164
    :cond_b
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v1, "Destroying existing token: %s"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/ipc/invalidation/ticl/m;->n:Lcom/google/ipc/invalidation/b/c;

    aput-object v6, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5165
    const-string/jumbo v0, "Destroy"

    invoke-direct {p0, v0}, Lcom/google/ipc/invalidation/ticl/m;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 5176
    :cond_c
    iget-object v1, v0, Lcom/google/ipc/invalidation/ticl/L;->b:Lcom/google/ipc/invalidation/ticl/a/ak;

    if-eqz v1, :cond_d

    .line 5179
    iput-boolean v4, p0, Lcom/google/ipc/invalidation/ticl/m;->p:Z

    .line 5184
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/m;->i:Lcom/google/ipc/invalidation/ticl/O;

    iget-object v2, v0, Lcom/google/ipc/invalidation/ticl/L;->b:Lcom/google/ipc/invalidation/ticl/a/ak;

    invoke-virtual {v1, v2}, Lcom/google/ipc/invalidation/ticl/O;->a(Lcom/google/ipc/invalidation/ticl/a/ak;)Ljava/util/Set;

    move-result-object v1

    .line 5186
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v6, "Received new server registration summary (%s); will make %s upcalls"

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/ipc/invalidation/ticl/L;->b:Lcom/google/ipc/invalidation/ticl/a/ak;

    aput-object v0, v7, v3

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v4

    invoke-interface {v2, v6, v7}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5188
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/ag;

    .line 5189
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ag;->a()Lcom/google/ipc/invalidation/ticl/a/aa;

    move-result-object v2

    invoke-static {v2}, Landroid/support/customtabs/a;->convertFromObjectIdProto(Lcom/google/ipc/invalidation/ticl/a/aa;)Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    move-result-object v2

    .line 5191
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ag;->c()I

    move-result v0

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/m;->a(I)Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;

    move-result-object v0

    .line 5192
    iget-object v4, p0, Lcom/google/ipc/invalidation/ticl/m;->b:Lcom/google/ipc/invalidation/external/client/InvalidationListener;

    invoke-interface {v4, p0, v2, v0}, Lcom/google/ipc/invalidation/external/client/InvalidationListener;->informRegistrationStatus(Lcom/google/ipc/invalidation/external/client/InvalidationClient;Lcom/google/ipc/invalidation/external/client/types/ObjectId;Lcom/google/ipc/invalidation/external/client/InvalidationListener$RegistrationState;)V

    goto :goto_5

    .line 1112
    :cond_d
    iget-object v0, v5, Lcom/google/ipc/invalidation/ticl/J;->c:Lcom/google/ipc/invalidation/ticl/a/X;

    if-eqz v0, :cond_e

    .line 1113
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->c:Lcom/google/ipc/invalidation/ticl/aa;

    sget-object v1, Lcom/google/ipc/invalidation/ticl/ae;->b:Lcom/google/ipc/invalidation/ticl/ae;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/ticl/ae;)V

    .line 1114
    iget-object v0, v5, Lcom/google/ipc/invalidation/ticl/J;->c:Lcom/google/ipc/invalidation/ticl/a/X;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/X;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/ipc/invalidation/ticl/m;->a(Ljava/util/Collection;)V

    .line 1116
    :cond_e
    iget-object v0, v5, Lcom/google/ipc/invalidation/ticl/J;->d:Lcom/google/ipc/invalidation/ticl/a/ai;

    if-eqz v0, :cond_f

    .line 1117
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->c:Lcom/google/ipc/invalidation/ticl/aa;

    sget-object v1, Lcom/google/ipc/invalidation/ticl/ae;->c:Lcom/google/ipc/invalidation/ticl/ae;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/ticl/ae;)V

    .line 1118
    iget-object v0, v5, Lcom/google/ipc/invalidation/ticl/J;->d:Lcom/google/ipc/invalidation/ticl/a/ai;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ai;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/ipc/invalidation/ticl/m;->a(Ljava/util/List;)V

    .line 1120
    :cond_f
    iget-object v0, v5, Lcom/google/ipc/invalidation/ticl/J;->e:Lcom/google/ipc/invalidation/ticl/a/am;

    if-eqz v0, :cond_10

    .line 1121
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->c:Lcom/google/ipc/invalidation/ticl/aa;

    sget-object v1, Lcom/google/ipc/invalidation/ticl/ae;->d:Lcom/google/ipc/invalidation/ticl/ae;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/ticl/ae;)V

    .line 5271
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->e:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->isRunningOnThread()Z

    move-result v0

    const-string/jumbo v1, "Not on internal thread"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 5274
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->i:Lcom/google/ipc/invalidation/ticl/O;

    sget-object v1, Lcom/google/ipc/invalidation/b/c;->a:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/google/ipc/invalidation/ticl/O;->a([BI)Lcom/google/ipc/invalidation/ticl/a/aj;

    move-result-object v0

    .line 5276
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/m;->j:Lcom/google/ipc/invalidation/ticl/H;

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->x:Lcom/google/ipc/invalidation/ticl/q;

    invoke-virtual {v1, v0, v2}, Lcom/google/ipc/invalidation/ticl/H;->a(Lcom/google/ipc/invalidation/ticl/a/aj;Lcom/google/ipc/invalidation/ticl/q;)V

    .line 1124
    :cond_10
    iget-object v0, v5, Lcom/google/ipc/invalidation/ticl/J;->f:Lcom/google/ipc/invalidation/ticl/a/V;

    if-eqz v0, :cond_11

    .line 1125
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->c:Lcom/google/ipc/invalidation/ticl/aa;

    sget-object v1, Lcom/google/ipc/invalidation/ticl/ae;->a:Lcom/google/ipc/invalidation/ticl/ae;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/ticl/ae;)V

    .line 1126
    iget-object v0, v5, Lcom/google/ipc/invalidation/ticl/J;->f:Lcom/google/ipc/invalidation/ticl/a/V;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/V;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/ipc/invalidation/ticl/m;->b(Ljava/util/Collection;)V

    .line 1128
    :cond_11
    iget-object v0, v5, Lcom/google/ipc/invalidation/ticl/J;->g:Lcom/google/ipc/invalidation/ticl/a/T;

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->c:Lcom/google/ipc/invalidation/ticl/aa;

    sget-object v1, Lcom/google/ipc/invalidation/ticl/ae;->f:Lcom/google/ipc/invalidation/ticl/ae;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/ticl/ae;)V

    .line 1130
    iget-object v0, v5, Lcom/google/ipc/invalidation/ticl/J;->a:Lcom/google/ipc/invalidation/ticl/L;

    iget-object v1, v5, Lcom/google/ipc/invalidation/ticl/J;->g:Lcom/google/ipc/invalidation/ticl/a/T;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/T;->a()I

    move-result v1

    iget-object v2, v5, Lcom/google/ipc/invalidation/ticl/J;->g:Lcom/google/ipc/invalidation/ticl/a/T;

    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/a/T;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/m;->a(Lcom/google/ipc/invalidation/ticl/L;ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public acknowledge(Lcom/google/ipc/invalidation/external/client/types/AckHandle;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 986
    invoke-static {p1}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->e:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->isRunningOnThread()Z

    move-result v0

    const-string/jumbo v1, "Not running on internal thread"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 993
    :try_start_0
    invoke-virtual {p1}, Lcom/google/ipc/invalidation/external/client/types/AckHandle;->getHandleData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/a/G;->a([B)Lcom/google/ipc/invalidation/ticl/a/G;
    :try_end_0
    .catch Lcom/google/ipc/invalidation/b/p; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1002
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/G;->a()Lcom/google/ipc/invalidation/ticl/a/Y;

    move-result-object v0

    .line 1003
    if-nez v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v1, "Ack handle without invalidation : %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/ipc/invalidation/external/client/types/AckHandle;->getHandleData()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/ipc/invalidation/b/c;->b([B)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1006
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->c:Lcom/google/ipc/invalidation/ticl/aa;

    sget-object v1, Lcom/google/ipc/invalidation/ticl/ab;->a:Lcom/google/ipc/invalidation/ticl/ab;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/ticl/ab;)V

    .line 1022
    :goto_0
    return-void

    .line 995
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v1, "Bad ack handle : %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/ipc/invalidation/external/client/types/AckHandle;->getHandleData()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/ipc/invalidation/b/c;->b([B)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 997
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->c:Lcom/google/ipc/invalidation/ticl/aa;

    sget-object v1, Lcom/google/ipc/invalidation/ticl/ab;->a:Lcom/google/ipc/invalidation/ticl/ab;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/ticl/ab;)V

    goto :goto_0

    .line 1011
    :cond_0
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/Y;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1012
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/Y;->h()Lcom/google/ipc/invalidation/ticl/a/Z;

    move-result-object v0

    .line 1013
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/ipc/invalidation/ticl/a/Z;->a:Lcom/google/ipc/invalidation/b/c;

    .line 1014
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/Z;->a()Lcom/google/ipc/invalidation/ticl/a/Y;

    move-result-object v0

    .line 1016
    :cond_1
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/m;->c:Lcom/google/ipc/invalidation/ticl/aa;

    sget-object v2, Lcom/google/ipc/invalidation/ticl/ac;->a:Lcom/google/ipc/invalidation/ticl/ac;

    invoke-virtual {v1, v2}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/ticl/ac;)V

    .line 1017
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/m;->j:Lcom/google/ipc/invalidation/ticl/H;

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->x:Lcom/google/ipc/invalidation/ticl/q;

    invoke-virtual {v1, v0, v2}, Lcom/google/ipc/invalidation/ticl/H;->a(Lcom/google/ipc/invalidation/ticl/a/Y;Lcom/google/ipc/invalidation/ticl/q;)V

    .line 1021
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/m;->z:Lcom/google/ipc/invalidation/ticl/a;

    invoke-virtual {v1, v0}, Lcom/google/ipc/invalidation/ticl/a;->a(Lcom/google/ipc/invalidation/ticl/a/Y;)V

    goto :goto_0
.end method

.method protected b()Lcom/google/ipc/invalidation/ticl/a/N;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->g:Lcom/google/ipc/invalidation/ticl/a/N;

    return-object v0
.end method

.method protected c()Lcom/google/ipc/invalidation/ticl/a/M;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->h:Lcom/google/ipc/invalidation/ticl/a/M;

    return-object v0
.end method

.method public final d()Lcom/google/ipc/invalidation/external/client/SystemResources;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->d:Lcom/google/ipc/invalidation/external/client/SystemResources;

    return-object v0
.end method

.method public final e()Lcom/google/ipc/invalidation/b/c;
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->n:Lcom/google/ipc/invalidation/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->o:Lcom/google/ipc/invalidation/b/c;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Landroid/support/customtabs/a;->checkState(Z)V

    .line 1031
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->n:Lcom/google/ipc/invalidation/b/c;

    return-object v0

    .line 1030
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 1041
    .line 3738
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->d:Lcom/google/ipc/invalidation/external/client/SystemResources;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getInternalScheduler()Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->getCurrentTimeMs()J

    move-result-wide v0

    .line 1041
    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/m;->s:J

    .line 1042
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->g:Lcom/google/ipc/invalidation/ticl/a/N;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/N;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->v:Lcom/google/ipc/invalidation/ticl/t;

    const-string/jumbo v1, "sent-message"

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/ticl/t;->a(Ljava/lang/String;)V

    .line 1049
    :cond_0
    return-void
.end method

.method public final g()Lcom/google/ipc/invalidation/ticl/a/ak;
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->i:Lcom/google/ipc/invalidation/ticl/O;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/O;->b()Lcom/google/ipc/invalidation/ticl/a/ak;

    move-result-object v0

    return-object v0
.end method

.method protected final h()Ljava/util/Map;
    .locals 3

    .prologue
    .line 1507
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1508
    const-string/jumbo v1, "AcquireToken"

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->t:Lcom/google/ipc/invalidation/ticl/p;

    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/p;->c()Lcom/google/ipc/invalidation/b/m;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    const-string/jumbo v1, "RegSyncHeartbeat"

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->u:Lcom/google/ipc/invalidation/ticl/v;

    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/v;->c()Lcom/google/ipc/invalidation/b/m;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1510
    const-string/jumbo v1, "PersistentWrite"

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->v:Lcom/google/ipc/invalidation/ticl/t;

    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/t;->c()Lcom/google/ipc/invalidation/b/m;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    const-string/jumbo v1, "Heartbeat"

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->w:Lcom/google/ipc/invalidation/ticl/r;

    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/r;->c()Lcom/google/ipc/invalidation/b/m;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    const-string/jumbo v1, "Batching"

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->x:Lcom/google/ipc/invalidation/ticl/q;

    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/q;->c()Lcom/google/ipc/invalidation/b/m;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    const-string/jumbo v1, "InitialPersistentHeartbeat"

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/m;->y:Lcom/google/ipc/invalidation/ticl/s;

    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/s;->c()Lcom/google/ipc/invalidation/b/m;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1515
    return-object v0
.end method

.method public final i()Lcom/google/ipc/invalidation/ticl/a/at;
    .locals 5

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->e:Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->isRunningOnThread()Z

    move-result v0

    const-string/jumbo v1, "Not running on internal thread"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 1528
    new-instance v2, Lcom/google/ipc/invalidation/ticl/a/au;

    invoke-direct {v2}, Lcom/google/ipc/invalidation/ticl/a/au;-><init>()V

    .line 1529
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->l:Lcom/google/ipc/invalidation/ticl/P;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/P;->e()Lcom/google/ipc/invalidation/ticl/a/K;

    move-result-object v0

    iput-object v0, v2, Lcom/google/ipc/invalidation/ticl/a/au;->a:Lcom/google/ipc/invalidation/ticl/a/K;

    .line 1530
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->n:Lcom/google/ipc/invalidation/b/c;

    iput-object v0, v2, Lcom/google/ipc/invalidation/ticl/a/au;->b:Lcom/google/ipc/invalidation/b/c;

    .line 1531
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->o:Lcom/google/ipc/invalidation/b/c;

    iput-object v0, v2, Lcom/google/ipc/invalidation/ticl/a/au;->c:Lcom/google/ipc/invalidation/b/c;

    .line 1532
    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/m;->p:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Lcom/google/ipc/invalidation/ticl/a/au;->d:Ljava/lang/Boolean;

    .line 1533
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/m;->s:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/google/ipc/invalidation/ticl/a/au;->e:Ljava/lang/Long;

    .line 1534
    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/m;->q:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Lcom/google/ipc/invalidation/ticl/a/au;->f:Ljava/lang/Boolean;

    .line 1535
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->j:Lcom/google/ipc/invalidation/ticl/H;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/H;->b()Lcom/google/ipc/invalidation/ticl/a/av;

    move-result-object v0

    iput-object v0, v2, Lcom/google/ipc/invalidation/ticl/a/au;->g:Lcom/google/ipc/invalidation/ticl/a/av;

    .line 1536
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->i:Lcom/google/ipc/invalidation/ticl/O;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/O;->d()Lcom/google/ipc/invalidation/ticl/a/ax;

    move-result-object v0

    iput-object v0, v2, Lcom/google/ipc/invalidation/ticl/a/au;->h:Lcom/google/ipc/invalidation/ticl/a/ax;

    .line 1537
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->t:Lcom/google/ipc/invalidation/ticl/p;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/p;->d()Lcom/google/ipc/invalidation/ticl/a/aw;

    move-result-object v0

    iput-object v0, v2, Lcom/google/ipc/invalidation/ticl/a/au;->i:Lcom/google/ipc/invalidation/ticl/a/aw;

    .line 1538
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->u:Lcom/google/ipc/invalidation/ticl/v;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/v;->d()Lcom/google/ipc/invalidation/ticl/a/aw;

    move-result-object v0

    iput-object v0, v2, Lcom/google/ipc/invalidation/ticl/a/au;->j:Lcom/google/ipc/invalidation/ticl/a/aw;

    .line 1539
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->v:Lcom/google/ipc/invalidation/ticl/t;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/t;->d()Lcom/google/ipc/invalidation/ticl/a/aw;

    move-result-object v0

    iput-object v0, v2, Lcom/google/ipc/invalidation/ticl/a/au;->k:Lcom/google/ipc/invalidation/ticl/a/aw;

    .line 1540
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->w:Lcom/google/ipc/invalidation/ticl/r;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/r;->d()Lcom/google/ipc/invalidation/ticl/a/aw;

    move-result-object v0

    iput-object v0, v2, Lcom/google/ipc/invalidation/ticl/a/au;->l:Lcom/google/ipc/invalidation/ticl/a/aw;

    .line 1541
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->x:Lcom/google/ipc/invalidation/ticl/q;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/q;->d()Lcom/google/ipc/invalidation/ticl/a/aw;

    move-result-object v0

    iput-object v0, v2, Lcom/google/ipc/invalidation/ticl/a/au;->m:Lcom/google/ipc/invalidation/ticl/a/aw;

    .line 1542
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->v:Lcom/google/ipc/invalidation/ticl/t;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/t;->a(Lcom/google/ipc/invalidation/ticl/t;)Lcom/google/ipc/invalidation/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/J;

    iput-object v0, v2, Lcom/google/ipc/invalidation/ticl/a/au;->n:Lcom/google/ipc/invalidation/ticl/a/J;

    .line 1543
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->c:Lcom/google/ipc/invalidation/ticl/aa;

    .line 7285
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7286
    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/ticl/aa;->a(Ljava/util/List;)V

    .line 7287
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 7288
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/external/client/types/SimplePair;

    .line 7289
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/external/client/types/SimplePair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/external/client/types/SimplePair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v1, v0}, Lcom/google/ipc/invalidation/ticl/a/ab;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/ipc/invalidation/ticl/a/ab;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7291
    :cond_0
    invoke-static {v3}, Lcom/google/ipc/invalidation/ticl/a/ay;->a(Ljava/util/Collection;)Lcom/google/ipc/invalidation/ticl/a/ay;

    move-result-object v0

    .line 1543
    iput-object v0, v2, Lcom/google/ipc/invalidation/ticl/a/au;->o:Lcom/google/ipc/invalidation/ticl/a/ay;

    .line 1544
    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/a/au;->a()Lcom/google/ipc/invalidation/ticl/a/at;

    move-result-object v0

    return-object v0
.end method

.method public register(Lcom/google/ipc/invalidation/external/client/types/ObjectId;)V
    .locals 2

    .prologue
    .line 906
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 907
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 908
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/ipc/invalidation/ticl/m;->a(Ljava/util/Collection;I)V

    .line 909
    return-void
.end method

.method public register(Ljava/util/Collection;)V
    .locals 1

    .prologue
    .line 920
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/ipc/invalidation/ticl/m;->a(Ljava/util/Collection;I)V

    .line 921
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 765
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->d:Lcom/google/ipc/invalidation/external/client/SystemResources;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources;->isStarted()Z

    move-result v0

    const-string/jumbo v1, "Resources must be started before starting the Ticl"

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->checkState(ZLjava/lang/Object;)V

    .line 767
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->l:Lcom/google/ipc/invalidation/ticl/P;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/P;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v1, "Ignoring start call since already started: client = %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->severe(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 779
    :goto_0
    return-void

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->r:Ljava/util/Random;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/m;->a(Ljava/util/Random;)Lcom/google/ipc/invalidation/b/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/ipc/invalidation/ticl/m;->a(Lcom/google/ipc/invalidation/b/c;)V

    .line 776
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v1, "Starting with Java config: %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/m;->g:Lcom/google/ipc/invalidation/ticl/a/N;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3400
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->a:Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;

    const-string/jumbo v1, "ClientToken"

    new-instance v2, Lcom/google/ipc/invalidation/ticl/o;

    invoke-direct {v2, p0}, Lcom/google/ipc/invalidation/ticl/o;-><init>(Lcom/google/ipc/invalidation/ticl/m;)V

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Storage;->readKey(Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/types/Callback;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 898
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v1, "Ticl being stopped: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 899
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->l:Lcom/google/ipc/invalidation/ticl/P;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/P;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/m;->l:Lcom/google/ipc/invalidation/ticl/P;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/P;->b()V

    .line 902
    :cond_0
    return-void
.end method

.method public unregister(Lcom/google/ipc/invalidation/external/client/types/ObjectId;)V
    .locals 2

    .prologue
    .line 913
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 914
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/google/ipc/invalidation/ticl/m;->a(Ljava/util/Collection;I)V

    .line 916
    return-void
.end method

.method public unregister(Ljava/util/Collection;)V
    .locals 1

    .prologue
    .line 925
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/google/ipc/invalidation/ticl/m;->a(Ljava/util/Collection;I)V

    .line 926
    return-void
.end method
