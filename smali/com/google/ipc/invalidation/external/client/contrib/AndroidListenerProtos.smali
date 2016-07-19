.class Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerProtos;
.super Ljava/lang/Object;
.source "AndroidListenerProtos.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method

.method static isValidAndroidListenerState(Lcom/google/ipc/invalidation/ticl/a/c;)Z
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isValidRegistrationCommand(Lcom/google/ipc/invalidation/ticl/a/f;)Z
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/f;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/f;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isValidStartCommand(Lcom/google/ipc/invalidation/ticl/a/g;)Z
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/g;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static newAndroidListenerState(Lcom/google/ipc/invalidation/b/c;ILjava/util/Map;Ljava/util/Collection;Ljava/util/Collection;)Lcom/google/ipc/invalidation/ticl/a/c;
    .locals 4

    .prologue
    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 61
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/ai;

    invoke-static {v1, v0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerProtos;->newRetryRegistrationState(Lcom/google/ipc/invalidation/external/client/types/ObjectId;Lcom/google/ipc/invalidation/ticl/ai;)Lcom/google/ipc/invalidation/ticl/a/d;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {p3}, Landroid/support/customtabs/a;->convertToObjectIdProtoCollection(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, p0, v1, p4}, Lcom/google/ipc/invalidation/ticl/a/c;->a(Ljava/util/Collection;Ljava/util/Collection;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Integer;Ljava/util/Collection;)Lcom/google/ipc/invalidation/ticl/a/c;

    move-result-object v0

    return-object v0
.end method

.method static newDelayedRegisterCommand(Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/external/client/types/ObjectId;)Lcom/google/ipc/invalidation/ticl/a/f;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerProtos;->newDelayedRegistrationCommand(Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/external/client/types/ObjectId;Z)Lcom/google/ipc/invalidation/ticl/a/f;

    move-result-object v0

    return-object v0
.end method

.method private static newDelayedRegistrationCommand(Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/external/client/types/ObjectId;Z)Lcom/google/ipc/invalidation/ticl/a/f;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    invoke-static {p1}, Landroid/support/customtabs/a;->convertToObjectIdProto(Lcom/google/ipc/invalidation/external/client/types/ObjectId;)Lcom/google/ipc/invalidation/ticl/a/aa;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v0, p0, v2}, Lcom/google/ipc/invalidation/ticl/a/f;->a(Ljava/lang/Boolean;Ljava/util/Collection;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Boolean;)Lcom/google/ipc/invalidation/ticl/a/f;

    move-result-object v0

    return-object v0
.end method

.method static newDelayedUnregisterCommand(Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/external/client/types/ObjectId;)Lcom/google/ipc/invalidation/ticl/a/f;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerProtos;->newDelayedRegistrationCommand(Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/external/client/types/ObjectId;Z)Lcom/google/ipc/invalidation/ticl/a/f;

    move-result-object v0

    return-object v0
.end method

.method static newRegistrationCommand(Lcom/google/ipc/invalidation/b/c;Ljava/lang/Iterable;Z)Lcom/google/ipc/invalidation/ticl/a/f;
    .locals 3

    .prologue
    .line 99
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Landroid/support/customtabs/a;->convertToObjectIdProtoCollection(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/google/ipc/invalidation/ticl/a/f;->a(Ljava/lang/Boolean;Ljava/util/Collection;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Boolean;)Lcom/google/ipc/invalidation/ticl/a/f;

    move-result-object v0

    return-object v0
.end method

.method static newRetryRegistrationState(Lcom/google/ipc/invalidation/external/client/types/ObjectId;Lcom/google/ipc/invalidation/ticl/ai;)Lcom/google/ipc/invalidation/ticl/a/d;
    .locals 2

    .prologue
    .line 72
    invoke-static {p0}, Landroid/support/customtabs/a;->convertToObjectIdProto(Lcom/google/ipc/invalidation/external/client/types/ObjectId;)Lcom/google/ipc/invalidation/ticl/a/aa;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/ai;->a()Lcom/google/ipc/invalidation/ticl/a/H;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/ticl/a/d;->a(Lcom/google/ipc/invalidation/ticl/a/aa;Lcom/google/ipc/invalidation/ticl/a/H;)Lcom/google/ipc/invalidation/ticl/a/d;

    move-result-object v0

    return-object v0
.end method

.method static newStartCommand(ILcom/google/ipc/invalidation/b/c;Z)Lcom/google/ipc/invalidation/ticl/a/g;
    .locals 2

    .prologue
    .line 94
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/google/ipc/invalidation/ticl/a/g;->a(Ljava/lang/Integer;Lcom/google/ipc/invalidation/b/c;Ljava/lang/Boolean;)Lcom/google/ipc/invalidation/ticl/a/g;

    move-result-object v0

    return-object v0
.end method
