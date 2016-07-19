.class Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;
.super Landroid/util/LruCache;
.source "BindingManagerImpl.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field private mDelayedClearer:Ljava/lang/Runnable;

.field private final mDelayedClearerLock:Ljava/lang/Object;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->mDelayedClearerLock:Ljava/lang/Object;

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->getUiThreadLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->mHandler:Landroid/os/Handler;

    .line 54
    return-void
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->mDelayedClearerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->mDelayedClearer:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$402(Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->mDelayedClearer:Ljava/lang/Runnable;

    return-object p1
.end method

.method private reduce(F)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->size()I

    move-result v2

    .line 85
    int-to-float v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p1

    mul-float/2addr v1, v3

    float-to-int v3, v1

    .line 86
    const-string/jumbo v1, "cr.BindingManager"

    const-string/jumbo v4, "Reduce connections from %d to %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v4, v5}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    if-nez v3, :cond_1

    .line 88
    invoke-virtual {p0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->evictAll()V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v1, v4, :cond_2

    .line 90
    invoke-virtual {p0, v3}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->trimToSize(I)V

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->snapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 96
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    add-int/lit8 v0, v1, 0x1

    .line 98
    sub-int v1, v2, v3

    if-eq v0, v1, :cond_0

    move v1, v0

    .line 99
    goto :goto_1
.end method


# virtual methods
.method addConnection(Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;)V
    .locals 2

    .prologue
    .line 104
    # getter for: Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;
    invoke-static {p1}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->access$000(Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;)Lorg/chromium/content/browser/ChildProcessConnection;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->isInSandbox()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    # invokes: Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->addModerateBinding()V
    invoke-static {p1}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->access$100(Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;)V

    .line 107
    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->isModerateBindingBound()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->getServiceNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->getServiceNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected entryRemoved(ZLjava/lang/Integer;Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;)V
    .locals 0

    .prologue
    .line 125
    if-eq p3, p4, :cond_0

    .line 126
    # invokes: Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->removeModerateBinding()V
    invoke-static {p3}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->access$200(Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;)V

    .line 128
    :cond_0
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    check-cast p4, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->entryRemoved(ZLjava/lang/Integer;Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;)V

    return-void
.end method

.method onBroughtToForeground()V
    .locals 3

    .prologue
    .line 153
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->mDelayedClearerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 154
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->mDelayedClearer:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    monitor-exit v1

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->mDelayedClearer:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->mDelayedClearer:Ljava/lang/Runnable;

    .line 157
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public onLowMemory()V
    .locals 5

    .prologue
    .line 75
    const-string/jumbo v0, "cr.BindingManager"

    const-string/jumbo v1, "onLowMemory: evict %d bindings"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->evictAll()V

    .line 77
    return-void
.end method

.method onSentToBackground(Z)V
    .locals 6

    .prologue
    .line 131
    invoke-virtual {p0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->mDelayedClearerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 133
    :try_start_0
    new-instance v0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool$1;-><init>(Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;Z)V

    iput-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->mDelayedClearer:Ljava/lang/Runnable;

    .line 148
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->mDelayedClearer:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onTrimMemory(I)V
    .locals 5

    .prologue
    .line 58
    const-string/jumbo v0, "cr.BindingManager"

    const-string/jumbo v1, "onTrimMemory: level=%d, size=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 60
    const/4 v0, 0x5

    if-gt p1, v0, :cond_1

    .line 61
    const/high16 v0, 0x3e800000    # 0.25f

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->reduce(F)V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const/16 v0, 0xa

    if-gt p1, v0, :cond_2

    .line 63
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->reduce(F)V

    goto :goto_0

    .line 64
    :cond_2
    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->evictAll()V

    goto :goto_0
.end method

.method removeConnection(Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;)V
    .locals 2

    .prologue
    .line 116
    # getter for: Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;
    invoke-static {p1}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->access$000(Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;)Lorg/chromium/content/browser/ChildProcessConnection;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->isInSandbox()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->getServiceNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_0
    return-void
.end method
