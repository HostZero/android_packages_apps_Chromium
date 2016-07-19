.class public abstract Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "ChromiumSyncAdapter.java"


# instance fields
.field private final mApplication:Landroid/app/Application;

.field private final mAsyncStartup:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Application;)V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 47
    iput-object p2, p0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;->mApplication:Landroid/app/Application;

    .line 48
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;->useAsyncStartup()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;->mAsyncStartup:Z

    .line 49
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;->mAsyncStartup:Z

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;)Landroid/app/Application;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;->startBrowserProcessesSync(Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;)V

    return-void
.end method

.method private getStartupCallback(Landroid/content/Context;Ljava/lang/String;Lorg/chromium/components/invalidation/PendingInvalidation;Landroid/content/SyncResult;Ljava/util/concurrent/Semaphore;)Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;
    .locals 7

    .prologue
    .line 147
    new-instance v0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$3;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$3;-><init>(Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;Lorg/chromium/components/invalidation/PendingInvalidation;Ljava/util/concurrent/Semaphore;Landroid/content/Context;Ljava/lang/String;Landroid/content/SyncResult;)V

    return-object v0
.end method

.method private startBrowserProcess(Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;Landroid/content/SyncResult;Ljava/util/concurrent/Semaphore;)V
    .locals 6

    .prologue
    .line 98
    :try_start_0
    new-instance v0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$1;-><init>(Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThreadBlocking(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 119
    const-string/jumbo v1, "invalidation"

    const-string/jumbo v2, "Got exception when trying to notify the invalidation."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numIoExceptions:J

    .line 122
    invoke-virtual {p3}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0
.end method

.method private startBrowserProcessesSync(Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 130
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;->mApplication:Landroid/app/Application;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/chromium/content/browser/BrowserStartupController;->get(Landroid/content/Context;I)Lorg/chromium/content/browser/BrowserStartupController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/BrowserStartupController;->startBrowserProcessesSync(Z)V
    :try_end_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$2;

    invoke-direct {v1, p0, p1}, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$2;-><init>(Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    const-string/jumbo v1, "invalidation"

    const-string/jumbo v2, "Unable to load native library."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method


# virtual methods
.method public notifyInvalidation(ILjava/lang/String;JLjava/lang/String;)V
    .locals 7

    .prologue
    .line 171
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/invalidation/InvalidationServiceFactory;->getForProfile(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/components/invalidation/InvalidationService;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/components/invalidation/InvalidationService;->notifyInvalidationToNativeChrome(ILjava/lang/String;JLjava/lang/String;)V

    .line 177
    const/16 v0, 0xd

    invoke-static {v0}, Lorg/chromium/sync/ModelTypeHelper;->toNotificationType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const-string/jumbo v0, "Sync.InvalidationSessionsAndroid"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    .line 180
    :cond_0
    return-void
.end method

.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 56
    const-string/jumbo v0, "initialize"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->getSignedInUser()Landroid/accounts/Account;

    move-result-object v0

    .line 58
    invoke-virtual {p1, v0}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    invoke-static {p1, p3, v7}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-static {p1, p3, v6}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_0

    .line 65
    :cond_2
    new-instance v3, Lorg/chromium/components/invalidation/PendingInvalidation;

    invoke-direct {v3, p2}, Lorg/chromium/components/invalidation/PendingInvalidation;-><init>(Landroid/os/Bundle;)V

    .line 67
    invoke-static {}, Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController;->getInstance()Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController;

    move-result-object v0

    .line 68
    invoke-virtual {v0, p2}, Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController;->shouldNotifyInvalidation(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 69
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController;->addPendingInvalidation(Landroid/content/Context;Ljava/lang/String;Lorg/chromium/components/invalidation/PendingInvalidation;)V

    goto :goto_0

    .line 74
    :cond_3
    new-instance v5, Ljava/util/concurrent/Semaphore;

    invoke-direct {v5, v6}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 77
    iget-object v1, p0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;->mApplication:Landroid/app/Application;

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v0, p0

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;->getStartupCallback(Landroid/content/Context;Ljava/lang/String;Lorg/chromium/components/invalidation/PendingInvalidation;Landroid/content/SyncResult;Ljava/util/concurrent/Semaphore;)Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;

    move-result-object v0

    .line 79
    invoke-direct {p0, v0, p5, v5}, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;->startBrowserProcess(Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;Landroid/content/SyncResult;Ljava/util/concurrent/Semaphore;)V

    .line 84
    const-wide/16 v0, 0x5

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v0, v1, v2}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    const-string/jumbo v0, "invalidation"

    const-string/jumbo v1, "Sync request timed out!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v2, v8

    iput-wide v2, v0, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    const-string/jumbo v1, "invalidation"

    const-string/jumbo v2, "Got InterruptedException when trying to request an invalidation."

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v2, v8

    iput-wide v2, v0, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_0
.end method

.method protected abstract useAsyncStartup()Z
.end method
