.class final Lcom/google/android/gms/common/api/a/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/i;
.implements Lcom/google/android/gms/common/api/j;


# instance fields
.field private synthetic a:Lcom/google/android/gms/common/api/a/u;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/a/u;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/a/z;->a:Lcom/google/android/gms/common/api/a/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/a/u;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/a/z;-><init>(Lcom/google/android/gms/common/api/a/u;)V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/z;->a:Lcom/google/android/gms/common/api/a/u;

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/u;->f(Lcom/google/android/gms/common/api/a/u;)Lcom/google/android/gms/b/F;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/a/y;

    iget-object v2, p0, Lcom/google/android/gms/common/api/a/z;->a:Lcom/google/android/gms/common/api/a/u;

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/a/y;-><init>(Lcom/google/android/gms/common/api/a/u;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/b/F;->a(Lcom/google/android/gms/signin/internal/d;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/z;->a:Lcom/google/android/gms/common/api/a/u;

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/u;->c(Lcom/google/android/gms/common/api/a/u;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/z;->a:Lcom/google/android/gms/common/api/a/u;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/a/u;->b(Lcom/google/android/gms/common/api/a/u;Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/z;->a:Lcom/google/android/gms/common/api/a/u;

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/u;->i(Lcom/google/android/gms/common/api/a/u;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/z;->a:Lcom/google/android/gms/common/api/a/u;

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/u;->j(Lcom/google/android/gms/common/api/a/u;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/z;->a:Lcom/google/android/gms/common/api/a/u;

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/u;->c(Lcom/google/android/gms/common/api/a/u;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/z;->a:Lcom/google/android/gms/common/api/a/u;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/a/u;->a(Lcom/google/android/gms/common/api/a/u;Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/z;->a:Lcom/google/android/gms/common/api/a/u;

    invoke-static {v1}, Lcom/google/android/gms/common/api/a/u;->c(Lcom/google/android/gms/common/api/a/u;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
