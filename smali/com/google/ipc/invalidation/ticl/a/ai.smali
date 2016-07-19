.class public final Lcom/google/ipc/invalidation/ticl/a/ai;
.super Lcom/google/ipc/invalidation/b/n;
.source "ClientProtocol.java"


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/util/Collection;)V
    .locals 1

    .prologue
    .line 2197
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 2198
    const-string/jumbo v0, "registration_status"

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/a/ai;->b(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ai;->a:Ljava/util/List;

    .line 2199
    return-void
.end method

.method static a(Lcom/google/a/a/a/a/A;)Lcom/google/ipc/invalidation/ticl/a/ai;
    .locals 3

    .prologue
    .line 2233
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 2238
    :goto_0
    return-object v0

    .line 2234
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/a/a/a/a/A;->a:[Lcom/google/a/a/a/a/z;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2235
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/a/a/a/a/A;->a:[Lcom/google/a/a/a/a/z;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 2236
    iget-object v2, p0, Lcom/google/a/a/a/a/A;->a:[Lcom/google/a/a/a/a/z;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/google/ipc/invalidation/ticl/a/ah;->a(Lcom/google/a/a/a/a/z;)Lcom/google/ipc/invalidation/ticl/a/ah;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2235
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2238
    :cond_1
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/ai;

    invoke-direct {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/ai;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    .prologue
    .line 2201
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ai;->a:Ljava/util/List;

    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 2217
    const-string/jumbo v0, "<RegistrationStatusMessage:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 2218
    const-string/jumbo v0, " registration_status=["

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/ai;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/Iterable;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 2219
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 2220
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 2212
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ai;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 2213
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 2204
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 2207
    :goto_0
    return v0

    .line 2205
    :cond_0
    instance-of v0, p1, Lcom/google/ipc/invalidation/ticl/a/ai;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 2206
    :cond_1
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/ai;

    .line 2207
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/ai;->a:Ljava/util/List;

    iget-object v1, p1, Lcom/google/ipc/invalidation/ticl/a/ai;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
