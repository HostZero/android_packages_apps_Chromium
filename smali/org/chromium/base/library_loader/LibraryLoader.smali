.class public Lorg/chromium/base/library_loader/LibraryLoader;
.super Ljava/lang/Object;
.source "LibraryLoader.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static volatile sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private mCommandLineSwitched:Z

.field private volatile mInitialized:Z

.field private mIsUsingBrowserSharedRelros:Z

.field private mLibraryLoadTimeMs:J

.field private final mLibraryProcessType:I

.field private mLibraryWasLoadedFromApk:Z

.field private mLoadAtFixedAddressFailed:Z

.field private mLoaded:Z

.field private final mPrefetchLibraryHasBeenCalled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/chromium/base/library_loader/LibraryLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/base/library_loader/LibraryLoader;->$assertionsDisabled:Z

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sLock:Ljava/lang/Object;

    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryProcessType:I

    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mPrefetchLibraryHasBeenCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->nativePercentageOfResidentNativeLibraryCode()I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->nativeForkAndPrefetchNativeLibrary()Z

    move-result v0

    return v0
.end method

.method public static get(I)Lorg/chromium/base/library_loader/LibraryLoader;
    .locals 3

    .prologue
    .line 96
    sget-object v1, Lorg/chromium/base/library_loader/LibraryLoader;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_0
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    if-eqz v0, :cond_1

    .line 98
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    iget v0, v0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryProcessType:I

    if-ne v0, p0, :cond_0

    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    monitor-exit v1

    .line 103
    :goto_0
    return-object v0

    .line 99
    :cond_0
    new-instance v0, Lorg/chromium/base/library_loader/ProcessInitException;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lorg/chromium/base/library_loader/ProcessInitException;-><init>(I)V

    throw v0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 102
    :cond_1
    :try_start_1
    new-instance v0, Lorg/chromium/base/library_loader/LibraryLoader;

    invoke-direct {v0, p0}, Lorg/chromium/base/library_loader/LibraryLoader;-><init>(I)V

    .line 103
    sput-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static getLibraryApkPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 308
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 309
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    .line 310
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 320
    :goto_0
    return-object v0

    .line 312
    :cond_0
    invoke-static {p0}, Lorg/chromium/base/PackageUtils;->getOwnPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 313
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 314
    const/4 v0, 0x0

    :goto_1
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 315
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Lorg/chromium/base/library_loader/LibraryLoader;->isAbiSplit(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 316
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_0

    .line 314
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 320
    :cond_2
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    goto :goto_0
.end method

.method private getLibraryLoadFromApkStatus(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 398
    sget-boolean v0, Lorg/chromium/base/library_loader/LibraryLoader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getInstance()Lorg/chromium/base/library_loader/Linker;

    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->isUsed()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 400
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryWasLoadedFromApk:Z

    if-eqz v0, :cond_1

    .line 401
    const/4 v0, 0x3

    .line 405
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLibraryProcessType()I
    .locals 1

    .prologue
    .line 427
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 428
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    iget v0, v0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryProcessType:I

    goto :goto_0
.end method

.method private initializeAlreadyLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 347
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 377
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mCommandLineSwitched:Z

    if-nez v0, :cond_1

    .line 353
    invoke-static {}, Lorg/chromium/base/CommandLine;->getJavaSwitchesOrNull()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/base/library_loader/LibraryLoader;->nativeInitCommandLine([Ljava/lang/String;)V

    .line 356
    :cond_1
    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->nativeLibraryLoaded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 357
    const-string/jumbo v0, "LibraryLoader"

    const-string/jumbo v1, "error calling nativeLibraryLoaded"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    new-instance v0, Lorg/chromium/base/library_loader/ProcessInitException;

    invoke-direct {v0, v3}, Lorg/chromium/base/library_loader/ProcessInitException;-><init>(I)V

    throw v0

    .line 363
    :cond_2
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mCommandLineSwitched:Z

    if-nez v0, :cond_3

    .line 364
    invoke-static {}, Lorg/chromium/base/CommandLine;->enableNativeProxy()V

    .line 365
    iput-boolean v3, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mCommandLineSwitched:Z

    .line 369
    :cond_3
    invoke-static {}, Lorg/chromium/base/TraceEvent;->registerNativeEnabledObserver()V

    .line 376
    iput-boolean v3, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mInitialized:Z

    goto :goto_0
.end method

.method private static isAbiSplit(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 301
    const-string/jumbo v0, "abi_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    iget-boolean v0, v0, Lorg/chromium/base/library_loader/LibraryLoader;->mInitialized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAlreadyLocked(Landroid/content/Context;)V
    .locals 12

    .prologue
    .line 232
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLoaded:Z

    if-nez v0, :cond_5

    .line 233
    sget-boolean v0, Lorg/chromium/base/library_loader/LibraryLoader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mInitialized:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    new-instance v1, Lorg/chromium/base/library_loader/ProcessInitException;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lorg/chromium/base/library_loader/ProcessInitException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 235
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 237
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->isUsed()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 239
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getInstance()Lorg/chromium/base/library_loader/Linker;

    move-result-object v4

    .line 240
    invoke-virtual {v4}, Lorg/chromium/base/library_loader/Linker;->prepareLibraryLoad()V

    .line 242
    sget-object v5, Lorg/chromium/base/library_loader/NativeLibraries;->LIBRARIES:[Ljava/lang/String;

    array-length v6, v5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v6, :cond_3

    aget-object v7, v5, v1

    .line 246
    invoke-virtual {v4, v7}, Lorg/chromium/base/library_loader/Linker;->isChromiumLinkerLibrary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    const/4 v0, 0x0

    .line 253
    invoke-static {v7}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 254
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->isInZipFile()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 256
    invoke-static {p1}, Lorg/chromium/base/library_loader/LibraryLoader;->getLibraryApkPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 257
    const-string/jumbo v9, "LibraryLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Loading "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, " from within "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v7, v10}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    :goto_1
    invoke-direct {p0, v4, v0, v8}, Lorg/chromium/base/library_loader/LibraryLoader;->loadLibrary(Lorg/chromium/base/library_loader/Linker;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 260
    :cond_2
    const-string/jumbo v9, "LibraryLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Loading "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v7, v10}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 267
    :cond_3
    invoke-virtual {v4}, Lorg/chromium/base/library_loader/Linker;->finishLibraryLoad()V

    .line 275
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 276
    sub-long v4, v0, v2

    iput-wide v4, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryLoadTimeMs:J

    .line 277
    const-string/jumbo v4, "LibraryLoader"

    const-string/jumbo v5, "Time to load native libraries: %d ms (timestamps %d-%d)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryLoadTimeMs:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-wide/16 v8, 0x2710

    rem-long/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x2

    const-wide/16 v8, 0x2710

    rem-long/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLoaded:Z
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    .line 288
    :cond_5
    const-string/jumbo v0, "LibraryLoader"

    const-string/jumbo v1, "Expected native library version number \"%s\", actual native library version number \"%s\""

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lorg/chromium/base/library_loader/NativeLibraries;->sVersionNumber:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->nativeGetVersionNumber()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    sget-object v0, Lorg/chromium/base/library_loader/NativeLibraries;->sVersionNumber:Ljava/lang/String;

    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->nativeGetVersionNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 294
    new-instance v0, Lorg/chromium/base/library_loader/ProcessInitException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/chromium/base/library_loader/ProcessInitException;-><init>(I)V

    throw v0

    .line 270
    :cond_6
    :try_start_2
    sget-object v1, Lorg/chromium/base/library_loader/NativeLibraries;->LIBRARIES:[Ljava/lang/String;

    array-length v4, v1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_4

    aget-object v5, v1, v0

    .line 271
    invoke-static {v5}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 296
    :cond_7
    return-void
.end method

.method private loadLibrary(Lorg/chromium/base/library_loader/Linker;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 206
    invoke-virtual {p1}, Lorg/chromium/base/library_loader/Linker;->isUsingBrowserSharedRelros()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    iput-boolean v3, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mIsUsingBrowserSharedRelros:Z

    .line 211
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lorg/chromium/base/library_loader/Linker;->loadLibrary(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    if-eqz p2, :cond_0

    .line 224
    iput-boolean v3, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryWasLoadedFromApk:Z

    .line 226
    :cond_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    const-string/jumbo v0, "LibraryLoader"

    const-string/jumbo v1, "Failed to load native library with shared RELRO, retrying without"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    iput-boolean v3, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLoadAtFixedAddressFailed:Z

    .line 215
    invoke-virtual {p1, p2, p3}, Lorg/chromium/base/library_loader/Linker;->loadLibraryNoFixedAddress(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {p1, p2, p3}, Lorg/chromium/base/library_loader/Linker;->loadLibrary(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static native nativeForkAndPrefetchNativeLibrary()Z
.end method

.method private native nativeGetVersionNumber()Ljava/lang/String;
.end method

.method private native nativeInitCommandLine([Ljava/lang/String;)V
.end method

.method private native nativeLibraryLoaded()Z
.end method

.method private static native nativePercentageOfResidentNativeLibraryCode()I
.end method

.method private native nativeRecordChromiumAndroidLinkerBrowserHistogram(ZZIJ)V
.end method

.method private native nativeRegisterChromiumAndroidLinkerRendererHistogram(ZZJ)V
.end method

.method private recordBrowserProcessHistogram(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 387
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getInstance()Lorg/chromium/base/library_loader/Linker;

    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->isUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-boolean v1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mIsUsingBrowserSharedRelros:Z

    iget-boolean v2, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLoadAtFixedAddressFailed:Z

    invoke-direct {p0, p1}, Lorg/chromium/base/library_loader/LibraryLoader;->getLibraryLoadFromApkStatus(Landroid/content/Context;)I

    move-result v3

    iget-wide v4, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryLoadTimeMs:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/chromium/base/library_loader/LibraryLoader;->nativeRecordChromiumAndroidLinkerBrowserHistogram(ZZIJ)V

    .line 393
    :cond_0
    return-void
.end method


# virtual methods
.method public asyncPrefetchLibrariesToMemory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 173
    iget-object v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mPrefetchLibraryHasBeenCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    .line 174
    new-instance v1, Lorg/chromium/base/library_loader/LibraryLoader$1;

    invoke-direct {v1, p0, v0}, Lorg/chromium/base/library_loader/LibraryLoader$1;-><init>(Lorg/chromium/base/library_loader/LibraryLoader;Z)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lorg/chromium/base/library_loader/LibraryLoader$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 201
    return-void
.end method

.method public ensureInitialized(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 118
    sget-object v1, Lorg/chromium/base/library_loader/LibraryLoader;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 119
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 121
    monitor-exit v1

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/base/library_loader/LibraryLoader;->loadAlreadyLocked(Landroid/content/Context;)V

    .line 124
    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->initializeAlreadyLocked()V

    .line 125
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 158
    sget-object v1, Lorg/chromium/base/library_loader/LibraryLoader;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->initializeAlreadyLocked()V

    .line 160
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadNow(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 147
    sget-object v1, Lorg/chromium/base/library_loader/LibraryLoader;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 148
    :try_start_0
    invoke-direct {p0, p1}, Lorg/chromium/base/library_loader/LibraryLoader;->loadAlreadyLocked(Landroid/content/Context;)V

    .line 149
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onNativeInitializationComplete(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 381
    invoke-direct {p0, p1}, Lorg/chromium/base/library_loader/LibraryLoader;->recordBrowserProcessHistogram(Landroid/content/Context;)V

    .line 382
    return-void
.end method

.method public registerRendererProcessHistogram(ZZ)V
    .locals 2

    .prologue
    .line 414
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getInstance()Lorg/chromium/base/library_loader/Linker;

    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->isUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-wide v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryLoadTimeMs:J

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/chromium/base/library_loader/LibraryLoader;->nativeRegisterChromiumAndroidLinkerRendererHistogram(ZZJ)V

    .line 419
    :cond_0
    return-void
.end method
