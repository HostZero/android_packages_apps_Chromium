.class final Lorg/chromium/content/common/CleanupReference$LazyHolder$1;
.super Landroid/os/Handler;
.source "CleanupReference.java"


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 89
    :try_start_0
    const-string/jumbo v0, "CleanupReference.LazyHolder.handleMessage"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 90
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/content/common/CleanupReference;

    .line 91
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 99
    const-string/jumbo v0, "cr.CleanupReference"

    const-string/jumbo v1, "Bad message=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    :goto_0
    # getter for: Lorg/chromium/content/common/CleanupReference;->sCleanupMonitor:Ljava/lang/Object;
    invoke-static {}, Lorg/chromium/content/common/CleanupReference;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 108
    :goto_1
    :try_start_1
    # getter for: Lorg/chromium/content/common/CleanupReference;->sGcQueue:Ljava/lang/ref/ReferenceQueue;
    invoke-static {}, Lorg/chromium/content/common/CleanupReference;->access$000()Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/common/CleanupReference;

    if-eqz v0, :cond_0

    .line 109
    # invokes: Lorg/chromium/content/common/CleanupReference;->runCleanupTaskInternal()V
    invoke-static {v0}, Lorg/chromium/content/common/CleanupReference;->access$300(Lorg/chromium/content/common/CleanupReference;)V

    goto :goto_1

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 114
    :catchall_1
    move-exception v0

    const-string/jumbo v1, "CleanupReference.LazyHolder.handleMessage"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0

    .line 93
    :pswitch_0
    :try_start_3
    # getter for: Lorg/chromium/content/common/CleanupReference;->sRefs:Ljava/util/Set;
    invoke-static {}, Lorg/chromium/content/common/CleanupReference;->access$200()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :pswitch_1
    # invokes: Lorg/chromium/content/common/CleanupReference;->runCleanupTaskInternal()V
    invoke-static {v0}, Lorg/chromium/content/common/CleanupReference;->access$300(Lorg/chromium/content/common/CleanupReference;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 111
    :cond_0
    :try_start_4
    # getter for: Lorg/chromium/content/common/CleanupReference;->sCleanupMonitor:Ljava/lang/Object;
    invoke-static {}, Lorg/chromium/content/common/CleanupReference;->access$100()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 112
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 114
    const-string/jumbo v0, "CleanupReference.LazyHolder.handleMessage"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 115
    return-void

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
