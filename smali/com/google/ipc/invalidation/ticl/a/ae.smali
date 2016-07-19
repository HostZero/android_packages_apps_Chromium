.class public final Lcom/google/ipc/invalidation/ticl/a/ae;
.super Lcom/google/ipc/invalidation/b/n;
.source "ClientProtocol.java"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method private constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 2453
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 2454
    const-string/jumbo v0, "window_ms"

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/a/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2455
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/ipc/invalidation/ticl/a/ae;->a:I

    .line 2456
    const-string/jumbo v0, "count"

    invoke-static {v0, p2}, Lcom/google/ipc/invalidation/ticl/a/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2457
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/ipc/invalidation/ticl/a/ae;->b:I

    .line 2458
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Invalid window_ms and count"

    invoke-virtual {p0, v0, v1}, Lcom/google/ipc/invalidation/ticl/a/ae;->a(ZLjava/lang/String;)V

    .line 2459
    return-void

    .line 2458
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(II)Lcom/google/ipc/invalidation/ticl/a/ae;
    .locals 3

    .prologue
    .line 2446
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/ae;

    const/16 v1, 0x1388

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/a/ae;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method static a(Lcom/google/a/a/a/a/w;)Lcom/google/ipc/invalidation/ticl/a/ae;
    .locals 3

    .prologue
    .line 2498
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 2499
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/ae;

    iget-object v1, p0, Lcom/google/a/a/a/a/w;->a:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/a/a/a/a/w;->b:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/a/ae;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0
.end method


# virtual methods
.method final a()Lcom/google/a/a/a/a/w;
    .locals 2

    .prologue
    .line 2508
    new-instance v0, Lcom/google/a/a/a/a/w;

    invoke-direct {v0}, Lcom/google/a/a/a/a/w;-><init>()V

    .line 2509
    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/ae;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/a/w;->a:Ljava/lang/Integer;

    .line 2510
    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/ae;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/a/a/a/a/w;->b:Ljava/lang/Integer;

    .line 2511
    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 2481
    const-string/jumbo v0, "<RateLimitP:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 2482
    const-string/jumbo v0, " window_ms="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/ae;->a:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    .line 2483
    const-string/jumbo v0, " count="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/ae;->b:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    .line 2484
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 2485
    return-void
.end method

.method protected final b()I
    .locals 2

    .prologue
    .line 2475
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/ae;->a:I

    add-int/lit8 v0, v0, 0x1f

    .line 2476
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/ae;->b:I

    add-int/2addr v0, v1

    .line 2477
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2466
    if-ne p0, p1, :cond_1

    .line 2469
    :cond_0
    :goto_0
    return v0

    .line 2467
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/ae;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 2468
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/ae;

    .line 2469
    iget v2, p0, Lcom/google/ipc/invalidation/ticl/a/ae;->a:I

    iget v3, p1, Lcom/google/ipc/invalidation/ticl/a/ae;->a:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/ipc/invalidation/ticl/a/ae;->b:I

    iget v3, p1, Lcom/google/ipc/invalidation/ticl/a/ae;->b:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
