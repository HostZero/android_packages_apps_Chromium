.class public final Lcom/google/ipc/invalidation/ticl/a/m;
.super Lcom/google/ipc/invalidation/b/n;
.source "AndroidService.java"


# instance fields
.field private final a:J

.field private final b:J

.field private final c:Lcom/google/ipc/invalidation/ticl/a/ar;

.field private final d:Lcom/google/ipc/invalidation/ticl/a/p;

.field private final e:Lcom/google/ipc/invalidation/ticl/a/q;

.field private final f:Lcom/google/ipc/invalidation/ticl/a/n;

.field private final g:Lcom/google/ipc/invalidation/ticl/a/o;


# direct methods
.method private constructor <init>(Ljava/lang/Long;Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/p;Lcom/google/ipc/invalidation/ticl/a/q;Lcom/google/ipc/invalidation/ticl/a/n;Lcom/google/ipc/invalidation/ticl/a/o;)V
    .locals 4

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 333
    const/4 v0, 0x0

    .line 334
    if-eqz p1, :cond_a

    .line 335
    const/4 v0, 0x1

    .line 336
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/m;->b:J

    .line 340
    :goto_0
    const-string/jumbo v1, "version"

    invoke-static {v1, p2}, Lcom/google/ipc/invalidation/ticl/a/m;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 341
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/a/m;->c:Lcom/google/ipc/invalidation/ticl/a/ar;

    .line 342
    if-eqz p3, :cond_b

    .line 343
    or-int/lit8 v0, v0, 0x2

    .line 344
    iput-object p3, p0, Lcom/google/ipc/invalidation/ticl/a/m;->d:Lcom/google/ipc/invalidation/ticl/a/p;

    .line 348
    :goto_1
    if-eqz p4, :cond_c

    .line 349
    or-int/lit8 v0, v0, 0x4

    .line 350
    iput-object p4, p0, Lcom/google/ipc/invalidation/ticl/a/m;->e:Lcom/google/ipc/invalidation/ticl/a/q;

    .line 354
    :goto_2
    iput-object p5, p0, Lcom/google/ipc/invalidation/ticl/a/m;->f:Lcom/google/ipc/invalidation/ticl/a/n;

    .line 355
    iput-object p6, p0, Lcom/google/ipc/invalidation/ticl/a/m;->g:Lcom/google/ipc/invalidation/ticl/a/o;

    .line 356
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/m;->a:J

    .line 357
    const/4 v0, 0x0

    .line 358
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/m;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    const-string/jumbo v0, "serial"

    .line 361
    :cond_0
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/m;->f:Lcom/google/ipc/invalidation/ticl/a/n;

    if-eqz v1, :cond_2

    .line 362
    if-eqz v0, :cond_1

    .line 363
    const-string/jumbo v1, "ack"

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_1
    const-string/jumbo v0, "ack"

    .line 367
    :cond_2
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/m;->g:Lcom/google/ipc/invalidation/ticl/a/o;

    if-eqz v1, :cond_4

    .line 368
    if-eqz v0, :cond_3

    .line 369
    const-string/jumbo v1, "registrations"

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_3
    const-string/jumbo v0, "registrations"

    .line 373
    :cond_4
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/m;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 374
    if-eqz v0, :cond_5

    .line 375
    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_5
    const-string/jumbo v0, "start"

    .line 379
    :cond_6
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/m;->c()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 380
    if-eqz v0, :cond_7

    .line 381
    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_7
    const-string/jumbo v0, "stop"

    .line 385
    :cond_8
    if-nez v0, :cond_9

    invoke-static {}, Lcom/google/ipc/invalidation/ticl/a/m;->u()V

    .line 386
    :cond_9
    return-void

    .line 338
    :cond_a
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/m;->b:J

    goto :goto_0

    .line 346
    :cond_b
    sget-object v1, Lcom/google/ipc/invalidation/ticl/a/p;->a:Lcom/google/ipc/invalidation/ticl/a/p;

    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/m;->d:Lcom/google/ipc/invalidation/ticl/a/p;

    goto :goto_1

    .line 352
    :cond_c
    sget-object v1, Lcom/google/ipc/invalidation/ticl/a/q;->a:Lcom/google/ipc/invalidation/ticl/a/q;

    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/m;->e:Lcom/google/ipc/invalidation/ticl/a/q;

    goto :goto_2
.end method

.method public static a(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/n;)Lcom/google/ipc/invalidation/ticl/a/m;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 311
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/m;

    move-object v2, p0

    move-object v3, v1

    move-object v4, v1

    move-object v5, p1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/ipc/invalidation/ticl/a/m;-><init>(Ljava/lang/Long;Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/p;Lcom/google/ipc/invalidation/ticl/a/q;Lcom/google/ipc/invalidation/ticl/a/n;Lcom/google/ipc/invalidation/ticl/a/o;)V

    return-object v0
.end method

