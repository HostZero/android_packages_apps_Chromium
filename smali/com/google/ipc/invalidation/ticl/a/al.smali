.class public final Lcom/google/ipc/invalidation/ticl/a/al;
.super Lcom/google/ipc/invalidation/b/n;
.source "ClientProtocol.java"


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/util/Collection;)V
    .locals 1

    .prologue
    .line 1303
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 1304
    const-string/jumbo v0, "subtree"

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/a/al;->b(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/al;->a:Ljava/util/List;

    .line 1305
    return-void
.end method

.method public static a(Ljava/util/Collection;)Lcom/google/ipc/invalidation/ticl/a/al;
    .locals 1

    .prologue
    .line 1298
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/al;

    invoke-direct {v0, p0}, Lcom/google/ipc/invalidation/ticl/a/al;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method final a()Lcom/google/a/a/a/a/D;
    .locals 4

    .prologue
    .line 1352
    new-instance v2, Lcom/google/a/a/a/a/D;

    invoke-direct {v2}, Lcom/google/a/a/a/a/D;-><init>()V

    .line 1353
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/al;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/a/a/a/a/B;

    iput-object v0, v2, Lcom/google/a/a/a/a/D;->a:[Lcom/google/a/a/a/a/B;

    .line 1354
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, v2, Lcom/google/a/a/a/a/D;->a:[Lcom/google/a/a/a/a/B;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 1355
    iget-object v3, v2, Lcom/google/a/a/a/a/D;->a:[Lcom/google/a/a/a/a/B;

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/al;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/aj;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/aj;->a()Lcom/google/a/a/a/a/B;

    move-result-object v0

    aput-object v0, v3, v1

    .line 1354
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1357
    :cond_0
    return-object v2
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 1323
    const-string/jumbo v0, "<RegistrationSyncMessage:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 1324
    const-string/jumbo v0, " subtree=["

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/al;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/Iterable;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 1325
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 1326
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/al;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 1319
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1310
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 1313
    :goto_0
    return v0

    .line 1311
    :cond_0
    instance-of v0, p1, Lcom/google/ipc/invalidation/ticl/a/al;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 1312
    :cond_1
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/al;

    .line 1313
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/al;->a:Ljava/util/List;

    iget-object v1, p1, Lcom/google/ipc/invalidation/ticl/a/al;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/al;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
