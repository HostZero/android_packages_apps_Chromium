.class final Lcom/google/android/gms/common/api/a/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/a/c;


# instance fields
.field private synthetic a:Lcom/google/android/gms/common/api/a/j;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/a/q;->a:Lcom/google/android/gms/common/api/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/q;->a:Lcom/google/android/gms/common/api/a/j;

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/j;->a(Lcom/google/android/gms/common/api/a/j;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/q;->a:Lcom/google/android/gms/common/api/a/j;

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/j;->c(Lcom/google/android/gms/common/api/a/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/q;->a:Lcom/google/android/gms/common/api/a/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/a/j;->a(Lcom/google/android/gms/common/api/a/j;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/q;->a:Lcom/google/android/gms/common/api/a/j;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/common/api/a/j;->a(Lcom/google/android/gms/common/api/a/j;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/q;->a:Lcom/google/android/gms/common/api/a/j;

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/j;->a(Lcom/google/android/gms/common/api/a/j;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/q;->a:Lcom/google/android/gms/common/api/a/j;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/a/j;->a(Lcom/google/android/gms/common/api/a/j;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/q;->a:Lcom/google/android/gms/common/api/a/j;

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/j;->f(Lcom/google/android/gms/common/api/a/j;)Lcom/google/android/gms/common/api/a/O;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/a/O;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/q;->a:Lcom/google/android/gms/common/api/a/j;

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/j;->a(Lcom/google/android/gms/common/api/a/j;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/q;->a:Lcom/google/android/gms/common/api/a/j;

    invoke-static {v1}, Lcom/google/android/gms/common/api/a/j;->a(Lcom/google/android/gms/common/api/a/j;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/q;->a:Lcom/google/android/gms/common/api/a/j;

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/j;->a(Lcom/google/android/gms/common/api/a/j;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/q;->a:Lcom/google/android/gms/common/api/a/j;

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/a/j;->b(Lcom/google/android/gms/common/api/a/j;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/q;->a:Lcom/google/android/gms/common/api/a/j;

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/j;->b(Lcom/google/android/gms/common/api/a/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/q;->a:Lcom/google/android/gms/common/api/a/j;

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/j;->a(Lcom/google/android/gms/common/api/a/j;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/q;->a:Lcom/google/android/gms/common/api/a/j;

    invoke-static {v1}, Lcom/google/android/gms/common/api/a/j;->a(Lcom/google/android/gms/common/api/a/j;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/q;->a:Lcom/google/android/gms/common/api/a/j;

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/j;->a(Lcom/google/android/gms/common/api/a/j;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/q;->a:Lcom/google/android/gms/common/api/a/j;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/a/j;->b(Lcom/google/android/gms/common/api/a/j;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/q;->a:Lcom/google/android/gms/common/api/a/j;

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/j;->b(Lcom/google/android/gms/common/api/a/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/q;->a:Lcom/google/android/gms/common/api/a/j;

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/j;->a(Lcom/google/android/gms/common/api/a/j;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/q;->a:Lcom/google/android/gms/common/api/a/j;

    invoke-static {v1}, Lcom/google/android/gms/common/api/a/j;->a(Lcom/google/android/gms/common/api/a/j;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
