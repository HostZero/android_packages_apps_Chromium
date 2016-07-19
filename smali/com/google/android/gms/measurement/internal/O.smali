.class public final Lcom/google/android/gms/measurement/internal/O;
.super Lcom/google/android/gms/measurement/internal/ag;


# instance fields
.field private a:Lcom/google/android/gms/measurement/internal/R;

.field private b:Lcom/google/android/gms/measurement/internal/R;

.field private final c:Ljava/util/concurrent/BlockingQueue;

.field private final d:Ljava/util/concurrent/BlockingQueue;

.field private final e:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final f:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final g:Ljava/lang/Object;

.field private final h:Ljava/util/concurrent/Semaphore;

.field private volatile i:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/S;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/ag;-><init>(Lcom/google/android/gms/measurement/internal/S;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/O;->g:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/O;->h:Ljava/util/concurrent/Semaphore;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/O;->c:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/O;->d:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/google/android/gms/measurement/internal/Q;

    const-string/jumbo v1, "Thread death: Uncaught exception on worker thread"

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/Q;-><init>(Lcom/google/android/gms/measurement/internal/O;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/O;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    new-instance v0, Lcom/google/android/gms/measurement/internal/Q;

    const-string/jumbo v1, "Thread death: Uncaught exception on network thread"

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/Q;-><init>(Lcom/google/android/gms/measurement/internal/O;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/O;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/O;)Ljava/util/concurrent/Semaphore;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/O;->h:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method private a(Ljava/util/concurrent/FutureTask;)V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/O;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/O;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/O;->a:Lcom/google/android/gms/measurement/internal/R;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/measurement/internal/R;

    const-string/jumbo v2, "Measurement Worker"

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/O;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v0, p0, v2, v3}, Lcom/google/android/gms/measurement/internal/R;-><init>(Lcom/google/android/gms/measurement/internal/O;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/O;->a:Lcom/google/android/gms/measurement/internal/R;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/O;->a:Lcom/google/android/gms/measurement/internal/R;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/O;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/R;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/O;->a:Lcom/google/android/gms/measurement/internal/R;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/R;->start()V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/O;->a:Lcom/google/android/gms/measurement/internal/R;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/R;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/google/android/gms/measurement/internal/O;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/O;->i:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/measurement/internal/O;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/O;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/measurement/internal/O;)Lcom/google/android/gms/measurement/internal/R;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/O;->a:Lcom/google/android/gms/measurement/internal/R;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/measurement/internal/O;)Lcom/google/android/gms/measurement/internal/R;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/O;->a:Lcom/google/android/gms/measurement/internal/R;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/measurement/internal/O;)Lcom/google/android/gms/measurement/internal/R;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/O;->b:Lcom/google/android/gms/measurement/internal/R;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/measurement/internal/O;)Lcom/google/android/gms/measurement/internal/R;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/O;->b:Lcom/google/android/gms/measurement/internal/R;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/O;->E()V

    invoke-static {p1}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/measurement/internal/P;

    const-string/jumbo v1, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/measurement/internal/P;-><init>(Lcom/google/android/gms/measurement/internal/O;Ljava/util/concurrent/Callable;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/O;->a:Lcom/google/android/gms/measurement/internal/R;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/O;->a(Ljava/util/concurrent/FutureTask;)V

    goto :goto_0
.end method

.method public final bridge synthetic a()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->a()V

    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/O;->E()V

    invoke-static {p1}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/measurement/internal/P;

    const-string/jumbo v1, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/measurement/internal/P;-><init>(Lcom/google/android/gms/measurement/internal/O;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/O;->a(Ljava/util/concurrent/FutureTask;)V

    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/O;->b:Lcom/google/android/gms/measurement/internal/R;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Call expected from network thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Runnable;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/O;->E()V

    invoke-static {p1}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/measurement/internal/P;

    const-string/jumbo v1, "Task exception on network thread"

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/measurement/internal/P;-><init>(Lcom/google/android/gms/measurement/internal/O;Ljava/lang/Runnable;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/O;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/O;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/O;->b:Lcom/google/android/gms/measurement/internal/R;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/measurement/internal/R;

    const-string/jumbo v2, "Measurement Network"

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/O;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v0, p0, v2, v3}, Lcom/google/android/gms/measurement/internal/R;-><init>(Lcom/google/android/gms/measurement/internal/O;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/O;->b:Lcom/google/android/gms/measurement/internal/R;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/O;->b:Lcom/google/android/gms/measurement/internal/R;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/O;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/R;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/O;->b:Lcom/google/android/gms/measurement/internal/R;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/R;->start()V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/O;->b:Lcom/google/android/gms/measurement/internal/R;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/R;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/O;->a:Lcom/google/android/gms/measurement/internal/R;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Call expected from worker thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public final bridge synthetic d()Lcom/google/android/gms/measurement/internal/e;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->d()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic e()Lcom/google/android/gms/measurement/internal/aj;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->e()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()Lcom/google/android/gms/measurement/internal/w;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->f()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Lcom/google/android/gms/measurement/internal/m;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->g()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h()Lcom/google/android/gms/measurement/internal/an;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->h()Lcom/google/android/gms/measurement/internal/an;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic i()Lcom/google/android/gms/b/a;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->i()Lcom/google/android/gms/b/a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->j()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic k()Lcom/google/android/gms/measurement/internal/g;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->k()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic l()Lcom/google/android/gms/measurement/internal/c;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->l()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m()Lcom/google/android/gms/measurement/internal/M;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->m()Lcom/google/android/gms/measurement/internal/M;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic n()Lcom/google/android/gms/measurement/internal/ay;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->n()Lcom/google/android/gms/measurement/internal/ay;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic o()Lcom/google/android/gms/measurement/internal/O;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->o()Lcom/google/android/gms/measurement/internal/O;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic p()Lcom/google/android/gms/measurement/internal/y;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/measurement/internal/I;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->q()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lcom/google/android/gms/measurement/internal/f;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->r()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    return-object v0
.end method

.method protected final s()V
    .locals 0

    return-void
.end method
