.class public final Lcom/google/ipc/invalidation/ticl/a/Y;
.super Lcom/google/ipc/invalidation/b/n;
.source "ClientProtocol.java"


# instance fields
.field private final a:J

.field private final b:Lcom/google/ipc/invalidation/ticl/a/aa;

.field private final c:Z

.field private final d:J

.field private final e:Lcom/google/ipc/invalidation/b/c;

.field private final f:Z


# direct methods
.method private constructor <init>(Lcom/google/ipc/invalidation/ticl/a/aa;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Boolean;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 543
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 545
    const-string/jumbo v0, "object_id"

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/a/Y;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 546
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->b:Lcom/google/ipc/invalidation/ticl/a/aa;

    .line 547
    const-string/jumbo v0, "is_known_version"

    invoke-static {v0, p2}, Lcom/google/ipc/invalidation/ticl/a/Y;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 548
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->c:Z

    .line 549
    const-string/jumbo v0, "version"

    invoke-static {v0, p3}, Lcom/google/ipc/invalidation/ticl/a/Y;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 550
    const-string/jumbo v0, "version"

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/google/ipc/invalidation/ticl/a/Y;->b(Ljava/lang/String;J)V

    .line 551
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->d:J

    .line 552
    if-eqz p4, :cond_1

    .line 554
    iput-object p4, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->e:Lcom/google/ipc/invalidation/b/c;

    move v0, v2

    .line 558
    :goto_0
    if-eqz p5, :cond_2

    .line 559
    or-int/lit8 v0, v0, 0x2

    .line 560
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->f:Z

    .line 564
    :goto_1
    int-to-long v4, v0

    iput-wide v4, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->a:J

    .line 565
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_2
    const-string/jumbo v1, "is_trickle_restart required if not is_known_version"

    invoke-virtual {p0, v0, v1}, Lcom/google/ipc/invalidation/ticl/a/Y;->a(ZLjava/lang/String;)V

    .line 567
    return-void

    .line 556
    :cond_1
    sget-object v0, Lcom/google/ipc/invalidation/b/c;->a:Lcom/google/ipc/invalidation/b/c;

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->e:Lcom/google/ipc/invalidation/b/c;

    move v0, v1

    goto :goto_0

    .line 562
    :cond_2
    iput-boolean v2, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->f:Z

    goto :goto_1

    :cond_3
    move v0, v1

    .line 565
    goto :goto_2
.end method

.method synthetic constructor <init>(Lcom/google/ipc/invalidation/ticl/a/aa;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Boolean;B)V
    .locals 0

    .prologue
    .line 507
    invoke-direct/range {p0 .. p5}, Lcom/google/ipc/invalidation/ticl/a/Y;-><init>(Lcom/google/ipc/invalidation/ticl/a/aa;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Boolean;)V

    return-void
.end method

.method static a(Lcom/google/a/a/a/a/r;)Lcom/google/ipc/invalidation/ticl/a/Y;
    .locals 6

    .prologue
    .line 643
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 644
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/Y;

    iget-object v1, p0, Lcom/google/a/a/a/a/r;->a:Lcom/google/a/a/a/a/s;

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/aa;->a(Lcom/google/a/a/a/a/s;)Lcom/google/ipc/invalidation/ticl/a/aa;

    move-result-object v1

    iget-object v2, p0, Lcom/google/a/a/a/a/r;->b:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/google/a/a/a/a/r;->c:Ljava/lang/Long;

    iget-object v4, p0, Lcom/google/a/a/a/a/r;->e:[B

    invoke-static {v4}, Lcom/google/ipc/invalidation/b/c;->a([B)Lcom/google/ipc/invalidation/b/c;

    move-result-object v4

    iget-object v5, p0, Lcom/google/a/a/a/a/r;->d:Ljava/lang/Boolean;

    invoke-direct/range {v0 .. v5}, Lcom/google/ipc/invalidation/ticl/a/Y;-><init>(Lcom/google/ipc/invalidation/ticl/a/aa;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public static a(Lcom/google/ipc/invalidation/ticl/a/aa;ZJLcom/google/ipc/invalidation/b/c;Ljava/lang/Boolean;)Lcom/google/ipc/invalidation/ticl/a/Y;
    .locals 6

    .prologue
    .line 529
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/Y;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v1, p0

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/ipc/invalidation/ticl/a/Y;-><init>(Lcom/google/ipc/invalidation/ticl/a/aa;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method private j()Z
    .locals 4

    .prologue
    .line 579
    const-wide/16 v0, 0x2

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->a:J

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
.method public final a()Lcom/google/ipc/invalidation/ticl/a/aa;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->b:Lcom/google/ipc/invalidation/ticl/a/aa;

    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 4

    .prologue
    .line 619
    const-string/jumbo v0, "<InvalidationP:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 620
    const-string/jumbo v0, " object_id="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->b:Lcom/google/ipc/invalidation/ticl/a/aa;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 621
    const-string/jumbo v0, " is_known_version="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->c:Z

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Z)Lcom/google/ipc/invalidation/b/r;

    .line 622
    const-string/jumbo v0, " version="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/google/ipc/invalidation/b/r;->a(J)Lcom/google/ipc/invalidation/b/r;

    .line 623
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/Y;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    const-string/jumbo v0, " payload="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->e:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 626
    :cond_0
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/Y;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    const-string/jumbo v0, " is_trickle_restart="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->f:Z

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Z)Lcom/google/ipc/invalidation/b/r;

    .line 629
    :cond_1
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 630
    return-void
.end method

.method protected final b()I
    .locals 6

    .prologue
    const/16 v4, 0x20

    .line 605
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->a:J

    .line 1214
    ushr-long v2, v0, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 606
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->b:Lcom/google/ipc/invalidation/ticl/a/aa;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/aa;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 607
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->c:Z

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/Y;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 608
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->d:J

    .line 2214
    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v1, v2

    .line 608
    add-int/2addr v0, v1

    .line 609
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/Y;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->e:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 612
    :cond_0
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/Y;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 613
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->f:Z

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/Y;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 615
    :cond_1
    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 571
    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->c:Z

    return v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 573
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->d:J

    return-wide v0
.end method

.method public final e()Lcom/google/ipc/invalidation/b/c;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->e:Lcom/google/ipc/invalidation/b/c;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 593
    if-ne p0, p1, :cond_1

    .line 596
    :cond_0
    :goto_0
    return v0

    .line 594
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/Y;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 595
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/Y;

    .line 596
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->a:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/Y;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->b:Lcom/google/ipc/invalidation/ticl/a/aa;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/Y;->b:Lcom/google/ipc/invalidation/ticl/a/aa;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/Y;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->c:Z

    iget-boolean v3, p1, Lcom/google/ipc/invalidation/ticl/a/Y;->c:Z

    if-ne v2, v3, :cond_4

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->d:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/Y;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/Y;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->e:Lcom/google/ipc/invalidation/b/c;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/Y;->e:Lcom/google/ipc/invalidation/b/c;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/Y;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/Y;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->f:Z

    iget-boolean v3, p1, Lcom/google/ipc/invalidation/ticl/a/Y;->f:Z

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final f()Z
    .locals 4

    .prologue
    .line 576
    const-wide/16 v0, 0x1

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->a:J

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

.method public final g()Z
    .locals 1

    .prologue
    .line 578
    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->f:Z

    return v0
.end method

.method public final h()Lcom/google/ipc/invalidation/ticl/a/Z;
    .locals 6

    .prologue
    .line 582
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/Z;

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->b:Lcom/google/ipc/invalidation/ticl/a/aa;

    iget-boolean v2, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->c:Z

    iget-wide v4, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->d:J

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/ipc/invalidation/ticl/a/Z;-><init>(Lcom/google/ipc/invalidation/ticl/a/aa;ZJ)V

    .line 583
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/Y;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 584
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->e:Lcom/google/ipc/invalidation/b/c;

    iput-object v1, v0, Lcom/google/ipc/invalidation/ticl/a/Z;->a:Lcom/google/ipc/invalidation/b/c;

    .line 586
    :cond_0
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/Y;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 587
    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->f:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/ipc/invalidation/ticl/a/Z;->b:Ljava/lang/Boolean;

    .line 589
    :cond_1
    return-object v0
.end method

.method final i()Lcom/google/a/a/a/a/r;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 656
    new-instance v2, Lcom/google/a/a/a/a/r;

    invoke-direct {v2}, Lcom/google/a/a/a/a/r;-><init>()V

    .line 657
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->b:Lcom/google/ipc/invalidation/ticl/a/aa;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/aa;->d()Lcom/google/a/a/a/a/s;

    move-result-object v0

    iput-object v0, v2, Lcom/google/a/a/a/a/r;->a:Lcom/google/a/a/a/a/s;

    .line 658
    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->c:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Lcom/google/a/a/a/a/r;->b:Ljava/lang/Boolean;

    .line 659
    iget-wide v4, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/google/a/a/a/a/r;->c:Ljava/lang/Long;

    .line 660
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/Y;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->e:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v0

    :goto_0
    iput-object v0, v2, Lcom/google/a/a/a/a/r;->e:[B

    .line 661
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/Y;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/Y;->f:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_0
    iput-object v1, v2, Lcom/google/a/a/a/a/r;->d:Ljava/lang/Boolean;

    .line 662
    return-object v2

    :cond_1
    move-object v0, v1

    .line 660
    goto :goto_0
.end method
