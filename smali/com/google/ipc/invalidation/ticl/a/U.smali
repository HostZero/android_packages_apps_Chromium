.class public final Lcom/google/ipc/invalidation/ticl/a/U;
.super Lcom/google/ipc/invalidation/b/n;
.source "ClientProtocol.java"


# static fields
.field public static final a:Lcom/google/ipc/invalidation/ticl/a/U;


# instance fields
.field private final b:J

.field private final c:Lcom/google/ipc/invalidation/ticl/a/R;

.field private final d:Ljava/util/List;

.field private final e:Ljava/util/List;

.field private final f:Z

.field private final g:Lcom/google/ipc/invalidation/ticl/a/N;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1437
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/U;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/google/ipc/invalidation/ticl/a/U;-><init>(Lcom/google/ipc/invalidation/ticl/a/R;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/Boolean;Lcom/google/ipc/invalidation/ticl/a/N;)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/a/U;->a:Lcom/google/ipc/invalidation/ticl/a/U;

    return-void
.end method

.method private constructor <init>(Lcom/google/ipc/invalidation/ticl/a/R;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/Boolean;Lcom/google/ipc/invalidation/ticl/a/N;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1450
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 1452
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/a/U;->c:Lcom/google/ipc/invalidation/ticl/a/R;

    .line 1453
    const-string/jumbo v1, "config_parameter"

    invoke-static {v1, p2}, Lcom/google/ipc/invalidation/ticl/a/U;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/U;->d:Ljava/util/List;

    .line 1454
    const-string/jumbo v1, "performance_counter"

    invoke-static {v1, p3}, Lcom/google/ipc/invalidation/ticl/a/U;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/U;->e:Ljava/util/List;

    .line 1455
    if-eqz p4, :cond_0

    .line 1456
    const/4 v0, 0x1

    .line 1457
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/U;->f:Z

    .line 1461
    :goto_0
    iput-object p5, p0, Lcom/google/ipc/invalidation/ticl/a/U;->g:Lcom/google/ipc/invalidation/ticl/a/N;

    .line 1462
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/U;->b:J

    .line 1463
    return-void

    .line 1459
    :cond_0
    iput-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/U;->f:Z

    goto :goto_0
.end method

.method static a(Lcom/google/a/a/a/a/n;)Lcom/google/ipc/invalidation/ticl/a/U;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1531
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 1540
    :goto_0
    return-object v0

    .line 1532
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/a/a/a/a/n;->b:[Lcom/google/a/a/a/a/t;

    array-length v0, v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    .line 1533
    :goto_1
    iget-object v3, p0, Lcom/google/a/a/a/a/n;->b:[Lcom/google/a/a/a/a/t;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 1534
    iget-object v3, p0, Lcom/google/a/a/a/a/n;->b:[Lcom/google/a/a/a/a/t;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/google/ipc/invalidation/ticl/a/ab;->a(Lcom/google/a/a/a/a/t;)Lcom/google/ipc/invalidation/ticl/a/ab;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1533
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1536
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/a/a/a/a/n;->c:[Lcom/google/a/a/a/a/t;

    array-length v0, v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1537
    :goto_2
    iget-object v0, p0, Lcom/google/a/a/a/a/n;->c:[Lcom/google/a/a/a/a/t;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 1538
    iget-object v0, p0, Lcom/google/a/a/a/a/n;->c:[Lcom/google/a/a/a/a/t;

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/a/ab;->a(Lcom/google/a/a/a/a/t;)Lcom/google/ipc/invalidation/ticl/a/ab;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1537
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1540
    :cond_2
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/U;

    iget-object v1, p0, Lcom/google/a/a/a/a/n;->a:Lcom/google/a/a/a/a/k;

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/R;->a(Lcom/google/a/a/a/a/k;)Lcom/google/ipc/invalidation/ticl/a/R;

    move-result-object v1

    iget-object v4, p0, Lcom/google/a/a/a/a/n;->d:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/google/a/a/a/a/n;->e:Lcom/google/a/a/a/a/h;

    invoke-static {v5}, Lcom/google/ipc/invalidation/ticl/a/N;->a(Lcom/google/a/a/a/a/h;)Lcom/google/ipc/invalidation/ticl/a/N;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/ipc/invalidation/ticl/a/U;-><init>(Lcom/google/ipc/invalidation/ticl/a/R;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/Boolean;Lcom/google/ipc/invalidation/ticl/a/N;)V

    goto :goto_0
.end method

.method public static a(Lcom/google/ipc/invalidation/ticl/a/R;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/Boolean;Lcom/google/ipc/invalidation/ticl/a/N;)Lcom/google/ipc/invalidation/ticl/a/U;
    .locals 6

    .prologue
    .line 1434
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/U;

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/ipc/invalidation/ticl/a/U;-><init>(Lcom/google/ipc/invalidation/ticl/a/R;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/Boolean;Lcom/google/ipc/invalidation/ticl/a/N;)V

    return-object v0
.end method

.method private c()Z
    .locals 4

    .prologue
    .line 1472
    const-wide/16 v0, 0x1

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/U;->b:J

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
.method final a()Lcom/google/a/a/a/a/n;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1552
    new-instance v4, Lcom/google/a/a/a/a/n;

    invoke-direct {v4}, Lcom/google/a/a/a/a/n;-><init>()V

    .line 1553
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/U;->c:Lcom/google/ipc/invalidation/ticl/a/R;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/U;->c:Lcom/google/ipc/invalidation/ticl/a/R;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/R;->a()Lcom/google/a/a/a/a/k;

    move-result-object v0

    :goto_0
    iput-object v0, v4, Lcom/google/a/a/a/a/n;->a:Lcom/google/a/a/a/a/k;

    .line 1554
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/U;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/a/a/a/a/t;

    iput-object v0, v4, Lcom/google/a/a/a/a/n;->b:[Lcom/google/a/a/a/a/t;

    move v2, v3

    .line 1555
    :goto_1
    iget-object v0, v4, Lcom/google/a/a/a/a/n;->b:[Lcom/google/a/a/a/a/t;

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 1556
    iget-object v5, v4, Lcom/google/a/a/a/a/n;->b:[Lcom/google/a/a/a/a/t;

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/U;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/ab;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ab;->d()Lcom/google/a/a/a/a/t;

    move-result-object v0

    aput-object v0, v5, v2

    .line 1555
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    move-object v0, v1

    .line 1553
    goto :goto_0

    .line 1558
    :cond_1
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/U;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/a/a/a/a/t;

    iput-object v0, v4, Lcom/google/a/a/a/a/n;->c:[Lcom/google/a/a/a/a/t;

    .line 1559
    :goto_2
    iget-object v0, v4, Lcom/google/a/a/a/a/n;->c:[Lcom/google/a/a/a/a/t;

    array-length v0, v0

    if-ge v3, v0, :cond_2

    .line 1560
    iget-object v2, v4, Lcom/google/a/a/a/a/n;->c:[Lcom/google/a/a/a/a/t;

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/U;->e:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/ab;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ab;->d()Lcom/google/a/a/a/a/t;

    move-result-object v0

    aput-object v0, v2, v3

    .line 1559
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1562
    :cond_2
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/U;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/U;->f:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_3
    iput-object v0, v4, Lcom/google/a/a/a/a/n;->d:Ljava/lang/Boolean;

    .line 1563
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/U;->g:Lcom/google/ipc/invalidation/ticl/a/N;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/U;->g:Lcom/google/ipc/invalidation/ticl/a/N;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/N;->n()Lcom/google/a/a/a/a/h;

    move-result-object v1

    :cond_3
    iput-object v1, v4, Lcom/google/a/a/a/a/n;->e:Lcom/google/a/a/a/a/h;

    .line 1564
    return-object v4

    :cond_4
    move-object v0, v1

    .line 1562
    goto :goto_3
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 3

    .prologue
    const/16 v2, 0x5d

    .line 1505
    const-string/jumbo v0, "<InfoMessage:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 1506
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/U;->c:Lcom/google/ipc/invalidation/ticl/a/R;

    if-eqz v0, :cond_0

    .line 1507
    const-string/jumbo v0, " client_version="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/U;->c:Lcom/google/ipc/invalidation/ticl/a/R;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1509
    :cond_0
    const-string/jumbo v0, " config_parameter=["

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/U;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/Iterable;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 1510
    const-string/jumbo v0, " performance_counter=["

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/U;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/Iterable;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 1511
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/U;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1512
    const-string/jumbo v0, " server_registration_summary_requested="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/U;->f:Z

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Z)Lcom/google/ipc/invalidation/b/r;

    .line 1514
    :cond_1
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/U;->g:Lcom/google/ipc/invalidation/ticl/a/N;

    if-eqz v0, :cond_2

    .line 1515
    const-string/jumbo v0, " client_config="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/U;->g:Lcom/google/ipc/invalidation/ticl/a/N;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1517
    :cond_2
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 1518
    return-void
.end method

.method protected final b()I
    .locals 4

    .prologue
    .line 1489
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/U;->b:J

    .line 2214
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 1490
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/U;->c:Lcom/google/ipc/invalidation/ticl/a/R;

    if-eqz v1, :cond_0

    .line 1491
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/U;->c:Lcom/google/ipc/invalidation/ticl/a/R;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/R;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1493
    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/U;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1494
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/U;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1495
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/U;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1496
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/U;->f:Z

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/U;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 1498
    :cond_1
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/U;->g:Lcom/google/ipc/invalidation/ticl/a/N;

    if-eqz v1, :cond_2

    .line 1499
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/U;->g:Lcom/google/ipc/invalidation/ticl/a/N;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/N;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1501
    :cond_2
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1477
    if-ne p0, p1, :cond_1

    .line 1480
    :cond_0
    :goto_0
    return v0

    .line 1478
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/U;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1479
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/U;

    .line 1480
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/U;->b:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/U;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/U;->c:Lcom/google/ipc/invalidation/ticl/a/R;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/U;->c:Lcom/google/ipc/invalidation/ticl/a/R;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/U;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/U;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/U;->d:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/U;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/U;->e:Ljava/util/List;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/U;->e:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/U;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/U;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/ipc/invalidation/ticl/a/U;->f:Z

    iget-boolean v3, p1, Lcom/google/ipc/invalidation/ticl/a/U;->f:Z

    if-ne v2, v3, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/U;->g:Lcom/google/ipc/invalidation/ticl/a/N;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/U;->g:Lcom/google/ipc/invalidation/ticl/a/N;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/U;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method
