.class public final Lcom/google/ipc/invalidation/ticl/a/aj;
.super Lcom/google/ipc/invalidation/b/n;
.source "ClientProtocol.java"


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1366
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/aj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/aj;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Collection;)V
    .locals 1

    .prologue
    .line 1370
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 1371
    const-string/jumbo v0, "registered_object"

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/a/aj;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/aj;->a:Ljava/util/List;

    .line 1372
    return-void
.end method

.method static a(Lcom/google/a/a/a/a/B;)Lcom/google/ipc/invalidation/ticl/a/aj;
    .locals 3

    .prologue
    .line 1406
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 1411
    :goto_0
    return-object v0

    .line 1407
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/a/a/a/a/B;->a:[Lcom/google/a/a/a/a/s;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1408
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/a/a/a/a/B;->a:[Lcom/google/a/a/a/a/s;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1409
    iget-object v2, p0, Lcom/google/a/a/a/a/B;->a:[Lcom/google/a/a/a/a/s;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/google/ipc/invalidation/ticl/a/aa;->a(Lcom/google/a/a/a/a/s;)Lcom/google/ipc/invalidation/ticl/a/aa;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1408
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1411
    :cond_1
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/aj;

    invoke-direct {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/aj;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/Collection;)Lcom/google/ipc/invalidation/ticl/a/aj;
    .locals 1

    .prologue
    .line 1363
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/aj;

    invoke-direct {v0, p0}, Lcom/google/ipc/invalidation/ticl/a/aj;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method final a()Lcom/google/a/a/a/a/B;
    .locals 4

    .prologue
    .line 1419
    new-instance v2, Lcom/google/a/a/a/a/B;

    invoke-direct {v2}, Lcom/google/a/a/a/a/B;-><init>()V

    .line 1420
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/aj;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/a/a/a/a/s;

    iput-object v0, v2, Lcom/google/a/a/a/a/B;->a:[Lcom/google/a/a/a/a/s;

    .line 1421
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, v2, Lcom/google/a/a/a/a/B;->a:[Lcom/google/a/a/a/a/s;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 1422
    iget-object v3, v2, Lcom/google/a/a/a/a/B;->a:[Lcom/google/a/a/a/a/s;

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/aj;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/aa;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/aa;->d()Lcom/google/a/a/a/a/s;

    move-result-object v0

    aput-object v0, v3, v1

    .line 1421
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1424
    :cond_0
    return-object v2
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 1390
    const-string/jumbo v0, "<RegistrationSubtree:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 1391
    const-string/jumbo v0, " registered_object=["

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/aj;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/Iterable;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 1392
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 1393
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/aj;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 1386
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1377
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 1380
    :goto_0
    return v0

    .line 1378
    :cond_0
    instance-of v0, p1, Lcom/google/ipc/invalidation/ticl/a/aj;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 1379
    :cond_1
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/aj;

    .line 1380
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/aj;->a:Ljava/util/List;

    iget-object v1, p1, Lcom/google/ipc/invalidation/ticl/a/aj;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
