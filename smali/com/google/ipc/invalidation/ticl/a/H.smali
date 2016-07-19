.class public final Lcom/google/ipc/invalidation/ticl/a/H;
.super Lcom/google/ipc/invalidation/b/n;
.source "Client.java"


# static fields
.field public static final a:Lcom/google/ipc/invalidation/ticl/a/H;


# instance fields
.field private final b:J

.field private final c:I

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 395
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/H;

    invoke-direct {v0, v1, v1}, Lcom/google/ipc/invalidation/ticl/a/H;-><init>(Ljava/lang/Integer;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/a/H;->a:Lcom/google/ipc/invalidation/ticl/a/H;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 402
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 404
    if-eqz p1, :cond_0

    .line 405
    const/4 v0, 0x1

    .line 406
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/google/ipc/invalidation/ticl/a/H;->c:I

    .line 410
    :goto_0
    if-eqz p2, :cond_1

    .line 411
    or-int/lit8 v0, v0, 0x2

    .line 412
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/H;->d:Z

    .line 416
    :goto_1
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/H;->b:J

    .line 417
    return-void

    .line 408
    :cond_0
    iput v1, p0, Lcom/google/ipc/invalidation/ticl/a/H;->c:I

    move v0, v1

    goto :goto_0

    .line 414
    :cond_1
    iput-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/H;->d:Z

    goto :goto_1
.end method

.method static a(Lcom/google/a/a/a/a/c;)Lcom/google/ipc/invalidation/ticl/a/H;
    .locals 3

    .prologue
    .line 467
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 468
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/H;

    iget-object v1, p0, Lcom/google/a/a/a/a/c;->a:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/a/a/a/a/c;->b:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/a/H;-><init>(Ljava/lang/Integer;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/google/ipc/invalidation/ticl/a/H;
    .locals 1

    .prologue
    .line 392
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/H;

    invoke-direct {v0, p0, p1}, Lcom/google/ipc/invalidation/ticl/a/H;-><init>(Ljava/lang/Integer;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method private e()Z
    .locals 4

    .prologue
    .line 420
    const-wide/16 v0, 0x1

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/H;->b:J

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
    .line 423
    const-wide/16 v0, 0x2

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/H;->b:J

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
    .line 419
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/H;->c:I

    return v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 446
    const-string/jumbo v0, "<ExponentialBackoffState:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 447
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/H;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    const-string/jumbo v0, " current_max_delay="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/H;->c:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    .line 450
    :cond_0
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/H;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    const-string/jumbo v0, " in_retry_mode="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/H;->d:Z

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Z)Lcom/google/ipc/invalidation/b/r;

    .line 453
    :cond_1
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 454
    return-void
.end method

.method protected final b()I
    .locals 4

    .prologue
    .line 435
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/H;->b:J

    .line 1214
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 436
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/H;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/H;->c:I

    add-int/2addr v0, v1

    .line 439
    :cond_0
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/H;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 440
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/H;->d:Z

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/H;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 442
    :cond_1
    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/H;->d:Z

    return v0
.end method

.method final d()Lcom/google/a/a/a/a/c;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 477
    new-instance v2, Lcom/google/a/a/a/a/c;

    invoke-direct {v2}, Lcom/google/a/a/a/a/c;-><init>()V

    .line 478
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/H;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/H;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    iput-object v0, v2, Lcom/google/a/a/a/a/c;->a:Ljava/lang/Integer;

    .line 479
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/H;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/H;->d:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_0
    iput-object v1, v2, Lcom/google/a/a/a/a/c;->b:Ljava/lang/Boolean;

    .line 480
    return-object v2

    :cond_1
    move-object v0, v1

    .line 478
    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 426
    if-ne p0, p1, :cond_1

    .line 429
    :cond_0
    :goto_0
    return v0

    .line 427
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/H;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 428
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/H;

    .line 429
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/H;->b:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/H;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/H;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/ipc/invalidation/ticl/a/H;->c:I

    iget v3, p1, Lcom/google/ipc/invalidation/ticl/a/H;->c:I

    if-ne v2, v3, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/H;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/ipc/invalidation/ticl/a/H;->d:Z

    iget-boolean v3, p1, Lcom/google/ipc/invalidation/ticl/a/H;->d:Z

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method
