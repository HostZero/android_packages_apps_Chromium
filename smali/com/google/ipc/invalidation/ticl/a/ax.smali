.class public final Lcom/google/ipc/invalidation/ticl/a/ax;
.super Lcom/google/ipc/invalidation/b/n;
.source "JavaClient.java"


# static fields
.field public static final a:Lcom/google/ipc/invalidation/ticl/a/ax;


# instance fields
.field private final b:Ljava/util/List;

.field private final c:Lcom/google/ipc/invalidation/ticl/a/ak;

.field private final d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 338
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/ax;

    invoke-direct {v0, v1, v1, v1}, Lcom/google/ipc/invalidation/ticl/a/ax;-><init>(Ljava/util/Collection;Lcom/google/ipc/invalidation/ticl/a/ak;Ljava/util/Collection;)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/a/ax;->a:Lcom/google/ipc/invalidation/ticl/a/ax;

    return-void
.end method

.method private constructor <init>(Ljava/util/Collection;Lcom/google/ipc/invalidation/ticl/a/ak;Ljava/util/Collection;)V
    .locals 1

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 347
    const-string/jumbo v0, "registrations"

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/a/ax;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ax;->b:Ljava/util/List;

    .line 348
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/a/ax;->c:Lcom/google/ipc/invalidation/ticl/a/ak;

    .line 349
    const-string/jumbo v0, "pending_operations"

    invoke-static {v0, p3}, Lcom/google/ipc/invalidation/ticl/a/ax;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ax;->d:Ljava/util/List;

    .line 350
    return-void
.end method

.method static a(Lcom/google/a/a/a/H;)Lcom/google/ipc/invalidation/ticl/a/ax;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 398
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 407
    :goto_0
    return-object v0

    .line 399
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/a/a/a/H;->a:[Lcom/google/a/a/a/a/s;

    array-length v0, v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    .line 400
    :goto_1
    iget-object v3, p0, Lcom/google/a/a/a/H;->a:[Lcom/google/a/a/a/a/s;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 401
    iget-object v3, p0, Lcom/google/a/a/a/H;->a:[Lcom/google/a/a/a/a/s;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/google/ipc/invalidation/ticl/a/aa;->a(Lcom/google/a/a/a/a/s;)Lcom/google/ipc/invalidation/ticl/a/aa;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 403
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/a/a/a/H;->c:[Lcom/google/a/a/a/a/y;

    array-length v0, v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 404
    :goto_2
    iget-object v0, p0, Lcom/google/a/a/a/H;->c:[Lcom/google/a/a/a/a/y;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 405
    iget-object v0, p0, Lcom/google/a/a/a/H;->c:[Lcom/google/a/a/a/a/y;

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/a/ag;->a(Lcom/google/a/a/a/a/y;)Lcom/google/ipc/invalidation/ticl/a/ag;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 407
    :cond_2
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/ax;

    iget-object v1, p0, Lcom/google/a/a/a/H;->b:Lcom/google/a/a/a/a/C;

    invoke-static {v1}, Lcom/google/ipc/invalidation/ticl/a/ak;->a(Lcom/google/a/a/a/a/C;)Lcom/google/ipc/invalidation/ticl/a/ak;

    move-result-object v1

    invoke-direct {v0, v2, v1, v3}, Lcom/google/ipc/invalidation/ticl/a/ax;-><init>(Ljava/util/Collection;Lcom/google/ipc/invalidation/ticl/a/ak;Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/Collection;Lcom/google/ipc/invalidation/ticl/a/ak;Ljava/util/Collection;)Lcom/google/ipc/invalidation/ticl/a/ax;
    .locals 1

    .prologue
    .line 335
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/ax;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/ipc/invalidation/ticl/a/ax;-><init>(Ljava/util/Collection;Lcom/google/ipc/invalidation/ticl/a/ak;Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ax;->b:Ljava/util/List;

    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 3

    .prologue
    const/16 v2, 0x5d

    .line 378
    const-string/jumbo v0, "<RegistrationManagerStateP:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 379
    const-string/jumbo v0, " registrations=["

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ax;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/Iterable;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 380
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ax;->c:Lcom/google/ipc/invalidation/ticl/a/ak;

    if-eqz v0, :cond_0

    .line 381
    const-string/jumbo v0, " last_known_server_summary="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ax;->c:Lcom/google/ipc/invalidation/ticl/a/ak;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 383
    :cond_0
    const-string/jumbo v0, " pending_operations=["

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ax;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/Iterable;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 384
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 385
    return-void
.end method

.method protected final b()I
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ax;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 370
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ax;->c:Lcom/google/ipc/invalidation/ticl/a/ak;

    if-eqz v1, :cond_0

    .line 371
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ax;->c:Lcom/google/ipc/invalidation/ticl/a/ak;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/ak;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 373
    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ax;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 374
    return v0
.end method

.method public final c()Lcom/google/ipc/invalidation/ticl/a/ak;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ax;->c:Lcom/google/ipc/invalidation/ticl/a/ak;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ax;->d:Ljava/util/List;

    return-object v0
.end method

.method final e()Lcom/google/a/a/a/H;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 417
    new-instance v3, Lcom/google/a/a/a/H;

    invoke-direct {v3}, Lcom/google/a/a/a/H;-><init>()V

    .line 418
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ax;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/a/a/a/a/s;

    iput-object v0, v3, Lcom/google/a/a/a/H;->a:[Lcom/google/a/a/a/a/s;

    move v1, v2

    .line 419
    :goto_0
    iget-object v0, v3, Lcom/google/a/a/a/H;->a:[Lcom/google/a/a/a/a/s;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 420
    iget-object v4, v3, Lcom/google/a/a/a/H;->a:[Lcom/google/a/a/a/a/s;

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ax;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/aa;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/aa;->d()Lcom/google/a/a/a/a/s;

    move-result-object v0

    aput-object v0, v4, v1

    .line 419
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ax;->c:Lcom/google/ipc/invalidation/ticl/a/ak;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ax;->c:Lcom/google/ipc/invalidation/ticl/a/ak;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ak;->a()Lcom/google/a/a/a/a/C;

    move-result-object v0

    :goto_1
    iput-object v0, v3, Lcom/google/a/a/a/H;->b:Lcom/google/a/a/a/a/C;

    .line 423
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ax;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/a/a/a/a/y;

    iput-object v0, v3, Lcom/google/a/a/a/H;->c:[Lcom/google/a/a/a/a/y;

    .line 424
    :goto_2
    iget-object v0, v3, Lcom/google/a/a/a/H;->c:[Lcom/google/a/a/a/a/y;

    array-length v0, v0

    if-ge v2, v0, :cond_2

    .line 425
    iget-object v1, v3, Lcom/google/a/a/a/H;->c:[Lcom/google/a/a/a/a/y;

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ax;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/ag;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ag;->d()Lcom/google/a/a/a/a/y;

    move-result-object v0

    aput-object v0, v1, v2

    .line 424
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 422
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 427
    :cond_2
    return-object v3
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 359
    if-ne p0, p1, :cond_1

    .line 362
    :cond_0
    :goto_0
    return v0

    .line 360
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/ax;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 361
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/ax;

    .line 362
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/ax;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/ax;->b:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/ax;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/ax;->c:Lcom/google/ipc/invalidation/ticl/a/ak;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/ax;->c:Lcom/google/ipc/invalidation/ticl/a/ak;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/ax;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/ax;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/ax;->d:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/ax;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
