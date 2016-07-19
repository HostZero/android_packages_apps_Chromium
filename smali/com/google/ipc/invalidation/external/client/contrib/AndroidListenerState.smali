.class final Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;
.super Ljava/lang/Object;
.source "AndroidListenerState.java"


# instance fields
.field private final clientId:Lcom/google/ipc/invalidation/b/c;

.field private final delayGenerators:Ljava/util/Map;

.field private final desiredRegistrations:Ljava/util/Set;

.field private final initialMaxDelayMs:I

.field private isDirty:Z

.field private final maxDelayFactor:I

.field private final random:Ljava/util/Random;

.field private final registrationRetries:Ljava/util/TreeMap;

.field private requestCodeSeqNum:I


# direct methods
.method constructor <init>(II)V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->delayGenerators:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->registrationRetries:Ljava/util/TreeMap;

    .line 81
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->random:Ljava/util/Random;

    .line 106
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->desiredRegistrations:Ljava/util/Set;

    .line 107
    invoke-static {}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->createGloballyUniqueClientId()Lcom/google/ipc/invalidation/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->clientId:Lcom/google/ipc/invalidation/b/c;

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->isDirty:Z

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->requestCodeSeqNum:I

    .line 112
    iput p1, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->initialMaxDelayMs:I

    .line 113
    iput p2, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->maxDelayFactor:I

    .line 114
    return-void
.end method

