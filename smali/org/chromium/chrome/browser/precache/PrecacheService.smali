.class public Lorg/chromium/chrome/browser/precache/PrecacheService;
.super Landroid/app/Service;
.source "PrecacheService.java"


# static fields
.field public static final ACTION_START_PRECACHE:Ljava/lang/String; = "org.chromium.chrome.browser.precache.PrecacheService.START_PRECACHE"

.field private static sIsPrecaching:Z


# instance fields
.field private mDeviceState:Lorg/chromium/components/precache/DeviceState;

.field private final mDeviceStateReceiver:Landroid/content/BroadcastReceiver;

.field private mPrecacheLauncher:Lorg/chromium/chrome/browser/precache/PrecacheLauncher;

.field private mPrecachingWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lorg/chromium/chrome/browser/precache/PrecacheService;->sIsPrecaching:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 54
    invoke-static {}, Lorg/chromium/components/precache/DeviceState;->getInstance()Lorg/chromium/components/precache/DeviceState;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheService;->mDeviceState:Lorg/chromium/components/precache/DeviceState;

    .line 63
    new-instance v0, Lorg/chromium/chrome/browser/precache/PrecacheService$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/precache/PrecacheService$1;-><init>(Lorg/chromium/chrome/browser/precache/PrecacheService;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheService;->mDeviceStateReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    new-instance v0, Lorg/chromium/chrome/browser/precache/PrecacheService$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/precache/PrecacheService$2;-><init>(Lorg/chromium/chrome/browser/precache/PrecacheService;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheService;->mPrecacheLauncher:Lorg/chromium/chrome/browser/precache/PrecacheLauncher;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lorg/chromium/chrome/browser/precache/PrecacheService;->sIsPrecaching:Z

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/precache/PrecacheService;)Lorg/chromium/components/precache/DeviceState;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheService;->mDeviceState:Lorg/chromium/components/precache/DeviceState;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/precache/PrecacheService;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/chromium/chrome/browser/precache/PrecacheService;->cancelPrecaching()V

    return-void
.end method

.method private acquirePrecachingWakeLock()V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheService;->mPrecachingWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 203
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/precache/PrecacheService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 204
    const/4 v1, 0x1

    const-string/jumbo v2, "Precache"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheService;->mPrecachingWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 206
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheService;->mPrecachingWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 207
    return-void
.end method

.method private cancelPrecaching()V
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/precache/PrecacheService;->prepareNativeLibraries()V

    .line 177
    iget-object v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheService;->mPrecacheLauncher:Lorg/chromium/chrome/browser/precache/PrecacheLauncher;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->cancel()V

    .line 179
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/precache/PrecacheService;->shutdownPrecaching(Z)V

    .line 180
    return-void
.end method

.method private finishPrecaching(Z)V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/precache/PrecacheService;->shutdownPrecaching(Z)V

    .line 171
    return-void
.end method

.method public static isPrecaching()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lorg/chromium/chrome/browser/precache/PrecacheService;->sIsPrecaching:Z

    return v0
.end method

.method private registerDeviceStateReceiver()V
    .locals 2

    .prologue
    .line 194
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 195
    const-string/jumbo v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lorg/chromium/chrome/browser/precache/PrecacheService;->mDeviceStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lorg/chromium/chrome/browser/precache/PrecacheService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 198
    return-void
.end method

.method private releasePrecachingWakeLock()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheService;->mPrecachingWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheService;->mPrecachingWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheService;->mPrecachingWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 214
    :cond_0
    return-void
.end method

.method static setIsPrecaching(Z)V
    .locals 0

    .prologue
    .line 51
    sput-boolean p0, Lorg/chromium/chrome/browser/precache/PrecacheService;->sIsPrecaching:Z

    .line 52
    return-void
.end method

.method private shutdownPrecaching(Z)V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    sput-boolean v0, Lorg/chromium/chrome/browser/precache/PrecacheService;->sIsPrecaching:Z

    .line 187
    invoke-direct {p0}, Lorg/chromium/chrome/browser/precache/PrecacheService;->releasePrecachingWakeLock()V

    .line 188
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/precache/PrecacheService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->precachingFinished(Landroid/content/Context;Z)V

    .line 189
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/precache/PrecacheService;->stopSelf()V

    .line 190
    return-void
.end method

.method private startPrecaching()V
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/precache/PrecacheService;->prepareNativeLibraries()V

    .line 157
    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/chrome/browser/precache/PrecacheService;->sIsPrecaching:Z

    .line 158
    invoke-direct {p0}, Lorg/chromium/chrome/browser/precache/PrecacheService;->acquirePrecachingWakeLock()V

    .line 164
    iget-object v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheService;->mPrecacheLauncher:Lorg/chromium/chrome/browser/precache/PrecacheLauncher;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->start()V

    .line 165
    return-void
.end method


# virtual methods
.method getDeviceStateReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheService;->mDeviceStateReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method handlePrecacheCompleted(Z)V
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lorg/chromium/chrome/browser/precache/PrecacheService;->sIsPrecaching:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/precache/PrecacheService;->finishPrecaching(Z)V

    .line 81
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 99
    invoke-direct {p0}, Lorg/chromium/chrome/browser/precache/PrecacheService;->registerDeviceStateReceiver()V

    .line 100
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 104
    sget-boolean v0, Lorg/chromium/chrome/browser/precache/PrecacheService;->sIsPrecaching:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/precache/PrecacheService;->cancelPrecaching()V

    .line 106
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheService;->mDeviceStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/precache/PrecacheService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 107
    iget-object v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheService;->mPrecacheLauncher:Lorg/chromium/chrome/browser/precache/PrecacheLauncher;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->destroy()V

    .line 108
    invoke-direct {p0}, Lorg/chromium/chrome/browser/precache/PrecacheService;->releasePrecachingWakeLock()V

    .line 110
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 111
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 116
    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo v0, "org.chromium.chrome.browser.precache.PrecacheService.START_PRECACHE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/chromium/chrome/browser/precache/PrecacheService;->sIsPrecaching:Z

    if-nez v0, :cond_0

    .line 119
    invoke-direct {p0}, Lorg/chromium/chrome/browser/precache/PrecacheService;->startPrecaching()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->releaseWakeLock()V

    .line 128
    sget-boolean v0, Lorg/chromium/chrome/browser/precache/PrecacheService;->sIsPrecaching:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 122
    :catchall_0
    move-exception v0

    invoke-static {}, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->releaseWakeLock()V

    throw v0

    .line 128
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method prepareNativeLibraries()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 142
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/precache/PrecacheService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/chromium/content/browser/BrowserStartupController;->get(Landroid/content/Context;I)Lorg/chromium/content/browser/BrowserStartupController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/BrowserStartupController;->startBrowserProcessesSync(Z)V
    :try_end_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    const-string/jumbo v0, "Precache"

    const-string/jumbo v1, "ProcessInitException while starting the browser process"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method setDeviceState(Lorg/chromium/components/precache/DeviceState;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lorg/chromium/chrome/browser/precache/PrecacheService;->mDeviceState:Lorg/chromium/components/precache/DeviceState;

    .line 59
    return-void
.end method

.method setPrecacheLauncher(Lorg/chromium/chrome/browser/precache/PrecacheLauncher;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lorg/chromium/chrome/browser/precache/PrecacheService;->mPrecacheLauncher:Lorg/chromium/chrome/browser/precache/PrecacheLauncher;

    .line 94
    return-void
.end method
