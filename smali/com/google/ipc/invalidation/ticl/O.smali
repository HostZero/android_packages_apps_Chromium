.class final Lcom/google/ipc/invalidation/ticl/O;
.super Lcom/google/ipc/invalidation/b/h;
.source "RegistrationManager.java"


# static fields
.field static final a:[B


# instance fields
.field private b:Lcom/google/ipc/invalidation/ticl/l;

.field private final c:Lcom/google/ipc/invalidation/ticl/aa;

.field private d:Lcom/google/ipc/invalidation/ticl/a/ak;

.field private final e:Ljava/util/Map;

.field private final f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/ipc/invalidation/ticl/O;->a:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;Lcom/google/ipc/invalidation/ticl/aa;Lcom/google/ipc/invalidation/a/a;Lcom/google/ipc/invalidation/ticl/a/ax;)V
    .locals 4

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/h;-><init>()V

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/O;->e:Ljava/util/Map;

    .line 84
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/O;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    .line 85
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/O;->c:Lcom/google/ipc/invalidation/ticl/aa;

    .line 86
    new-instance v0, Lcom/google/ipc/invalidation/ticl/Z;

    invoke-direct {v0, p3}, Lcom/google/ipc/invalidation/ticl/Z;-><init>(Lcom/google/ipc/invalidation/a/a;)V

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/O;->b:Lcom/google/ipc/invalidation/ticl/l;

    .line 88
    if-nez p4, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/O;->b()Lcom/google/ipc/invalidation/ticl/a/ak;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/O;->d:Lcom/google/ipc/invalidation/ticl/a/ak;

    .line 104
    :cond_0
    return-void

    .line 94
    :cond_1
    invoke-virtual {p4}, Lcom/google/ipc/invalidation/ticl/a/ax;->c()Lcom/google/ipc/invalidation/ticl/a/ak;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/O;->d:Lcom/google/ipc/invalidation/ticl/a/ak;

    .line 95
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/O;->d:Lcom/google/ipc/invalidation/ticl/a/ak;

    if-nez v0, :cond_2

    .line 97
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/O;->b()Lcom/google/ipc/invalidation/ticl/a/ak;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/O;->d:Lcom/google/ipc/invalidation/ticl/a/ak;

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/O;->b:Lcom/google/ipc/invalidation/ticl/l;

    invoke-virtual {p4}, Lcom/google/ipc/invalidation/ticl/a/ax;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/ipc/invalidation/ticl/l;->a(Ljava/util/Collection;)Ljava/util/Collection;

    .line 100
    invoke-virtual {p4}, Lcom/google/ipc/invalidation/ticl/a/ax;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/ag;

    .line 101
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/O;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ag;->a()Lcom/google/ipc/invalidation/ticl/a/aa;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ag;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method final a([BI)Lcom/google/ipc/invalidation/ticl/a/aj;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/O;->b:Lcom/google/ipc/invalidation/ticl/l;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/ticl/l;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/a/aj;->a(Ljava/util/Collection;)Lcom/google/ipc/invalidation/ticl/a/aj;

    move-result-object v0

    return-object v0
.end method

.method final a()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/O;->b:Lcom/google/ipc/invalidation/ticl/l;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/ticl/l;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/O;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 214
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 215
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/O;->b:Lcom/google/ipc/invalidation/ticl/l;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/ticl/l;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 216
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/O;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 217
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/O;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 218
    return-object v1
.end method

.method final a(Ljava/util/Collection;I)Ljava/util/Collection;
    .locals 4

    .prologue
    .line 134
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/aa;

    .line 135
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/O;->e:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 138
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/O;->b:Lcom/google/ipc/invalidation/ticl/l;

    invoke-interface {v0, p1}, Lcom/google/ipc/invalidation/ticl/l;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 141
    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/O;->b:Lcom/google/ipc/invalidation/ticl/l;

    invoke-interface {v0, p1}, Lcom/google/ipc/invalidation/ticl/l;->b(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_1
.end method

.method final a(Ljava/util/List;)Ljava/util/List;
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 165
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/ah;

    .line 167
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ah;->a()Lcom/google/ipc/invalidation/ticl/a/ag;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/ipc/invalidation/ticl/a/ag;->a()Lcom/google/ipc/invalidation/ticl/a/aa;

    move-result-object v5

    .line 172
    iget-object v6, p0, Lcom/google/ipc/invalidation/ticl/O;->e:Ljava/util/Map;

    .line 1046
    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ah;->c()Lcom/google/ipc/invalidation/ticl/a/ap;

    move-result-object v6

    invoke-static {v6}, Landroid/support/customtabs/a;->isSuccess(Lcom/google/ipc/invalidation/ticl/a/ap;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 180
    iget-object v6, p0, Lcom/google/ipc/invalidation/ticl/O;->b:Lcom/google/ipc/invalidation/ticl/l;

    invoke-interface {v6, v5}, Lcom/google/ipc/invalidation/ticl/l;->a(Ljava/lang/Object;)Z

    move-result v6

    .line 181
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ah;->a()Lcom/google/ipc/invalidation/ticl/a/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ag;->c()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 183
    :goto_1
    xor-int v7, v0, v6

    .line 184
    if-eqz v7, :cond_3

    .line 187
    iget-object v7, p0, Lcom/google/ipc/invalidation/ticl/O;->b:Lcom/google/ipc/invalidation/ticl/l;

    invoke-interface {v7, v5}, Lcom/google/ipc/invalidation/ticl/l;->b(Ljava/lang/Object;)Z

    .line 188
    iget-object v7, p0, Lcom/google/ipc/invalidation/ticl/O;->c:Lcom/google/ipc/invalidation/ticl/aa;

    sget-object v8, Lcom/google/ipc/invalidation/ticl/ab;->h:Lcom/google/ipc/invalidation/ticl/ab;

    invoke-virtual {v7, v8}, Lcom/google/ipc/invalidation/ticl/aa;->a(Lcom/google/ipc/invalidation/ticl/ab;)V

    .line 189
    iget-object v7, p0, Lcom/google/ipc/invalidation/ticl/O;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v8, "Ticl discrepancy detected: registered = %s, requested = %s. Removing %s from requested"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v9, v1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v9, v2

    const/4 v0, 0x2

    aput-object v5, v9, v0

    invoke-interface {v7, v8, v9}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 200
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move v0, v1

    .line 181
    goto :goto_1

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/O;->b:Lcom/google/ipc/invalidation/ticl/l;

    invoke-interface {v0, v5}, Lcom/google/ipc/invalidation/ticl/l;->b(Ljava/lang/Object;)Z

    .line 197
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/O;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v6, "Removing %s from committed"

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v5, v7, v1

    invoke-interface {v0, v6, v7}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 198
    goto :goto_2

    .line 202
    :cond_2
    return-object v3

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method final a(Lcom/google/ipc/invalidation/ticl/a/ak;)Ljava/util/Set;
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 238
    if-eqz p1, :cond_0

    .line 239
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/O;->d:Lcom/google/ipc/invalidation/ticl/a/ak;

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/O;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 244
    new-instance v3, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/O;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 245
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/O;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 246
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ipc/invalidation/ticl/a/aa;

    .line 247
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    .line 1098
    :goto_1
    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    invoke-static {v1, v0}, Lcom/google/ipc/invalidation/ticl/a/ag;->a(Lcom/google/ipc/invalidation/ticl/a/aa;I)Lcom/google/ipc/invalidation/ticl/a/ag;

    move-result-object v0

    .line 248
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 247
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1098
    :cond_2
    const/4 v0, 0x2

    goto :goto_2

    .line 250
    :cond_3
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/O;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    move-object v0, v3

    .line 254
    :goto_3
    return-object v0

    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_3
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 4

    .prologue
    .line 268
    const-string/jumbo v0, "Last known digest: %s, Requested regs: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/O;->d:Lcom/google/ipc/invalidation/ticl/a/ak;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/O;->b:Lcom/google/ipc/invalidation/ticl/l;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/ipc/invalidation/b/r;

    .line 270
    return-void
.end method

.method final b()Lcom/google/ipc/invalidation/ticl/a/ak;
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/O;->b:Lcom/google/ipc/invalidation/ticl/l;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/ticl/l;->a()I

    move-result v0

    new-instance v1, Lcom/google/ipc/invalidation/b/c;

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/O;->b:Lcom/google/ipc/invalidation/ticl/l;

    invoke-interface {v2}, Lcom/google/ipc/invalidation/ticl/l;->b()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/ipc/invalidation/b/c;-><init>([B)V

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/ak;->a(ILcom/google/ipc/invalidation/b/c;)Lcom/google/ipc/invalidation/ticl/a/ak;

    move-result-object v0

    return-object v0
.end method

.method final c()Z
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/O;->d:Lcom/google/ipc/invalidation/ticl/a/ak;

    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/O;->b()Lcom/google/ipc/invalidation/ticl/a/ak;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final d()Lcom/google/ipc/invalidation/ticl/a/ax;
    .locals 5

    .prologue
    .line 274
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/O;->b:Lcom/google/ipc/invalidation/ticl/l;

    invoke-interface {v0}, Lcom/google/ipc/invalidation/ticl/l;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 276
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/O;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 278
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/O;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 279
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ipc/invalidation/ticl/a/aa;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/ipc/invalidation/ticl/a/ag;->a(Lcom/google/ipc/invalidation/ticl/a/aa;I)Lcom/google/ipc/invalidation/ticl/a/ag;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/O;->d:Lcom/google/ipc/invalidation/ticl/a/ak;

    invoke-static {v2, v0, v3}, Lcom/google/ipc/invalidation/ticl/a/ax;->a(Ljava/util/Collection;Lcom/google/ipc/invalidation/ticl/a/ak;Ljava/util/Collection;)Lcom/google/ipc/invalidation/ticl/a/ax;

    move-result-object v0

    return-object v0
.end method
