.class public Lorg/chromium/content/browser/BrowserStartupController;
.super Ljava/lang/Object;
.source "BrowserStartupController.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final STARTUP_FAILURE:I = 0x1

.field static final STARTUP_SUCCESS:I = -0x1

.field private static sBrowserMayStartAsynchronously:Z

.field private static sInstance:Lorg/chromium/content/browser/BrowserStartupController;


# instance fields
.field private final mAsyncStartupCallbacks:Ljava/util/List;

.field private final mContext:Landroid/content/Context;

.field private mHasStartedInitializingBrowserProcess:Z

.field private mLibraryProcessType:I

.field private mPostResourceExtractionTasksCompleted:Z

.field private mStartupDone:Z

.field private mStartupSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    const-class v0, Lorg/chromium/content/browser/BrowserStartupController;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/BrowserStartupController;->$assertionsDisabled:Z

    .line 64
    sput-boolean v1, Lorg/chromium/content/browser/BrowserStartupController;->sBrowserMayStartAsynchronously:Z

    return-void

    :cond_0
    move v0, v1

    .line 39
    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mContext:Landroid/content/Context;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mAsyncStartupCallbacks:Ljava/util/List;

    .line 112
    iput p2, p0, Lorg/chromium/content/browser/BrowserStartupController;->mLibraryProcessType:I

    .line 113
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/BrowserStartupController;IZ)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/BrowserStartupController;->enqueueCallbackExecution(IZ)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/BrowserStartupController;IZ)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/BrowserStartupController;->executeEnqueuedCallbacks(IZ)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/BrowserStartupController;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mStartupSuccess:Z

    return v0
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/BrowserStartupController;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mPostResourceExtractionTasksCompleted:Z

    return v0
.end method

