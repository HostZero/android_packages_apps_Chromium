.class public Lorg/chromium/content/browser/ChildProcessLauncher;
.super Ljava/lang/Object;
.source "ChildProcessLauncher.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final CALLBACK_FOR_DOWNLOAD_PROCESS:I = 0x4

.field static final CALLBACK_FOR_GPU_PROCESS:I = 0x1

.field static final CALLBACK_FOR_RENDERER_PROCESS:I = 0x2

.field static final CALLBACK_FOR_UNKNOWN_PROCESS:I = 0x0

.field static final CALLBACK_FOR_UTILITY_PROCESS:I = 0x3

.field public static final SWITCH_NUM_SANDBOXED_SERVICES_FOR_TESTING:Ljava/lang/String; = "num-sandboxed-services"

.field private static sApplicationInForeground:Z

.field private static sBindingManager:Lorg/chromium/content/browser/BindingManager;

.field private static sChildProcessCreationParams:Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;

.field private static sLinkerInitialized:Z

.field private static sLinkerLoadAddress:J

.field private static final sPendingSpawnQueue:Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;

.field private static sPrivilegedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

.field private static sSandboxedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

.field private static sServiceMap:Ljava/util/Map;

.field private static sSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

.field private static sSurfaceTextureSurfaceMap:Ljava/util/Map;

.field private static sViewSurfaceMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    const-class v0, Lorg/chromium/content/browser/ChildProcessLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    .line 270
    new-instance v0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;

    invoke-direct {v0, v4}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;-><init>(Lorg/chromium/content/browser/ChildProcessLauncher$1;)V

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sPendingSpawnQueue:Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;

    .line 353
    sput-boolean v2, Lorg/chromium/content/browser/ChildProcessLauncher;->sLinkerInitialized:Z

    .line 354
    const-wide/16 v2, 0x0

    sput-wide v2, Lorg/chromium/content/browser/ChildProcessLauncher;->sLinkerLoadAddress:J

    .line 444
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sServiceMap:Ljava/util/Map;

    .line 448
    sput-object v4, Lorg/chromium/content/browser/ChildProcessLauncher;->sSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    .line 451
    invoke-static {}, Lorg/chromium/content/browser/BindingManagerImpl;->createBindingManager()Lorg/chromium/content/browser/BindingManagerImpl;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    .line 454
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sViewSurfaceMap:Ljava/util/Map;

    .line 458
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sSurfaceTextureSurfaceMap:Ljava/util/Map;

    .line 462
    sput-boolean v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sApplicationInForeground:Z

    return-void

    :cond_0
    move v0, v2

    .line 50
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/ChildProcessConnection;)V
    .locals 0

    .prologue
    .line 51
    invoke-static {p0}, Lorg/chromium/content/browser/ChildProcessLauncher;->freeConnection(Lorg/chromium/content/browser/ChildProcessConnection;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/content/Context;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;JIZ)V
    .locals 0

    .prologue
    .line 51
    invoke-static/range {p0 .. p7}, Lorg/chromium/content/browser/ChildProcessLauncher;->startInternal(Landroid/content/Context;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;JIZ)V

    return-void
.end method

.method static synthetic access$1200()Lorg/chromium/content/browser/BindingManager;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/util/Map;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sServiceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1400(JI)V
    .locals 0

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lorg/chromium/content/browser/ChildProcessLauncher;->nativeOnChildProcessStarted(JI)V

    return-void
.end method

.method static synthetic access$1500(ILandroid/view/Surface;II)V
    .locals 0

    .prologue
    .line 51
    invoke-static {p0, p1, p2, p3}, Lorg/chromium/content/browser/ChildProcessLauncher;->nativeEstablishSurfacePeer(ILandroid/view/Surface;II)V

    return-void
.end method

.method static synthetic access$1600()Ljava/util/Map;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sViewSurfaceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1700(IILandroid/view/Surface;)V
    .locals 0

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lorg/chromium/content/browser/ChildProcessLauncher;->registerSurfaceTextureSurface(IILandroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$1800(II)V
    .locals 0

    .prologue
    .line 51
    invoke-static {p0, p1}, Lorg/chromium/content/browser/ChildProcessLauncher;->unregisterSurfaceTextureSurface(II)V

    return-void
.end method

.method static synthetic access$1900(II)Lorg/chromium/content/common/SurfaceWrapper;
    .locals 1

    .prologue
    .line 51
    invoke-static {p0, p1}, Lorg/chromium/content/browser/ChildProcessLauncher;->getSurfaceTextureSurface(II)Lorg/chromium/content/common/SurfaceWrapper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/ChildProcessConnection;)Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;
    .locals 1

    .prologue
    .line 51
    invoke-static {p0}, Lorg/chromium/content/browser/ChildProcessLauncher;->freeConnectionAndDequeuePending(Lorg/chromium/content/browser/ChildProcessConnection;)Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;

    move-result-object v0

    return-object v0
