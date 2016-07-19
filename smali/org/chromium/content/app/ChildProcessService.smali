.class public Lorg/chromium/content/app/ChildProcessService;
.super Landroid/app/Service;
.source "ChildProcessService.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static final EMPTY_FILE_DESCRIPTOR_INFO:[Lorg/chromium/content/browser/FileDescriptorInfo;

.field private static sContext:Ljava/util/concurrent/atomic/AtomicReference;


# instance fields
.field private final mActivitySemaphore:Ljava/util/concurrent/Semaphore;

.field private final mBinder:Lorg/chromium/content/common/IChildProcessService$Stub;

.field private mCallback:Lorg/chromium/content/common/IChildProcessCallback;

.field private mCommandLineParams:[Ljava/lang/String;

.field private mCpuCount:I

.field private mCpuFeatures:J

.field private mFdInfos:[Lorg/chromium/content/browser/FileDescriptorInfo;

.field private mIsBound:Z

.field private mLibraryInitialized:Z

.field private mLibraryProcessType:I

.field private mLinkerParams:Lorg/chromium/content/app/ChromiumLinkerParams;

.field private mMainThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    const-class v0, Lorg/chromium/content/app/ChildProcessService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/app/ChildProcessService;->$assertionsDisabled:Z

    .line 54
    new-array v0, v1, [Lorg/chromium/content/browser/FileDescriptorInfo;

    sput-object v0, Lorg/chromium/content/app/ChildProcessService;->EMPTY_FILE_DESCRIPTOR_INFO:[Lorg/chromium/content/browser/FileDescriptorInfo;

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/chromium/content/app/ChildProcessService;->sContext:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    :cond_0
    move v0, v1

    .line 49
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 71
    iput-boolean v0, p0, Lorg/chromium/content/app/ChildProcessService;->mLibraryInitialized:Z

    .line 73
    iput-boolean v0, p0, Lorg/chromium/content/app/ChildProcessService;->mIsBound:Z

    .line 75
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mActivitySemaphore:Ljava/util/concurrent/Semaphore;

    .line 91
    new-instance v0, Lorg/chromium/content/app/ChildProcessService$1;

    invoke-direct {v0, p0}, Lorg/chromium/content/app/ChildProcessService$1;-><init>(Lorg/chromium/content/app/ChildProcessService;)V

    iput-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mBinder:Lorg/chromium/content/common/IChildProcessService$Stub;

    return-void
.end method

.method static synthetic access$002(Lorg/chromium/content/app/ChildProcessService;Lorg/chromium/content/common/IChildProcessCallback;)Lorg/chromium/content/common/IChildProcessCallback;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lorg/chromium/content/app/ChildProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    return-object p1
.end method

.method static synthetic access$100(Lorg/chromium/content/app/ChildProcessService;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mMainThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$1000(IIJJ)V
    .locals 0

    .prologue
    .line 51
    invoke-static/range {p0 .. p5}, Lorg/chromium/content/app/ChildProcessService;->nativeRegisterGlobalFileDescriptor(IIJJ)V

    return-void
.end method

.method static synthetic access$1100(Lorg/chromium/content/app/ChildProcessService;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lorg/chromium/content/app/ChildProcessService;->mCpuCount:I

    return v0
.end method

.method static synthetic access$1200(Lorg/chromium/content/app/ChildProcessService;)J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lorg/chromium/content/app/ChildProcessService;->mCpuFeatures:J

    return-wide v0
.end method

.method static synthetic access$1300(Lorg/chromium/content/app/ChildProcessService;IJ)V
    .locals 0

    .prologue
    .line 51
    invoke-static {p0, p1, p2, p3}, Lorg/chromium/content/app/ChildProcessService;->nativeInitChildProcess(Lorg/chromium/content/app/ChildProcessService;IJ)V

    return-void
.end method

.method static synthetic access$1400(Lorg/chromium/content/app/ChildProcessService;)Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mActivitySemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$1500()V
    .locals 0

    .prologue
    .line 51
    invoke-static {}, Lorg/chromium/content/app/ChildProcessService;->nativeExitChildProcess()V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/content/app/ChildProcessService;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mCommandLineParams:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/content/app/ChildProcessService;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lorg/chromium/content/app/ChildProcessService;->mIsBound:Z

    return v0
.end method

.method static synthetic access$400(Lorg/chromium/content/app/ChildProcessService;)Lorg/chromium/base/library_loader/Linker;
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/chromium/content/app/ChildProcessService;->getLinker()Lorg/chromium/base/library_loader/Linker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/content/app/ChildProcessService;)Lorg/chromium/content/app/ChromiumLinkerParams;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mLinkerParams:Lorg/chromium/content/app/ChromiumLinkerParams;

    return-object v0
.end method

.method static synthetic access$600(Lorg/chromium/content/app/ChildProcessService;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lorg/chromium/content/app/ChildProcessService;->mLibraryProcessType:I

    return v0
.end method

.method static synthetic access$702(Lorg/chromium/content/app/ChildProcessService;Z)Z
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lorg/chromium/content/app/ChildProcessService;->mLibraryInitialized:Z

    return p1
.end method

.method static synthetic access$800(Lorg/chromium/content/app/ChildProcessService;)[Lorg/chromium/content/browser/FileDescriptorInfo;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mFdInfos:[Lorg/chromium/content/browser/FileDescriptorInfo;

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lorg/chromium/content/app/ChildProcessService;->sContext:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method private createSurfaceTextureSurface(IILandroid/graphics/SurfaceTexture;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 372
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    if-nez v0, :cond_0

    .line 373
    const-string/jumbo v0, "ChildProcessService"

    const-string/jumbo v1, "No callback interface has been provided."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 384
    :goto_0
    return-void

    .line 377
    :cond_0
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 379
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    invoke-interface {v0, p1, p2, v1}, Lorg/chromium/content/common/IChildProcessCallback;->registerSurfaceTextureSurface(IILandroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_1
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    .line 381
    const-string/jumbo v2, "ChildProcessService"

    const-string/jumbo v3, "Unable to call registerSurfaceTextureSurface: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private destroySurfaceTextureSurface(II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 389
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    if-nez v0, :cond_0

    .line 390
    const-string/jumbo v0, "ChildProcessService"

    const-string/jumbo v1, "No callback interface has been provided."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    :goto_0
    return-void

    .line 395
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    invoke-interface {v0, p1, p2}, Lorg/chromium/content/common/IChildProcessCallback;->unregisterSurfaceTextureSurface(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    const-string/jumbo v1, "ChildProcessService"

    const-string/jumbo v2, "Unable to call unregisterSurfaceTextureSurface: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private establishSurfaceTexturePeer(ILjava/lang/Object;II)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 323
    iget-object v2, p0, Lorg/chromium/content/app/ChildProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    if-nez v2, :cond_1

    .line 324
    const-string/jumbo v1, "ChildProcessService"

    const-string/jumbo v2, "No callback interface has been provided."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    instance-of v2, p2, Landroid/view/Surface;

    if-eqz v2, :cond_2

    .line 331
    check-cast p2, Landroid/view/Surface;

    move v1, v0

    .line 340
    :goto_1
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/chromium/content/common/IChildProcessCallback;->establishSurfacePeer(ILandroid/view/Surface;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    if-eqz v1, :cond_0

    .line 346
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    goto :goto_0

    .line 332
    :cond_2
    instance-of v2, p2, Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_3

    .line 333
    new-instance v0, Landroid/view/Surface;

    check-cast p2, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    move-object p2, v0

    .line 334
    goto :goto_1

    .line 336
    :cond_3
    const-string/jumbo v2, "ChildProcessService"

    const-string/jumbo v3, "Not a valid surfaceObject: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-static {v2, v3, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 341
    :catch_0
    move-exception v0

    .line 342
    :try_start_1
    const-string/jumbo v2, "ChildProcessService"

    const-string/jumbo v3, "Unable to call establishSurfaceTexturePeer: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    if-eqz v1, :cond_0

    .line 346
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    goto :goto_0

    .line 345
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    .line 346
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    :cond_4
    throw v0
.end method

.method private getLinker()Lorg/chromium/base/library_loader/Linker;
    .locals 2

    .prologue
    .line 79
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->areTestsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    sget-boolean v0, Lorg/chromium/content/app/ChildProcessService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mLinkerParams:Lorg/chromium/content/app/ChromiumLinkerParams;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mLinkerParams:Lorg/chromium/content/app/ChromiumLinkerParams;

    iget v0, v0, Lorg/chromium/content/app/ChromiumLinkerParams;->mLinkerImplementationForTesting:I

    iget-object v1, p0, Lorg/chromium/content/app/ChildProcessService;->mLinkerParams:Lorg/chromium/content/app/ChromiumLinkerParams;

    iget-object v1, v1, Lorg/chromium/content/app/ChromiumLinkerParams;->mTestRunnerClassNameForTesting:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/chromium/base/library_loader/Linker;->setupForTesting(ILjava/lang/String;)V

    .line 87
    :cond_1
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getInstance()Lorg/chromium/base/library_loader/Linker;

    move-result-object v0

    return-object v0
.end method

.method private getSurfaceTextureSurface(I)Landroid/view/Surface;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 404
    iget-object v1, p0, Lorg/chromium/content/app/ChildProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    if-nez v1, :cond_0

    .line 405
    const-string/jumbo v1, "ChildProcessService"

    const-string/jumbo v2, "No callback interface has been provided."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    :goto_0
    return-object v0

    .line 410
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/app/ChildProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    invoke-interface {v1, p1}, Lorg/chromium/content/common/IChildProcessCallback;->getSurfaceTextureSurface(I)Lorg/chromium/content/common/SurfaceWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/common/SurfaceWrapper;->getSurface()Landroid/view/Surface;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 411
    :catch_0
    move-exception v1

    .line 412
    const-string/jumbo v2, "ChildProcessService"

    const-string/jumbo v3, "Unable to call getSurfaceTextureSurface: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getViewSurface(I)Landroid/view/Surface;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 354
    iget-object v1, p0, Lorg/chromium/content/app/ChildProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    if-nez v1, :cond_1

    .line 355
    const-string/jumbo v1, "ChildProcessService"

    const-string/jumbo v2, "No callback interface has been provided."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    :cond_0
    :goto_0
    return-object v0

    .line 360
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/app/ChildProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    invoke-interface {v1, p1}, Lorg/chromium/content/common/IChildProcessCallback;->getViewSurface(I)Lorg/chromium/content/common/SurfaceWrapper;

    move-result-object v1

    .line 361
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/chromium/content/common/SurfaceWrapper;->getSurface()Landroid/view/Surface;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 362
    :catch_0
    move-exception v1

    .line 363
    const-string/jumbo v2, "ChildProcessService"

    const-string/jumbo v3, "Unable to call getViewSurface: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static native nativeExitChildProcess()V
.end method

.method private static native nativeInitChildProcess(Lorg/chromium/content/app/ChildProcessService;IJ)V
.end method

.method private static native nativeRegisterGlobalFileDescriptor(IIJJ)V
.end method

.method private native nativeShutdownMainThread()V
.end method


# virtual methods
.method getServiceInfo(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 274
    invoke-virtual {p0}, Lorg/chromium/content/app/ChildProcessService;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 275
    iget-object v1, p0, Lorg/chromium/content/app/ChildProcessService;->mMainThread:Ljava/lang/Thread;

    monitor-enter v1

    .line 278
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mCommandLineParams:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 279
    const-string/jumbo v0, "com.google.android.apps.chrome.extra.command_line"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mCommandLineParams:[Ljava/lang/String;

    .line 283
    :cond_0
    sget-boolean v0, Lorg/chromium/content/app/ChildProcessService;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mCommandLineParams:[Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 284
    :cond_1
    :try_start_1
    const-string/jumbo v0, "com.google.android.apps.chrome.extra.cpu_count"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/chromium/content/app/ChildProcessService;->mCpuCount:I

    .line 285
    const-string/jumbo v0, "com.google.android.apps.chrome.extra.cpu_features"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/chromium/content/app/ChildProcessService;->mCpuFeatures:J

    .line 286
    sget-boolean v0, Lorg/chromium/content/app/ChildProcessService;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/chromium/content/app/ChildProcessService;->mCpuCount:I

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 287
    :cond_2
    const-string/jumbo v0, "com.google.android.apps.chrome.extra.extraFiles"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 289
    if-eqz v0, :cond_4

    .line 292
    array-length v2, v0

    new-array v2, v2, [Lorg/chromium/content/browser/FileDescriptorInfo;

    iput-object v2, p0, Lorg/chromium/content/app/ChildProcessService;->mFdInfos:[Lorg/chromium/content/browser/FileDescriptorInfo;

    .line 293
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/chromium/content/app/ChildProcessService;->mFdInfos:[Lorg/chromium/content/browser/FileDescriptorInfo;

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    :goto_0
    const-string/jumbo v0, "org.chromium.base.android.linker.shared_relros"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 301
    if-eqz v0, :cond_3

    .line 302
    invoke-direct {p0}, Lorg/chromium/content/app/ChildProcessService;->getLinker()Lorg/chromium/base/library_loader/Linker;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/chromium/base/library_loader/Linker;->useSharedRelros(Landroid/os/Bundle;)V

    .line 305
    :cond_3
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mMainThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 306
    monitor-exit v1

    return-void

    .line 295
    :cond_4
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mCommandLineParams:[Ljava/lang/String;

    const-string/jumbo v2, "type"

    invoke-static {v0, v2}, Lorg/chromium/content/common/ContentSwitches;->getSwitchValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    sget-boolean v2, Lorg/chromium/content/app/ChildProcessService;->$assertionsDisabled:Z

    if-nez v2, :cond_5

    const-string/jumbo v2, "download"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 298
    :cond_5
    sget-object v0, Lorg/chromium/content/app/ChildProcessService;->EMPTY_FILE_DESCRIPTOR_INFO:[Lorg/chromium/content/browser/FileDescriptorInfo;

    iput-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mFdInfos:[Lorg/chromium/content/browser/FileDescriptorInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected initializeParams(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 255
    iget-object v1, p0, Lorg/chromium/content/app/ChildProcessService;->mMainThread:Ljava/lang/Thread;

    monitor-enter v1

    .line 256
    :try_start_0
    const-string/jumbo v0, "com.google.android.apps.chrome.extra.command_line"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mCommandLineParams:[Ljava/lang/String;

    .line 260
    new-instance v0, Lorg/chromium/content/app/ChromiumLinkerParams;

    invoke-direct {v0, p1}, Lorg/chromium/content/app/ChromiumLinkerParams;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mLinkerParams:Lorg/chromium/content/app/ChromiumLinkerParams;

    .line 261
    invoke-static {p1}, Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;->getLibraryProcessType(Landroid/content/Intent;)I

    move-result v0

    iput v0, p0, Lorg/chromium/content/app/ChildProcessService;->mLibraryProcessType:I

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/app/ChildProcessService;->mIsBound:Z

    .line 264
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mMainThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 265
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 245
    invoke-virtual {p0}, Lorg/chromium/content/app/ChildProcessService;->stopSelf()V

    .line 246
    invoke-virtual {p0, p1}, Lorg/chromium/content/app/ChildProcessService;->initializeParams(Landroid/content/Intent;)V

    .line 247
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mBinder:Lorg/chromium/content/common/IChildProcessService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 112
    const-string/jumbo v0, "ChildProcessService"

    const-string/jumbo v1, "Creating new ChildProcessService pid=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    sget-object v0, Lorg/chromium/content/app/ChildProcessService;->sContext:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Illegal child process reuse."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    sget-object v0, Lorg/chromium/content/app/ChildProcessService;->sContext:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 117
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 119
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/chromium/content/app/ChildProcessService$2;

    invoke-direct {v1, p0}, Lorg/chromium/content/app/ChildProcessService$2;-><init>(Lorg/chromium/content/app/ChildProcessService;)V

    const-string/jumbo v2, "ChildProcessMain"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mMainThread:Ljava/lang/Thread;

    .line 207
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mMainThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 208
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 213
    const-string/jumbo v0, "ChildProcessService"

    const-string/jumbo v1, "Destroying ChildProcessService pid=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 215
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mActivitySemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 237
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v1, p0, Lorg/chromium/content/app/ChildProcessService;->mMainThread:Ljava/lang/Thread;

    monitor-enter v1

    .line 225
    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/content/app/ChildProcessService;->mLibraryInitialized:Z

    if-nez v0, :cond_1

    .line 228
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mMainThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 233
    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    invoke-direct {p0}, Lorg/chromium/content/app/ChildProcessService;->nativeShutdownMainThread()V

    goto :goto_0

    .line 233
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
