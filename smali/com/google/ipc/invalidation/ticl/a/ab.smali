.class public final Lcom/google/ipc/invalidation/ticl/a/ab;
.super Lcom/google/ipc/invalidation/b/n;
.source "ClientProtocol.java"


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1574
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/ab;

    invoke-direct {v0, v1, v1}, Lcom/google/ipc/invalidation/ticl/a/ab;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1581
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 1583
    if-eqz p1, :cond_0

    .line 1584
    const/4 v0, 0x1

    .line 1585
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/a/ab;->b:Ljava/lang/String;

    .line 1589
    :goto_0
    if-eqz p2, :cond_1

    .line 1590
    or-int/lit8 v0, v0, 0x2

    .line 1591
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/ipc/invalidation/ticl/a/ab;->c:I

    .line 1595
    :goto_1
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/ab;->a:J

    .line 1596
    return-void

    .line 1587
    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ab;->b:Ljava/lang/String;

    move v0, v1

    goto :goto_0

    .line 1593
    :cond_1
    iput v1, p0, Lcom/google/ipc/invalidation/ticl/a/ab;->c:I

    goto :goto_1
.end method

.method static a(Lcom/google/a/a/a/a/t;)Lcom/google/ipc/invalidation/ticl/a/ab;
    .locals 3

    .prologue
    .line 1646
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 1647
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/ab;

    iget-object v1, p0, Lcom/google/a/a/a/a/t;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/a/a/a/a/t;->b:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/a/ab;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/ipc/invalidation/ticl/a/ab;
    .locals 1

    .prologue
    .line 1571
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/ab;

    invoke-direct {v0, p0, p1}, Lcom/google/ipc/invalidation/ticl/a/ab;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private e()Z
    .locals 4

    .prologue
    .line 1599
    const-wide/16 v0, 0x1

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/ab;->a:J

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

.method private f()Z
    .locals 4

    .prologue
    .line 1602
    const-wide/16 v0, 0x2

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/ab;->a:J

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
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1598
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ab;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 1625
    const-string/jumbo v0, "<PropertyRecord:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 1626
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/ab;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1627
    const-string/jumbo v0, " name="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ab;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 1629
    :cond_0
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/ab;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1630
    const-string/jumbo v0, " value="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/ab;->c:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    .line 1632
    :cond_1
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 1633
    return-void
.end method

.method protected final b()I
    .locals 4

    .prologue
    .line 1614
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/ab;->a:J

    .line 2214
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 1615
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/ab;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1616
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ab;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1618
    :cond_0
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/ab;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1619
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/ab;->c:I

    add-int/2addr v0, v1

    .line 1621
    :cond_1
    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 1601
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/ab;->c:I

    return v0
.end method

.method final d()Lcom/google/a/a/a/a/t;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1656
    new-instance v2, Lcom/google/a/a/a/a/t;

    invoke-direct {v2}, Lcom/google/a/a/a/a/t;-><init>()V

    .line 1657
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/ab;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ab;->b:Ljava/lang/String;

    :goto_0
    iput-object v0, v2, Lcom/google/a/a/a/a/t;->a:Ljava/lang/String;

    .line 1658
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/ab;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/ab;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    iput-object v1, v2, Lcom/google/a/a/a/a/t;->b:Ljava/lang/Integer;

    .line 1659
    return-object v2

    :cond_1
    move-object v0, v1

    .line 1657
    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1605
    if-ne p0, p1, :cond_1

    .line 1608
    :cond_0
    :goto_0
    return v0

    .line 1606
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/ab;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1607
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/ab;

    .line 1608
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/ab;->a:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/ab;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/ab;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/ab;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/ab;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/ab;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/ab;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/ipc/invalidation/ticl/a/ab;->c:I

    iget v3, p1, Lcom/google/ipc/invalidation/ticl/a/ab;->c:I

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method
