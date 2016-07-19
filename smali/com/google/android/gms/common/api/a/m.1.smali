.class public abstract Lcom/google/android/gms/common/api/a/m;
.super Lcom/google/android/gms/common/api/l;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/gms/common/api/a/n;

.field private final c:Ljava/lang/ref/WeakReference;

.field private final d:Ljava/util/concurrent/CountDownLatch;

.field private final e:Ljava/util/ArrayList;

.field private f:Lcom/google/android/gms/common/api/m;

.field private volatile g:Lcom/google/android/gms/common/api/o;

.field private volatile h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private volatile l:Lcom/google/android/gms/common/api/a/g;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/g;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/api/l;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a/m;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a/m;->d:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a/m;->e:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/g;->a()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/google/android/gms/common/api/a/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/api/a/n;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/a/m;->b:Lcom/google/android/gms/common/api/a/n;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a/m;->c:Ljava/lang/ref/WeakReference;

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Lcom/google/android/gms/common/api/o;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/gms/common/api/a/m;->g:Lcom/google/android/gms/common/api/o;

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/m;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/m;->g:Lcom/google/android/gms/common/api/o;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/o;->d()Lcom/google/android/gms/common/api/Status;

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/m;->f:Lcom/google/android/gms/common/api/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/m;->b:Lcom/google/android/gms/common/api/a/n;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/a/n;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a/m;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/m;->b:Lcom/google/android/gms/common/api/a/n;

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/m;->f:Lcom/google/android/gms/common/api/m;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a/m;->i()Lcom/google/android/gms/common/api/o;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/a/n;->a(Lcom/google/android/gms/common/api/m;Lcom/google/android/gms/common/api/o;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private h()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/m;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a/m;->i:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private i()Lcom/google/android/gms/common/api/o;
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/m;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/common/api/a/m;->h:Z

    if-nez v2, :cond_0

    :goto_0
    const-string/jumbo v2, "Result has already been consumed."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/api/a/j;->a(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a/m;->e()Z

    move-result v0

    const-string/jumbo v2, "Result is not ready."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/api/a/j;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/m;->g:Lcom/google/android/gms/common/api/o;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/common/api/a/m;->g:Lcom/google/android/gms/common/api/o;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/common/api/a/m;->f:Lcom/google/android/gms/common/api/m;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/common/api/a/m;->h:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a/m;->d()V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/o;
.end method

.method public final a()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/m;)V
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/a/m;->h:Z

    if-nez v1, :cond_0

    :goto_0
    const-string/jumbo v1, "Result has already been consumed."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/a/j;->a(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/m;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/m;->l:Lcom/google/android/gms/common/api/a/g;

    const/4 v0, 0x1

    const-string/jumbo v2, "Cannot set callbacks if then() has been called."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/api/a/j;->a(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a/m;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a/m;->k:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/m;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/g;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/google/android/gms/common/api/a/g;

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a/m;->f()V

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a/m;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/m;->b:Lcom/google/android/gms/common/api/a/n;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a/m;->i()Lcom/google/android/gms/common/api/o;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/common/api/a/n;->a(Lcom/google/android/gms/common/api/m;Lcom/google/android/gms/common/api/o;)V

    :goto_2
    monitor-exit v1

    goto :goto_1

    :cond_4
    iput-object p1, p0, Lcom/google/android/gms/common/api/a/m;->f:Lcom/google/android/gms/common/api/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public final a(Lcom/google/android/gms/common/api/o;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/gms/common/api/a/m;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/common/api/a/m;->j:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/a/m;->i:Z

    if-eqz v2, :cond_1

    :cond_0
    monitor-exit v3

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a/m;->e()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    :goto_1
    const-string/jumbo v4, "Results have already been set"

    invoke-static {v2, v4}, Lcom/google/android/gms/common/api/a/j;->a(ZLjava/lang/Object;)V

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/a/m;->h:Z

    if-nez v2, :cond_3

    :goto_2
    const-string/jumbo v1, "Result has already been consumed"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/a/j;->a(ZLjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/a/m;->b(Lcom/google/android/gms/common/api/o;)V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method public final d(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/m;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a/m;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/a/m;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a/m;->a(Lcom/google/android/gms/common/api/o;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/a/m;->j:Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final e()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/m;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/m;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a/m;->i:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a/m;->h:Z

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/m;->g:Lcom/google/android/gms/common/api/o;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/a/m;->f:Lcom/google/android/gms/common/api/m;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/a/m;->i:Z

    sget-object v0, Lcom/google/android/gms/common/api/Status;->d:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a/m;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a/m;->b(Lcom/google/android/gms/common/api/o;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final g()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/m;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/m;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/g;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a/m;->f()V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/m;->f:Lcom/google/android/gms/common/api/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/m;->f:Lcom/google/android/gms/common/api/m;

    instance-of v0, v0, Lcom/google/android/gms/common/api/a/g;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/a/m;->k:Z

    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a/m;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
