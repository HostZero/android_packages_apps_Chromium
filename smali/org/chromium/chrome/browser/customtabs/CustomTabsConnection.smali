.class public Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;
.super Landroid/support/customtabs/c;
.source "CustomTabsConnection.java"


# static fields
.field static final NO_PRERENDERING_KEY:Ljava/lang/String; = "android.support.customtabs.maylaunchurl.NO_PRERENDERING"

.field private static sInstance:Ljava/util/concurrent/atomic/AtomicReference;


# instance fields
.field protected final mApplication:Landroid/app/Application;

.field protected final mClientManager:Lorg/chromium/chrome/browser/customtabs/ClientManager;

.field private mExternalPrerenderHandler:Lorg/chromium/chrome/browser/prerender/ExternalPrerenderHandler;

.field private final mLogRequests:Z

.field mPrerender:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

.field private mSpareWebContents:Lorg/chromium/content_public/browser/WebContents;

.field private final mWarmupHasBeenCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWarmupHasBeenFinished:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->sInstance:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 2

    .prologue
    .line 114
    invoke-direct {p0}, Landroid/support/customtabs/c;-><init>()V

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mWarmupHasBeenCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 104
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mWarmupHasBeenFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 115
    iput-object p1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mApplication:Landroid/app/Application;

    .line 116
    new-instance v0, Lorg/chromium/chrome/browser/customtabs/ClientManager;

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mApplication:Landroid/app/Application;

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/customtabs/ClientManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mClientManager:Lorg/chromium/chrome/browser/customtabs/ClientManager;

    .line 117
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string/jumbo v1, "custom-tabs-log-service-requests"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mLogRequests:Z

    .line 118
    return-void
.end method

