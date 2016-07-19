.class final Lcom/google/android/gms/common/api/a/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/k;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private final b:Lcom/google/android/gms/common/api/a;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/a/u;Lcom/google/android/gms/common/api/a;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a/v;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/google/android/gms/common/api/a/v;->b:Lcom/google/android/gms/common/api/a;

    iput p3, p0, Lcom/google/android/gms/common/api/a/v;->c:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/v;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a/u;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/u;->d(Lcom/google/android/gms/common/api/a/u;)Lcom/google/android/gms/common/api/a/O;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/common/api/a/O;->d:Lcom/google/android/gms/common/api/a/F;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/a/F;->a()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    const-string/jumbo v2, "onReportServiceBinding must be called on the GoogleApiClient handler thread"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/api/a/j;->a(ZLjava/lang/Object;)V

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/u;->c(Lcom/google/android/gms/common/api/a/u;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/common/api/a/u;->k(Lcom/google/android/gms/common/api/a/u;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/u;->c(Lcom/google/android/gms/common/api/a/u;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/v;->b:Lcom/google/android/gms/common/api/a;

    iget v2, p0, Lcom/google/android/gms/common/api/a/v;->c:I

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/common/api/a/u;->a(Lcom/google/android/gms/common/api/a/u;Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;I)V

    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/common/api/a/u;->l(Lcom/google/android/gms/common/api/a/u;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/u;->j(Lcom/google/android/gms/common/api/a/u;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    invoke-static {v0}, Lcom/google/android/gms/common/api/a/u;->c(Lcom/google/android/gms/common/api/a/u;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/u;->c(Lcom/google/android/gms/common/api/a/u;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
