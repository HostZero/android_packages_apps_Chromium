.class public final Lcom/google/ipc/invalidation/ticl/a/ac;
.super Lcom/google/ipc/invalidation/b/n;
.source "ClientProtocol.java"


# instance fields
.field private final a:J

.field private final b:I

.field private final c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2532
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/ac;

    invoke-direct {v0, v1, v1}, Lcom/google/ipc/invalidation/ticl/a/ac;-><init>(Ljava/lang/Integer;Ljava/util/Collection;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Integer;Ljava/util/Collection;)V
    .locals 2

    .prologue
    .line 2539
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 2540
    const/4 v0, 0x0

    .line 2541
    if-eqz p1, :cond_0

    .line 2542
    const/4 v0, 0x1

    .line 2543
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/ipc/invalidation/ticl/a/ac;->b:I

    .line 2547
    :goto_0
    const-string/jumbo v1, "rate_limit"

    invoke-static {v1, p2}, Lcom/google/ipc/invalidation/ticl/a/ac;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ac;->c:Ljava/util/List;

    .line 2548
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/ac;->a:J

    .line 2549
    return-void

    .line 2545
    :cond_0
    const/16 v1, 0x1f4

    iput v1, p0, Lcom/google/ipc/invalidation/ticl/a/ac;->b:I

    goto :goto_0
.end method

.method static a(Lcom/google/a/a/a/a/u;)Lcom/google/ipc/invalidation/ticl/a/ac;
    .locals 3

    .prologue
    .line 2605
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 2610
    :goto_0
    return-object v0

    .line 2606
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/a/a/a/a/u;->b:[Lcom/google/a/a/a/a/w;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2607
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/a/a/a/a/u;->b:[Lcom/google/a/a/a/a/w;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 2608
    iget-object v2, p0, Lcom/google/a/a/a/a/u;->b:[Lcom/google/a/a/a/a/w;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/google/ipc/invalidation/ticl/a/ae;->a(Lcom/google/a/a/a/a/w;)Lcom/google/ipc/invalidation/ticl/a/ae;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2607
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2610
    :cond_1
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/ac;

    iget-object v2, p0, Lcom/google/a/a/a/a/u;->a:Ljava/lang/Integer;

    invoke-direct {v0, v2, v1}, Lcom/google/ipc/invalidation/ticl/a/ac;-><init>(Ljava/lang/Integer;Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Integer;Ljava/util/Collection;)Lcom/google/ipc/invalidation/ticl/a/ac;
    .locals 2

    .prologue
    .line 2529
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/ac;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/google/ipc/invalidation/ticl/a/ac;-><init>(Ljava/lang/Integer;Ljava/util/Collection;)V

    return-object v0
.end method

.method private d()Z
    .locals 4

    .prologue
    .line 2552
    const-wide/16 v0, 0x1

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/ac;->a:J

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
    .line 2551
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/ac;->b:I

    return v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 2586
    const-string/jumbo v0, "<ProtocolHandlerConfigP:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 2587
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/ac;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2588
    const-string/jumbo v0, " batching_delay_ms="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/ac;->b:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    .line 2590
    :cond_0
    const-string/jumbo v0, " rate_limit=["

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ac;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/Iterable;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 2591
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 2592
    return-void
.end method

.method protected final b()I
    .locals 4

    .prologue
    .line 2577
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/ac;->a:J

    .line 3214
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 2578
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/ac;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2579
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/ac;->b:I

    add-int/2addr v0, v1

    .line 2581
    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ac;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2582
    return v0
.end method

.method final c()Lcom/google/a/a/a/a/u;
    .locals 4

    .prologue
    .line 2619
    new-instance v2, Lcom/google/a/a/a/a/u;

    invoke-direct {v2}, Lcom/google/a/a/a/a/u;-><init>()V

    .line 2620
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/ac;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/ac;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    iput-object v0, v2, Lcom/google/a/a/a/a/u;->a:Ljava/lang/Integer;

    .line 2621
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ac;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/a/a/a/a/w;

    iput-object v0, v2, Lcom/google/a/a/a/a/u;->b:[Lcom/google/a/a/a/a/w;

    .line 2622
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, v2, Lcom/google/a/a/a/a/u;->b:[Lcom/google/a/a/a/a/w;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 2623
    iget-object v3, v2, Lcom/google/a/a/a/a/u;->b:[Lcom/google/a/a/a/a/w;

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ac;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/ae;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ae;->a()Lcom/google/a/a/a/a/w;

    move-result-object v0

    aput-object v0, v3, v1

    .line 2622
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2620
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2625
    :cond_1
    return-object v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2568
    if-ne p0, p1, :cond_1

    .line 2571
    :cond_0
    :goto_0
    return v0

    .line 2569
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/ac;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 2570
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/ac;

    .line 2571
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/ac;->a:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/ac;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/ac;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/ipc/invalidation/ticl/a/ac;->b:I

    iget v3, p1, Lcom/google/ipc/invalidation/ticl/a/ac;->b:I

    if-ne v2, v3, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/ac;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/ac;->c:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method
