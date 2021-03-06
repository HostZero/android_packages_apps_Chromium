.class Lorg/chromium/content/browser/BindingManagerImpl;
.super Ljava/lang/Object;
.source "BindingManagerImpl.java"

# interfaces
.implements Lorg/chromium/content/browser/BindingManager;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBoundForBackgroundPeriod:Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

.field private final mIsLowMemoryDevice:Z

.field private mLastInForeground:Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

.field private final mLastInForegroundLock:Ljava/lang/Object;

.field private final mManagedConnections:Landroid/util/SparseArray;

.field private mModerateBindingPool:Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;

.field private final mModerateBindingPoolLock:Ljava/lang/Object;

.field private mModerateBindingTillBackgrounded:Z

.field private final mOnTesting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/chromium/content/browser/BindingManagerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/BindingManagerImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(ZZ)V
    .locals 1

    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mModerateBindingPoolLock:Ljava/lang/Object;

    .line 350
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mManagedConnections:Landroid/util/SparseArray;

    .line 361
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mLastInForegroundLock:Ljava/lang/Object;

    .line 374
    iput-boolean p1, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mIsLowMemoryDevice:Z

    .line 375
    iput-boolean p2, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mOnTesting:Z

    .line 376
    return-void
.end method

.method static synthetic access$500(Lorg/chromium/content/browser/BindingManagerImpl;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mModerateBindingPoolLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lorg/chromium/content/browser/BindingManagerImpl;)Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mModerateBindingPool:Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;

    return-object v0
.end method

