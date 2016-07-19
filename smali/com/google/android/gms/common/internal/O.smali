.class public final Lcom/google/android/gms/common/internal/O;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final a:I

.field private synthetic b:Lcom/google/android/gms/common/internal/J;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/J;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/O;->b:Lcom/google/android/gms/common/internal/J;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/common/internal/O;->a:I

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string/jumbo v0, "Expecting a valid IBinder"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/O;->b:Lcom/google/android/gms/common/internal/J;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/J;->a(Lcom/google/android/gms/common/internal/J;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/O;->b:Lcom/google/android/gms/common/internal/J;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/h;->a(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/g;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/J;->a(Lcom/google/android/gms/common/internal/J;Lcom/google/android/gms/common/internal/g;)Lcom/google/android/gms/common/internal/g;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/O;->b:Lcom/google/android/gms/common/internal/J;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/common/internal/O;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/J;->a(II)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/internal/O;->b:Lcom/google/android/gms/common/internal/J;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/J;->a(Lcom/google/android/gms/common/internal/J;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/O;->b:Lcom/google/android/gms/common/internal/J;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/J;->a(Lcom/google/android/gms/common/internal/J;Lcom/google/android/gms/common/internal/g;)Lcom/google/android/gms/common/internal/g;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/O;->b:Lcom/google/android/gms/common/internal/J;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/J;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/O;->b:Lcom/google/android/gms/common/internal/J;

    iget-object v1, v1, Lcom/google/android/gms/common/internal/J;->a:Landroid/os/Handler;

    const/4 v2, 0x4

    iget v3, p0, Lcom/google/android/gms/common/internal/O;->a:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
