.class public final Lcom/google/ipc/invalidation/ticl/a/g;
.super Lcom/google/ipc/invalidation/b/n;
.source "AndroidListenerProtocol.java"


# instance fields
.field private final a:J

.field private final b:I

.field private final c:Lcom/google/ipc/invalidation/b/c;

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 505
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/g;

    invoke-direct {v0, v1, v1, v1}, Lcom/google/ipc/invalidation/ticl/a/g;-><init>(Ljava/lang/Integer;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Boolean;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Integer;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 514
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 516
    if-eqz p1, :cond_0

    .line 517
    const/4 v0, 0x1

    .line 518
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/google/ipc/invalidation/ticl/a/g;->b:I

    .line 522
    :goto_0
    if-eqz p2, :cond_1

    .line 523
    or-int/lit8 v0, v0, 0x2

    .line 524
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/a/g;->c:Lcom/google/ipc/invalidation/b/c;

    .line 528
    :goto_1
    if-eqz p3, :cond_2

    .line 529
    or-int/lit8 v0, v0, 0x4

    .line 530
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/g;->d:Z

    .line 534
    :goto_2
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/g;->a:J

    .line 535
    return-void

    .line 520
    :cond_0
    iput v1, p0, Lcom/google/ipc/invalidation/ticl/a/g;->b:I

    move v0, v1

    goto :goto_0

    .line 526
    :cond_1
    sget-object v2, Lcom/google/ipc/invalidation/b/c;->a:Lcom/google/ipc/invalidation/b/c;

    iput-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/g;->c:Lcom/google/ipc/invalidation/b/c;

    goto :goto_1

    .line 532
    :cond_2
    iput-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/g;->d:Z

    goto :goto_2
.end method

.method public static a(Ljava/lang/Integer;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Boolean;)Lcom/google/ipc/invalidation/ticl/a/g;
    .locals 1

    .prologue
    .line 502
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/ipc/invalidation/ticl/a/g;-><init>(Ljava/lang/Integer;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static a([B)Lcom/google/ipc/invalidation/ticl/a/g;
    .locals 4

    .prologue
    .line 586
    :try_start_0
    new-instance v0, Lcom/google/a/a/a/g;

    invoke-direct {v0}, Lcom/google/a/a/a/g;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/a/g;

    .line 1595
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1596
    :cond_0
    new-instance v1, Lcom/google/ipc/invalidation/ticl/a/g;

    iget-object v2, v0, Lcom/google/a/a/a/g;->a:Ljava/lang/Integer;

    iget-object v3, v0, Lcom/google/a/a/a/g;->b:[B

    invoke-static {v3}, Lcom/google/ipc/invalidation/b/c;->a([B)Lcom/google/ipc/invalidation/b/c;

    move-result-object v3

    iget-object v0, v0, Lcom/google/a/a/a/g;->c:Ljava/lang/Boolean;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/ipc/invalidation/ticl/a/g;-><init>(Ljava/lang/Integer;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/ipc/invalidation/b/o; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 586
    goto :goto_0

    .line 587
    :catch_0
    move-exception v0

    .line 588
    new-instance v1, Lcom/google/ipc/invalidation/b/p;

    invoke-direct {v1, v0}, Lcom/google/ipc/invalidation/b/p;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 589
    :catch_1
    move-exception v0

    .line 590
    new-instance v1, Lcom/google/ipc/invalidation/b/p;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/o;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/ipc/invalidation/b/p;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private h()Z
    .locals 4

    .prologue
    .line 544
    const-wide/16 v0, 0x4

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/g;->a:J

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
    .line 537
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/g;->b:I

    return v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 571
    const-string/jumbo v0, "<StartCommand:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 572
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    const-string/jumbo v0, " client_type="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/g;->b:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    .line 575
    :cond_0
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/g;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    const-string/jumbo v0, " client_name="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/g;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 578
    :cond_1
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/g;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 579
    const-string/jumbo v0, " allow_suppression="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/g;->d:Z

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Z)Lcom/google/ipc/invalidation/b/r;

    .line 581
    :cond_2
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 582
    return-void
.end method

.method protected final b()I
    .locals 4

    .prologue
    .line 557
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/g;->a:J

    .line 1214
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 558
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/g;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/g;->b:I

    add-int/2addr v0, v1

    .line 561
    :cond_0
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/g;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 562
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/g;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 564
    :cond_1
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/g;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 565
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/g;->d:Z

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/g;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 567
    :cond_2
    return v0
.end method

.method public final c()Z
    .locals 4

    .prologue
    .line 538
    const-wide/16 v0, 0x1

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/g;->a:J

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

.method public final d()Lcom/google/ipc/invalidation/b/c;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/g;->c:Lcom/google/ipc/invalidation/b/c;

    return-object v0
.end method

.method public final e()Z
    .locals 4

    .prologue
    .line 541
    const-wide/16 v0, 0x2

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/g;->a:J

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

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 547
    if-ne p0, p1, :cond_1

    .line 550
    :cond_0
    :goto_0
    return v0

    .line 548
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/g;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 549
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/g;

    .line 550
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/g;->a:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/g;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/g;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/ipc/invalidation/ticl/a/g;->b:I

    iget v3, p1, Lcom/google/ipc/invalidation/ticl/a/g;->b:I

    if-ne v2, v3, :cond_5

    :cond_3
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/g;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/g;->c:Lcom/google/ipc/invalidation/b/c;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/g;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/g;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/ipc/invalidation/ticl/a/g;->d:Z

    iget-boolean v3, p1, Lcom/google/ipc/invalidation/ticl/a/g;->d:Z

    if-eq v2, v3, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/g;->d:Z

    return v0
.end method

.method public final g()[B
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 602
    .line 1606
    new-instance v2, Lcom/google/a/a/a/g;

    invoke-direct {v2}, Lcom/google/a/a/a/g;-><init>()V

    .line 1607
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/g;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/g;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    iput-object v0, v2, Lcom/google/a/a/a/g;->a:Ljava/lang/Integer;

    .line 1608
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/g;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/g;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v0

    :goto_1
    iput-object v0, v2, Lcom/google/a/a/a/g;->b:[B

    .line 1609
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/g;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/g;->d:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_0
    iput-object v1, v2, Lcom/google/a/a/a/g;->c:Ljava/lang/Boolean;

    .line 602
    invoke-static {v2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    .line 1607
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 1608
    goto :goto_1
.end method
