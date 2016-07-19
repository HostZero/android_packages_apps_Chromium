.class public Lorg/chromium/chrome/browser/notifications/NotificationService;
.super Landroid/app/IntentService;
.source "NotificationService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/chromium/chrome/browser/notifications/NotificationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/notifications/NotificationService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lorg/chromium/chrome/browser/notifications/NotificationService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/chromium/chrome/browser/notifications/NotificationService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/notifications/NotificationService;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/notifications/NotificationService;->dispatchIntentOnUIThread(Landroid/content/Intent;)V

    return-void
.end method

.method private dispatchIntentOnUIThread(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 79
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/notifications/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 80
    invoke-static {}, Lorg/chromium/base/CommandLine;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    invoke-static {v0}, Lorg/chromium/content/app/ContentApplication;->initCommandLine(Landroid/content/Context;)V

    .line 85
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0}, Lorg/chromium/content/browser/BrowserStartupController;->get(Landroid/content/Context;I)Lorg/chromium/content/browser/BrowserStartupController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/BrowserStartupController;->startBrowserProcessesSync(Z)V

    .line 90
    invoke-static {p1}, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->dispatchNotificationEvent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    sget-object v0, Lorg/chromium/chrome/browser/notifications/NotificationService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Unable to dispatch the notification event to Chrome."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_1
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    sget-object v1, Lorg/chromium/chrome/browser/notifications/NotificationService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unable to start the browser process."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method


# virtual methods
.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 57
    const-string/jumbo v0, "notification_persistent_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "notification_info_origin"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "notification_info_tag"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    new-instance v0, Lorg/chromium/chrome/browser/notifications/NotificationService$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/notifications/NotificationService$1;-><init>(Lorg/chromium/chrome/browser/notifications/NotificationService;Landroid/content/Intent;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
