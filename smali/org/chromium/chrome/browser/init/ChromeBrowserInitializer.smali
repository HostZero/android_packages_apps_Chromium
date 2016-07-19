.class public Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;
.super Ljava/lang/Object;
.source "ChromeBrowserInitializer.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sChromeBrowserInitiliazer:Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;


# instance fields
.field private final mApplication:Lorg/chromium/chrome/browser/ChromeApplication;

.field private final mHandler:Landroid/os/Handler;

.field private final mInitialLocale:Ljava/util/Locale;

.field private mMinidumpDirectoryObserver:Lorg/chromium/chrome/browser/crash/MinidumpDirectoryObserver;

.field private mNativeInitializationComplete:Z

.field private mPostInflationStartupComplete:Z

.field private mPreInflationStartupComplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mInitialLocale:Ljava/util/Locale;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ChromeApplication;

    iput-object v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mApplication:Lorg/chromium/chrome/browser/ChromeApplication;

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mHandler:Landroid/os/Handler;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;)Lorg/chromium/chrome/browser/ChromeApplication;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mApplication:Lorg/chromium/chrome/browser/ChromeApplication;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->onStartNativeInitialization()V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->onFinishNativeInitialization()V

    return-void
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;)Lorg/chromium/chrome/browser/crash/MinidumpDirectoryObserver;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mMinidumpDirectoryObserver:Lorg/chromium/chrome/browser/crash/MinidumpDirectoryObserver;

    return-object v0
.end method

.method static synthetic access$402(Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;Lorg/chromium/chrome/browser/crash/MinidumpDirectoryObserver;)Lorg/chromium/chrome/browser/crash/MinidumpDirectoryObserver;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mMinidumpDirectoryObserver:Lorg/chromium/chrome/browser/crash/MinidumpDirectoryObserver;

    return-object p1
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;)Ljava/util/Locale;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mInitialLocale:Ljava/util/Locale;

    return-object v0
.end method

.method private createLocaleActivityStateListener()Lorg/chromium/base/ApplicationStatus$ActivityStateListener;
    .locals 1

    .prologue
    .line 409
    new-instance v0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$10;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$10;-><init>(Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;)V

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->sChromeBrowserInitiliazer:Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->sChromeBrowserInitiliazer:Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

    .line 97
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->sChromeBrowserInitiliazer:Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

    return-object v0
.end method