.method constructor <init>(IILcom/google/ipc/invalidation/ticl/a/c;)V
    .locals 6

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->delayGenerators:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->registrationRetries:Ljava/util/TreeMap;

    .line 81
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->random:Ljava/util/Random;

    .line 119
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->desiredRegistrations:Ljava/util/Set;

    .line 120
    invoke-virtual {p3}, Lcom/google/ipc/invalidation/ticl/a/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/aa;

    .line 121
    iget-object v2, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->desiredRegistrations:Ljava/util/Set;

    invoke-static {v0}, Landroid/support/customtabs/a;->convertFromObjectIdProto(Lcom/google/ipc/invalidation/ticl/a/aa;)Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p3}, Lcom/google/ipc/invalidation/ticl/a/c;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/d;

    .line 124
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/d;->a()Lcom/google/ipc/invalidation/ticl/a/aa;

    move-result-object v2

    .line 125
    if-eqz v2, :cond_1

    .line 128
    invoke-static {v2}, Landroid/support/customtabs/a;->convertFromObjectIdProto(Lcom/google/ipc/invalidation/ticl/a/aa;)Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    move-result-object v2

    .line 129
    iget-object v3, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->delayGenerators:Ljava/util/Map;

    new-instance v4, Lcom/google/ipc/invalidation/ticl/ai;

    iget-object v5, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->random:Ljava/util/Random;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/d;->c()Lcom/google/ipc/invalidation/ticl/a/H;

    move-result-object v0

    invoke-direct {v4, v5, p1, p2, v0}, Lcom/google/ipc/invalidation/ticl/ai;-><init>(Ljava/util/Random;IILcom/google/ipc/invalidation/ticl/a/H;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 132
    :cond_2
    invoke-virtual {p3}, Lcom/google/ipc/invalidation/ticl/a/c;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/e;

    .line 133
    iget-object v2, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->registrationRetries:Ljava/util/TreeMap;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/e;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/e;->a()Lcom/google/ipc/invalidation/ticl/a/f;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 135
    :cond_3
    invoke-virtual {p3}, Lcom/google/ipc/invalidation/ticl/a/c;->d()Lcom/google/ipc/invalidation/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->clientId:Lcom/google/ipc/invalidation/b/c;

    .line 136
    invoke-virtual {p3}, Lcom/google/ipc/invalidation/ticl/a/c;->f()I

    move-result v0

    iput v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->requestCodeSeqNum:I

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->isDirty:Z

    .line 138
    iput p1, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->initialMaxDelayMs:I

    .line 139
    iput p2, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->maxDelayFactor:I

    .line 140
    return-void
.end method

.method private static createGloballyUniqueClientId()Lcom/google/ipc/invalidation/b/c;
    .locals 6

    .prologue
    .line 369
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 370
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 371
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 372
    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 373
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 374
    new-instance v0, Lcom/google/ipc/invalidation/b/c;

    invoke-direct {v0, v1}, Lcom/google/ipc/invalidation/b/c;-><init>([B)V

    return-object v0
.end method

.method private static equals(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 328
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    move v0, v2

    .line 338
    :goto_0
    return v0

    .line 331
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 332
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ipc/invalidation/ticl/ai;

    .line 333
    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/ai;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/ai;->a()Lcom/google/ipc/invalidation/ticl/a/H;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/ai;->a()Lcom/google/ipc/invalidation/ticl/a/H;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/customtabs/a;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    move v0, v2

    .line 335
    goto :goto_0

    .line 338
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static equals(Ljava/util/TreeMap;Ljava/util/TreeMap;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 344
    invoke-virtual {p0}, Ljava/util/TreeMap;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    move v0, v2

    .line 354
    :goto_0
    return v0

    .line 347
    :cond_0
    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 348
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ipc/invalidation/ticl/a/f;

    .line 349
    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/f;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/f;->i()[B

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/f;->i()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/b/c;->a([B[B)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    move v0, v2

    .line 351
    goto :goto_0

    .line 354
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetDelayGeneratorFor(Lcom/google/ipc/invalidation/external/client/types/ObjectId;)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->delayGenerators:Ljava/util/Map;

    .line 1046
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_0

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->isDirty:Z

    .line 196
    :cond_0
    return-void
.end method


# virtual methods
.method final addDesiredRegistration(Lcom/google/ipc/invalidation/external/client/types/ObjectId;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 200
    iget-object v1, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->desiredRegistrations:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    iput-boolean v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->isDirty:Z

    .line 204
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final addScheduledRegistrationRetry(Lcom/google/ipc/invalidation/external/client/types/ObjectId;ZJ)V
    .locals 5

    .prologue
    .line 273
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->clientId:Lcom/google/ipc/invalidation/b/c;

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerProtos;->newDelayedRegisterCommand(Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/external/client/types/ObjectId;)Lcom/google/ipc/invalidation/ticl/a/f;

    move-result-object v0

    .line 279
    :goto_0
    iget-object v1, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->registrationRetries:Ljava/util/TreeMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    const-wide/16 v2, 0x1

    add-long/2addr p3, v2

    goto :goto_0

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->clientId:Lcom/google/ipc/invalidation/b/c;

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerProtos;->newDelayedUnregisterCommand(Lcom/google/ipc/invalidation/b/c;Lcom/google/ipc/invalidation/external/client/types/ObjectId;)Lcom/google/ipc/invalidation/ticl/a/f;

    move-result-object v0

    goto :goto_0

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->registrationRetries:Ljava/util/TreeMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->isDirty:Z

    .line 284
    return-void
.end method

.method final containsDesiredRegistration(Lcom/google/ipc/invalidation/external/client/types/ObjectId;)Z
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->desiredRegistrations:Ljava/util/Set;

    .line 1051
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 244
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 306
    if-ne p0, p1, :cond_1

    .line 316
    :cond_0
    :goto_0
    return v0

    .line 310
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;

    if-nez v2, :cond_2

    move v0, v1

    .line 311
    goto :goto_0

    .line 314
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;

    .line 316
    iget-boolean v2, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->isDirty:Z

    iget-boolean v3, p1, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->isDirty:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->requestCodeSeqNum:I

    iget v3, p1, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->requestCodeSeqNum:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->desiredRegistrations:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    iget-object v3, p1, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->desiredRegistrations:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->desiredRegistrations:Ljava/util/Set;

    iget-object v3, p1, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->desiredRegistrations:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->clientId:Lcom/google/ipc/invalidation/b/c;

    iget-object v3, p1, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->clientId:Lcom/google/ipc/invalidation/b/c;

    invoke-static {v2, v3}, Landroid/support/customtabs/a;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->delayGenerators:Ljava/util/Map;

    iget-object v3, p1, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->delayGenerators:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->equals(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->registrationRetries:Ljava/util/TreeMap;

    iget-object v3, p1, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->registrationRetries:Ljava/util/TreeMap;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->equals(Ljava/util/TreeMap;Ljava/util/TreeMap;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method final getClientId()Lcom/google/ipc/invalidation/b/c;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->clientId:Lcom/google/ipc/invalidation/b/c;

    return-object v0
.end method

.method final getIsDirty()Z
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->isDirty:Z

    return v0
.end method

.method final getNextDelay(Lcom/google/ipc/invalidation/external/client/types/ObjectId;)I
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->delayGenerators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/ai;

    .line 156
    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/google/ipc/invalidation/ticl/ai;

    iget-object v1, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->random:Ljava/util/Random;

    iget v2, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->initialMaxDelayMs:I

    iget v3, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->maxDelayFactor:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ipc/invalidation/ticl/ai;-><init>(Ljava/util/Random;II)V

    .line 159
    iget-object v1, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->delayGenerators:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->isDirty:Z

    .line 163
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/ai;->c()I

    move-result v0

    return v0
.end method

.method final getNextExecuteMs()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->registrationRetries:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->registrationRetries:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_0
.end method

.method final getNextRequestCode()I
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->isDirty:Z

    .line 145
    iget v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->requestCodeSeqNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->requestCodeSeqNum:I

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->clientId:Lcom/google/ipc/invalidation/b/c;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/c;->hashCode()I

    move-result v0

    return v0
.end method

.method public final informRegistrationFailure(Lcom/google/ipc/invalidation/external/client/types/ObjectId;Z)V
    .locals 0

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->removeDesiredRegistration(Lcom/google/ipc/invalidation/external/client/types/ObjectId;)Z

    .line 183
    if-nez p2, :cond_0

    .line 185
    invoke-direct {p0, p1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->resetDelayGeneratorFor(Lcom/google/ipc/invalidation/external/client/types/ObjectId;)V

    .line 187
    :cond_0
    return-void
.end method

.method final informRegistrationSuccess(Lcom/google/ipc/invalidation/external/client/types/ObjectId;)V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->resetDelayGeneratorFor(Lcom/google/ipc/invalidation/external/client/types/ObjectId;)V

    .line 171
    return-void
.end method

.method public final marshal()Lcom/google/ipc/invalidation/ticl/a/c;
    .locals 5

    .prologue
    .line 225
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->registrationRetries:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 227
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->registrationRetries:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

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

    .line 228
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ipc/invalidation/ticl/a/f;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v1, v0}, Lcom/google/ipc/invalidation/ticl/a/e;->a(Lcom/google/ipc/invalidation/ticl/a/f;Ljava/lang/Long;)Lcom/google/ipc/invalidation/ticl/a/e;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->clientId:Lcom/google/ipc/invalidation/b/c;

    iget v1, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->requestCodeSeqNum:I

    iget-object v3, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->delayGenerators:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->desiredRegistrations:Ljava/util/Set;

    invoke-static {v0, v1, v3, v4, v2}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerProtos;->newAndroidListenerState(Lcom/google/ipc/invalidation/b/c;ILjava/util/Map;Ljava/util/Collection;Ljava/util/Collection;)Lcom/google/ipc/invalidation/ticl/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic marshal()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->marshal()Lcom/google/ipc/invalidation/ticl/a/c;

    move-result-object v0

    return-object v0
.end method

.method final removeDesiredRegistration(Lcom/google/ipc/invalidation/external/client/types/ObjectId;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 209
    iget-object v1, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->desiredRegistrations:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    iput-boolean v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->isDirty:Z

    .line 213
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final resetIsDirty()V
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->isDirty:Z

    .line 221
    return-void
.end method

.method final takeRegistrationRetriesUpTo(J)Ljava/util/List;
    .locals 5

    .prologue
    .line 253
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->registrationRetries:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->registrationRetries:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-gtz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->registrationRetries:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->isDirty:Z

    goto :goto_0

    .line 258
    :cond_0
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 359
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v1, "AndroidListenerState[%s]: isDirty = %b, desiredRegistrations.size() = %d, delayGenerators.size() = %d, requestCodeSeqNum = %d"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->clientId:Lcom/google/ipc/invalidation/b/c;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->isDirty:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->desiredRegistrations:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->delayGenerators:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/google/ipc/invalidation/external/client/contrib/AndroidListenerState;->requestCodeSeqNum:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
