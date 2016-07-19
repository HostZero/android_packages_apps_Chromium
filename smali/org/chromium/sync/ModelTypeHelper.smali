.class public Lorg/chromium/sync/ModelTypeHelper;
.super Ljava/lang/Object;
.source "ModelTypeHelper.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field private static final NON_INVALIDATION_TYPES_ARRAY:[I

.field private static sDelegate:Lorg/chromium/sync/ModelTypeHelper$TestDelegate;

.field private static final sLock:Ljava/lang/Object;

.field private static sNonInvalidationTypes:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/sync/ModelTypeHelper;->sLock:Ljava/lang/Object;

    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x21

    aput v2, v0, v1

    sput-object v0, Lorg/chromium/sync/ModelTypeHelper;->NON_INVALIDATION_TYPES_ARRAY:[I

    .line 43
    sput-object v3, Lorg/chromium/sync/ModelTypeHelper;->sDelegate:Lorg/chromium/sync/ModelTypeHelper$TestDelegate;

    .line 48
    sput-object v3, Lorg/chromium/sync/ModelTypeHelper;->sNonInvalidationTypes:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method private static initNonInvalidationTypes()V
    .locals 4

    .prologue
    .line 54
    sget-object v1, Lorg/chromium/sync/ModelTypeHelper;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Lorg/chromium/sync/ModelTypeHelper;->sNonInvalidationTypes:Ljava/util/Set;

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 61
    :goto_0
    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/chromium/sync/ModelTypeHelper;->sNonInvalidationTypes:Ljava/util/Set;

    .line 58
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Lorg/chromium/sync/ModelTypeHelper;->NON_INVALIDATION_TYPES_ARRAY:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 59
    sget-object v2, Lorg/chromium/sync/ModelTypeHelper;->sNonInvalidationTypes:Ljava/util/Set;

    sget-object v3, Lorg/chromium/sync/ModelTypeHelper;->NON_INVALIDATION_TYPES_ARRAY:[I

    aget v3, v3, v0

    invoke-static {v3}, Lorg/chromium/sync/ModelTypeHelper;->toNotificationType(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 61
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static isInvalidationType(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lorg/chromium/sync/ModelTypeHelper;->initNonInvalidationTypes()V

    .line 69
    sget-object v0, Lorg/chromium/sync/ModelTypeHelper;->sNonInvalidationTypes:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native nativeModelTypeToNotificationType(I)Ljava/lang/String;
.end method

.method public static notificationTypesToObjectIds(Ljava/util/Collection;)Ljava/util/Set;
    .locals 4

    .prologue
    .line 116
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 117
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 118
    invoke-static {v0}, Lorg/chromium/sync/ModelTypeHelper;->isInvalidationType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    invoke-static {v0}, Lorg/chromium/sync/ModelTypeHelper;->toObjectId(Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_1
    return-object v1
.end method

.method public static setTestDelegate(Lorg/chromium/sync/ModelTypeHelper$TestDelegate;)V
    .locals 0

    .prologue
    .line 127
    sput-object p0, Lorg/chromium/sync/ModelTypeHelper;->sDelegate:Lorg/chromium/sync/ModelTypeHelper$TestDelegate;

    .line 128
    return-void
.end method

.method public static toNotificationType(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lorg/chromium/sync/ModelTypeHelper;->sDelegate:Lorg/chromium/sync/ModelTypeHelper$TestDelegate;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/sync/ModelTypeHelper;->sDelegate:Lorg/chromium/sync/ModelTypeHelper$TestDelegate;

    invoke-interface {v0, p0}, Lorg/chromium/sync/ModelTypeHelper$TestDelegate;->toNotificationType(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    .line 102
    :cond_0
    const/16 v0, 0x21

    if-ne p0, v0, :cond_1

    .line 103
    const-string/jumbo v0, "PROXY_TABS"

    goto :goto_0

    .line 105
    :cond_1
    invoke-static {p0}, Lorg/chromium/sync/ModelTypeHelper;->nativeModelTypeToNotificationType(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toObjectId(I)Lcom/google/ipc/invalidation/external/client/types/ObjectId;
    .locals 1

    .prologue
    .line 84
    invoke-static {p0}, Lorg/chromium/sync/ModelTypeHelper;->toNotificationType(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/sync/ModelTypeHelper;->toObjectId(Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    move-result-object v0

    return-object v0
.end method

.method private static toObjectId(Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/types/ObjectId;
    .locals 2

    .prologue
    .line 78
    invoke-static {p0}, Lorg/chromium/sync/ModelTypeHelper;->isInvalidationType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    const/16 v0, 0x3ec

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ipc/invalidation/external/client/types/ObjectId;->newInstance(I[B)Lcom/google/ipc/invalidation/external/client/types/ObjectId;

    move-result-object v0

    return-object v0

    .line 78
    :cond_0
    const-string/jumbo p0, "NULL"

    goto :goto_0
.end method
