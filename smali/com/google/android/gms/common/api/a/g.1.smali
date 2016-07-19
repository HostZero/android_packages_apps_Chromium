.class public final Lcom/google/android/gms/common/api/a/g;
.super Landroid/support/v4/app/N;

# interfaces
.implements Lcom/google/android/gms/common/api/m;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/gms/common/api/Status;

.field private final c:Ljava/lang/ref/WeakReference;


# direct methods
.method private a(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/common/api/a/g;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/common/api/a/g;->b:Lcom/google/android/gms/common/api/Status;

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/g;->b:Lcom/google/android/gms/common/api/Status;

    .line 1000
    iget-object v2, p0, Lcom/google/android/gms/common/api/a/g;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/a/g;->c()Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 1000
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 0
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/g;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method final b()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/g;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onResult(Lcom/google/android/gms/common/api/o;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/g;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/common/api/o;->d()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a/g;->c()Z

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/common/api/o;->d()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a/g;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
