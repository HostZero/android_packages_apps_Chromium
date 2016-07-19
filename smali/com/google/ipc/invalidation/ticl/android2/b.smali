.class final Lcom/google/ipc/invalidation/ticl/android2/b;
.super Lcom/google/ipc/invalidation/ticl/m;
.source "AndroidInvalidationClientImpl.java"


# static fields
.field static d:Ljava/lang/Class;


# instance fields
.field private final e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/google/ipc/invalidation/ticl/android2/b;->d:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/ipc/invalidation/external/client/SystemResources;Ljava/util/Random;I[BLcom/google/ipc/invalidation/ticl/a/N;)V
    .locals 8

    .prologue
    .line 190
    .line 1217
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 190
    new-instance v7, Lcom/google/ipc/invalidation/ticl/android2/c;

    invoke-interface {p2}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v0

    invoke-direct {v7, p1, v0}, Lcom/google/ipc/invalidation/ticl/android2/c;-><init>(Landroid/content/Context;Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/ipc/invalidation/ticl/m;-><init>(Lcom/google/ipc/invalidation/external/client/SystemResources;Ljava/util/Random;I[BLcom/google/ipc/invalidation/ticl/a/N;Ljava/lang/String;Lcom/google/ipc/invalidation/external/client/InvalidationListener;)V

    .line 192
    invoke-interface {p2}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getInternalScheduler()Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;->getCurrentTimeMs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/android2/b;->e:J

    .line 193
    invoke-interface {p2}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v0

    const-string/jumbo v1, "Create new Ticl scheduling id: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/google/ipc/invalidation/ticl/android2/b;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/android2/b;->k()V

    .line 195
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/ipc/invalidation/external/client/SystemResources;Ljava/util/Random;Lcom/google/ipc/invalidation/ticl/a/j;)V
    .locals 9

    .prologue
    .line 203
    invoke-virtual {p4}, Lcom/google/ipc/invalidation/ticl/a/j;->c()Lcom/google/ipc/invalidation/ticl/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/k;->a()I

    move-result v3

    invoke-virtual {p4}, Lcom/google/ipc/invalidation/ticl/a/j;->c()Lcom/google/ipc/invalidation/ticl/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/k;->c()Lcom/google/ipc/invalidation/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/b/c;->b()[B

    move-result-object v4

    invoke-virtual {p4}, Lcom/google/ipc/invalidation/ticl/a/j;->c()Lcom/google/ipc/invalidation/ticl/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/k;->e()Lcom/google/ipc/invalidation/ticl/a/N;

    move-result-object v5

    .line 2217
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 203
    invoke-virtual {p4}, Lcom/google/ipc/invalidation/ticl/a/j;->a()Lcom/google/ipc/invalidation/ticl/a/at;

    move-result-object v7

    new-instance v8, Lcom/google/ipc/invalidation/ticl/android2/c;

    invoke-interface {p2}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v0

    invoke-direct {v8, p1, v0}, Lcom/google/ipc/invalidation/ticl/android2/c;-><init>(Landroid/content/Context;Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/ipc/invalidation/ticl/m;-><init>(Lcom/google/ipc/invalidation/external/client/SystemResources;Ljava/util/Random;I[BLcom/google/ipc/invalidation/ticl/a/N;Ljava/lang/String;Lcom/google/ipc/invalidation/ticl/a/at;Lcom/google/ipc/invalidation/external/client/InvalidationListener;)V

    .line 211
    invoke-virtual {p4}, Lcom/google/ipc/invalidation/ticl/a/j;->c()Lcom/google/ipc/invalidation/ticl/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/k;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/android2/b;->e:J

    .line 212
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/android2/b;->k()V

    .line 213
    return-void
.end method

.method private k()V
    .locals 4

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/android2/b;->d()Lcom/google/ipc/invalidation/external/client/SystemResources;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getInternalScheduler()Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v0

    instance-of v0, v0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Scheduler must be an AndroidInternalScheduler, not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/android2/b;->d()Lcom/google/ipc/invalidation/external/client/SystemResources;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getInternalScheduler()Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/android2/b;->d()Lcom/google/ipc/invalidation/external/client/SystemResources;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getInternalScheduler()Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;

    .line 231
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/android2/b;->h()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 232
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 234
    :cond_1
    return-void
.end method


# virtual methods
.method protected final b()Lcom/google/ipc/invalidation/ticl/a/N;
    .locals 1

    .prologue
    .line 252
    invoke-super {p0}, Lcom/google/ipc/invalidation/ticl/m;->b()Lcom/google/ipc/invalidation/ticl/a/N;

    move-result-object v0

    return-object v0
.end method

.method protected final c()Lcom/google/ipc/invalidation/ticl/a/M;
    .locals 1

    .prologue
    .line 246
    invoke-super {p0}, Lcom/google/ipc/invalidation/ticl/m;->c()Lcom/google/ipc/invalidation/ticl/a/M;

    move-result-object v0

    return-object v0
.end method

.method final j()J
    .locals 2

    .prologue
    .line 238
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/android2/b;->e:J

    return-wide v0
.end method
