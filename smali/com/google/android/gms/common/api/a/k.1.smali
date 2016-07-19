.class public abstract Lcom/google/android/gms/common/api/a/k;
.super Lcom/google/android/gms/common/api/a/m;

# interfaces
.implements Lcom/google/android/gms/common/api/a/K;
.implements Lcom/google/android/gms/common/api/a/l;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/f;

.field private b:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/g;)V
    .locals 1

    const-string/jumbo v0, "GoogleApiClient must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/g;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a/m;-><init>(Lcom/google/android/gms/common/api/g;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a/k;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/f;

    iput-object v0, p0, Lcom/google/android/gms/common/api/a/k;->a:Lcom/google/android/gms/common/api/f;

    return-void
.end method

.method private a(Landroid/os/RemoteException;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-virtual {p1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a/k;->c(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/a/J;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/k;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract a(Lcom/google/android/gms/common/api/e;)V
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/o;

    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/a/m;->a(Lcom/google/android/gms/common/api/o;)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/common/api/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/k;->a:Lcom/google/android/gms/common/api/f;

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/common/api/e;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/a/k;->a(Lcom/google/android/gms/common/api/e;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a/k;->a(Landroid/os/RemoteException;)V

    throw v0

    :catch_1
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a/k;->a(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a/k;->a(Lcom/google/android/gms/common/api/m;)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Failed result must not be success"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/a/j;->b(ZLjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/a/k;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a/k;->a(Lcom/google/android/gms/common/api/o;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final d()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/k;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a/J;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/a/J;->a(Lcom/google/android/gms/common/api/a/K;)V

    :cond_0
    return-void
.end method
