.class public Lorg/chromium/chrome/browser/ChromeBackgroundService;
.super Lcom/google/android/gms/gcm/GcmTaskService;
.source "ChromeBackgroundService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmTaskService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/ChromeBackgroundService;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ChromeBackgroundService;->handleBackgroundSyncEvent(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/ChromeBackgroundService;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ChromeBackgroundService;->handleFetchSnippets(Landroid/content/Context;)V

    return-void
.end method

.method private handleBackgroundSyncEvent(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lorg/chromium/chrome/browser/BackgroundSyncLauncher;->hasInstance()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ChromeBackgroundService;->launchBrowser(Landroid/content/Context;)V

    .line 70
    :cond_0
    return-void
.end method

.method private handleFetchSnippets(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->hasInstance()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ChromeBackgroundService;->launchBrowser(Landroid/content/Context;)V

    .line 76
    :cond_0
    invoke-static {p1}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsController;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/ntp/snippets/SnippetsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsController;->fetchSnippets()V

    .line 77
    return-void
.end method


# virtual methods
.method protected launchBrowser(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 82
    const-string/jumbo v0, "BackgroundService"

    const-string/jumbo v1, "Launching browser"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    invoke-static {p1}, Lorg/chromium/content/app/ContentApplication;->initCommandLine(Landroid/content/Context;)V

    .line 85
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Lorg/chromium/content/browser/BrowserStartupController;->get(Landroid/content/Context;I)Lorg/chromium/content/browser/BrowserStartupController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/BrowserStartupController;->startBrowserProcessesSync(Z)V
    :try_end_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    const-string/jumbo v0, "BackgroundService"

    const-string/jumbo v1, "ProcessInitException while starting the browser process"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method public onInitializeTasks()V
    .locals 0

    .prologue
    .line 97
    invoke-static {p0}, Lorg/chromium/chrome/browser/BackgroundSyncLauncher;->rescheduleTasksOnUpgrade(Landroid/content/Context;)V

    .line 98
    return-void
.end method

.method public onRunTask(Lcom/google/android/gms/gcm/TaskParams;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 35
    const-string/jumbo v0, "BackgroundService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Woken up at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    new-instance v0, Lorg/chromium/chrome/browser/ChromeBackgroundService$1;

    invoke-direct {v0, p0, p1, p0}, Lorg/chromium/chrome/browser/ChromeBackgroundService$1;-><init>(Lorg/chromium/chrome/browser/ChromeBackgroundService;Lcom/google/android/gms/gcm/TaskParams;Landroid/content/Context;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 57
    return v3
.end method
