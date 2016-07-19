.class public final Lcom/google/ipc/invalidation/ticl/a/M;
.super Lcom/google/ipc/invalidation/b/n;
.source "ClientProtocol.java"


# instance fields
.field private final a:J

.field private final b:I

.field private final c:Lcom/google/ipc/invalidation/b/c;


# direct methods
.method private constructor <init>(Ljava/lang/Integer;Lcom/google/ipc/invalidation/b/c;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 433
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 435
    if-eqz p1, :cond_0

    .line 436
    const/4 v0, 0x1

    .line 437
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/ipc/invalidation/ticl/a/M;->b:I

    .line 441
    :goto_0
    const-string/jumbo v1, "client_name"

    invoke-static {v1, p2}, Lcom/google/ipc/invalidation/ticl/a/M;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 442
    const-string/jumbo v1, "client_name"

    invoke-static {v1, p2}, Lcom/google/ipc/invalidation/ticl/a/M;->a(Ljava/lang/String;Lcom/google/ipc/invalidation/b/c;)V

    .line 443
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/a/M;->c:Lcom/google/ipc/invalidation/b/c;

    .line 444
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/M;->a:J

    .line 445
    return-void

    .line 439
    :cond_0
    iput v0, p0, Lcom/google/ipc/invalidation/ticl/a/M;->b:I

    goto :goto_0
.end method

.method static a(Lcom/google/a/a/a/a/g;)Lcom/google/ipc/invalidation/ticl/a/M;
    .locals 3

    .prologue
    .line 490
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 491
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/M;

    iget-object v1, p0, Lcom/google/a/a/a/a/g;->a:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/a/a/a/a/g;->b:[B

    invoke-static {v2}, Lcom/google/ipc/invalidation/b/c;->a([B)Lcom/google/ipc/invalidation/b/c;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/ipc/invalidation/ticl/a/M;-><init>(Ljava/lang/Integer;Lcom/google/ipc/invalidation/b/c;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Integer;Lcom/google/ipc/invalidation/b/c;)Lcom/google/ipc/invalidation/ticl/a/M;
    .locals 1

    .prologue
    .line 425
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/M;

    invoke-direct {v0, p0, p1}, Lcom/google/ipc/invalidation/ticl/a/M;-><init>(Ljava/lang/Integer;Lcom/google/ipc/invalidation/b/c;)V

    return-object v0
.end method

.method private e()Z
    .locals 4

    .prologue
    .line 448
    const-wide/16 v0, 0x1

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/M;->a:J

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
    .line 447
    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/M;->b:I

    return v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 471
    const-string/jumbo v0, "<ApplicationClientIdP:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 472
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/M;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    const-string/jumbo v0, " client_type="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/M;->b:I

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(I)Lcom/google/ipc/invalidation/b/r;

    .line 475
    :cond_0
    const-string/jumbo v0, " client_name="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/M;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 476
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 477
    return-void
.end method

.method protected final b()I
    .locals 4

    .prologue
    .line 462
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/M;->a:J

    .line 1214
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 463
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/M;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ipc/invalidation/ticl/a/M;->b:I

    add-int/2addr v0, v1

    .line 466
    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/M;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 467
    return v0
.end method

.method public final c()Lcom/google/ipc/invalidation/b/c;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/M;->c:Lcom/google/ipc/invalidation/b/c;

    return-object v0
.end method

.method final d()Lcom/google/a/a/a/a/g;
    .locals 2

    .prologue
    .line 500
    new-instance v1, Lcom/google/a/a/a/a/g;

    invoke-direct {v1}, Lcom/google/a/a/a/a/g;-><init>()V

    .line 501
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/M;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/ipc/invalidation/ticl/a/M;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Lcom/google/a/a/a/a/g;->a:Ljava/lang/Integer;

    .line 502
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/M;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v0

    iput-object v0, v1, Lcom/google/a/a/a/a/g;->b:[B

    .line 503
    return-object v1

    .line 501
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 453
    if-ne p0, p1, :cond_1

    .line 456
    :cond_0
    :goto_0
    return v0

    .line 454
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/M;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 455
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/M;

    .line 456
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/M;->a:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/M;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/a/M;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/ipc/invalidation/ticl/a/M;->b:I

    iget v3, p1, Lcom/google/ipc/invalidation/ticl/a/M;->b:I

    if-ne v2, v3, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/M;->c:Lcom/google/ipc/invalidation/b/c;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/M;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/M;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method
