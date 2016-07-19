.class public Lorg/chromium/base/ResourceExtractor;
.super Ljava/lang/Object;
.source "ResourceExtractor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sInstance:Lorg/chromium/base/ResourceExtractor;

.field private static sResourcesToExtract:[Lorg/chromium/base/ResourceExtractor$ResourceEntry;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mExtractTask:Lorg/chromium/base/ResourceExtractor$ExtractTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    const-class v0, Lorg/chromium/base/ResourceExtractor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/base/ResourceExtractor;->$assertionsDisabled:Z

    .line 41
    new-array v0, v1, [Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    sput-object v0, Lorg/chromium/base/ResourceExtractor;->sResourcesToExtract:[Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    return-void

    :cond_0
    move v0, v1

    .line 34
    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/base/ResourceExtractor;->mContext:Landroid/content/Context;

    .line 268
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/base/ResourceExtractor;)Ljava/io/File;
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor;->getOutputDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/base/ResourceExtractor;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor;->deleteFiles()V

    return-void
.end method

.method static synthetic access$200()[Lorg/chromium/base/ResourceExtractor$ResourceEntry;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/chromium/base/ResourceExtractor;->sResourcesToExtract:[Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/base/ResourceExtractor;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/chromium/base/ResourceExtractor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private deleteFiles()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 365
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor;->getAppDataDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "icudtl.dat"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 367
    const-string/jumbo v2, "cr.base"

    const-string/jumbo v3, "Unable to remove the icudata %s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor;->getAppDataDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "natives_blob.bin"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 370
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 371
    const-string/jumbo v2, "cr.base"

    const-string/jumbo v3, "Unable to remove the v8 data %s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor;->getAppDataDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "snapshot_blob.bin"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 374
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    .line 375
    const-string/jumbo v2, "cr.base"

    const-string/jumbo v3, "Unable to remove the v8 data %s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    :cond_2
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor;->getOutputDir()Ljava/io/File;

    move-result-object v0

    .line 378
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 379
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 381
    if-eqz v2, :cond_4

    .line 382
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_4

    aget-object v4, v2, v0

    .line 383
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_3

    .line 384
    const-string/jumbo v5, "cr.base"

    const-string/jumbo v6, "Unable to remove existing resource %s"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v1

    invoke-static {v5, v6, v7}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_4
    return-void
.end method

.method public static get(Landroid/content/Context;)Lorg/chromium/base/ResourceExtractor;
    .locals 1

    .prologue
    .line 249
    sget-object v0, Lorg/chromium/base/ResourceExtractor;->sInstance:Lorg/chromium/base/ResourceExtractor;

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Lorg/chromium/base/ResourceExtractor;

    invoke-direct {v0, p0}, Lorg/chromium/base/ResourceExtractor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/base/ResourceExtractor;->sInstance:Lorg/chromium/base/ResourceExtractor;

    .line 252
    :cond_0
    sget-object v0, Lorg/chromium/base/ResourceExtractor;->sInstance:Lorg/chromium/base/ResourceExtractor;

    return-object v0
.end method

.method private getAppDataDir()Ljava/io/File;
    .locals 2

    .prologue
    .line 348
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/chromium/base/ResourceExtractor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/chromium/base/PathUtils;->getDataDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getOutputDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 352
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor;->getAppDataDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "paks"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static setResourcesToExtract([Lorg/chromium/base/ResourceExtractor$ResourceEntry;)V
    .locals 2

    .prologue
    .line 262
    sget-boolean v0, Lorg/chromium/base/ResourceExtractor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/base/ResourceExtractor;->sInstance:Lorg/chromium/base/ResourceExtractor;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/base/ResourceExtractor;->sInstance:Lorg/chromium/base/ResourceExtractor;

    iget-object v0, v0, Lorg/chromium/base/ResourceExtractor;->mExtractTask:Lorg/chromium/base/ResourceExtractor$ExtractTask;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Must be called before startExtractingResources is called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 263
    :cond_0
    sput-object p0, Lorg/chromium/base/ResourceExtractor;->sResourcesToExtract:[Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    .line 264
    return-void
.end method

.method private static shouldSkipPakExtraction()Z
    .locals 1

    .prologue
    .line 395
    sget-object v0, Lorg/chromium/base/ResourceExtractor;->sResourcesToExtract:[Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addCompletionCallback(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 308
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 310
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 311
    invoke-static {}, Lorg/chromium/base/ResourceExtractor;->shouldSkipPakExtraction()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 323
    :goto_0
    return-void

    .line 316
    :cond_0
    sget-boolean v1, Lorg/chromium/base/ResourceExtractor;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/chromium/base/ResourceExtractor;->mExtractTask:Lorg/chromium/base/ResourceExtractor$ExtractTask;

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 317
    :cond_1
    sget-boolean v1, Lorg/chromium/base/ResourceExtractor;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/chromium/base/ResourceExtractor;->mExtractTask:Lorg/chromium/base/ResourceExtractor$ExtractTask;

    invoke-virtual {v1}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 318
    :cond_2
    iget-object v1, p0, Lorg/chromium/base/ResourceExtractor;->mExtractTask:Lorg/chromium/base/ResourceExtractor$ExtractTask;

    invoke-virtual {v1}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_3

    .line 319
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 321
    :cond_3
    iget-object v0, p0, Lorg/chromium/base/ResourceExtractor;->mExtractTask:Lorg/chromium/base/ResourceExtractor$ExtractTask;

    # getter for: Lorg/chromium/base/ResourceExtractor$ExtractTask;->mCompletionCallbacks:Ljava/util/List;
    invoke-static {v0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->access$400(Lorg/chromium/base/ResourceExtractor$ExtractTask;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public startExtractingResources()V
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lorg/chromium/base/ResourceExtractor;->mExtractTask:Lorg/chromium/base/ResourceExtractor$ExtractTask;

    if-eqz v0, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    invoke-static {}, Lorg/chromium/base/ResourceExtractor;->shouldSkipPakExtraction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Lorg/chromium/base/ResourceExtractor$ExtractTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/base/ResourceExtractor$ExtractTask;-><init>(Lorg/chromium/base/ResourceExtractor;Lorg/chromium/base/ResourceExtractor$1;)V

    iput-object v0, p0, Lorg/chromium/base/ResourceExtractor;->mExtractTask:Lorg/chromium/base/ResourceExtractor$ExtractTask;

    .line 344
    iget-object v0, p0, Lorg/chromium/base/ResourceExtractor;->mExtractTask:Lorg/chromium/base/ResourceExtractor$ExtractTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public waitForCompletion()V
    .locals 1

    .prologue
    .line 278
    invoke-static {}, Lorg/chromium/base/ResourceExtractor;->shouldSkipPakExtraction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 282
    :cond_0
    sget-boolean v0, Lorg/chromium/base/ResourceExtractor;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/base/ResourceExtractor;->mExtractTask:Lorg/chromium/base/ResourceExtractor$ExtractTask;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 285
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/chromium/base/ResourceExtractor;->mExtractTask:Lorg/chromium/base/ResourceExtractor$ExtractTask;

    invoke-virtual {v0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor;->deleteFiles()V

    goto :goto_0

    .line 290
    :catch_1
    move-exception v0

    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor;->deleteFiles()V

    goto :goto_0

    .line 292
    :catch_2
    move-exception v0

    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor;->deleteFiles()V

    goto :goto_0
.end method
