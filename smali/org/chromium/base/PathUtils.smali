.class public abstract Lorg/chromium/base/PathUtils;
.super Ljava/lang/Object;
.source "PathUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sDataDirectoryAppContext:Landroid/content/Context;

.field private static sDataDirectorySuffix:Ljava/lang/String;

.field private static sDirPathFetchTask:Landroid/os/AsyncTask;

.field private static sThumbnailDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lorg/chromium/base/PathUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/base/PathUtils;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lorg/chromium/base/PathUtils;->getOrComputeDirectoryPaths()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lorg/chromium/base/PathUtils;->setPrivateDataDirectorySuffixInternal()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCacheDirectory(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    sget-boolean v0, Lorg/chromium/base/PathUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/base/PathUtils;->sDirPathFetchTask:Landroid/os/AsyncTask;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "setDataDirectorySuffix must be called first."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 169
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/chromium/base/PathUtils;->getDirectoryPath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDataDirectory(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    sget-boolean v0, Lorg/chromium/base/PathUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/base/PathUtils;->sDirPathFetchTask:Landroid/os/AsyncTask;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "setDataDirectorySuffix must be called first."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 150
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/chromium/base/PathUtils;->getDirectoryPath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDatabaseDirectory(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    sget-boolean v0, Lorg/chromium/base/PathUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/base/PathUtils;->sDirPathFetchTask:Landroid/os/AsyncTask;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "setDataDirectorySuffix must be called first."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 159
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/chromium/base/PathUtils;->getDirectoryPath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDirectoryPath(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    # getter for: Lorg/chromium/base/PathUtils$Holder;->DIRECTORY_PATHS:[Ljava/lang/String;
    invoke-static {}, Lorg/chromium/base/PathUtils$Holder;->access$200()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method private static getDownloadsDirectory(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 201
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 204
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 205
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 207
    const-string/jumbo v4, "Android.StrictMode.DownloadsDir"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, v2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v4, v2, v3, v5}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 212
    return-object v0

    .line 210
    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0
.end method

.method public static getExternalStorageDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getNativeLibraryDirectory(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 222
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    .line 224
    :cond_0
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 227
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "/system/lib/"

    goto :goto_0
.end method

.method private static getOrComputeDirectoryPaths()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    :try_start_0
    sget-object v0, Lorg/chromium/base/PathUtils;->sDirPathFetchTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 74
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    :try_start_1
    invoke-static {}, Lorg/chromium/base/PathUtils;->setPrivateDataDirectorySuffixInternal()[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 80
    :try_start_2
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 91
    :goto_0
    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    .line 89
    :catch_0
    move-exception v0

    .line 91
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 85
    :cond_0
    sget-object v0, Lorg/chromium/base/PathUtils;->sDirPathFetchTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static getThumbnailCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 6

    .prologue
    .line 173
    sget-object v0, Lorg/chromium/base/PathUtils;->sThumbnailDirectory:Ljava/io/File;

    if-nez v0, :cond_0

    .line 175
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 176
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 178
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 179
    const-string/jumbo v0, "textures"

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/PathUtils;->sThumbnailDirectory:Ljava/io/File;

    .line 180
    const-string/jumbo v0, "Android.StrictMode.ThumbnailCacheDir"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v3, v4}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 186
    :cond_0
    sget-object v0, Lorg/chromium/base/PathUtils;->sThumbnailDirectory:Ljava/io/File;

    return-object v0

    .line 183
    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0
.end method

.method public static getThumbnailCacheDirectoryPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    invoke-static {p0}, Lorg/chromium/base/PathUtils;->getThumbnailCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setPrivateDataDirectorySuffix(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 126
    sput-object p0, Lorg/chromium/base/PathUtils;->sDataDirectorySuffix:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/PathUtils;->sDataDirectoryAppContext:Landroid/content/Context;

    .line 128
    new-instance v0, Lorg/chromium/base/PathUtils$1;

    invoke-direct {v0}, Lorg/chromium/base/PathUtils$1;-><init>()V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/base/PathUtils$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/PathUtils;->sDirPathFetchTask:Landroid/os/AsyncTask;

    .line 134
    return-void
.end method

.method private static setPrivateDataDirectorySuffixInternal()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 103
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 104
    sget-object v1, Lorg/chromium/base/PathUtils;->sDataDirectoryAppContext:Landroid/content/Context;

    sget-object v2, Lorg/chromium/base/PathUtils;->sDataDirectorySuffix:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 106
    const/4 v1, 0x1

    sget-object v2, Lorg/chromium/base/PathUtils;->sDataDirectoryAppContext:Landroid/content/Context;

    const-string/jumbo v3, "foo"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 107
    sget-object v1, Lorg/chromium/base/PathUtils;->sDataDirectoryAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 108
    const/4 v1, 0x2

    sget-object v2, Lorg/chromium/base/PathUtils;->sDataDirectoryAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 110
    :cond_0
    return-object v0
.end method
