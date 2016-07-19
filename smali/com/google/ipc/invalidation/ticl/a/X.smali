.class public final Lcom/google/ipc/invalidation/ticl/a/X;
.super Lcom/google/ipc/invalidation/b/n;
.source "ClientProtocol.java"


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/util/Collection;)V
    .locals 1

    .prologue
    .line 2316
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 2317
    const-string/jumbo v0, "invalidation"

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/a/X;->b(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/X;->a:Ljava/util/List;

    .line 2318
    return-void
.end method

.method static a(Lcom/google/a/a/a/a/q;)Lcom/google/ipc/invalidation/ticl/a/X;
    .locals 3

    .prologue
    .line 2352
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 2357
    :goto_0
    return-object v0

    .line 2353
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/a/a/a/a/q;->a:[Lcom/google/a/a/a/a/r;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2354
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/a/a/a/a/q;->a:[Lcom/google/a/a/a/a/r;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 2355
    iget-object v2, p0, Lcom/google/a/a/a/a/q;->a:[Lcom/google/a/a/a/a/r;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/google/ipc/invalidation/ticl/a/Y;->a(Lcom/google/a/a/a/a/r;)Lcom/google/ipc/invalidation/ticl/a/Y;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2354
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2357
    :cond_1
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/X;

    invoke-direct {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/X;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/Collection;)Lcom/google/ipc/invalidation/ticl/a/X;
    .locals 1

    .prologue
    .line 2311
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/X;

    invoke-direct {v0, p0}, Lcom/google/ipc/invalidation/ticl/a/X;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static a([B)Lcom/google/ipc/invalidation/ticl/a/X;
    .locals 2

    .prologue
    .line 2343
    :try_start_0
    new-instance v0, Lcom/google/a/a/a/a/q;

    invoke-direct {v0}, Lcom/google/a/a/a/a/q;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/a/a/q;

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/a/X;->a(Lcom/google/a/a/a/a/q;)Lcom/google/ipc/invalidation/ticl/a/X;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/ipc/invalidation/b/o; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 2344
    :catch_0
    move-exception v0

    .line 2345
    new-instance v1, Lcom/google/ipc/invalidation/b/p;

    invoke-direct {v1, v0}, Lcom/google/ipc/invalidation/b/p;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2346
    :catch_1
    move-exception v0

    .line 2347
    new-instance v1, Lcom/google/ipc/invalidation/b/p;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/o;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/ipc/invalidation/b/p;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    .prologue
    .line 2320
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/X;->a:Ljava/util/List;

    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 2336
    const-string/jumbo v0, "<InvalidationMessage:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 2337
    const-string/jumbo v0, " invalidation=["

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/X;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/Iterable;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 2338
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 2339
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 2331
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/X;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 2332
    return v0
.end method

.method public final c()[B
    .locals 1

    .prologue
    .line 2361
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/X;->d()Lcom/google/a/a/a/a/q;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    return-object v0
.end method

.method final d()Lcom/google/a/a/a/a/q;
    .locals 4

    .prologue
    .line 2365
    new-instance v2, Lcom/google/a/a/a/a/q;

    invoke-direct {v2}, Lcom/google/a/a/a/a/q;-><init>()V

    .line 2366
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/X;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/a/a/a/a/r;

    iput-object v0, v2, Lcom/google/a/a/a/a/q;->a:[Lcom/google/a/a/a/a/r;

    .line 2367
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, v2, Lcom/google/a/a/a/a/q;->a:[Lcom/google/a/a/a/a/r;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 2368
    iget-object v3, v2, Lcom/google/a/a/a/a/q;->a:[Lcom/google/a/a/a/a/r;

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/X;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/Y;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/Y;->i()Lcom/google/a/a/a/a/r;

    move-result-object v0

    aput-object v0, v3, v1

    .line 2367
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2370
    :cond_0
    return-object v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 2323
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 2326
    :goto_0
    return v0

    .line 2324
    :cond_0
    instance-of v0, p1, Lcom/google/ipc/invalidation/ticl/a/X;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 2325
    :cond_1
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/X;

    .line 2326
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/X;->a:Ljava/util/List;

    iget-object v1, p1, Lcom/google/ipc/invalidation/ticl/a/X;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/X;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
