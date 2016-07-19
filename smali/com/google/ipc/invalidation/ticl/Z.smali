.class final Lcom/google/ipc/invalidation/ticl/Z;
.super Lcom/google/ipc/invalidation/b/h;
.source "SimpleRegistrationStore.java"

# interfaces
.implements Lcom/google/ipc/invalidation/ticl/l;


# instance fields
.field private final a:Ljava/util/SortedMap;

.field private final b:Lcom/google/ipc/invalidation/a/a;

.field private c:Lcom/google/ipc/invalidation/b/c;


# direct methods
.method constructor <init>(Lcom/google/ipc/invalidation/a/a;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/h;-><init>()V

    .line 38
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/Z;->a:Ljava/util/SortedMap;

    .line 47
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/Z;->b:Lcom/google/ipc/invalidation/a/a;

    .line 48
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/Z;->e()V

    .line 49
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/Z;->a:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/Z;->b:Lcom/google/ipc/invalidation/a/a;

    .line 1081
    invoke-virtual {v1}, Lcom/google/ipc/invalidation/a/a;->a()V

    .line 1082
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/b/c;

    .line 1083
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/ipc/invalidation/a/a;->a([B)V

    goto :goto_0

    .line 1085
    :cond_0
    new-instance v0, Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/a/a;->b()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ipc/invalidation/b/c;-><init>([B)V

    .line 136
    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/Z;->c:Lcom/google/ipc/invalidation/b/c;

    .line 137
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/Z;->a:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    return v0
.end method

.method public final a(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 7

    .prologue
    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/aa;

    .line 65
    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/Z;->a:Ljava/util/SortedMap;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/aa;->a()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/aa;->c()Lcom/google/ipc/invalidation/b/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v5

    iget-object v6, p0, Lcom/google/ipc/invalidation/ticl/Z;->b:Lcom/google/ipc/invalidation/a/a;

    invoke-static {v4, v5, v6}, Landroid/support/customtabs/a;->getDigest(I[BLcom/google/ipc/invalidation/a/a;)Lcom/google/ipc/invalidation/b/c;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 68
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/Z;->e()V

    .line 75
    :cond_2
    return-object v1
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 141
    const-string/jumbo v0, "<SimpleRegistrationStore: registrations="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/Z;->a:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/Iterable;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    const-string/jumbo v1, ", digest="

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/Z;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 147
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 35
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/aa;

    .line 2114
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/Z;->a:Ljava/util/SortedMap;

    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/aa;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/aa;->c()Lcom/google/ipc/invalidation/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v2

    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/Z;->b:Lcom/google/ipc/invalidation/a/a;

    invoke-static {v1, v2, v3}, Landroid/support/customtabs/a;->getDigest(I[BLcom/google/ipc/invalidation/a/a;)Lcom/google/ipc/invalidation/b/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 35
    return v0
.end method

.method public final b(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 7

    .prologue
    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/aa;

    .line 92
    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/Z;->a:Ljava/util/SortedMap;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/aa;->a()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/aa;->c()Lcom/google/ipc/invalidation/b/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v5

    iget-object v6, p0, Lcom/google/ipc/invalidation/ticl/Z;->b:Lcom/google/ipc/invalidation/a/a;

    invoke-static {v4, v5, v6}, Landroid/support/customtabs/a;->getDigest(I[BLcom/google/ipc/invalidation/a/a;)Lcom/google/ipc/invalidation/b/c;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 94
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 99
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/Z;->e()V

    .line 101
    :cond_2
    return-object v1
.end method

.method public final synthetic b(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 35
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/aa;

    .line 2080
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/Z;->a:Ljava/util/SortedMap;

    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/aa;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/aa;->c()Lcom/google/ipc/invalidation/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v2

    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/Z;->b:Lcom/google/ipc/invalidation/a/a;

    invoke-static {v1, v2, v3}, Landroid/support/customtabs/a;->getDigest(I[BLcom/google/ipc/invalidation/a/a;)Lcom/google/ipc/invalidation/b/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2082
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/Z;->e()V

    .line 2083
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 2085
    :cond_0
    const/4 v0, 0x0

    .line 35
    goto :goto_0
.end method

.method public final b()[B
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/Z;->c:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/Z;->a:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/Z;->a:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 107
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/Z;->a:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->clear()V

    .line 108
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/Z;->e()V

    .line 109
    return-object v0
.end method
