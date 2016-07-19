.class final Lorg/chromium/content/common/CleanupReference$1;
.super Ljava/lang/Thread;
.source "CleanupReference.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 51
    :goto_0
    :try_start_0
    # getter for: Lorg/chromium/content/common/CleanupReference;->sGcQueue:Ljava/lang/ref/ReferenceQueue;
    invoke-static {}, Lorg/chromium/content/common/CleanupReference;->access$000()Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/common/CleanupReference;

    .line 53
    # getter for: Lorg/chromium/content/common/CleanupReference;->sCleanupMonitor:Ljava/lang/Object;
    invoke-static {}, Lorg/chromium/content/common/CleanupReference;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :try_start_1
    sget-object v2, Lorg/chromium/content/common/CleanupReference$LazyHolder;->sHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 57
    # getter for: Lorg/chromium/content/common/CleanupReference;->sCleanupMonitor:Ljava/lang/Object;
    invoke-static {}, Lorg/chromium/content/common/CleanupReference;->access$100()Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 58
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string/jumbo v1, "cr.CleanupReference"

    const-string/jumbo v2, "Queue remove exception:"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