.method static synthetic access$302(Lorg/chromium/content/browser/BrowserStartupController;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lorg/chromium/content/browser/BrowserStartupController;->mPostResourceExtractionTasksCompleted:Z

    return p1
.end method

.method static synthetic access$400(Lorg/chromium/content/browser/BrowserStartupController;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lorg/chromium/content/browser/BrowserStartupController;->nativeIsPluginEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lorg/chromium/content/browser/BrowserStartupController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/chromium/content/browser/BrowserStartupController;->getPlugins()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-static {p0, p1}, Lorg/chromium/content/browser/BrowserStartupController;->nativeSetCommandLineFlags(ZLjava/lang/String;)V

    return-void
.end method

.method static browserMayStartAsynchonously()Z
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lorg/chromium/content/browser/BrowserStartupController;->sBrowserMayStartAsynchronously:Z

    return v0
.end method

.method static browserStartupComplete(I)V
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lorg/chromium/content/browser/BrowserStartupController;->sInstance:Lorg/chromium/content/browser/BrowserStartupController;

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lorg/chromium/content/browser/BrowserStartupController;->sInstance:Lorg/chromium/content/browser/BrowserStartupController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/content/browser/BrowserStartupController;->executeEnqueuedCallbacks(IZ)V

    .line 82
    :cond_0
    return-void
.end method

.method private enqueueCallbackExecution(IZ)V
    .locals 2

    .prologue
    .line 251
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/chromium/content/browser/BrowserStartupController$2;

    invoke-direct {v1, p0, p1, p2}, Lorg/chromium/content/browser/BrowserStartupController$2;-><init>(Lorg/chromium/content/browser/BrowserStartupController;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 257
    return-void
.end method

.method private executeEnqueuedCallbacks(IZ)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 234
    sget-boolean v1, Lorg/chromium/content/browser/BrowserStartupController;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Callback from browser startup from wrong thread."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 235
    :cond_0
    iput-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mStartupDone:Z

    .line 236
    if-gtz p1, :cond_1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mStartupSuccess:Z

    .line 237
    iget-object v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mAsyncStartupCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;

    .line 238
    iget-boolean v2, p0, Lorg/chromium/content/browser/BrowserStartupController;->mStartupSuccess:Z

    if-eqz v2, :cond_2

    .line 239
    invoke-interface {v0, p2}, Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;->onSuccess(Z)V

    goto :goto_1

    .line 236
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 241
    :cond_2
    invoke-interface {v0}, Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;->onFailure()V

    goto :goto_1

    .line 245
    :cond_3
    iget-object v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mAsyncStartupCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 246
    return-void
.end method

.method public static get(Landroid/content/Context;I)Lorg/chromium/content/browser/BrowserStartupController;
    .locals 2

    .prologue
    .line 125
    sget-boolean v0, Lorg/chromium/content/browser/BrowserStartupController;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Tried to start the browser on the wrong thread."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 126
    :cond_0
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 127
    sget-object v0, Lorg/chromium/content/browser/BrowserStartupController;->sInstance:Lorg/chromium/content/browser/BrowserStartupController;

    if-nez v0, :cond_2

    .line 128
    sget-boolean v0, Lorg/chromium/content/browser/BrowserStartupController;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-eq v0, p1, :cond_1

    const/4 v0, 0x3

    if-eq v0, p1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 130
    :cond_1
    new-instance v0, Lorg/chromium/content/browser/BrowserStartupController;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/BrowserStartupController;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lorg/chromium/content/browser/BrowserStartupController;->sInstance:Lorg/chromium/content/browser/BrowserStartupController;

    .line 132
    :cond_2
    sget-boolean v0, Lorg/chromium/content/browser/BrowserStartupController;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    sget-object v0, Lorg/chromium/content/browser/BrowserStartupController;->sInstance:Lorg/chromium/content/browser/BrowserStartupController;

    iget v0, v0, Lorg/chromium/content/browser/BrowserStartupController;->mLibraryProcessType:I

    if-eq v0, p1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Wrong process type"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 133
    :cond_3
    sget-object v0, Lorg/chromium/content/browser/BrowserStartupController;->sInstance:Lorg/chromium/content/browser/BrowserStartupController;

    return-object v0
.end method

.method private getPlugins()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/content/browser/PepperPluginManager;->getPlugins(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native nativeIsOfficialBuild()Z
.end method

.method private static native nativeIsPluginEnabled()Z
.end method

.method private static native nativeSetCommandLineFlags(ZLjava/lang/String;)V
.end method

.method static overrideInstanceForTest(Lorg/chromium/content/browser/BrowserStartupController;)Lorg/chromium/content/browser/BrowserStartupController;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lorg/chromium/content/browser/BrowserStartupController;->sInstance:Lorg/chromium/content/browser/BrowserStartupController;

    if-nez v0, :cond_0

    .line 139
    sput-object p0, Lorg/chromium/content/browser/BrowserStartupController;->sInstance:Lorg/chromium/content/browser/BrowserStartupController;

    .line 141
    :cond_0
    sget-object v0, Lorg/chromium/content/browser/BrowserStartupController;->sInstance:Lorg/chromium/content/browser/BrowserStartupController;

    return-object v0
.end method

.method private postStartupCompleted(Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;)V
    .locals 2

    .prologue
    .line 260
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/chromium/content/browser/BrowserStartupController$3;

    invoke-direct {v1, p0, p1}, Lorg/chromium/content/browser/BrowserStartupController$3;-><init>(Lorg/chromium/content/browser/BrowserStartupController;Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 270
    return-void
.end method

.method private static setAsynchronousStartup(Z)V
    .locals 0

    .prologue
    .line 67
    sput-boolean p0, Lorg/chromium/content/browser/BrowserStartupController;->sBrowserMayStartAsynchronously:Z

    .line 68
    return-void
.end method


# virtual methods
.method public addStartupCompletedObserver(Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;)V
    .locals 1

    .prologue
    .line 225
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 226
    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mStartupDone:Z

    if-eqz v0, :cond_0

    .line 227
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/BrowserStartupController;->postStartupCompleted(Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;)V

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mAsyncStartupCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method contentStart()I
    .locals 1

    .prologue
    .line 221
    invoke-static {}, Lorg/chromium/content/app/ContentMain;->start()I

    move-result v0

    return v0
.end method

.method prepareToStartBrowserProcess(ZLjava/lang/Runnable;)V
    .locals 5

    .prologue
    .line 276
    const-string/jumbo v0, "cr.BrowserStartup"

    const-string/jumbo v1, "Initializing chromium process, singleProcess=%b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    iget-object v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/base/ResourceExtractor;->get(Landroid/content/Context;)Lorg/chromium/base/ResourceExtractor;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Lorg/chromium/base/ResourceExtractor;->startExtractingResources()V

    .line 286
    iget v1, p0, Lorg/chromium/content/browser/BrowserStartupController;->mLibraryProcessType:I

    invoke-static {v1}, Lorg/chromium/base/library_loader/LibraryLoader;->get(I)Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/content/browser/BrowserStartupController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lorg/chromium/base/library_loader/LibraryLoader;->ensureInitialized(Landroid/content/Context;)V

    .line 288
    new-instance v1, Lorg/chromium/content/browser/BrowserStartupController$4;

    invoke-direct {v1, p0, p1, p2}, Lorg/chromium/content/browser/BrowserStartupController$4;-><init>(Lorg/chromium/content/browser/BrowserStartupController;ZLjava/lang/Runnable;)V

    .line 305
    if-nez p2, :cond_0

    .line 308
    invoke-virtual {v0}, Lorg/chromium/base/ResourceExtractor;->waitForCompletion()V

    .line 309
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 313
    :goto_0
    return-void

    .line 311
    :cond_0
    invoke-virtual {v0, v1}, Lorg/chromium/base/ResourceExtractor;->addCompletionCallback(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public startBrowserProcessesAsync(Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 154
    sget-boolean v0, Lorg/chromium/content/browser/BrowserStartupController;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Tried to start the browser on the wrong thread."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 155
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mStartupDone:Z

    if-eqz v0, :cond_2

    .line 158
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/BrowserStartupController;->postStartupCompleted(Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;)V

    .line 182
    :cond_1
    :goto_0
    return-void

    .line 163
    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mAsyncStartupCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mHasStartedInitializingBrowserProcess:Z

    if-nez v0, :cond_1

    .line 168
    iput-boolean v1, p0, Lorg/chromium/content/browser/BrowserStartupController;->mHasStartedInitializingBrowserProcess:Z

    .line 170
    invoke-static {v1}, Lorg/chromium/content/browser/BrowserStartupController;->setAsynchronousStartup(Z)V

    .line 171
    const/4 v0, 0x0

    new-instance v1, Lorg/chromium/content/browser/BrowserStartupController$1;

    invoke-direct {v1, p0}, Lorg/chromium/content/browser/BrowserStartupController$1;-><init>(Lorg/chromium/content/browser/BrowserStartupController;)V

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/BrowserStartupController;->prepareToStartBrowserProcess(ZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public startBrowserProcessesSync(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 197
    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mStartupDone:Z

    if-nez v0, :cond_2

    .line 198
    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mHasStartedInitializingBrowserProcess:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mPostResourceExtractionTasksCompleted:Z

    if-nez v0, :cond_1

    .line 199
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/chromium/content/browser/BrowserStartupController;->prepareToStartBrowserProcess(ZLjava/lang/Runnable;)V

    .line 202
    :cond_1
    invoke-static {v1}, Lorg/chromium/content/browser/BrowserStartupController;->setAsynchronousStartup(Z)V

    .line 203
    invoke-virtual {p0}, Lorg/chromium/content/browser/BrowserStartupController;->contentStart()I

    move-result v0

    if-lez v0, :cond_2

    .line 205
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/BrowserStartupController;->enqueueCallbackExecution(IZ)V

    .line 210
    :cond_2
    sget-boolean v0, Lorg/chromium/content/browser/BrowserStartupController;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mStartupDone:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 211
    :cond_3
    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mStartupSuccess:Z

    if-nez v0, :cond_4

    .line 212
    new-instance v0, Lorg/chromium/base/library_loader/ProcessInitException;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/chromium/base/library_loader/ProcessInitException;-><init>(I)V

    throw v0

    .line 214
    :cond_4
    return-void
.end method