.method static synthetic access$800(Lorg/chromium/content/browser/BindingManagerImpl;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mIsLowMemoryDevice:Z

    return v0
.end method

.method static synthetic access$900(Lorg/chromium/content/browser/BindingManagerImpl;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mModerateBindingTillBackgrounded:Z

    return v0
.end method

.method public static createBindingManager()Lorg/chromium/content/browser/BindingManagerImpl;
    .locals 3

    .prologue
    .line 379
    new-instance v0, Lorg/chromium/content/browser/BindingManagerImpl;

    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/content/browser/BindingManagerImpl;-><init>(ZZ)V

    return-object v0
.end method


# virtual methods
.method public addNewConnection(ILorg/chromium/content/browser/ChildProcessConnection;)V
    .locals 3

    .prologue
    .line 395
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mManagedConnections:Landroid/util/SparseArray;

    monitor-enter v1

    .line 396
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mManagedConnections:Landroid/util/SparseArray;

    new-instance v2, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    invoke-direct {v2, p0, p2}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;-><init>(Lorg/chromium/content/browser/BindingManagerImpl;Lorg/chromium/content/browser/ChildProcessConnection;)V

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 397
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearConnection(I)V
    .locals 2

    .prologue
    .line 485
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mManagedConnections:Landroid/util/SparseArray;

    monitor-enter v1

    .line 486
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mManagedConnections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    .line 487
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->clearConnection()V

    .line 489
    :cond_0
    return-void

    .line 487
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public determinedVisibility(I)V
    .locals 5

    .prologue
    .line 426
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mManagedConnections:Landroid/util/SparseArray;

    monitor-enter v1

    .line 427
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mManagedConnections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    .line 428
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    if-nez v0, :cond_0

    .line 431
    const-string/jumbo v0, "cr.BindingManager"

    const-string/jumbo v1, "Cannot call determinedVisibility() - never saw a connection for the pid: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    :goto_0
    return-void

    .line 428
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 436
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->determinedVisibility()V

    goto :goto_0
.end method

.method public isConnectionCleared(I)Z
    .locals 2

    .prologue
    .line 494
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mManagedConnections:Landroid/util/SparseArray;

    monitor-enter v1

    .line 495
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mManagedConnections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->isConnectionCleared()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isOomProtected(I)Z
    .locals 2

    .prologue
    .line 476
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mManagedConnections:Landroid/util/SparseArray;

    monitor-enter v1

    .line 477
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mManagedConnections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    .line 478
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->isOomProtected()Z

    move-result v0

    :goto_0
    return v0

    .line 478
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 479
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBroughtToForeground()V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mBoundForBackgroundPeriod:Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mBoundForBackgroundPeriod:Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->setBoundForBackgroundPeriod(Z)V

    .line 461
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mBoundForBackgroundPeriod:Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    .line 464
    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mModerateBindingPoolLock:Ljava/lang/Object;

    monitor-enter v1

    .line 465
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mModerateBindingPool:Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;

    .line 466
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->onBroughtToForeground()V

    .line 468
    :cond_1
    return-void

    .line 466
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSentToBackground()V
    .locals 3

    .prologue
    .line 441
    sget-boolean v0, Lorg/chromium/content/browser/BindingManagerImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mBoundForBackgroundPeriod:Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 442
    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mLastInForegroundLock:Ljava/lang/Object;

    monitor-enter v1

    .line 445
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mLastInForeground:Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mLastInForeground:Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->setBoundForBackgroundPeriod(Z)V

    .line 447
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mLastInForeground:Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    iput-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mBoundForBackgroundPeriod:Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    .line 449
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mModerateBindingPoolLock:Ljava/lang/Object;

    monitor-enter v1

    .line 452
    :try_start_1
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mModerateBindingPool:Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;

    .line 453
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 454
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mOnTesting:Z

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->onSentToBackground(Z)V

    .line 455
    :cond_2
    return-void

    .line 449
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 453
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public releaseAllModerateBindings()V
    .locals 6

    .prologue
    .line 516
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mModerateBindingPoolLock:Ljava/lang/Object;

    monitor-enter v1

    .line 517
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mModerateBindingPool:Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;

    .line 518
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    if-eqz v0, :cond_0

    .line 520
    const-string/jumbo v1, "cr.BindingManager"

    const-string/jumbo v2, "Release all moderate bindings: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    invoke-virtual {v0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->evictAll()V

    .line 523
    :cond_0
    return-void

    .line 518
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setInForeground(IZ)V
    .locals 5

    .prologue
    .line 403
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mManagedConnections:Landroid/util/SparseArray;

    monitor-enter v1

    .line 404
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mManagedConnections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    .line 405
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    if-nez v0, :cond_0

    .line 408
    const-string/jumbo v0, "cr.BindingManager"

    const-string/jumbo v1, "Cannot setInForeground() - never saw a connection for the pid: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    :goto_0
    return-void

    .line 405
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 412
    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mLastInForegroundLock:Ljava/lang/Object;

    monitor-enter v1

    .line 413
    if-eqz p2, :cond_1

    :try_start_2
    iget-boolean v2, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mIsLowMemoryDevice:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mLastInForeground:Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mLastInForeground:Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    if-eq v2, v0, :cond_1

    .line 415
    iget-object v2, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mLastInForeground:Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    # invokes: Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->dropBindings()V
    invoke-static {v2}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->access$1000(Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;)V

    .line 418
    :cond_1
    invoke-virtual {v0, p2}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->setInForeground(Z)V

    .line 419
    if-eqz p2, :cond_2

    iput-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mLastInForeground:Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    .line 420
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public startModerateBindingManagement(Landroid/content/Context;IZ)V
    .locals 6

    .prologue
    .line 502
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mModerateBindingPoolLock:Ljava/lang/Object;

    monitor-enter v1

    .line 503
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mIsLowMemoryDevice:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mModerateBindingPool:Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    .line 510
    :goto_0
    return-void

    .line 505
    :cond_1
    iput-boolean p3, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mModerateBindingTillBackgrounded:Z

    .line 507
    const-string/jumbo v0, "cr.BindingManager"

    const-string/jumbo v2, "Moderate binding enabled: maxSize=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 508
    new-instance v0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;

    invoke-direct {v0, p2}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mModerateBindingPool:Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;

    .line 509
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl;->mModerateBindingPool:Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;

    invoke-virtual {p1, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 510
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