.method public static initNetworkChangeNotifier(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 361
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 362
    const-string/jumbo v0, "NetworkChangeNotifier.init"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 364
    invoke-static {p0}, Lorg/chromium/net/NetworkChangeNotifier;->init(Landroid/content/Context;)Lorg/chromium/net/NetworkChangeNotifier;

    .line 365
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifier;->setAutoDetectConnectivityState(Z)V

    .line 366
    const-string/jumbo v0, "NetworkChangeNotifier.init"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method private onFinishNativeInitialization()V
    .locals 3

    .prologue
    .line 376
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mNativeInitializationComplete:Z

    if-eqz v0, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mNativeInitializationComplete:Z

    .line 379
    new-instance v0, Lorg/chromium/chrome/browser/FileProviderHelper;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/FileProviderHelper;-><init>()V

    invoke-static {v0}, Lorg/chromium/base/ContentUriUtils;->setFileProviderUtil(Lorg/chromium/base/ContentUriUtils$FileProviderUtil;)V

    .line 381
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "MinidumpDirectoryObserver"

    const-string/jumbo v2, "Enabled"

    invoke-static {v1, v2}, Lorg/chromium/components/variations/VariationsAssociatedData;->getVariationParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    new-instance v0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$9;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$9;-><init>(Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$9;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private onStartNativeInitialization()V
    .locals 1

    .prologue
    .line 370
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 371
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mNativeInitializationComplete:Z

    if-eqz v0, :cond_0

    .line 373
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mApplication:Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-static {v0}, Lorg/chromium/content/browser/SpeechRecognition;->initialize(Landroid/content/Context;)Z

    goto :goto_0
.end method

.method private postInflationStartup()V
    .locals 1

    .prologue
    .line 190
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 191
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mPostInflationStartupComplete:Z

    if-eqz v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mApplication:Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-static {v0}, Lorg/chromium/base/ResourceExtractor;->get(Landroid/content/Context;)Lorg/chromium/base/ResourceExtractor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/base/ResourceExtractor;->startExtractingResources()V

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mPostInflationStartupComplete:Z

    goto :goto_0
.end method

.method private preInflationStartup()V
    .locals 1

    .prologue
    .line 170
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 171
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mPreInflationStartupComplete:Z

    if-eqz v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mApplication:Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-static {v0}, Lorg/chromium/content/app/ContentApplication;->initCommandLine(Landroid/content/Context;)V

    .line 177
    invoke-direct {p0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->waitForDebuggerIfNeeded()V

    .line 178
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeStrictMode;->configureStrictMode()V

    .line 180
    invoke-direct {p0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->warmUpSharedPrefs()V

    .line 182
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mApplication:Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-static {v0}, Lorg/chromium/content/browser/DeviceUtils;->addDeviceSpecificUserAgentSwitch(Landroid/content/Context;)V

    .line 183
    invoke-direct {p0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->createLocaleActivityStateListener()Lorg/chromium/base/ApplicationStatus$ActivityStateListener;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/base/ApplicationStatus;->registerStateListenerForAllActivities(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;)V

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mPreInflationStartupComplete:Z

    goto :goto_0
.end method

.method private preInflationStartupDone()V
    .locals 2

    .prologue
    .line 154
    invoke-static {}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->disableDomainReliability()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string/jumbo v1, "disable-domain-reliability"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->appendSwitch(Ljava/lang/String;)V

    .line 157
    :cond_0
    return-void
.end method

.method private startChromeBrowserProcessesAsync(Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;)V
    .locals 2

    .prologue
    .line 330
    :try_start_0
    const-string/jumbo v0, "ChromeBrowserInitializer.startChromeBrowserProcessesAsync"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mApplication:Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-static {}, Lorg/chromium/policy/CombinedPolicyProvider;->get()Lorg/chromium/policy/CombinedPolicyProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ChromeApplication;->registerPolicyProviders(Lorg/chromium/policy/CombinedPolicyProvider;)V

    .line 332
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mApplication:Lorg/chromium/chrome/browser/ChromeApplication;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/chromium/content/browser/BrowserStartupController;->get(Landroid/content/Context;I)Lorg/chromium/content/browser/BrowserStartupController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/BrowserStartupController;->startBrowserProcessesAsync(Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    const-string/jumbo v0, "ChromeBrowserInitializer.startChromeBrowserProcessesAsync"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 336
    return-void

    .line 335
    :catchall_0
    move-exception v0

    const-string/jumbo v1, "ChromeBrowserInitializer.startChromeBrowserProcessesAsync"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
.end method

.method private startChromeBrowserProcessesSync()V
    .locals 3

    .prologue
    .line 341
    :try_start_0
    const-string/jumbo v0, "ChromeBrowserInitializer.startChromeBrowserProcessesSync"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 342
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 343
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mApplication:Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeApplication;->initCommandLine()V

    .line 344
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->get(I)Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v0

    .line 345
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 346
    iget-object v2, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mApplication:Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-virtual {v0, v2}, Lorg/chromium/base/library_loader/LibraryLoader;->ensureInitialized(Landroid/content/Context;)V

    .line 347
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 348
    invoke-virtual {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->asyncPrefetchLibrariesToMemory()V

    .line 351
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mApplication:Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-static {}, Lorg/chromium/policy/CombinedPolicyProvider;->get()Lorg/chromium/policy/CombinedPolicyProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ChromeApplication;->registerPolicyProviders(Lorg/chromium/policy/CombinedPolicyProvider;)V

    .line 352
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mApplication:Lorg/chromium/chrome/browser/ChromeApplication;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/chromium/content/browser/BrowserStartupController;->get(Landroid/content/Context;I)Lorg/chromium/content/browser/BrowserStartupController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/BrowserStartupController;->startBrowserProcessesSync(Z)V

    .line 354
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mApplication:Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-static {v0}, Lorg/chromium/chrome/browser/services/GoogleServicesManager;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/services/GoogleServicesManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    const-string/jumbo v0, "ChromeBrowserInitializer.startChromeBrowserProcessesSync"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 357
    return-void

    .line 356
    :catchall_0
    move-exception v0

    const-string/jumbo v1, "ChromeBrowserInitializer.startChromeBrowserProcessesSync"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
.end method

.method private waitForDebuggerIfNeeded()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 401
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string/jumbo v1, "wait-for-java-debugger"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    const-string/jumbo v0, "BrowserInitializer"

    const-string/jumbo v1, "Waiting for Java debugger to connect..."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 404
    const-string/jumbo v0, "BrowserInitializer"

    const-string/jumbo v1, "Java debugger connected. Resuming execution."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    :cond_0
    return-void
.end method

.method private warmUpSharedPrefs()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mApplication:Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 165
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mApplication:Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelImpl;->warmUpSharedPrefs(Landroid/content/Context;)V

    .line 166
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mApplication:Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-static {v0}, Lorg/chromium/chrome/browser/webapps/ActivityAssigner;->warmUpSharedPrefs(Landroid/content/Context;)V

    .line 167
    return-void
.end method


# virtual methods
.method public handlePostNativeStartup(ZLorg/chromium/chrome/browser/init/BrowserParts;)V
    .locals 2

    .prologue
    .line 211
    sget-boolean v0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Tried to start the browser on the wrong thread"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 215
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeVersionInfo;->isWorkBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->nativeSetSqlMmapDisabledByDefault()V

    .line 219
    :cond_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 240
    new-instance v0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$1;

    invoke-direct {v0, p0, p1, v1}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$1;-><init>(Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;ZLjava/util/LinkedList;)V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$2;

    invoke-direct {v0, p0, p1, v1}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$2;-><init>(Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;ZLjava/util/LinkedList;)V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 254
    new-instance v0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$3;

    invoke-direct {v0, p0, p1, v1, p2}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$3;-><init>(Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;ZLjava/util/LinkedList;Lorg/chromium/chrome/browser/init/BrowserParts;)V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 270
    new-instance v0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$4;

    invoke-direct {v0, p0, p1, v1, p2}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$4;-><init>(Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;ZLjava/util/LinkedList;Lorg/chromium/chrome/browser/init/BrowserParts;)V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 278
    new-instance v0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$5;

    invoke-direct {v0, p0, p1, v1, p2}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$5;-><init>(Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;ZLjava/util/LinkedList;Lorg/chromium/chrome/browser/init/BrowserParts;)V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 286
    new-instance v0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$6;

    invoke-direct {v0, p0, p1, v1}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$6;-><init>(Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;ZLjava/util/LinkedList;)V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 293
    new-instance v0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$7;

    invoke-direct {v0, p0, p1, v1, p2}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$7;-><init>(Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;ZLjava/util/LinkedList;Lorg/chromium/chrome/browser/init/BrowserParts;)V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mApplication:Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeApplication;->getChildProcessCreationParams()Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessLauncher;->setChildProcessCreationParams(Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;)V

    .line 304
    if-eqz p1, :cond_3

    .line 308
    new-instance v0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$8;

    invoke-direct {v0, p0, p2, v1}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer$8;-><init>(Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;Lorg/chromium/chrome/browser/init/BrowserParts;Ljava/util/LinkedList;)V

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->startChromeBrowserProcessesAsync(Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;)V

    .line 325
    :cond_2
    return-void

    .line 321
    :cond_3
    invoke-direct {p0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->startChromeBrowserProcessesSync()V

    .line 322
    invoke-virtual {v1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 323
    sget-boolean v0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public handlePreNativeStartup(Lorg/chromium/chrome/browser/init/BrowserParts;)V
    .locals 2

    .prologue
    .line 134
    sget-boolean v0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Tried to start the browser on the wrong thread"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 136
    :cond_0
    const-string/jumbo v0, "chrome"

    iget-object v1, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mApplication:Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-static {v0, v1}, Lorg/chromium/base/PathUtils;->setPrivateDataDirectorySuffix(Ljava/lang/String;Landroid/content/Context;)V

    .line 138
    invoke-direct {p0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->preInflationStartup()V

    .line 139
    invoke-interface {p1}, Lorg/chromium/chrome/browser/init/BrowserParts;->preInflationStartup()V

    .line 140
    invoke-direct {p0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->preInflationStartupDone()V

    .line 141
    invoke-interface {p1}, Lorg/chromium/chrome/browser/init/BrowserParts;->setContentViewAndLoadLibrary()V

    .line 142
    invoke-direct {p0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->postInflationStartup()V

    .line 143
    invoke-interface {p1}, Lorg/chromium/chrome/browser/init/BrowserParts;->postInflationStartup()V

    .line 144
    return-void
.end method

.method public handleSynchronousStartup()V
    .locals 3

    .prologue
    .line 119
    sget-boolean v0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Tried to start the browser on the wrong thread"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 121
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->mApplication:Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-static {v0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

    move-result-object v0

    .line 122
    new-instance v1, Lorg/chromium/chrome/browser/init/EmptyBrowserParts;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/init/EmptyBrowserParts;-><init>()V

    .line 123
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->handlePreNativeStartup(Lorg/chromium/chrome/browser/init/BrowserParts;)V

    .line 124
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->handlePostNativeStartup(ZLorg/chromium/chrome/browser/init/BrowserParts;)V

    .line 125
    return-void
.end method
