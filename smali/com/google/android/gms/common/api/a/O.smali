.class public final Lcom/google/android/gms/common/api/a/O;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/a/b;


# instance fields
.field final a:Ljava/util/Map;

.field final b:Ljava/util/Map;

.field c:I

.field final d:Lcom/google/android/gms/common/api/a/F;

.field final e:Lcom/google/android/gms/common/api/a/c;

.field private final f:Ljava/util/concurrent/locks/Lock;

.field private final g:Ljava/util/concurrent/locks/Condition;

.field private final h:Landroid/content/Context;

.field private final i:Lcom/google/android/gms/common/j;

.field private final j:Lcom/google/android/gms/common/api/a/Q;

.field private k:Lcom/google/android/gms/common/internal/G;

.field private l:Ljava/util/Map;

.field private m:Lcom/google/android/gms/common/api/d;

.field private volatile n:Lcom/google/android/gms/common/api/a/N;

.field private o:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a/F;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/j;Ljava/util/Map;Lcom/google/android/gms/common/internal/G;Ljava/util/Map;Lcom/google/android/gms/common/api/d;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/a/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a/O;->b:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/a/O;->o:Lcom/google/android/gms/common/ConnectionResult;

    iput-object p1, p0, Lcom/google/android/gms/common/api/a/O;->h:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/common/api/a/O;->f:Ljava/util/concurrent/locks/Lock;

    iput-object p5, p0, Lcom/google/android/gms/common/api/a/O;->i:Lcom/google/android/gms/common/j;

    iput-object p6, p0, Lcom/google/android/gms/common/api/a/O;->a:Ljava/util/Map;

    iput-object p7, p0, Lcom/google/android/gms/common/api/a/O;->k:Lcom/google/android/gms/common/internal/G;

    iput-object p8, p0, Lcom/google/android/gms/common/api/a/O;->l:Ljava/util/Map;

    iput-object p9, p0, Lcom/google/android/gms/common/api/a/O;->m:Lcom/google/android/gms/common/api/d;

    iput-object p2, p0, Lcom/google/android/gms/common/api/a/O;->d:Lcom/google/android/gms/common/api/a/F;

    iput-object p11, p0, Lcom/google/android/gms/common/api/a/O;->e:Lcom/google/android/gms/common/api/a/c;

    invoke-virtual {p10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a/o;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/a/o;->a(Lcom/google/android/gms/common/api/a/O;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/a/Q;

    invoke-direct {v0, p0, p4}, Lcom/google/android/gms/common/api/a/Q;-><init>(Lcom/google/android/gms/common/api/a/O;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a/O;->j:Lcom/google/android/gms/common/api/a/Q;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/a/O;->g:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Lcom/google/android/gms/common/api/a/E;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/a/E;-><init>(Lcom/google/android/gms/common/api/a/O;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a/O;->n:Lcom/google/android/gms/common/api/a/N;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/a/O;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/O;->f:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/a/O;)Lcom/google/android/gms/common/api/a/N;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/O;->n:Lcom/google/android/gms/common/api/a/N;

    return-object v0
.end method


# virtual methods
.method public final a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a/O;->a()V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a/O;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a/O;->b()Z

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    :goto_1
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/common/api/a/O;->g:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xf

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a/O;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->a:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/O;->o:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/O;->o:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xd

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/common/api/a/k;)Lcom/google/android/gms/common/api/a/k;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/O;->n:Lcom/google/android/gms/common/api/a/N;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/a/N;->a(Lcom/google/android/gms/common/api/a/k;)Lcom/google/android/gms/common/api/a/k;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/O;->n:Lcom/google/android/gms/common/api/a/N;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a/N;->c()V

    return-void
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/O;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/O;->n:Lcom/google/android/gms/common/api/a/N;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/a/N;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/O;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/O;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/O;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/O;->n:Lcom/google/android/gms/common/api/a/N;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/a/N;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/O;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/O;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/O;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/common/api/a/O;->o:Lcom/google/android/gms/common/ConnectionResult;

    new-instance v0, Lcom/google/android/gms/common/api/a/E;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/a/E;-><init>(Lcom/google/android/gms/common/api/a/O;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a/O;->n:Lcom/google/android/gms/common/api/a/N;

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/O;->n:Lcom/google/android/gms/common/api/a/N;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a/N;->a()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/O;->g:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/O;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/O;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/O;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/O;->n:Lcom/google/android/gms/common/api/a/N;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/common/api/a/N;->a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/O;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/O;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method final a(Lcom/google/android/gms/common/api/a/P;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/O;->j:Lcom/google/android/gms/common/api/a/Q;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/common/api/a/Q;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/O;->j:Lcom/google/android/gms/common/api/a/Q;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/a/Q;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method final a(Ljava/lang/RuntimeException;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/O;->j:Lcom/google/android/gms/common/api/a/Q;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/common/api/a/Q;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/O;->j:Lcom/google/android/gms/common/api/a/Q;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/a/Q;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/O;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/common/api/a/O;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->b()Lcom/google/android/gms/common/api/f;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/e;

    invoke-interface {v0, v1, p3}, Lcom/google/android/gms/common/api/e;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/O;->n:Lcom/google/android/gms/common/api/a/N;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a/N;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/O;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_0
    return v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/O;->n:Lcom/google/android/gms/common/api/a/N;

    instance-of v0, v0, Lcom/google/android/gms/common/api/a/r;

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/O;->n:Lcom/google/android/gms/common/api/a/N;

    instance-of v0, v0, Lcom/google/android/gms/common/api/a/u;

    return v0
.end method

.method final e()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/O;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/api/a/u;

    iget-object v2, p0, Lcom/google/android/gms/common/api/a/O;->k:Lcom/google/android/gms/common/internal/G;

    iget-object v3, p0, Lcom/google/android/gms/common/api/a/O;->l:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/gms/common/api/a/O;->i:Lcom/google/android/gms/common/j;

    iget-object v5, p0, Lcom/google/android/gms/common/api/a/O;->m:Lcom/google/android/gms/common/api/d;

    iget-object v6, p0, Lcom/google/android/gms/common/api/a/O;->f:Ljava/util/concurrent/locks/Lock;

    iget-object v7, p0, Lcom/google/android/gms/common/api/a/O;->h:Landroid/content/Context;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/api/a/u;-><init>(Lcom/google/android/gms/common/api/a/O;Lcom/google/android/gms/common/internal/G;Ljava/util/Map;Lcom/google/android/gms/common/j;Lcom/google/android/gms/common/api/d;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a/O;->n:Lcom/google/android/gms/common/api/a/N;

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/O;->n:Lcom/google/android/gms/common/api/a/N;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a/N;->a()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/O;->g:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/O;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/O;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method final f()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/O;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/O;->d:Lcom/google/android/gms/common/api/a/F;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a/F;->g()Z

    new-instance v0, Lcom/google/android/gms/common/api/a/r;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/a/r;-><init>(Lcom/google/android/gms/common/api/a/O;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a/O;->n:Lcom/google/android/gms/common/api/a/N;

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/O;->n:Lcom/google/android/gms/common/api/a/N;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a/N;->a()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/O;->g:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/O;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/O;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
