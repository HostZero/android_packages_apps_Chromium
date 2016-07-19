.class public final Lcom/google/ipc/invalidation/ticl/a/f;
.super Lcom/google/ipc/invalidation/b/n;
.source "AndroidListenerProtocol.java"


# static fields
.field public static final a:Lcom/google/ipc/invalidation/ticl/a/f;


# instance fields
.field private final b:J

.field private final c:Z

.field private final d:Ljava/util/List;

.field private final e:Lcom/google/ipc/invalidation/b/c;

.field private final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 372
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/f;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/google/ipc/invalidation/ticl/a/f;-><init>(Ljava/lang/Boolean;Ljava/util/Collection;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/a/f;->a:Lcom/google/ipc/invalidation/ticl/a/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Boolean;Ljava/util/Collection;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 383
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 385
    if-eqz p1, :cond_0

    .line 386
    const/4 v0, 0x1

    .line 387
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/ipc/invalidation/ticl/a/f;->c:Z

    .line 391
    :goto_0
    const-string/jumbo v2, "object_id"

    invoke-static {v2, p2}, Lcom/google/ipc/invalidation/ticl/a/f;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/f;->d:Ljava/util/List;

    .line 392
    if-eqz p3, :cond_1

    .line 393
    or-int/lit8 v0, v0, 0x2

    .line 394
    iput-object p3, p0, Lcom/google/ipc/invalidation/ticl/a/f;->e:Lcom/google/ipc/invalidation/b/c;

    .line 398
    :goto_1
    if-eqz p4, :cond_2

    .line 399
    or-int/lit8 v0, v0, 0x4

    .line 400
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/f;->f:Z

    .line 404
    :goto_2
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/f;->b:J

    .line 405
    return-void

    .line 389
    :cond_0
    iput-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/f;->c:Z

    move v0, v1

    goto :goto_0

    .line 396
    :cond_1
    sget-object v2, Lcom/google/ipc/invalidation/b/c;->a:Lcom/google/ipc/invalidation/b/c;

    iput-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/f;->e:Lcom/google/ipc/invalidation/b/c;

    goto :goto_1

    .line 402
    :cond_2
    iput-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/f;->f:Z

    goto :goto_2
.end method

.method static a(Lcom/google/a/a/a/f;)Lcom/google/ipc/invalidation/ticl/a/f;
    .locals 5

    .prologue
    .line 470
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 475
    :goto_0
    return-object v0

    .line 471
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/a/a/a/f;->b:[Lcom/google/a/a/a/a/s;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 472
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/a/a/a/f;->b:[Lcom/google/a/a/a/a/s;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 473
    iget-object v2, p0, Lcom/google/a/a/a/f;->b:[Lcom/google/a/a/a/a/s;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/google/ipc/invalidation/ticl/a/aa;->a(Lcom/google/a/a/a/a/s;)Lcom/google/ipc/invalidation/ticl/a/aa;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 475
    :cond_1
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/f;

    iget-object v2, p0, Lcom/google/a/a/a/f;->a:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/google/a/a/a/f;->c:[B

    invoke-static {v3}, Lcom/google/ipc/invalidation/b/c;->a([B)Lcom/google/ipc/invalidation/b/c;

    move-result-object v3

    iget-object v4, p0, Lcom/google/a/a/a/f;->d:Ljava/lang/Boolean;

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/google/ipc/invalidation/ticl/a/f;-><init>(Ljava/lang/Boolean;Ljava/util/Collection;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Boolean;Ljava/util/Collection;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Boolean;)Lcom/google/ipc/invalidation/ticl/a/f;
    .locals 1

    .prologue
    .line 369
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/f;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/ipc/invalidation/ticl/a/f;-><init>(Ljava/lang/Boolean;Ljava/util/Collection;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static a([B)Lcom/google/ipc/invalidation/ticl/a/f;
    .locals 2

    .prologue
    .line 461
    :try_start_0
    new-instance v0, Lcom/google/a/a/a/f;

    invoke-direct {v0}, Lcom/google/a/a/a/f;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/a/f;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/a/f;->a(Lcom/google/a/a/a/f;)Lcom/google/ipc/invalidation/ticl/a/f;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/ipc/invalidation/b/o; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 462
    :catch_0
    move-exception v0

    .line 463
    new-instance v1, Lcom/google/ipc/invalidation/b/p;

    invoke-direct {v1, v0}, Lcom/google/ipc/invalidation/b/p;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 464
    :catch_1
    move-exception v0

    .line 465
    new-instance v1, Lcom/google/ipc/invalidation/b/p;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/o;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/ipc/invalidation/b/p;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 445
    const-string/jumbo v0, "<RegistrationCommand:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 446
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    const-string/jumbo v0, " is_register="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/f;->c:Z

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Z)Lcom/google/ipc/invalidation/b/r;

    .line 449
    :cond_0
    const-string/jumbo v0, " object_id=["

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/f;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/Iterable;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 450
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/f;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    const-string/jumbo v0, " client_id="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/f;->e:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 453
    :cond_1
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/f;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 454
    const-string/jumbo v0, " is_delayed="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/f;->f:Z

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Z)Lcom/google/ipc/invalidation/b/r;

    .line 456
    :cond_2
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 457
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/f;->c:Z

    return v0
.end method

.method protected final b()I
    .locals 4

    .prologue
    .line 430
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/f;->b:J

    .line 1214
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 431
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/f;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/f;->c:Z

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/f;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 434
    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/f;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 435
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/f;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 436
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/f;->e:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/b/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 438
    :cond_1
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/f;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 439
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/ipc/invalidation/ticl/a/f;->f:Z

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/f;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 441
    :cond_2
    return v0
.end method

.method public final c()Z
    .locals 4

    .prologue
    .line 408
    const-wide/16 v0, 0x1

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/f;->b:J

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

.method public final d()Ljava/util/List;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/f;->d:Ljava/util/List;

    return-object v0
.end method

.method public final e()Lcom/google/ipc/invalidation/b/c;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/f;->e:Lcom/google/ipc/invalidation/b/c;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 419
    if-ne p0, p1, :cond_1

    .line 422
    :cond_0
    :goto_0
    return v0

    .line 420
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/f;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 421
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/f;

    .line 422
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/f;->b:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/f;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/f;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/ipc/invalidation/ticl/a/f;->c:Z

    iget-boolean v3, p1, Lcom/google/ipc/invalidation/ticl/a/f;->c:Z

    if-ne v2, v3, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/f;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/f;->d:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/f;->f()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/f;->e:Lcom/google/ipc/invalidation/b/c;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/f;->e:Lcom/google/ipc/invalidation/b/c;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/f;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/ipc/invalidation/ticl/a/f;->f:Z

    iget-boolean v3, p1, Lcom/google/ipc/invalidation/ticl/a/f;->f:Z

    if-eq v2, v3, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public final f()Z
    .locals 4

    .prologue
    .line 413
    const-wide/16 v0, 0x2

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/f;->b:J

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
    .line 415
    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/f;->f:Z

    return v0
.end method

.method public final h()Z
    .locals 4

    .prologue
    .line 416
    const-wide/16 v0, 0x4

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/f;->b:J

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

.method public final i()[B
    .locals 1

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/f;->j()Lcom/google/a/a/a/f;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    return-object v0
.end method

.method final j()Lcom/google/a/a/a/f;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 486
    new-instance v3, Lcom/google/a/a/a/f;

    invoke-direct {v3}, Lcom/google/a/a/a/f;-><init>()V

    .line 487
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/f;->c:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    iput-object v0, v3, Lcom/google/a/a/a/f;->a:Ljava/lang/Boolean;

    .line 488
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/f;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/a/a/a/a/s;

    iput-object v0, v3, Lcom/google/a/a/a/f;->b:[Lcom/google/a/a/a/a/s;

    .line 489
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget-object v0, v3, Lcom/google/a/a/a/f;->b:[Lcom/google/a/a/a/a/s;

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 490
    iget-object v4, v3, Lcom/google/a/a/a/f;->b:[Lcom/google/a/a/a/a/s;

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/f;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/aa;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/aa;->d()Lcom/google/a/a/a/a/s;

    move-result-object v0

    aput-object v0, v4, v2

    .line 489
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    move-object v0, v1

    .line 487
    goto :goto_0

    .line 492
    :cond_1
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/f;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/f;->e:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v0

    :goto_2
    iput-object v0, v3, Lcom/google/a/a/a/f;->c:[B

    .line 493
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/f;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/ipc/invalidation/ticl/a/f;->f:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_2
    iput-object v1, v3, Lcom/google/a/a/a/f;->d:Ljava/lang/Boolean;

    .line 494
    return-object v3

    :cond_3
    move-object v0, v1

    .line 492
    goto :goto_2
.end method
