.class public final Lcom/google/android/gms/measurement/internal/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/google/android/gms/common/api/i;
.implements Lcom/google/android/gms/common/api/j;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/an;

.field private volatile b:Z

.field private volatile c:Lcom/google/android/gms/measurement/internal/x;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/internal/an;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ao;->a:Lcom/google/android/gms/measurement/internal/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/ao;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ao;->b:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ao;->a:Lcom/google/android/gms/measurement/internal/an;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/an;->c()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ao;->a:Lcom/google/android/gms/measurement/internal/an;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/an;->j()Landroid/content/Context;

    move-result-object v1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ao;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ao;->a:Lcom/google/android/gms/measurement/internal/an;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/an;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Connection attempt already in progress"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ao;->c:Lcom/google/android/gms/measurement/internal/x;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ao;->a:Lcom/google/android/gms/measurement/internal/an;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/an;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Already awaiting connection attempt"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/google/android/gms/measurement/internal/x;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/common/api/h;

    invoke-direct {v3, v1}, Lcom/google/android/gms/common/api/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/h;->a()Lcom/google/android/gms/common/internal/G;

    move-result-object v3

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/x;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/G;Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/common/api/j;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/ao;->c:Lcom/google/android/gms/measurement/internal/x;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ao;->a:Lcom/google/android/gms/measurement/internal/an;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/an;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Connecting to remote service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ao;->b:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ao;->c:Lcom/google/android/gms/measurement/internal/x;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/x;->r()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ao;->a:Lcom/google/android/gms/measurement/internal/an;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/an;->c()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ao;->a:Lcom/google/android/gms/measurement/internal/an;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/an;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/common/stats/a;->a()Lcom/google/android/gms/common/stats/a;

    move-result-object v1

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/ao;->b:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ao;->a:Lcom/google/android/gms/measurement/internal/an;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/an;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Connection attempt already in progress"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/ao;->b:Z

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ao;->a:Lcom/google/android/gms/measurement/internal/an;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/an;->a(Lcom/google/android/gms/measurement/internal/an;)Lcom/google/android/gms/measurement/internal/ao;

    move-result-object v2

    const/16 v3, 0x81

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/google/android/gms/common/stats/a;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "MeasurementServiceConnection.onConnected"

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/j;->b(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ao;->c:Lcom/google/android/gms/measurement/internal/x;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/x;->v()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/t;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/ao;->c:Lcom/google/android/gms/measurement/internal/x;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ao;->a:Lcom/google/android/gms/measurement/internal/an;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/an;->o()Lcom/google/android/gms/measurement/internal/O;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/aw;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/measurement/internal/aw;-><init>(Lcom/google/android/gms/measurement/internal/ao;Lcom/google/android/gms/measurement/internal/t;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/O;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/ao;->c:Lcom/google/android/gms/measurement/internal/x;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ao;->b:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    const-string/jumbo v0, "MeasurementServiceConnection.onConnectionFailed"

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/j;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ao;->a:Lcom/google/android/gms/measurement/internal/an;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/an;->m:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->f()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->u()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Service connection failed"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ao;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/ao;->c:Lcom/google/android/gms/measurement/internal/x;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onConnectionSuspended(I)V
    .locals 2

    const-string/jumbo v0, "MeasurementServiceConnection.onConnectionSuspended"

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/j;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ao;->a:Lcom/google/android/gms/measurement/internal/an;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/an;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->y()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Service connection suspended"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ao;->a:Lcom/google/android/gms/measurement/internal/an;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/an;->o()Lcom/google/android/gms/measurement/internal/O;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/ax;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/ax;-><init>(Lcom/google/android/gms/measurement/internal/ao;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/O;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string/jumbo v0, "MeasurementServiceConnection.onServiceConnected"

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/j;->b(Ljava/lang/String;)V

    monitor-enter p0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ao;->b:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ao;->a:Lcom/google/android/gms/measurement/internal/an;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/an;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->t()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Service connected with null binder"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/u;->a(Landroid/os/IBinder;)Lcom/google/android/gms/measurement/internal/t;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ao;->a:Lcom/google/android/gms/measurement/internal/an;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/an;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v1

    const-string/jumbo v2, "Bound to IMeasurementService interface"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-nez v0, :cond_2

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ao;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/common/stats/a;->a()Lcom/google/android/gms/common/stats/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ao;->a:Lcom/google/android/gms/measurement/internal/an;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/an;->j()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ao;->a:Lcom/google/android/gms/measurement/internal/an;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/an;->a(Lcom/google/android/gms/measurement/internal/an;)Lcom/google/android/gms/measurement/internal/ao;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/a;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_1
    :try_start_5
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ao;->a:Lcom/google/android/gms/measurement/internal/an;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/an;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/y;->t()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v2

    const-string/jumbo v3, "Got binder with a wrong descriptor"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ao;->a:Lcom/google/android/gms/measurement/internal/an;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/an;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/y;->t()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v1

    const-string/jumbo v2, "Service connect failed to get IMeasurementService"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ao;->a:Lcom/google/android/gms/measurement/internal/an;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/an;->o()Lcom/google/android/gms/measurement/internal/O;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/au;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/measurement/internal/au;-><init>(Lcom/google/android/gms/measurement/internal/ao;Lcom/google/android/gms/measurement/internal/t;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/O;->a(Ljava/lang/Runnable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string/jumbo v0, "MeasurementServiceConnection.onServiceDisconnected"

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/j;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ao;->a:Lcom/google/android/gms/measurement/internal/an;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/an;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->y()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Service disconnected"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ao;->a:Lcom/google/android/gms/measurement/internal/an;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/an;->o()Lcom/google/android/gms/measurement/internal/O;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/av;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/av;-><init>(Lcom/google/android/gms/measurement/internal/ao;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/O;->a(Ljava/lang/Runnable;)V

    return-void
.end method
