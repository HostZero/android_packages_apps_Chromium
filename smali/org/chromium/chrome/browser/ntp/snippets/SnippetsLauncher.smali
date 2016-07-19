.class public Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;
.super Ljava/lang/Object;
.source "SnippetsLauncher.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final TASK_TAG_FALLBACK:Ljava/lang/String; = "FetchSnippetsFallback"

.field public static final TASK_TAG_WIFI:Ljava/lang/String; = "FetchSnippetsWifi"

.field public static final TASK_TAG_WIFI_CHARGING:Ljava/lang/String; = "FetchSnippetsWifiCharging"

.field private static sInstance:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;


# instance fields
.field private mGCMEnabled:Z

.field private mScheduler:Lcom/google/android/gms/gcm/GcmNetworkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->mGCMEnabled:Z

    .line 76
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->checkGCM(Landroid/content/Context;)V

    .line 77
    invoke-static {p1}, Lcom/google/android/gms/gcm/GcmNetworkManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GcmNetworkManager;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->mScheduler:Lcom/google/android/gms/gcm/GcmNetworkManager;

    .line 78
    return-void
.end method

.method private static buildTask(Ljava/lang/String;JIZ)Lcom/google/android/gms/gcm/PeriodicTask;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 95
    new-instance v0, Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;-><init>()V

    const-class v1, Lorg/chromium/chrome/browser/ChromeBackgroundService;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setService(Ljava/lang/Class;)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setTag(Ljava/lang/String;)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setPeriod(J)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setRequiredNetwork(I)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setRequiresCharging(Z)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setPersisted(Z)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setUpdateCurrent(Z)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->build()Lcom/google/android/gms/gcm/PeriodicTask;

    move-result-object v0

    return-object v0
.end method

.method private canUseGooglePlayServices(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->getInstance()Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler$Silent;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler$Silent;-><init>()V

    invoke-virtual {v0, p1, v1}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->canUseGooglePlayServices(Landroid/content/Context;Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler;)Z

    move-result v0

    return v0
.end method

.method private checkGCM(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->canUseGooglePlayServices(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->mGCMEnabled:Z

    .line 89
    const-string/jumbo v0, "SnippetsLauncher"

    const-string/jumbo v1, "Disabling SnippetsLauncher because Play Services is not up to date."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    :cond_0
    return-void
.end method

.method public static create(Landroid/content/Context;)Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->sInstance:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already instantiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;-><init>(Landroid/content/Context;)V

    .line 53
    sput-object v0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->sInstance:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;

    return-object v0
.end method

.method public static hasInstance()Z
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->sInstance:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private schedule(JJJ)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 109
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->mGCMEnabled:Z

    if-nez v2, :cond_0

    .line 127
    :goto_0
    return v0

    .line 110
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Scheduling: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 115
    :try_start_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->mScheduler:Lcom/google/android/gms/gcm/GcmNetworkManager;

    const-string/jumbo v3, "FetchSnippetsWifiCharging"

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v3, p1, p2, v4, v5}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->buildTask(Ljava/lang/String;JIZ)Lcom/google/android/gms/gcm/PeriodicTask;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/gcm/GcmNetworkManager;->schedule(Lcom/google/android/gms/gcm/Task;)V

    .line 117
    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->mScheduler:Lcom/google/android/gms/gcm/GcmNetworkManager;

    const-string/jumbo v3, "FetchSnippetsWifi"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, p3, p4, v4, v5}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->buildTask(Ljava/lang/String;JIZ)Lcom/google/android/gms/gcm/PeriodicTask;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/gcm/GcmNetworkManager;->schedule(Lcom/google/android/gms/gcm/Task;)V

    .line 119
    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->mScheduler:Lcom/google/android/gms/gcm/GcmNetworkManager;

    const-string/jumbo v3, "FetchSnippetsFallback"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, p5, p6, v4, v5}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->buildTask(Ljava/lang/String;JIZ)Lcom/google/android/gms/gcm/PeriodicTask;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/gcm/GcmNetworkManager;->schedule(Lcom/google/android/gms/gcm/Task;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 127
    goto :goto_0

    .line 123
    :catch_0
    move-exception v1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->mGCMEnabled:Z

    goto :goto_0
.end method

.method private unschedule()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 132
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->mGCMEnabled:Z

    if-nez v1, :cond_0

    .line 145
    :goto_0
    return v0

    .line 133
    :cond_0
    const-string/jumbo v1, "SnippetsLauncher"

    const-string/jumbo v2, "Unscheduling"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    :try_start_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->mScheduler:Lcom/google/android/gms/gcm/GcmNetworkManager;

    const-string/jumbo v2, "FetchSnippetsWifiCharging"

    const-class v3, Lorg/chromium/chrome/browser/ChromeBackgroundService;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/gcm/GcmNetworkManager;->cancelTask(Ljava/lang/String;Ljava/lang/Class;)V

    .line 136
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->mScheduler:Lcom/google/android/gms/gcm/GcmNetworkManager;

    const-string/jumbo v2, "FetchSnippetsWifi"

    const-class v3, Lorg/chromium/chrome/browser/ChromeBackgroundService;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/gcm/GcmNetworkManager;->cancelTask(Ljava/lang/String;Ljava/lang/Class;)V

    .line 137
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->mScheduler:Lcom/google/android/gms/gcm/GcmNetworkManager;

    const-string/jumbo v2, "FetchSnippetsFallback"

    const-class v3, Lorg/chromium/chrome/browser/ChromeBackgroundService;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/gcm/GcmNetworkManager;->cancelTask(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    const/4 v0, 0x1

    goto :goto_0

    .line 141
    :catch_0
    move-exception v1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->mGCMEnabled:Z

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->sInstance:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 64
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->sInstance:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;

    .line 65
    return-void
.end method
