.class public Lorg/chromium/chrome/browser/BackgroundSyncLauncher;
.super Ljava/lang/Object;
.source "BackgroundSyncLauncher.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final PREF_BACKGROUND_SYNC_LAUNCH_NEXT_ONLINE:Ljava/lang/String; = "bgsync_launch_next_online"

.field public static final TASK_TAG:Ljava/lang/String; = "BackgroundSync Event"

.field private static sGCMEnabled:Z

.field private static sInstance:Lorg/chromium/chrome/browser/BackgroundSyncLauncher;


# instance fields
.field private mScheduler:Lcom/google/android/gms/gcm/GcmNetworkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 30
    const-class v0, Lorg/chromium/chrome/browser/BackgroundSyncLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/BackgroundSyncLauncher;->$assertionsDisabled:Z

    .line 50
    sput-boolean v1, Lorg/chromium/chrome/browser/BackgroundSyncLauncher;->sGCMEnabled:Z

    return-void

    .line 30
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    invoke-static {p1}, Lcom/google/android/gms/gcm/GcmNetworkManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GcmNetworkManager;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/BackgroundSyncLauncher;->mScheduler:Lcom/google/android/gms/gcm/GcmNetworkManager;

    .line 156
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lorg/chromium/chrome/browser/BackgroundSyncLauncher;->launchBrowserIfStopped(Landroid/content/Context;ZJ)V

    .line 157
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lorg/chromium/chrome/browser/BackgroundSyncLauncher;->sGCMEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/BackgroundSyncLauncher;)Lcom/google/android/gms/gcm/GcmNetworkManager;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/chromium/chrome/browser/BackgroundSyncLauncher;->mScheduler:Lcom/google/android/gms/gcm/GcmNetworkManager;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;Lcom/google/android/gms/gcm/GcmNetworkManager;J)Z
    .locals 2

    .prologue
    .line 30
    invoke-static {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/BackgroundSyncLauncher;->scheduleLaunchTask(Landroid/content/Context;Lcom/google/android/gms/gcm/GcmNetworkManager;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/gms/gcm/GcmNetworkManager;)Z
    .locals 1

    .prologue
    .line 30
    invoke-static {p0}, Lorg/chromium/chrome/browser/BackgroundSyncLauncher;->removeScheduledTasks(Lcom/google/android/gms/gcm/GcmNetworkManager;)Z

    move-result v0

    return v0
.end method

.method private static canUseGooglePlayServices(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 160
    invoke-static {}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->getInstance()Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler$Silent;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler$Silent;-><init>()V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->canUseGooglePlayServices(Landroid/content/Context;Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler;)Z

    move-result v0

    return v0
.end method

.method protected static create(Landroid/content/Context;)Lorg/chromium/chrome/browser/BackgroundSyncLauncher;
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lorg/chromium/chrome/browser/BackgroundSyncLauncher;->sInstance:Lorg/chromium/chrome/browser/BackgroundSyncLauncher;

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already instantiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/BackgroundSyncLauncher;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/BackgroundSyncLauncher;-><init>(Landroid/content/Context;)V

    .line 64
    sput-object v0, Lorg/chromium/chrome/browser/BackgroundSyncLauncher;->sInstance:Lorg/chromium/chrome/browser/BackgroundSyncLauncher;

    return-object v0
.end method

.method protected static hasInstance()Z
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lorg/chromium/chrome/browser/BackgroundSyncLauncher;->sInstance:Lorg/chromium/chrome/browser/BackgroundSyncLauncher;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static removeScheduledTasks(Lcom/google/android/gms/gcm/GcmNetworkManager;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 217
    :try_start_0
    const-string/jumbo v1, "BackgroundSync Event"

    const-class v2, Lorg/chromium/chrome/browser/ChromeBackgroundService;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/gcm/GcmNetworkManager;->cancelTask(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 223
    :catch_0
    move-exception v1

    invoke-static {v0}, Lorg/chromium/chrome/browser/BackgroundSyncLauncher;->setGCMEnabled(Z)V

    goto :goto_0
.end method

.method protected static rescheduleTasksOnUpgrade(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 240
    invoke-static {p0}, Lcom/google/android/gms/gcm/GcmNetworkManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GcmNetworkManager;

    move-result-object v0

    .line 241
    new-instance v1, Lorg/chromium/chrome/browser/BackgroundSyncLauncher$3;

    invoke-direct {v1, p0, v0}, Lorg/chromium/chrome/browser/BackgroundSyncLauncher$3;-><init>(Landroid/content/Context;Lcom/google/android/gms/gcm/GcmNetworkManager;)V

    .line 254
    invoke-static {p0, v1}, Lorg/chromium/chrome/browser/BackgroundSyncLauncher;->shouldLaunchBrowserIfStopped(Landroid/content/Context;Lorg/chromium/chrome/browser/BackgroundSyncLauncher$ShouldLaunchCallback;)V

    .line 255
    return-void
.end method

.method private static scheduleLaunchTask(Landroid/content/Context;Lcom/google/android/gms/gcm/GcmNetworkManager;J)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 194
    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    .line 195
    new-instance v4, Lcom/google/android/gms/gcm/OneoffTask$Builder;

    invoke-direct {v4}, Lcom/google/android/gms/gcm/OneoffTask$Builder;-><init>()V

    const-class v5, Lorg/chromium/chrome/browser/ChromeBackgroundService;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setService(Ljava/lang/Class;)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object v4

    const-string/jumbo v5, "BackgroundSync Event"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setTag(Ljava/lang/String;)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object v4

    const-wide/16 v6, 0x1

    add-long/2addr v6, v2

    invoke-virtual {v4, v2, v3, v6, v7}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setExecutionWindow(JJ)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setRequiredNetwork(I)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setPersisted(Z)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setUpdateCurrent(Z)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->build()Lcom/google/android/gms/gcm/OneoffTask;

    move-result-object v2

    .line 205
    :try_start_0
    invoke-virtual {p1, v2}, Lcom/google/android/gms/gcm/GcmNetworkManager;->schedule(Lcom/google/android/gms/gcm/Task;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    return v0

    .line 208
    :catch_0
    move-exception v0

    invoke-static {v1}, Lorg/chromium/chrome/browser/BackgroundSyncLauncher;->setGCMEnabled(Z)V

    move v0, v1

    .line 210
    goto :goto_0
.end method

.method static setGCMEnabled(Z)V
    .locals 0

    .prologue
    .line 259
    sput-boolean p0, Lorg/chromium/chrome/browser/BackgroundSyncLauncher;->sGCMEnabled:Z

    .line 260
    return-void
.end method

.method private static shouldDisableBackgroundSync(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 177
    sget-boolean v0, Lorg/chromium/chrome/browser/BackgroundSyncLauncher;->sGCMEnabled:Z

    if-eqz v0, :cond_0

    .line 179
    invoke-static {p0}, Lorg/chromium/chrome/browser/BackgroundSyncLauncher;->canUseGooglePlayServices(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 180
    invoke-static {v1}, Lorg/chromium/chrome/browser/BackgroundSyncLauncher;->setGCMEnabled(Z)V

    .line 181
    const-string/jumbo v0, "BgSyncLauncher"

    const-string/jumbo v3, "Disabling Background Sync because Play Services is not up to date."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 184
    :goto_0
    const-string/jumbo v3, "BackgroundSync.LaunchTask.PlayServicesAvailable"

    invoke-static {v3, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    .line 187
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/BackgroundSyncLauncher;->sGCMEnabled:Z

    if-nez v0, :cond_1

    :goto_1
    return v2

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method protected static shouldLaunchBrowserIfStopped(Landroid/content/Context;Lorg/chromium/chrome/browser/BackgroundSyncLauncher$ShouldLaunchCallback;)V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Lorg/chromium/chrome/browser/BackgroundSyncLauncher$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/BackgroundSyncLauncher$1;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/BackgroundSyncLauncher$ShouldLaunchCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/BackgroundSyncLauncher$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 104
    return-void
.end method


# virtual methods
.method protected destroy()V
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lorg/chromium/chrome/browser/BackgroundSyncLauncher;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/BackgroundSyncLauncher;->sInstance:Lorg/chromium/chrome/browser/BackgroundSyncLauncher;

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 74
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/chrome/browser/BackgroundSyncLauncher;->sInstance:Lorg/chromium/chrome/browser/BackgroundSyncLauncher;

    .line 75
    return-void
.end method

.method protected launchBrowserIfStopped(Landroid/content/Context;ZJ)V
    .locals 7

    .prologue
    .line 120
    new-instance v0, Lorg/chromium/chrome/browser/BackgroundSyncLauncher$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/BackgroundSyncLauncher$2;-><init>(Lorg/chromium/chrome/browser/BackgroundSyncLauncher;Landroid/content/Context;ZJ)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/BackgroundSyncLauncher$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 144
    return-void
.end method
