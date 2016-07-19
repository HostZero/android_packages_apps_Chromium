.class public final Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;
.super Ljava/lang/Object;
.source "AndroidInternalScheduler.java"

# interfaces
.implements Lcom/google/ipc/invalidation/external/client/SystemResources$Scheduler;


# static fields
.field private static a:Z


# instance fields
.field private final b:Ljava/util/Map;

.field private final c:Ljava/util/TreeMap;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/ipc/invalidation/ticl/android2/a;

.field private f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->a:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/ipc/invalidation/ticl/android2/a;)V
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->b:Ljava/util/Map;

    .line 92
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->c:Ljava/util/TreeMap;

    .line 103
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->g:J

    .line 106
    invoke-static {p1}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->d:Landroid/content/Context;

    .line 107
    invoke-static {p2}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/android2/a;

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->e:Lcom/google/ipc/invalidation/ticl/android2/a;

    .line 108
    return-void
.end method

.method private c()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 138
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    invoke-static {v0}, Landroid/support/customtabs/a;->checkState(Z)V

    .line 139
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    .line 140
    invoke-static {}, Lcom/google/ipc/invalidation/ticl/android2/i;->a()Landroid/content/Intent;

    move-result-object v0

    .line 141
    iget-object v4, p0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->d:Landroid/content/Context;

    const-class v5, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler$AlarmReceiver;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 144
    iget-object v4, p0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->d:Landroid/content/Context;

    const/high16 v5, 0x8000000

    invoke-static {v4, v3, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 148
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->d:Landroid/content/Context;

    const-string/jumbo v5, "alarm"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 150
    const/4 v5, 0x1

    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_1
    return-void

    :cond_0
    move v0, v3

    .line 138
    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v4, "Unable to schedule delayed registration: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-interface {v1, v4, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method final a()V
    .locals 5

    .prologue
    .line 176
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->e:Lcom/google/ipc/invalidation/ticl/android2/a;

    invoke-virtual {v2}, Lcom/google/ipc/invalidation/ticl/android2/a;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    .line 178
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 2041
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 178
    check-cast v0, Ljava/lang/Runnable;

    .line 179
    if-nez v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v2, "No task registered for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->severe(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->c:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->c()V

    :cond_0
    throw v0

    .line 183
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 187
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->c()V

    .line 190
    :cond_3
    return-void
.end method

.method final a(JLjava/util/Collection;)V
    .locals 5

    .prologue
    .line 252
    iput-wide p1, p0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->g:J

    .line 255
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 258
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/C;

    .line 259
    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/C;->c()J

    move-result-wide v2

    .line 260
    iget-object v4, p0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->c:Ljava/util/TreeMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/C;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 262
    :cond_0
    return-void
.end method

.method final a(Lcom/google/ipc/invalidation/ticl/a/i;)V
    .locals 6

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/i;->a()Ljava/lang/String;

    move-result-object v1

    .line 1041
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 161
    check-cast v0, Ljava/lang/Runnable;

    .line 162
    if-nez v0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No task registered for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->g:J

    invoke-virtual {p1}, Lcom/google/ipc/invalidation/ticl/a/i;->c()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 166
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    const-string/jumbo v1, "Ignoring event with wrong ticl id (not %s): %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 170
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->a()V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 199
    if-eqz v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Cannot overwrite task registered on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; tasks = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_0
    return-void
.end method

.method final b()Ljava/util/Collection;
    .locals 6

    .prologue
    .line 266
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 267
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->c:Ljava/util/TreeMap;

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

    .line 268
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/google/ipc/invalidation/ticl/a/C;->a(Ljava/lang/String;J)Lcom/google/ipc/invalidation/ticl/a/C;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 270
    :cond_0
    return-object v2
.end method

.method public final getCurrentTimeMs()J
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->e:Lcom/google/ipc/invalidation/ticl/android2/a;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/android2/a;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final isRunningOnThread()Z
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method public final schedule(ILjava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 117
    instance-of v0, p2, Lcom/google/ipc/invalidation/b/m;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unsupported: can only schedule named runnables, not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    check-cast p2, Lcom/google/ipc/invalidation/b/m;

    invoke-virtual {p2}, Lcom/google/ipc/invalidation/b/m;->a()Ljava/lang/String;

    move-result-object v2

    .line 125
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->e:Lcom/google/ipc/invalidation/ticl/android2/a;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/android2/a;->a()J

    move-result-wide v0

    int-to-long v4, p1

    add-long/2addr v0, v4

    .line 126
    :goto_0
    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->c:Ljava/util/TreeMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_0

    .line 129
    :cond_1
    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->c:Ljava/util/TreeMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->c()V

    .line 131
    return-void
.end method

.method public final setSystemResources(Lcom/google/ipc/invalidation/external/client/SystemResources;)V
    .locals 1

    .prologue
    .line 112
    invoke-interface {p1}, Lcom/google/ipc/invalidation/external/client/SystemResources;->getLogger()Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    move-result-object v0

    invoke-static {v0}, Landroid/support/customtabs/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler;->f:Lcom/google/ipc/invalidation/external/client/SystemResources$Logger;

    .line 113
    return-void
.end method
