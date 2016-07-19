.class public final Lcom/google/ipc/invalidation/ticl/a/aw;
.super Lcom/google/ipc/invalidation/b/n;
.source "JavaClient.java"


# static fields
.field public static final a:Lcom/google/ipc/invalidation/ticl/a/aw;


# instance fields
.field private final b:J

.field private final c:I

.field private final d:I

.field private final e:Z

.field private final f:Lcom/google/ipc/invalidation/ticl/a/H;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 439
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/aw;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/google/ipc/invalidation/ticl/a/aw;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/google/ipc/invalidation/ticl/a/H;)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/a/aw;->a:Lcom/google/ipc/invalidation/ticl/a/aw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/google/ipc/invalidation/ticl/a/H;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 450
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 452
    if-eqz p1, :cond_0

    .line 453
    const/4 v0, 0x1

    .line 454
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/google/ipc/invalidation/ticl/a/aw;->c:I

    .line 458
    :goto_0
    if-eqz p2, :cond_1

    .line 459
    or-int/lit8 v0, v0, 0x2

    .line 460
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/google/ipc/invalidation/ticl/a/aw;->d:I

    .line 464
    :goto_1
    if-eqz p3, :cond_2

    .line 465
    or-int/lit8 v0, v0, 0x4

    .line 466
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/aw;->e:Z

    .line 470
    :goto_2
    if-eqz p4, :cond_3

    .line 471
    or-int/lit8 v0, v0, 0x8

    .line 472
    iput-object p4, p0, Lcom/google/ipc/invalidation/ticl/a/aw;->f:Lcom/google/ipc/invalidation/ticl/a/H;

    .line 476
    :goto_3
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/aw;->b:J

    .line 477
    return-void

    .line 456
    :cond_0
    iput v1, p0, Lcom/google/ipc/invalidation/ticl/a/aw;->c:I

    move v0, v1

    goto :goto_0

    .line 462
    :cond_1
    iput v1, p0, Lcom/google/ipc/invalidation/ticl/a/aw;->d:I

    goto :goto_1

    .line 468
    :cond_2
    iput-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/aw;->e:Z

    goto :goto_2

    .line 474
    :cond_3
    sget-object v1, Lcom/google/ipc/invalidation/ticl/a/H;->a:Lcom/google/ipc/invalidation/ticl/a/H;

    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/aw;->f:Lcom/google/ipc/invalidation/ticl/a/H;

    goto :goto_3
.end method

.method static a(Lcom/google/a/a/a/G;)Lcom/google/ipc/invalidation/ticl/a/aw;
    .locals 5

    .prologue
    .line 547
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 548
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/aw;

    iget-object v1, p0, Lcom/google/a/a/a/G;->a:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/a/a/a/G;->b:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/google/a/a/a/G;->c:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/google/a/a/a/G;->d:Lcom/google/a/a/a/a/c;

    invoke-static {v4}, Lcom/google/ipc/invalidation/ticl/a/H;->a(Lcom/google/a/a/a/a/c;)Lcom/google/ipc/invalidation/ticl/a/H;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/ipc/invalidation/ticl/a/aw;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/google/ipc/invalidation/ticl/a/H;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/google/ipc/invalidation/ticl/a/H;)Lcom/google/ipc/invalidation/ticl/a/aw;
    .locals 1

    .prologue
    .line 436
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/aw;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/ipc/invalidation/ticl/a/aw;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/google/ipc/invalidation/ticl/a/H;)V

    return-object v0
.end method

.method private g()Z
    .locals 4

    .prologue
    .line 480
    const-wide/16 v0, 0x1

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/aw;->b:J

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

.method private h()Z
    .locals 4

    .prologue
    .line 483
    const-wide/16 v0, 0x2

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/aw;->b:J

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

.method private i()Z
    .locals 4

    .prologue
    .line 486
    const-wide/16 v0, 0x4

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/aw;->b:J

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