.method static synthetic access$000(Landroid/app/Application;)V
    .locals 0

    .prologue
    .line 70
    invoke-static {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->initializeBrowser(Landroid/app/Application;)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->createSpareWebContents()V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mWarmupHasBeenFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct/range {p0 .. p5}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->highConfidenceMayLaunchUrl(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V

    return-void
.end method

.method private static checkAndConvertUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 249
    if-nez p0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-object v0

    .line 252
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 253
    if-eqz v1, :cond_2

    const-string/jumbo v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 254
    :goto_1
    if-eqz v1, :cond_0

    .line 255
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 253
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private createSpareWebContents()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 239
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 240
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mSpareWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    invoke-static {v1, v1}, Lorg/chromium/chrome/browser/WebContentsFactory;->createWebContents(ZZ)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mSpareWebContents:Lorg/chromium/content_public/browser/WebContents;

    .line 242
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mSpareWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mSpareWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    new-instance v1, Lorg/chromium/content_public/browser/LoadUrlParams;

    const-string/jumbo v2, "about:blank"

    invoke-direct {v1, v2}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/chromium/content_public/browser/NavigationController;->loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)V

    goto :goto_0
.end method

.method private destroySpareWebContents()V
    .locals 1

    .prologue
    .line 392
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 393
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->takeSpareWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    .line 394
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->destroy()V

    .line 395
    :cond_0
    return-void
.end method

.method private estimateContentSize()Landroid/graphics/Point;
    .locals 5

    .prologue
    .line 741
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 742
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mApplication:Landroid/app/Application;

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 743
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 744
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 745
    const-string/jumbo v2, "status_bar_height"

    const-string/jumbo v3, "dimen"

    const-string/jumbo v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 747
    :try_start_0
    iget v3, v1, Landroid/graphics/Point;->y:I

    sget v4, Lorg/chromium/chrome/R$dimen;->custom_tabs_control_container_height:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Point;->y:I

    .line 749
    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int v2, v3, v2

    iput v2, v1, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 754
    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 755
    iget v2, v1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    div-float v0, v2, v0

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 756
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getInstance(Landroid/app/Application;)Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;
    .locals 3

    .prologue
    .line 125
    sget-object v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->sInstance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 126
    check-cast p0, Lorg/chromium/chrome/browser/ChromeApplication;

    .line 127
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeApplication;->initCommandLine()V

    .line 128
    sget-object v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->sInstance:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeApplication;->createCustomTabsConnection()Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->sInstance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    return-object v0
.end method

.method static getSchedulerGroup(I)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "/proc/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/cgroup"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 604
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 606
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 607
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 610
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 612
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 613
    array-length v3, v0

    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    const/4 v3, 0x1

    aget-object v3, v0, v3

    const-string/jumbo v5, "cpu"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    aget-object v0, v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 616
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 621
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 623
    :goto_0
    return-object v0

    .line 616
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 621
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v0, v1

    .line 623
    goto :goto_0

    .line 616
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 621
    :catch_0
    move-exception v0

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0
.end method

.method public static hasWarmUpBeenFinished(Landroid/app/Application;)Z
    .locals 1

    .prologue
    .line 201
    invoke-static {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->getInstance(Landroid/app/Application;)Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    move-result-object v0

    iget-object v0, v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mWarmupHasBeenFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private highConfidenceMayLaunchUrl(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 266
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 267
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->cancelPrerender(Landroid/os/IBinder;)V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    if-eqz p4, :cond_3

    const-string/jumbo v0, "android.support.customtabs.maylaunchurl.NO_PRERENDERING"

    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 273
    :goto_1
    invoke-static {}, Lorg/chromium/chrome/browser/WarmupManager;->getInstance()Lorg/chromium/chrome/browser/WarmupManager;

    move-result-object v2

    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Lorg/chromium/chrome/browser/WarmupManager;->maybePreconnectUrlAndSubResources(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V

    .line 276
    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mayPrerender()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    invoke-direct {p0, p1, p3, p4, p2}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->prerenderUrl(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)Z

    move-result v1

    .line 279
    :cond_2
    invoke-direct {p0, p5}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->preconnectUrls(Ljava/util/List;)Z

    .line 280
    if-nez v1, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->createSpareWebContents()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 271
    goto :goto_1
.end method

.method private static initializeBrowser(Landroid/app/Application;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 167
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 169
    :try_start_0
    invoke-static {p0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->handleSynchronousStartup()V
    :try_end_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, v1

    .line 177
    check-cast v0, Lorg/chromium/chrome/browser/ChromeApplication;

    .line 178
    new-instance v2, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$2;

    invoke-direct {v2, v1, v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$2;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/ChromeApplication;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v0, v3}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 185
    invoke-static {v1}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->initNetworkChangeNotifier(Landroid/content/Context;)V

    .line 186
    invoke-static {}, Lorg/chromium/chrome/browser/WarmupManager;->getInstance()Lorg/chromium/chrome/browser/WarmupManager;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$layout;->custom_tabs_control_container:I

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/WarmupManager;->initializeViewHierarchy(Landroid/content/Context;I)V

    .line 188
    return-void

    .line 171
    :catch_0
    move-exception v0

    const-string/jumbo v0, "ChromeConnection"

    const-string/jumbo v1, "ProcessInitException while starting the browser process."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method private static isBackgroundProcess(I)Z
    .locals 2

    .prologue
    .line 627
    invoke-static {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->getSchedulerGroup(I)Ljava/lang/String;

    move-result-object v0

    .line 629
    const-string/jumbo v1, "/bg_non_interactive"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "/apps/bg_non_interactive"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCallerForegroundOrSelf()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 638
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 639
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne v6, v0, :cond_1

    .line 655
    :cond_0
    :goto_0
    return v2

    .line 643
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ge v0, v1, :cond_6

    .line 644
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mApplication:Landroid/app/Application;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 646
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 647
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 648
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v3, v6, :cond_3

    move v3, v2

    .line 649
    :goto_2
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-ne v0, v5, :cond_4

    move v5, v2

    .line 651
    :goto_3
    if-nez v3, :cond_5

    move v0, v2

    :goto_4
    and-int/2addr v0, v1

    .line 652
    if-eqz v3, :cond_2

    if-nez v5, :cond_0

    :cond_2
    move v1, v0

    .line 653
    goto :goto_1

    :cond_3
    move v3, v4

    .line 648
    goto :goto_2

    :cond_4
    move v5, v4

    .line 649
    goto :goto_3

    :cond_5
    move v0, v4

    .line 651
    goto :goto_4

    :cond_6
    move v1, v2

    .line 655
    :cond_7
    if-eqz v1, :cond_8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->isBackgroundProcess(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v4

    goto :goto_0

    :cond_8
    move v2, v4

    goto :goto_0
.end method

.method private mayLaunchUrlInternal(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 327
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    if-eqz p4, :cond_2

    move v2, v8

    .line 329
    :goto_0
    invoke-static {p2}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->checkAndConvertUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 330
    if-eqz p2, :cond_3

    if-nez v6, :cond_3

    if-nez v2, :cond_3

    .line 356
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v2, v0

    .line 327
    goto :goto_0

    .line 337
    :cond_3
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->warmupInternal(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    invoke-interface {p1}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 340
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 342
    if-nez v2, :cond_4

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mClientManager:Lorg/chromium/chrome/browser/customtabs/ClientManager;

    invoke-virtual {v1, v4, v5, v6}, Lorg/chromium/chrome/browser/customtabs/ClientManager;->updateStatsAndReturnWhetherAllowed(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 346
    :cond_4
    new-instance v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$4;

    move-object v1, p0

    move-object v3, p4

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$4;-><init>(Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;ZLjava/util/List;Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    move v0, v8

    .line 356
    goto :goto_1
.end method

.method private mayPrerender()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 665
    const-string/jumbo v0, "CustomTabs"

    invoke-static {v0}, Lorg/chromium/base/FieldTrialList;->findFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "DisablePrerender"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 670
    :goto_0
    return v0

    .line 666
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->enablePrerendering()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 667
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 670
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private newSessionInternal(Landroid/support/customtabs/ICustomTabsCallback;)Z
    .locals 3

    .prologue
    .line 155
    new-instance v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$1;-><init>(Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;)V

    .line 161
    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mClientManager:Lorg/chromium/chrome/browser/customtabs/ClientManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, p1, v2, v0}, Lorg/chromium/chrome/browser/customtabs/ClientManager;->newSession(Landroid/support/customtabs/ICustomTabsCallback;ILorg/chromium/chrome/browser/customtabs/ClientManager$DisconnectCallback;)Z

    move-result v0

    return v0
.end method

.method private preconnectUrls(Ljava/util/List;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 297
    .line 298
    if-nez p1, :cond_0

    .line 314
    :goto_0
    return v0

    .line 299
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/WarmupManager;->getInstance()Lorg/chromium/chrome/browser/WarmupManager;

    move-result-object v2

    .line 300
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v3

    .line 301
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 304
    :try_start_0
    const-string/jumbo v5, "android.support.customtabs.otherurls.URL"

    invoke-static {v0, v5}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    invoke-static {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->checkAndConvertUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_2

    .line 310
    invoke-virtual {v2, v3, v0}, Lorg/chromium/chrome/browser/WarmupManager;->maybePreconnectUrlAndSubResources(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V

    .line 311
    const/4 v0, 0x1

    :goto_2
    move v1, v0

    .line 313
    goto :goto_1

    :cond_1
    move v0, v1

    .line 314
    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private prerenderUrl(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 693
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 697
    invoke-static {}, Lorg/chromium/chrome/browser/WarmupManager;->getInstance()Lorg/chromium/chrome/browser/WarmupManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/WarmupManager;->disallowPrerendering()V

    .line 699
    invoke-direct {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mayPrerender()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v7

    .line 727
    :goto_0
    return v0

    .line 700
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mWarmupHasBeenCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v7

    goto :goto_0

    .line 702
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->cancelPrerender(Landroid/os/IBinder;)V

    .line 703
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v7

    goto :goto_0

    .line 704
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mClientManager:Lorg/chromium/chrome/browser/customtabs/ClientManager;

    invoke-virtual {v0, p4}, Lorg/chromium/chrome/browser/customtabs/ClientManager;->isPrerenderingAllowed(I)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v7

    goto :goto_0

    .line 707
    :cond_3
    invoke-direct {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->destroySpareWebContents()V

    .line 709
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 710
    if-eqz p3, :cond_4

    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 711
    :cond_4
    invoke-static {v0}, Lorg/chromium/chrome/browser/IntentHandler;->getExtraHeadersFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    move v0, v7

    goto :goto_0

    .line 712
    :cond_5
    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mExternalPrerenderHandler:Lorg/chromium/chrome/browser/prerender/ExternalPrerenderHandler;

    if-nez v1, :cond_6

    .line 713
    new-instance v1, Lorg/chromium/chrome/browser/prerender/ExternalPrerenderHandler;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/prerender/ExternalPrerenderHandler;-><init>()V

    iput-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mExternalPrerenderHandler:Lorg/chromium/chrome/browser/prerender/ExternalPrerenderHandler;

    .line 715
    :cond_6
    invoke-direct {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->estimateContentSize()Landroid/graphics/Point;

    move-result-object v2

    .line 716
    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 717
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/IntentHandler;->getReferrerUrlIncludingExtraHeaders(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 718
    if-nez v3, :cond_7

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->getReferrerForSession(Landroid/os/IBinder;)Lorg/chromium/content_public/common/Referrer;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 719
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->getReferrerForSession(Landroid/os/IBinder;)Lorg/chromium/content_public/common/Referrer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content_public/common/Referrer;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 721
    :cond_7
    if-nez v3, :cond_8

    const-string/jumbo v3, ""

    .line 722
    :cond_8
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mExternalPrerenderHandler:Lorg/chromium/chrome/browser/prerender/ExternalPrerenderHandler;

    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v1

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/chrome/browser/prerender/ExternalPrerenderHandler;->addPrerender(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;Ljava/lang/String;II)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v6

    .line 724
    if-nez v6, :cond_9

    move v0, v7

    goto :goto_0

    .line 725
    :cond_9
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mClientManager:Lorg/chromium/chrome/browser/customtabs/ClientManager;

    invoke-virtual {v0, p4, p2}, Lorg/chromium/chrome/browser/customtabs/ClientManager;->registerPrerenderRequest(ILjava/lang/String;)V

    .line 726
    new-instance v4, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

    move-object v5, p1

    move-object v7, p2

    move-object v8, v3

    move-object v9, p3

    invoke-direct/range {v4 .. v9}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$PrerenderedUrlParams;-><init>(Landroid/os/IBinder;Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object v4, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mPrerender:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

    .line 727
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private warmupInternal(Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 212
    invoke-direct {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->isCallerForegroundOrSelf()Z

    move-result v2

    if-nez v2, :cond_0

    .line 226
    :goto_0
    return v0

    .line 213
    :cond_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mClientManager:Lorg/chromium/chrome/browser/customtabs/ClientManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/customtabs/ClientManager;->recordUidHasCalledWarmup(I)V

    .line 214
    iget-object v2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mWarmupHasBeenCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 216
    :cond_1
    new-instance v2, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$3;

    invoke-direct {v2, p0, v0, p1}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$3;-><init>(Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;ZZ)V

    invoke-static {v2}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    move v0, v1

    .line 226
    goto :goto_0
.end method


# virtual methods
.method cancelPrerender(Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 675
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 676
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mPrerender:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mPrerender:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

    iget-object v0, v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->mSession:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 677
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mExternalPrerenderHandler:Lorg/chromium/chrome/browser/prerender/ExternalPrerenderHandler;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/prerender/ExternalPrerenderHandler;->cancelCurrentPrerender()V

    .line 678
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mPrerender:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

    iget-object v0, v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->destroy()V

    .line 679
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mPrerender:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

    .line 681
    :cond_1
    return-void
.end method

.method cleanupAll()V
    .locals 1

    .prologue
    .line 660
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 661
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mClientManager:Lorg/chromium/chrome/browser/customtabs/ClientManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/ClientManager;->cleanupAll()V

    .line 662
    return-void
.end method

.method dontKeepAliveForSession(Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mClientManager:Lorg/chromium/chrome/browser/customtabs/ClientManager;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/customtabs/ClientManager;->dontKeepAliveForSession(Landroid/os/IBinder;)V

    .line 590
    return-void
.end method

.method public extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClientPackageNameForSession(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mClientManager:Lorg/chromium/chrome/browser/customtabs/ClientManager;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/customtabs/ClientManager;->getClientPackageNameForSession(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getIgnoreUrlFragmentsForSession(Landroid/os/IBinder;)Z
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mClientManager:Lorg/chromium/chrome/browser/customtabs/ClientManager;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/customtabs/ClientManager;->getIgnoreFragmentsForSession(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method getPrerenderedUrl(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mPrerender:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mPrerender:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

    iget-object v0, v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->mSession:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 505
    :cond_0
    const/4 v0, 0x0

    .line 507
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mPrerender:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

    iget-object v0, v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->mUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getReferrerForSession(Landroid/os/IBinder;)Lorg/chromium/content_public/common/Referrer;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mClientManager:Lorg/chromium/chrome/browser/customtabs/ClientManager;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/customtabs/ClientManager;->getReferrerForSession(Landroid/os/IBinder;)Lorg/chromium/content_public/common/Referrer;

    move-result-object v0

    return-object v0
.end method

.method keepAliveForSession(Landroid/os/IBinder;Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mClientManager:Lorg/chromium/chrome/browser/customtabs/ClientManager;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/customtabs/ClientManager;->keepAliveForSession(Landroid/os/IBinder;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method logCall(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 142
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mLogRequests:Z

    if-eqz v0, :cond_0

    .line 143
    const-string/jumbo v0, "ChromeConnection"

    const-string/jumbo v1, "%s = %b, Calling UID = %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    :cond_0
    return-void
.end method

.method lowConfidenceMayLaunchUrl(Ljava/util/List;)Z
    .locals 1

    .prologue
    .line 290
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 291
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->preconnectUrls(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 293
    :goto_0
    return v0

    .line 292
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->createSpareWebContents()V

    .line 293
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mayLaunchUrl(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 2

    .prologue
    .line 320
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mayLaunchUrlInternal(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result v0

    .line 321
    const-string/jumbo v1, "mayLaunchUrl()"

    invoke-virtual {p0, v1, v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->logCall(Ljava/lang/String;Z)V

    .line 322
    return v0
.end method

.method public newSession(Landroid/support/customtabs/ICustomTabsCallback;)Z
    .locals 2

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->newSessionInternal(Landroid/support/customtabs/ICustomTabsCallback;)Z

    move-result v0

    .line 150
    const-string/jumbo v1, "newSession()"

    invoke-virtual {p0, v1, v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->logCall(Ljava/lang/String;Z)V

    .line 151
    return v0
.end method

.method notifyNavigationEvent(Landroid/os/IBinder;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 553
    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mClientManager:Lorg/chromium/chrome/browser/customtabs/ClientManager;

    invoke-virtual {v1, p1}, Lorg/chromium/chrome/browser/customtabs/ClientManager;->getCallbackForSession(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object v1

    .line 554
    if-nez v1, :cond_0

    .line 563
    :goto_0
    return v0

    .line 556
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, p2, v2}, Landroid/support/customtabs/ICustomTabsCallback;->onNavigationEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    const/4 v0, 0x1

    goto :goto_0

    .line 561
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public overrideUrlIfNecessary(Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 372
    return-object p1
.end method

.method registerLaunch(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mClientManager:Lorg/chromium/chrome/browser/customtabs/ClientManager;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/customtabs/ClientManager;->registerLaunch(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method resetThrottling(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mClientManager:Lorg/chromium/chrome/browser/customtabs/ClientManager;

    invoke-virtual {v0, p2}, Lorg/chromium/chrome/browser/customtabs/ClientManager;->resetThrottling(I)V

    .line 762
    return-void
.end method

.method setIgnoreUrlFragmentsForSession(Landroid/os/IBinder;Z)V
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mClientManager:Lorg/chromium/chrome/browser/customtabs/ClientManager;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/customtabs/ClientManager;->setIgnoreFragmentsForSession(Landroid/os/IBinder;Z)V

    .line 528
    return-void
.end method

.method public shouldHideDomainForSession(Landroid/os/IBinder;)Z
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mClientManager:Lorg/chromium/chrome/browser/customtabs/ClientManager;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/customtabs/ClientManager;->shouldHideDomainForSession(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method showSignInToastIfNecessary(Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 540
    return-void
.end method

.method takePrerenderedUrl(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/content_public/browser/WebContents;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 481
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 482
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mPrerender:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mPrerender:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

    iget-object v0, v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->mSession:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 499
    :goto_0
    return-object v0

    .line 485
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mPrerender:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

    iget-object v0, v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    .line 486
    iget-object v2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mPrerender:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

    iget-object v2, v2, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->mUrl:Ljava/lang/String;

    .line 487
    iget-object v3, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mPrerender:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

    iget-object v3, v3, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->mReferrer:Ljava/lang/String;

    .line 488
    if-nez p3, :cond_2

    const-string/jumbo p3, ""

    .line 489
    :cond_2
    iget-object v4, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mClientManager:Lorg/chromium/chrome/browser/customtabs/ClientManager;

    invoke-virtual {v4, p1}, Lorg/chromium/chrome/browser/customtabs/ClientManager;->getIgnoreFragmentsForSession(Landroid/os/IBinder;)Z

    move-result v4

    .line 490
    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v4, :cond_4

    invoke-static {v2, p2}, Lorg/chromium/chrome/browser/util/UrlUtilities;->urlsMatchIgnoringFragments(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const/4 v2, 0x1

    .line 493
    :goto_1
    if-eqz v2, :cond_5

    invoke-static {v3, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 494
    iput-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mPrerender:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

    goto :goto_0

    .line 490
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 497
    :cond_5
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->cancelPrerender(Landroid/os/IBinder;)V

    move-object v0, v1

    .line 499
    goto :goto_0
.end method

.method takeSpareWebContents()Lorg/chromium/content_public/browser/WebContents;
    .locals 2

    .prologue
    .line 385
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 386
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mSpareWebContents:Lorg/chromium/content_public/browser/WebContents;

    .line 387
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->mSpareWebContents:Lorg/chromium/content_public/browser/WebContents;

    .line 388
    return-object v0
.end method

.method public updateVisuals(Landroid/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 399
    const-string/jumbo v0, "android.support.customtabs.extra.EXTRA_SECONDARY_TOOLBAR_REMOTEVIEWS"

    invoke-static {p2, v0}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/RemoteViews;

    .line 401
    const-string/jumbo v0, "android.support.customtabs.extra.ACTION_BUTTON_BUNDLE"

    invoke-static {p2, v0}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetBundle(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 403
    const/4 v1, 0x1

    .line 404
    if-eqz v0, :cond_0

    .line 405
    const-string/jumbo v2, "android.support.customtabs.customaction.ID"

    invoke-static {v0, v2, v7}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetInt(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v3

    .line 407
    invoke-static {v0}, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->parseBitmapFromBundle(Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 408
    invoke-static {v0}, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->parseDescriptionFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    .line 410
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 412
    :try_start_0
    new-instance v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$5;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$5;-><init>(Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;Landroid/support/customtabs/ICustomTabsCallback;ILandroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    and-int/lit8 v1, v0, 0x1

    .line 424
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 426
    :try_start_1
    new-instance v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$6;

    invoke-direct {v0, p0, p1, v6}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection$6;-><init>(Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;Landroid/support/customtabs/ICustomTabsCallback;Landroid/widget/RemoteViews;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    and-int/2addr v0, v1

    .line 437
    :goto_1
    return v0

    .line 420
    :catch_0
    move-exception v0

    move v1, v7

    goto :goto_0

    .line 434
    :catch_1
    move-exception v0

    move v0, v7

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public warmup(J)Z
    .locals 2

    .prologue
    .line 192
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->warmupInternal(Z)Z

    move-result v0

    .line 193
    const-string/jumbo v1, "warmup()"

    invoke-virtual {p0, v1, v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->logCall(Ljava/lang/String;Z)V

    .line 194
    return v0
.end method