.method public static a(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/o;)Lcom/google/ipc/invalidation/ticl/a/m;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 316
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/m;

    move-object v2, p0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/ipc/invalidation/ticl/a/m;-><init>(Ljava/lang/Long;Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/p;Lcom/google/ipc/invalidation/ticl/a/q;Lcom/google/ipc/invalidation/ticl/a/n;Lcom/google/ipc/invalidation/ticl/a/o;)V

    return-object v0
.end method

.method public static a(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/q;)Lcom/google/ipc/invalidation/ticl/a/m;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 306
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/m;

    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/ipc/invalidation/ticl/a/m;-><init>(Ljava/lang/Long;Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/p;Lcom/google/ipc/invalidation/ticl/a/q;Lcom/google/ipc/invalidation/ticl/a/n;Lcom/google/ipc/invalidation/ticl/a/o;)V

    return-object v0
.end method

.method public static a([B)Lcom/google/ipc/invalidation/ticl/a/m;
    .locals 8

    .prologue
    .line 460
    :try_start_0
    new-instance v1, Lcom/google/a/a/a/m;

    invoke-direct {v1}, Lcom/google/a/a/a/m;-><init>()V

    invoke-static {v1, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/a/a/a/m;

    move-object v7, v0

    .line 2469
    if-nez v7, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 2470
    :cond_0
    new-instance v1, Lcom/google/ipc/invalidation/ticl/a/m;

    iget-object v2, v7, Lcom/google/a/a/a/m;->a:Ljava/lang/Long;

    iget-object v3, v7, Lcom/google/a/a/a/m;->b:Lcom/google/a/a/a/a/J;

    invoke-static {v3}, Lcom/google/ipc/invalidation/ticl/a/ar;->a(Lcom/google/a/a/a/a/J;)Lcom/google/ipc/invalidation/ticl/a/ar;

    move-result-object v3

    iget-object v4, v7, Lcom/google/a/a/a/m;->c:Lcom/google/a/a/a/p;

    invoke-static {v4}, Lcom/google/ipc/invalidation/ticl/a/p;->a(Lcom/google/a/a/a/p;)Lcom/google/ipc/invalidation/ticl/a/p;

    move-result-object v4

    iget-object v5, v7, Lcom/google/a/a/a/m;->d:Lcom/google/a/a/a/q;

    invoke-static {v5}, Lcom/google/ipc/invalidation/ticl/a/q;->a(Lcom/google/a/a/a/q;)Lcom/google/ipc/invalidation/ticl/a/q;

    move-result-object v5

    iget-object v6, v7, Lcom/google/a/a/a/m;->e:Lcom/google/a/a/a/n;

    invoke-static {v6}, Lcom/google/ipc/invalidation/ticl/a/n;->a(Lcom/google/a/a/a/n;)Lcom/google/ipc/invalidation/ticl/a/n;

    move-result-object v6

    iget-object v7, v7, Lcom/google/a/a/a/m;->f:Lcom/google/a/a/a/o;

    invoke-static {v7}, Lcom/google/ipc/invalidation/ticl/a/o;->a(Lcom/google/a/a/a/o;)Lcom/google/ipc/invalidation/ticl/a/o;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lcom/google/ipc/invalidation/ticl/a/m;-><init>(Ljava/lang/Long;Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/p;Lcom/google/ipc/invalidation/ticl/a/q;Lcom/google/ipc/invalidation/ticl/a/n;Lcom/google/ipc/invalidation/ticl/a/o;)V
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/ipc/invalidation/b/o; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 461
    :catch_0
    move-exception v1

    .line 462
    new-instance v2, Lcom/google/ipc/invalidation/b/p;

    invoke-direct {v2, v1}, Lcom/google/ipc/invalidation/b/p;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 463
    :catch_1
    move-exception v1

    .line 464
    new-instance v2, Lcom/google/ipc/invalidation/b/p;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/o;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/ipc/invalidation/b/p;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private g()Z
    .locals 4

    .prologue
    .line 389
    const-wide/16 v0, 0x1

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/m;->a:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 4

    .prologue
    .line 438
    const-string/jumbo v0, "<ClientDowncall:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 439
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/m;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    const-string/jumbo v0, " serial="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/m;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/google/ipc/invalidation/b/r;->a(J)Lcom/google/ipc/invalidation/b/r;

    .line 442
    :cond_0
    const-string/jumbo v0, " version="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/m;->c:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 443
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/m;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    const-string/jumbo v0, " start="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/m;->d:Lcom/google/ipc/invalidation/ticl/a/p;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 446
    :cond_1
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/m;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 447
    const-string/jumbo v0, " stop="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/m;->e:Lcom/google/ipc/invalidation/ticl/a/q;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 449
    :cond_2
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/m;->f:Lcom/google/ipc/invalidation/ticl/a/n;

    if-eqz v0, :cond_3

    .line 450
    const-string/jumbo v0, " ack="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/m;->f:Lcom/google/ipc/invalidation/ticl/a/n;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 452
    :cond_3
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/m;->g:Lcom/google/ipc/invalidation/ticl/a/o;

    if-eqz v0, :cond_4

    .line 453
    const-string/jumbo v0, " registrations="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/m;->g:Lcom/google/ipc/invalidation/ticl/a/o;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 455
    :cond_4
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 456
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    .line 394
    const-wide/16 v0, 0x2

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/m;->a:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b()I
    .locals 6

    .prologue
    const/16 v4, 0x20

    .line 417
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/m;->a:J

    .line 1214
    ushr-long v2, v0, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 418
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/m;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/m;->b:J

    .line 2214
    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v1, v2

    .line 419
    add-int/2addr v0, v1

    .line 421
    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/m;->c:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/ar;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 422
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/m;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 423
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/m;->d:Lcom/google/ipc/invalidation/ticl/a/p;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/p;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 425
    :cond_1
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/m;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 426
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/m;->e:Lcom/google/ipc/invalidation/ticl/a/q;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/q;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 428
    :cond_2
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/m;->f:Lcom/google/ipc/invalidation/ticl/a/n;

    if-eqz v1, :cond_3

    .line 429
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/m;->f:Lcom/google/ipc/invalidation/ticl/a/n;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/n;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 431
    :cond_3
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/m;->g:Lcom/google/ipc/invalidation/ticl/a/o;

    if-eqz v1, :cond_4

    .line 432
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/m;->g:Lcom/google/ipc/invalidation/ticl/a/o;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/o;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 434
    :cond_4
    return v0
.end method

.method public final c()Z
    .locals 4

    .prologue
    .line 397
    const-wide/16 v0, 0x4

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/m;->a:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Lcom/google/ipc/invalidation/ticl/a/n;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/m;->f:Lcom/google/ipc/invalidation/ticl/a/n;

    return-object v0
.end method

.method public final e()Lcom/google/ipc/invalidation/ticl/a/o;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/m;->g:Lcom/google/ipc/invalidation/ticl/a/o;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 404
    if-ne p0, p1, :cond_1

    .line 407
    :cond_0
    :goto_0
    return v0

    .line 405
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/m;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 406
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/m;

    .line 407
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/m;->a:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/m;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/m;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/m;->b:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/m;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    :cond_3
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/m;->c:Lcom/google/ipc/invalidation/ticl/a/ar;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/m;->c:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/m;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/m;->d:Lcom/google/ipc/invalidation/ticl/a/p;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/m;->d:Lcom/google/ipc/invalidation/ticl/a/p;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/m;->c()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/m;->e:Lcom/google/ipc/invalidation/ticl/a/q;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/m;->e:Lcom/google/ipc/invalidation/ticl/a/q;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/m;->f:Lcom/google/ipc/invalidation/ticl/a/n;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/m;->f:Lcom/google/ipc/invalidation/ticl/a/n;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/m;->g:Lcom/google/ipc/invalidation/ticl/a/o;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/m;->g:Lcom/google/ipc/invalidation/ticl/a/o;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public final f()[B
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 479
    .line 2483
    new-instance v2, Lcom/google/a/a/a/m;

    invoke-direct {v2}, Lcom/google/a/a/a/m;-><init>()V

    .line 2484
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/m;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v4, p0, Lcom/google/ipc/invalidation/ticl/a/m;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    iput-object v0, v2, Lcom/google/a/a/a/m;->a:Ljava/lang/Long;

    .line 2485
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/m;->c:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ar;->c()Lcom/google/a/a/a/a/J;

    move-result-object v0

    iput-object v0, v2, Lcom/google/a/a/a/m;->b:Lcom/google/a/a/a/a/J;

    .line 2486
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/m;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/ipc/invalidation/ticl/a/p;->a()Lcom/google/a/a/a/p;

    move-result-object v0

    :goto_1
    iput-object v0, v2, Lcom/google/a/a/a/m;->c:Lcom/google/a/a/a/p;

    .line 2487
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/m;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/ipc/invalidation/ticl/a/q;->a()Lcom/google/a/a/a/q;

    move-result-object v0

    :goto_2
    iput-object v0, v2, Lcom/google/a/a/a/m;->d:Lcom/google/a/a/a/q;

    .line 2488
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/m;->f:Lcom/google/ipc/invalidation/ticl/a/n;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/m;->f:Lcom/google/ipc/invalidation/ticl/a/n;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/n;->c()Lcom/google/a/a/a/n;

    move-result-object v0

    :goto_3
    iput-object v0, v2, Lcom/google/a/a/a/m;->e:Lcom/google/a/a/a/n;

    .line 2489
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/m;->g:Lcom/google/ipc/invalidation/ticl/a/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/m;->g:Lcom/google/ipc/invalidation/ticl/a/o;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/o;->d()Lcom/google/a/a/a/o;

    move-result-object v1

    :cond_0
    iput-object v1, v2, Lcom/google/a/a/a/m;->f:Lcom/google/a/a/a/o;

    .line 479
    invoke-static {v2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    .line 2484
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 2486
    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 2487
    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 2488
    goto :goto_3
.end method