.method private j()Z
    .locals 4

    .prologue
    .line 489
    const-wide/16 v0, 0x8

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/aw;->b:J

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
.method public final a()I
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/aw;->c:I

    return v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 520
    const-string/jumbo v0, "<RecurringTaskState:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 521
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/aw;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    const-string/jumbo v0, " initial_delay_ms="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/aw;->c:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    .line 524
    :cond_0
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/aw;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    const-string/jumbo v0, " timeout_delay_ms="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/aw;->d:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    .line 527
    :cond_1
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/aw;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 528
    const-string/jumbo v0, " scheduled="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/aw;->e:Z

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Z)Lcom/google/ipc/invalidation/b/r;

    .line 530
    :cond_2
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/aw;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 531
    const-string/jumbo v0, " backoff_state="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/aw;->f:Lcom/google/ipc/invalidation/ticl/a/H;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 533
    :cond_3
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 534
    return-void
.end method

.method protected final b()I
    .locals 4

    .prologue
    .line 503
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/aw;->b:J

    .line 1214
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 504
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/aw;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/aw;->c:I

    add-int/2addr v0, v1

    .line 507
    :cond_0
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/aw;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 508
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/aw;->d:I

    add-int/2addr v0, v1

    .line 510
    :cond_1
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/aw;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 511
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/aw;->e:Z

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/aw;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 513
    :cond_2
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/aw;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 514
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/aw;->f:Lcom/google/ipc/invalidation/ticl/a/H;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/H;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 516
    :cond_3
    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/aw;->d:I

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/aw;->e:Z

    return v0
.end method

.method public final e()Lcom/google/ipc/invalidation/ticl/a/H;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/aw;->f:Lcom/google/ipc/invalidation/ticl/a/H;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 492
    if-ne p0, p1, :cond_1

    .line 495
    :cond_0
    :goto_0
    return v0

    .line 493
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/aw;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 494
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/aw;

    .line 495
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/aw;->b:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/aw;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/aw;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/ipc/invalidation/ticl/a/aw;->c:I

    iget v3, p1, Lcom/google/ipc/invalidation/ticl/a/aw;->c:I

    if-ne v2, v3, :cond_6

    :cond_3
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/aw;->h()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/google/ipc/invalidation/ticl/a/aw;->d:I

    iget v3, p1, Lcom/google/ipc/invalidation/ticl/a/aw;->d:I

    if-ne v2, v3, :cond_6

    :cond_4
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/aw;->i()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/google/ipc/invalidation/ticl/a/aw;->e:Z

    iget-boolean v3, p1, Lcom/google/ipc/invalidation/ticl/a/aw;->e:Z

    if-ne v2, v3, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/aw;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/aw;->f:Lcom/google/ipc/invalidation/ticl/a/H;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/aw;->f:Lcom/google/ipc/invalidation/ticl/a/H;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/aw;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method final f()Lcom/google/a/a/a/G;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 559
    new-instance v2, Lcom/google/a/a/a/G;

    invoke-direct {v2}, Lcom/google/a/a/a/G;-><init>()V

    .line 560
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/aw;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/aw;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    iput-object v0, v2, Lcom/google/a/a/a/G;->a:Ljava/lang/Integer;

    .line 561
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/aw;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/aw;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    iput-object v0, v2, Lcom/google/a/a/a/G;->b:Ljava/lang/Integer;

    .line 562
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/aw;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/aw;->e:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_2
    iput-object v0, v2, Lcom/google/a/a/a/G;->c:Ljava/lang/Boolean;

    .line 563
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/aw;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/aw;->f:Lcom/google/ipc/invalidation/ticl/a/H;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/H;->d()Lcom/google/a/a/a/a/c;

    move-result-object v1

    :cond_0
    iput-object v1, v2, Lcom/google/a/a/a/G;->d:Lcom/google/a/a/a/a/c;

    .line 564
    return-object v2

    :cond_1
    move-object v0, v1

    .line 560
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 561
    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 562
    goto :goto_2
.end method
