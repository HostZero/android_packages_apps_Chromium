.class public final Lcom/google/ipc/invalidation/ticl/a/i;
.super Lcom/google/ipc/invalidation/b/n;
.source "AndroidService.java"


# instance fields
.field private final a:Lcom/google/ipc/invalidation/ticl/a/ar;

.field private final b:Ljava/lang/String;

.field private final c:J


# direct methods
.method private constructor <init>(Lcom/google/ipc/invalidation/ticl/a/ar;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2

    .prologue
    .line 1621
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 1622
    const-string/jumbo v0, "version"

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/a/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1623
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/a/i;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    .line 1624
    const-string/jumbo v0, "event_name"

    invoke-static {v0, p2}, Lcom/google/ipc/invalidation/ticl/a/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1625
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/a/i;->b:Ljava/lang/String;

    .line 1626
    const-string/jumbo v0, "ticl_id"

    invoke-static {v0, p3}, Lcom/google/ipc/invalidation/ticl/a/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1627
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/i;->c:J

    .line 1628
    return-void
.end method

.method public static a([B)Lcom/google/ipc/invalidation/ticl/a/i;
    .locals 4

    .prologue
    .line 1663
    :try_start_0
    new-instance v0, Lcom/google/a/a/a/i;

    invoke-direct {v0}, Lcom/google/a/a/a/i;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/a/i;

    .line 2672
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2673
    :cond_0
    new-instance v1, Lcom/google/ipc/invalidation/ticl/a/i;

    iget-object v2, v0, Lcom/google/a/a/a/i;->a:Lcom/google/a/a/a/a/J;

    invoke-static {v2}, Lcom/google/ipc/invalidation/ticl/a/ar;->a(Lcom/google/a/a/a/a/J;)Lcom/google/ipc/invalidation/ticl/a/ar;

    move-result-object v2

    iget-object v3, v0, Lcom/google/a/a/a/i;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/a/a/a/i;->c:Ljava/lang/Long;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/ipc/invalidation/ticl/a/i;-><init>(Lcom/google/ipc/invalidation/ticl/a/ar;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/ipc/invalidation/b/o; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 1663
    goto :goto_0

    .line 1664
    :catch_0
    move-exception v0

    .line 1665
    new-instance v1, Lcom/google/ipc/invalidation/b/p;

    invoke-direct {v1, v0}, Lcom/google/ipc/invalidation/b/p;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1666
    :catch_1
    move-exception v0

    .line 1667
    new-instance v1, Lcom/google/ipc/invalidation/b/p;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/o;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/ipc/invalidation/b/p;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1632
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 4

    .prologue
    .line 1654
    const-string/jumbo v0, "<AndroidSchedulerEvent:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 1655
    const-string/jumbo v0, " version="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/i;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1656
    const-string/jumbo v0, " event_name="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 1657
    const-string/jumbo v0, " ticl_id="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/i;->c:J

    invoke-virtual {v0, v2, v3}, Lcom/google/ipc/invalidation/b/r;->a(J)Lcom/google/ipc/invalidation/b/r;

    .line 1658
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 1659
    return-void
.end method

.method protected final b()I
    .locals 6

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/i;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ar;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 1648
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/i;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1649
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/i;->c:J

    .line 2214
    const/16 v1, 0x20

    ushr-long v4, v2, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    .line 1649
    add-int/2addr v0, v1

    .line 1650
    return v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 1634
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/i;->c:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1637
    if-ne p0, p1, :cond_1

    .line 1640
    :cond_0
    :goto_0
    return v0

    .line 1638
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/i;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1639
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/i;

    .line 1640
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/i;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/i;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/i;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/i;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/i;->c:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/i;->c:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
