.class public final Lcom/google/ipc/invalidation/ticl/a/C;
.super Lcom/google/ipc/invalidation/b/n;
.source "AndroidService.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2

    .prologue
    .line 1701
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 1702
    const-string/jumbo v0, "event_name"

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/a/C;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1703
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/a/C;->a:Ljava/lang/String;

    .line 1704
    const-string/jumbo v0, "execute_time_ms"

    invoke-static {v0, p2}, Lcom/google/ipc/invalidation/ticl/a/C;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1705
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/C;->b:J

    .line 1706
    return-void
.end method

.method static a(Lcom/google/a/a/a/C;)Lcom/google/ipc/invalidation/ticl/a/C;
    .locals 3

    .prologue
    .line 1745
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 1746
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/C;

    iget-object v1, p0, Lcom/google/a/a/a/C;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/a/a/a/C;->b:Ljava/lang/Long;

    invoke-direct {v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/a/C;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;J)Lcom/google/ipc/invalidation/ticl/a/C;
    .locals 3

    .prologue
    .line 1694
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/C;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/ipc/invalidation/ticl/a/C;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/C;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 4

    .prologue
    .line 1728
    const-string/jumbo v0, "<ScheduledTask:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 1729
    const-string/jumbo v0, " event_name="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/C;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 1730
    const-string/jumbo v0, " execute_time_ms="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/C;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/google/ipc/invalidation/b/r;->a(J)Lcom/google/ipc/invalidation/b/r;

    .line 1731
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 1732
    return-void
.end method

.method protected final b()I
    .locals 6

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/C;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 1723
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/C;->b:J

    .line 2214
    const/16 v1, 0x20

    ushr-long v4, v2, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    .line 1723
    add-int/2addr v0, v1

    .line 1724
    return v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 1710
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/C;->b:J

    return-wide v0
.end method

.method final d()Lcom/google/a/a/a/C;
    .locals 4

    .prologue
    .line 1755
    new-instance v0, Lcom/google/a/a/a/C;

    invoke-direct {v0}, Lcom/google/a/a/a/C;-><init>()V

    .line 1756
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/C;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/a/a/a/C;->a:Ljava/lang/String;

    .line 1757
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/C;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/C;->b:Ljava/lang/Long;

    .line 1758
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1713
    if-ne p0, p1, :cond_1

    .line 1716
    :cond_0
    :goto_0
    return v0

    .line 1714
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/C;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1715
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/C;

    .line 1716
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/C;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/C;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/C;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/C;->b:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/C;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