.end method

.method private static allocateBoundConnection(Landroid/content/Context;[Ljava/lang/String;ZZ)Lorg/chromium/content/browser/ChildProcessConnection;
    .locals 2

    .prologue
    .line 385
    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncher;->getLinkerParamsForNewConnection()Lorg/chromium/content/app/ChromiumLinkerParams;

    move-result-object v0

    .line 386
    invoke-static {p0, p2, v0, p3}, Lorg/chromium/content/browser/ChildProcessLauncher;->allocateConnection(Landroid/content/Context;ZLorg/chromium/content/app/ChromiumLinkerParams;Z)Lorg/chromium/content/browser/ChildProcessConnection;

    move-result-object v0

    .line 388
    if-eqz v0, :cond_0

    .line 389
    invoke-interface {v0, p1}, Lorg/chromium/content/browser/ChildProcessConnection;->start([Ljava/lang/String;)V

    .line 391
    if-eqz p2, :cond_0

    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sSandboxedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->isFreeConnectionAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 395
    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    invoke-interface {v1}, Lorg/chromium/content/browser/BindingManager;->releaseAllModerateBindings()V

    .line 398
    :cond_0
    return-object v0
.end method

.method static allocateBoundConnectionForTesting(Landroid/content/Context;)Lorg/chromium/content/browser/ChildProcessConnection;
    .locals 3

    .prologue
    .line 896
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/chromium/content/browser/ChildProcessLauncher;->allocateBoundConnection(Landroid/content/Context;[Ljava/lang/String;ZZ)Lorg/chromium/content/browser/ChildProcessConnection;

    move-result-object v0

    return-object v0
.end method

.method private static allocateConnection(Landroid/content/Context;ZLorg/chromium/content/app/ChromiumLinkerParams;Z)Lorg/chromium/content/browser/ChildProcessConnection;
    .locals 6

    .prologue
    .line 337
    new-instance v2, Lorg/chromium/content/browser/ChildProcessLauncher$1;

    invoke-direct {v2}, Lorg/chromium/content/browser/ChildProcessLauncher$1;-><init>()V

    .line 348
    invoke-static {p0}, Lorg/chromium/content/browser/ChildProcessLauncher;->initConnectionAllocatorsIfNecessary(Landroid/content/Context;)V

    .line 349
    invoke-static {p1}, Lorg/chromium/content/browser/ChildProcessLauncher;->getConnectionAllocator(Z)Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    move-result-object v0

    sget-object v5, Lorg/chromium/content/browser/ChildProcessLauncher;->sChildProcessCreationParams:Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->allocate(Landroid/content/Context;Lorg/chromium/content/browser/ChildProcessConnection$DeathCallback;Lorg/chromium/content/app/ChromiumLinkerParams;ZLorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;)Lorg/chromium/content/browser/ChildProcessConnection;

    move-result-object v0

    return-object v0
.end method

.method static allocatedConnectionsCountForTesting(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 913
    invoke-static {p0}, Lorg/chromium/content/browser/ChildProcessLauncher;->initConnectionAllocatorsIfNecessary(Landroid/content/Context;)V

    .line 914
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sSandboxedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->allocatedConnectionsCountForTesting()I

    move-result v0

    return v0
.end method

.method static connectedServicesCountForTesting()I
    .locals 1

    .prologue
    .line 920
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sServiceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public static crashProcessForTesting(I)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 937
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sServiceMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    .line 945
    :goto_0
    return v0

    .line 940
    :cond_0
    :try_start_0
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sServiceMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->crashServiceForTesting()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    const/4 v0, 0x1

    goto :goto_0

    .line 942
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private static createCallback(II)Lorg/chromium/content/common/IChildProcessCallback;
    .locals 1

    .prologue
    .line 802
    new-instance v0, Lorg/chromium/content/browser/ChildProcessLauncher$4;

    invoke-direct {v0, p1, p0}, Lorg/chromium/content/browser/ChildProcessLauncher$4;-><init>(II)V

    return-object v0
.end method

.method private static createSurfaceTextureSurface(IILandroid/graphics/SurfaceTexture;)V
    .locals 1

    .prologue
    .line 505
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {p0, p1, v0}, Lorg/chromium/content/browser/ChildProcessLauncher;->registerSurfaceTextureSurface(IILandroid/view/Surface;)V

    .line 506
    return-void
.end method

.method protected static createsServiceBundle([Ljava/lang/String;[Lorg/chromium/content/browser/FileDescriptorInfo;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 735
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 736
    const-string/jumbo v1, "com.google.android.apps.chrome.extra.command_line"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 737
    const-string/jumbo v1, "com.google.android.apps.chrome.extra.extraFiles"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 738
    const-string/jumbo v1, "com.google.android.apps.chrome.extra.cpu_count"

    invoke-static {}, Lorg/chromium/base/CpuFeatures;->getCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 739
    const-string/jumbo v1, "com.google.android.apps.chrome.extra.cpu_features"

    invoke-static {}, Lorg/chromium/base/CpuFeatures;->getMask()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 740
    const-string/jumbo v1, "org.chromium.base.android.linker.shared_relros"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 741
    return-object v0
.end method

.method private static destroySurfaceTextureSurface(II)V
    .locals 0

    .prologue
    .line 510
    invoke-static {p0, p1}, Lorg/chromium/content/browser/ChildProcessLauncher;->unregisterSurfaceTextureSurface(II)V

    .line 511
    return-void
.end method

.method public static determinedVisibility(I)V
    .locals 1

    .prologue
    .line 541
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    invoke-interface {v0, p0}, Lorg/chromium/content/browser/BindingManager;->determinedVisibility(I)V

    .line 542
    return-void
.end method

.method static enqueuePendingSpawnForTesting(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 904
    sget-object v11, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->sPendingSpawnsLock:Ljava/lang/Object;

    monitor-enter v11

    .line 905
    :try_start_0
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sPendingSpawnQueue:Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;

    new-instance v1, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;

    const/4 v4, 0x1

    const/4 v2, 0x0

    new-array v5, v2, [Lorg/chromium/content/browser/FileDescriptorInfo;

    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v10}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;-><init>(Landroid/content/Context;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;JIZLorg/chromium/content/browser/ChildProcessLauncher$1;)V

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->enqueueLocked(Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;)V

    .line 907
    monitor-exit v11

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static freeConnection(Lorg/chromium/content/browser/ChildProcessConnection;)V
    .locals 4

    .prologue
    .line 404
    const-class v1, Lorg/chromium/content/browser/ChildProcessLauncher;

    monitor-enter v1

    .line 405
    :try_start_0
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    .line 406
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    new-instance v0, Lorg/chromium/content/browser/ChildProcessLauncher$2;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/ChildProcessLauncher$2;-><init>(Lorg/chromium/content/browser/ChildProcessConnection;)V

    const-wide/16 v2, 0x1

    invoke-static {v0, v2, v3}, Lorg/chromium/base/ThreadUtils;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    .line 431
    return-void

    .line 406
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static freeConnectionAndDequeuePending(Lorg/chromium/content/browser/ChildProcessConnection;)Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;
    .locals 2

    .prologue
    .line 434
    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->sPendingSpawnsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 435
    :try_start_0
    invoke-interface {p0}, Lorg/chromium/content/browser/ChildProcessConnection;->isInSandbox()Z

    move-result v0

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessLauncher;->getConnectionAllocator(Z)Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->free(Lorg/chromium/content/browser/ChildProcessConnection;)V

    .line 436
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sPendingSpawnQueue:Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->dequeueLocked()Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getConnectionAllocator(Z)Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;
    .locals 1

    .prologue
    .line 331
    if-eqz p0, :cond_0

    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sSandboxedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sPrivilegedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    goto :goto_0
.end method

.method private static getLinkerParamsForNewConnection()Lorg/chromium/content/app/ChromiumLinkerParams;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    .line 357
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sLinkerInitialized:Z

    if-nez v0, :cond_1

    .line 358
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->isUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getInstance()Lorg/chromium/base/library_loader/Linker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/base/library_loader/Linker;->getBaseLoadAddress()J

    move-result-wide v0

    .line 360
    sput-wide v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sLinkerLoadAddress:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    .line 361
    const-string/jumbo v0, "ChildProcLauncher"

    const-string/jumbo v1, "Shared RELRO support disabled!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    :cond_0
    sput-boolean v4, Lorg/chromium/content/browser/ChildProcessLauncher;->sLinkerInitialized:Z

    .line 367
    :cond_1
    sget-wide v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sLinkerLoadAddress:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_2

    const/4 v1, 0x0

    .line 378
    :goto_0
    return-object v1

    .line 371
    :cond_2
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->areTestsEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 372
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getInstance()Lorg/chromium/base/library_loader/Linker;

    move-result-object v0

    .line 373
    new-instance v1, Lorg/chromium/content/app/ChromiumLinkerParams;

    sget-wide v2, Lorg/chromium/content/browser/ChildProcessLauncher;->sLinkerLoadAddress:J

    invoke-virtual {v0}, Lorg/chromium/base/library_loader/Linker;->getTestRunnerClassNameForTesting()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/chromium/base/library_loader/Linker;->getImplementationForTesting()I

    move-result v6

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/app/ChromiumLinkerParams;-><init>(JZLjava/lang/String;I)V

    goto :goto_0

    .line 378
    :cond_3
    new-instance v1, Lorg/chromium/content/app/ChromiumLinkerParams;

    sget-wide v2, Lorg/chromium/content/browser/ChildProcessLauncher;->sLinkerLoadAddress:J

    invoke-direct {v1, v2, v3, v4}, Lorg/chromium/content/app/ChromiumLinkerParams;-><init>(JZ)V

    goto :goto_0
.end method

.method private static getNumberOfServices(Landroid/content/Context;Z)I
    .locals 5

    .prologue
    .line 287
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 288
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sChildProcessCreationParams:Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sChildProcessCreationParams:Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 290
    :goto_0
    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 292
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_2

    const-string/jumbo v0, "org.chromium.content.browser.NUM_SANDBOXED_SERVICES"

    :goto_1
    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 294
    if-eqz p1, :cond_0

    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v1

    const-string/jumbo v2, "num-sandboxed-services"

    invoke-virtual {v1, v2}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v1

    const-string/jumbo v2, "num-sandboxed-services"

    invoke-virtual {v1, v2}, Lorg/chromium/base/CommandLine;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 299
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 301
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 308
    :cond_0
    :goto_2
    if-gez v0, :cond_3

    .line 309
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Illegal meta data value for number of child services"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 313
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Could not get application info"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 292
    :cond_2
    const-string/jumbo v0, "org.chromium.content.browser.NUM_PRIVILEGED_SERVICES"

    goto :goto_1

    .line 303
    :catch_1
    move-exception v2

    const-string/jumbo v2, "ChildProcLauncher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "The value of --num-sandboxed-services is formatted wrongly: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 311
    :cond_3
    return v0
.end method

.method private static getSurfaceTextureSurface(II)Lorg/chromium/content/common/SurfaceWrapper;
    .locals 3

    .prologue
    .line 516
    new-instance v0, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 518
    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sSurfaceTextureSurfaceMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 519
    if-nez v0, :cond_0

    .line 520
    const-string/jumbo v0, "ChildProcLauncher"

    const-string/jumbo v1, "Invalid Id for surface texture."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    const/4 v0, 0x0

    .line 524
    :goto_0
    return-object v0

    .line 523
    :cond_0
    sget-boolean v1, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 524
    :cond_1
    new-instance v1, Lorg/chromium/content/common/SurfaceWrapper;

    invoke-direct {v1, v0}, Lorg/chromium/content/common/SurfaceWrapper;-><init>(Landroid/view/Surface;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static initConnectionAllocatorsIfNecessary(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 318
    const-class v1, Lorg/chromium/content/browser/ChildProcessLauncher;

    monitor-enter v1

    .line 319
    :try_start_0
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sSandboxedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    if-nez v0, :cond_0

    .line 320
    new-instance v0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {p0, v3}, Lorg/chromium/content/browser/ChildProcessLauncher;->getNumberOfServices(Landroid/content/Context;Z)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;-><init>(ZI)V

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sSandboxedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    .line 323
    :cond_0
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sPrivilegedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    if-nez v0, :cond_1

    .line 324
    new-instance v0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lorg/chromium/content/browser/ChildProcessLauncher;->getNumberOfServices(Landroid/content/Context;Z)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;-><init>(ZI)V

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sPrivilegedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    .line 327
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static isApplicationInForeground()Z
    .locals 1

    .prologue
    .line 577
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sApplicationInForeground:Z

    return v0
.end method

.method private static isOomProtected(I)Z
    .locals 1

    .prologue
    .line 472
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    invoke-interface {v0, p0}, Lorg/chromium/content/browser/BindingManager;->isOomProtected(I)Z

    move-result v0

    return v0
.end method

.method static logPidWarning(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 889
    if-lez p0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncher;->nativeIsSingleProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 890
    const-string/jumbo v0, "ChildProcLauncher"

    const-string/jumbo v1, "%s, pid=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 892
    :cond_0
    return-void
.end method

.method private static makeFdInfo(IIZJJ)Lorg/chromium/content/browser/FileDescriptorInfo;
    .locals 9

    .prologue
    .line 601
    if-eqz p2, :cond_0

    .line 603
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 612
    :goto_0
    new-instance v1, Lorg/chromium/content/browser/FileDescriptorInfo;

    move v2, p0

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lorg/chromium/content/browser/FileDescriptorInfo;-><init>(ILandroid/os/ParcelFileDescriptor;JJ)V

    :goto_1
    return-object v1

    .line 606
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 607
    :catch_0
    move-exception v0

    .line 608
    const-string/jumbo v1, "ChildProcLauncher"

    const-string/jumbo v2, "Invalid FD provided for process connection, aborting connection."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 609
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static native nativeEstablishSurfacePeer(ILandroid/view/Surface;II)V
.end method

.method private static native nativeIsSingleProcess()Z
.end method

.method private static native nativeOnChildProcessStarted(JI)V
.end method

.method public static onBroughtToForeground()V
    .locals 1

    .prologue
    .line 569
    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sApplicationInForeground:Z

    .line 570
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    invoke-interface {v0}, Lorg/chromium/content/browser/BindingManager;->onBroughtToForeground()V

    .line 571
    return-void
.end method

.method public static onSentToBackground()V
    .locals 1

    .prologue
    .line 548
    const/4 v0, 0x0

    sput-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sApplicationInForeground:Z

    .line 549
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    invoke-interface {v0}, Lorg/chromium/content/browser/BindingManager;->onSentToBackground()V

    .line 550
    return-void
.end method

.method static pendingSpawnsCountForTesting()I
    .locals 2

    .prologue
    .line 926
    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->sPendingSpawnsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 927
    :try_start_0
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sPendingSpawnQueue:Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->sizeLocked()I

    move-result v0

    monitor-exit v1

    return v0

    .line 928
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static registerSurfaceTextureSurface(IILandroid/view/Surface;)V
    .locals 3

    .prologue
    .line 489
    new-instance v0, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 490
    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sSurfaceTextureSurfaceMap:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    return-void
.end method

.method private static registerViewSurface(ILandroid/view/Surface;)V
    .locals 2

    .prologue
    .line 477
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Attempting to register invalid Surface."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_0
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sViewSurfaceMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    return-void
.end method

.method public static setBindingManagerForTesting(Lorg/chromium/content/browser/BindingManager;)V
    .locals 0

    .prologue
    .line 466
    sput-object p0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    .line 467
    return-void
.end method

.method public static setChildProcessCreationParams(Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;)V
    .locals 0

    .prologue
    .line 109
    sput-object p0, Lorg/chromium/content/browser/ChildProcessLauncher;->sChildProcessCreationParams:Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;

    .line 110
    return-void
.end method

.method public static setInForeground(IZ)V
    .locals 1

    .prologue
    .line 533
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    invoke-interface {v0, p0, p1}, Lorg/chromium/content/browser/BindingManager;->setInForeground(IZ)V

    .line 534
    return-void
.end method

.method private static start(Landroid/content/Context;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;J)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 629
    sget-boolean v1, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 633
    :cond_0
    const-string/jumbo v1, "type"

    invoke-static {p1, v1}, Lorg/chromium/content/common/ContentSwitches;->getSwitchValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 635
    const-string/jumbo v2, "renderer"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 636
    const/4 v6, 0x2

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 647
    invoke-static/range {v0 .. v7}, Lorg/chromium/content/browser/ChildProcessLauncher;->startInternal(Landroid/content/Context;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;JIZ)V

    .line 649
    return-void

    .line 637
    :cond_1
    const-string/jumbo v2, "gpu-process"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v6, v7

    move v7, v0

    .line 639
    goto :goto_0

    .line 640
    :cond_2
    const-string/jumbo v2, "utility"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 642
    const/4 v6, 0x3

    goto :goto_0

    .line 644
    :cond_3
    sget-boolean v1, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    move v6, v0

    goto :goto_0
.end method

.method private static startDownloadProcessIfNecessary(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 662
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 663
    :cond_0
    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lorg/chromium/content/common/ContentSwitches;->getSwitchValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 665
    sget-boolean v1, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const-string/jumbo v1, "download"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 667
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 668
    const-class v1, Lorg/chromium/content/app/DownloadProcessService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 669
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 670
    const-string/jumbo v1, "com.google.android.apps.chrome.extra.command_line"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 671
    const/4 v1, 0x0

    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getInstance()Lorg/chromium/base/library_loader/Linker;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/base/library_loader/Linker;->getSharedRelros()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lorg/chromium/content/browser/ChildProcessLauncher;->createsServiceBundle([Ljava/lang/String;[Lorg/chromium/content/browser/FileDescriptorInfo;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 674
    const-string/jumbo v2, "com.google.android.apps.chrome.extra.child_process_callback"

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lorg/chromium/content/browser/ChildProcessLauncher;->createCallback(II)Lorg/chromium/content/common/IChildProcessCallback;

    move-result-object v3

    invoke-interface {v3}, Lorg/chromium/content/common/IChildProcessCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 676
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 677
    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncher;->getLinkerParamsForNewConnection()Lorg/chromium/content/app/ChromiumLinkerParams;

    move-result-object v1

    .line 678
    if-eqz v1, :cond_2

    .line 679
    invoke-virtual {v1, v0}, Lorg/chromium/content/app/ChromiumLinkerParams;->addIntentExtras(Landroid/content/Intent;)V

    .line 681
    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 682
    return-void
.end method

.method private static startInternal(Landroid/content/Context;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;JIZ)V
    .locals 14

    .prologue
    .line 693
    :try_start_0
    const-string/jumbo v2, "ChildProcessLauncher.startInternal"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 695
    const/4 v3, 0x0

    .line 696
    const-class v4, Lorg/chromium/content/browser/ChildProcessLauncher;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 697
    if-eqz p7, :cond_0

    .line 698
    :try_start_1
    sget-object v3, Lorg/chromium/content/browser/ChildProcessLauncher;->sSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    .line 699
    const/4 v2, 0x0

    sput-object v2, Lorg/chromium/content/browser/ChildProcessLauncher;->sSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    .line 701
    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 702
    if-nez v3, :cond_3

    .line 703
    const/4 v2, 0x0

    .line 704
    const/4 v3, 0x1

    move/from16 v0, p6

    if-ne v0, v3, :cond_1

    const/4 v2, 0x1

    .line 705
    :cond_1
    :try_start_2
    sget-object v13, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->sPendingSpawnsLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 706
    :try_start_3
    move/from16 v0, p7

    invoke-static {p0, p1, v0, v2}, Lorg/chromium/content/browser/ChildProcessLauncher;->allocateBoundConnection(Landroid/content/Context;[Ljava/lang/String;ZZ)Lorg/chromium/content/browser/ChildProcessConnection;

    move-result-object v3

    .line 708
    if-nez v3, :cond_2

    .line 710
    sget-object v2, Lorg/chromium/content/browser/ChildProcessLauncher;->sPendingSpawnQueue:Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;

    new-instance v3, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;

    const/4 v12, 0x0

    move-object v4, p0

    move-object v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v3 .. v12}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;-><init>(Landroid/content/Context;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;JIZLorg/chromium/content/browser/ChildProcessLauncher$1;)V

    invoke-virtual {v2, v3}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->enqueueLocked(Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;)V

    .line 713
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 723
    const-string/jumbo v2, "ChildProcessLauncher.startInternal"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 724
    :goto_0
    return-void

    .line 701
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 723
    :catchall_1
    move-exception v2

    const-string/jumbo v3, "ChildProcessLauncher.startInternal"

    invoke-static {v3}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v2

    .line 715
    :cond_2
    :try_start_6
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 718
    :cond_3
    :try_start_7
    invoke-interface {v3}, Lorg/chromium/content/browser/ChildProcessConnection;->getServiceNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-object v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p6

    move-wide/from16 v8, p4

    .line 720
    invoke-static/range {v3 .. v9}, Lorg/chromium/content/browser/ChildProcessLauncher;->triggerConnectionSetup(Lorg/chromium/content/browser/ChildProcessConnection;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;IJ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 723
    const-string/jumbo v2, "ChildProcessLauncher.startInternal"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    goto :goto_0

    .line 715
    :catchall_2
    move-exception v2

    :try_start_8
    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
.end method

.method public static startModerateBindingManagement(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 561
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lorg/chromium/content/browser/ChildProcessLauncher;->getNumberOfServices(Landroid/content/Context;Z)I

    move-result v1

    invoke-interface {v0, p0, v1, p1}, Lorg/chromium/content/browser/BindingManager;->startModerateBindingManagement(Landroid/content/Context;IZ)V

    .line 563
    return-void
.end method

.method static stop(I)V
    .locals 2

    .prologue
    .line 786
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 787
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sServiceMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ChildProcessConnection;

    .line 788
    if-nez v0, :cond_0

    .line 789
    const-string/jumbo v0, "Tried to stop non-existent connection"

    invoke-static {p0, v0}, Lorg/chromium/content/browser/ChildProcessLauncher;->logPidWarning(ILjava/lang/String;)V

    .line 795
    :goto_0
    return-void

    .line 792
    :cond_0
    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    invoke-interface {v1, p0}, Lorg/chromium/content/browser/BindingManager;->clearConnection(I)V

    .line 793
    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->stop()V

    .line 794
    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessLauncher;->freeConnection(Lorg/chromium/content/browser/ChildProcessConnection;)V

    goto :goto_0
.end method

.method static triggerConnectionSetup(Lorg/chromium/content/browser/ChildProcessConnection;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;IJ)V
    .locals 7

    .prologue
    .line 752
    new-instance v4, Lorg/chromium/content/browser/ChildProcessLauncher$3;

    invoke-direct {v4, p5, p6, p4, p0}, Lorg/chromium/content/browser/ChildProcessLauncher$3;-><init>(JILorg/chromium/content/browser/ChildProcessConnection;)V

    .line 771
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 772
    :cond_0
    invoke-static {p2, p4}, Lorg/chromium/content/browser/ChildProcessLauncher;->createCallback(II)Lorg/chromium/content/common/IChildProcessCallback;

    move-result-object v3

    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getInstance()Lorg/chromium/base/library_loader/Linker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/base/library_loader/Linker;->getSharedRelros()Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-interface/range {v0 .. v5}, Lorg/chromium/content/browser/ChildProcessConnection;->setupConnection([Ljava/lang/String;[Lorg/chromium/content/browser/FileDescriptorInfo;Lorg/chromium/content/common/IChildProcessCallback;Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;Landroid/os/Bundle;)V

    .line 777
    return-void
.end method

.method private static unregisterSurfaceTextureSurface(II)V
    .locals 3

    .prologue
    .line 494
    new-instance v0, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 495
    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sSurfaceTextureSurfaceMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 496
    if-nez v0, :cond_0

    .line 500
    :goto_0
    return-void

    .line 498
    :cond_0
    sget-boolean v1, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 499
    :cond_1
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    goto :goto_0
.end method

.method private static unregisterViewSurface(I)V
    .locals 2

    .prologue
    .line 484
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sViewSurfaceMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    return-void
.end method

.method public static warmUp(Landroid/content/Context;Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;)V
    .locals 4

    .prologue
    .line 588
    invoke-static {p1}, Lorg/chromium/content/browser/ChildProcessLauncher;->setChildProcessCreationParams(Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;)V

    .line 589
    const-class v1, Lorg/chromium/content/browser/ChildProcessLauncher;

    monitor-enter v1

    .line 590
    :try_start_0
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 594
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 591
    :cond_0
    :try_start_1
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    if-nez v0, :cond_1

    .line 592
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3}, Lorg/chromium/content/browser/ChildProcessLauncher;->allocateBoundConnection(Landroid/content/Context;[Ljava/lang/String;ZZ)Lorg/chromium/content/browser/ChildProcessConnection;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    .line 594
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
