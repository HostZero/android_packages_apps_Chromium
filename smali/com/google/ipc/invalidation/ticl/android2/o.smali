.class public final Lcom/google/ipc/invalidation/ticl/android2/o;
.super Ljava/lang/Object;
.source "WakeLockManager.java"


# static fields
.field private static final a:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

.field private static final b:Ljava/lang/Object;

.field private static c:Lcom/google/ipc/invalidation/ticl/android2/o;


# instance fields
.field private final d:Ljava/util/Map;

.field private final e:Landroid/os/PowerManager;

.field private final f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "WakeLockMgr"

    invoke-static {v0}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->forTag(Ljava/lang/String;)Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/google/ipc/invalidation/ticl/android2/o;->a:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/android2/o;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/o;->d:Ljava/util/Map;

    .line 63
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/o;->e:Landroid/os/PowerManager;

    .line 64
    invoke-static {p1}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/o;->f:Landroid/content/Context;

    .line 65
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/ipc/invalidation/ticl/android2/o;
    .locals 3

    .prologue
    .line 69
    invoke-static {p0}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v1, Lcom/google/ipc/invalidation/ticl/android2/o;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_0
    sget-object v0, Lcom/google/ipc/invalidation/ticl/android2/o;->c:Lcom/google/ipc/invalidation/ticl/android2/o;

    if-nez v0, :cond_1

    .line 73
    new-instance v0, Lcom/google/ipc/invalidation/ticl/android2/o;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/ipc/invalidation/ticl/android2/o;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/android2/o;->c:Lcom/google/ipc/invalidation/ticl/android2/o;

    .line 85
    :cond_0
    sget-object v0, Lcom/google/ipc/invalidation/ticl/android2/o;->c:Lcom/google/ipc/invalidation/ticl/android2/o;

    monitor-exit v1

    return-object v0

    .line 75
    :cond_1
    sget-object v0, Lcom/google/ipc/invalidation/ticl/android2/o;->c:Lcom/google/ipc/invalidation/ticl/android2/o;

    iget-object v0, v0, Lcom/google/ipc/invalidation/ticl/android2/o;->f:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Provided context "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "does not match stored context "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/google/ipc/invalidation/ticl/android2/o;->c:Lcom/google/ipc/invalidation/ticl/android2/o;

    iget-object v2, v2, Lcom/google/ipc/invalidation/ticl/android2/o;->f:Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a()V
    .locals 6

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/o;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 210
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 212
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    sget-object v1, Lcom/google/ipc/invalidation/ticl/android2/o;->a:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v3, "Found un-held wakelock \'%s\' -- timed-out?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-interface {v1, v3, v4}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 218
    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 222
    sget-object v0, Lcom/google/ipc/invalidation/ticl/android2/o;->a:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v1, "WakeLock %s for key: {%s}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    return-void
.end method

.method private b(Ljava/lang/Object;)Landroid/os/PowerManager$WakeLock;
    .locals 3

    .prologue
    .line 185
    if-nez p1, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Key can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/o;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    .line 189
    if-nez v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/o;->e:Landroid/os/PowerManager;

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/o;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 115
    sget-object v1, Lcom/google/ipc/invalidation/ticl/android2/o;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 116
    :try_start_0
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/android2/o;->a()V

    .line 117
    const-string/jumbo v0, "Key can not be null"

    invoke-static {p1, v0}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-direct {p0, p1}, Lcom/google/ipc/invalidation/ticl/android2/o;->b(Ljava/lang/Object;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    sget-object v0, Lcom/google/ipc/invalidation/ticl/android2/o;->a:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v2, "Over-release of wakelock: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :goto_0
    return-void

    .line 131
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    :goto_1
    :try_start_2
    const-string/jumbo v2, "released"

    invoke-static {p1, v2}, Lcom/google/ipc/invalidation/ticl/android2/o;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/o;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string/jumbo v0, "freed"

    invoke-static {p1, v0}, Lcom/google/ipc/invalidation/ticl/android2/o;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 132
    :catch_0
    move-exception v2

    .line 133
    :try_start_3
    sget-object v3, Lcom/google/ipc/invalidation/ticl/android2/o;->a:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v4, "Over-release of wakelock: %s, %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public final a(Ljava/lang/Object;I)V
    .locals 4

    .prologue
    .line 94
    sget-object v1, Lcom/google/ipc/invalidation/ticl/android2/o;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/android2/o;->a()V

    .line 96
    const-string/jumbo v0, "Key can not be null"

    invoke-static {p1, v0}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "acquiring with timeout "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x7530

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/ipc/invalidation/ticl/android2/o;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0, p1}, Lcom/google/ipc/invalidation/ticl/android2/o;->b(Ljava/lang/Object;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 108
    :goto_0
    monitor-exit v1

    return-void

    .line 105
    :cond_0
    const-string/jumbo v0, "acquiring"

    invoke-static {p1, v0}, Lcom/google/ipc/invalidation/ticl/android2/o;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0, p1}, Lcom/google/ipc/invalidation/ticl/android2/o;->b(Ljava/lang/Object;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
