.class public Lorg/chromium/chrome/browser/download/DownloadNotificationService;
.super Landroid/app/Service;
.source "DownloadNotificationService.java"


# static fields
.field static final ACTION_DOWNLOAD_CANCEL:Ljava/lang/String; = "org.chromium.chrome.browser.download.DOWNLOAD_CANCEL"

.field static final ACTION_DOWNLOAD_PAUSE:Ljava/lang/String; = "org.chromium.chrome.browser.download.DOWNLOAD_PAUSE"

.field static final ACTION_DOWNLOAD_RESUME:Ljava/lang/String; = "org.chromium.chrome.browser.download.DOWNLOAD_RESUME"

.field static final EXTRA_DOWNLOAD_FILE_NAME:Ljava/lang/String; = "DownloadFileName"

.field static final EXTRA_DOWNLOAD_ID:Ljava/lang/String; = "DownloadId"

.field static final INVALID_DOWNLOAD_PERCENTAGE:I = -0x1

.field static final PENDING_DOWNLOAD_NOTIFICATIONS:Ljava/lang/String; = "PendingDownloadNotifications"


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mContext:Landroid/content/Context;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 55
    new-instance v0, Lorg/chromium/chrome/browser/download/DownloadNotificationService$LocalBinder;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/download/DownloadNotificationService$LocalBinder;-><init>(Lorg/chromium/chrome/browser/download/DownloadNotificationService;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->mBinder:Landroid/os/IBinder;

    .line 107
    return-void
.end method

.method private addPendingDownloadToSharedPrefs(Lorg/chromium/chrome/browser/download/DownloadNotificationService$PendingNotification;)V
    .locals 4

    .prologue
    .line 407
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "PendingDownloadNotifications"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->getStoredDownloadInfo(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 409
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 410
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadNotificationService$PendingNotification;->parseFromString(Ljava/lang/String;)Lorg/chromium/chrome/browser/download/DownloadNotificationService$PendingNotification;

    move-result-object v0

    .line 411
    iget v0, v0, Lorg/chromium/chrome/browser/download/DownloadNotificationService$PendingNotification;->downloadId:I

    iget v3, p1, Lorg/chromium/chrome/browser/download/DownloadNotificationService$PendingNotification;->downloadId:I

    if-ne v0, v3, :cond_0

    .line 416
    :goto_0
    return-void

    .line 413
    :cond_1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/download/DownloadNotificationService$PendingNotification;->getNotificationString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 414
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "PendingDownloadNotifications"

    invoke-static {v0, v2, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->storeDownloadInfo(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0
.end method

.method private buildNotification(ILjava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Z;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 305
    new-instance v0, Landroid/support/v4/app/Z;

    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/app/Z;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/support/v4/app/Z;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/Z;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Z;->a(I)Landroid/support/v4/app/Z;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/Z;->d(Z)Landroid/support/v4/app/Z;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/Z;->c(Z)Landroid/support/v4/app/Z;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/support/v4/app/Z;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/Z;

    move-result-object v0

    .line 311
    return-object v0
.end method

.method private buildPendingIntent(Ljava/lang/String;ILjava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 286
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lorg/chromium/chrome/browser/download/DownloadBroadcastReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 290
    const-string/jumbo v0, "DownloadId"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    const-string/jumbo v0, "DownloadFileName"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->mContext:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v0, p2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private handleDownloadOperation(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 320
    const-string/jumbo v0, "DownloadId"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    .line 322
    const-string/jumbo v1, "DownloadFileName"

    invoke-static {p1, v1}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 326
    const-string/jumbo v2, "org.chromium.chrome.browser.download.DOWNLOAD_PAUSE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->hasDownloadManagerService()Z

    move-result v2

    if-nez v2, :cond_0

    .line 364
    :goto_0
    return-void

    .line 330
    :cond_0
    new-instance v2, Lorg/chromium/chrome/browser/download/DownloadNotificationService$1;

    invoke-direct {v2, p0, p1, v0, v1}, Lorg/chromium/chrome/browser/download/DownloadNotificationService$1;-><init>(Lorg/chromium/chrome/browser/download/DownloadNotificationService;Landroid/content/Intent;ILjava/lang/String;)V

    .line 358
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->handlePreNativeStartup(Lorg/chromium/chrome/browser/init/BrowserParts;)V

    .line 359
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->handlePostNativeStartup(ZLorg/chromium/chrome/browser/init/BrowserParts;)V
    :try_end_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    const-string/jumbo v1, "DownloadNotification"

    const-string/jumbo v2, "Unable to load native library."

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeApplication;->reportStartupErrorAndExit(Lorg/chromium/base/library_loader/ProcessInitException;)V

    goto :goto_0
.end method

.method static isDownloadOperationIntent(Landroid/content/Intent;)Z
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 382
    if-nez p0, :cond_1

    .line 398
    :cond_0
    :goto_0
    return v0

    .line 383
    :cond_1
    const-string/jumbo v1, "org.chromium.chrome.browser.download.DOWNLOAD_CANCEL"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "org.chromium.chrome.browser.download.DOWNLOAD_RESUME"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "org.chromium.chrome.browser.download.DOWNLOAD_PAUSE"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    :cond_2
    const-string/jumbo v1, "DownloadId"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "DownloadFileName"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    const-string/jumbo v1, "DownloadId"

    invoke-static {p0, v1, v3}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v1

    .line 394
    if-eq v1, v3, :cond_0

    .line 395
    const-string/jumbo v1, "DownloadFileName"

    invoke-static {p0, v1}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 397
    if-eqz v1, :cond_0

    .line 398
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static parseDownloadNotificationsFromSharedPrefs(Landroid/content/SharedPreferences;)Ljava/util/List;
    .locals 3

    .prologue
    .line 453
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 454
    const-string/jumbo v0, "PendingDownloadNotifications"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    const-string/jumbo v0, "PendingDownloadNotifications"

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->getStoredDownloadInfo(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 457
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 458
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadNotificationService$PendingNotification;->parseFromString(Ljava/lang/String;)Lorg/chromium/chrome/browser/download/DownloadNotificationService$PendingNotification;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 461
    :cond_0
    return-object v1
.end method

.method private removePendingDownloadFromSharedPrefs(I)V
    .locals 4

    .prologue
    .line 423
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "PendingDownloadNotifications"

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->getStoredDownloadInfo(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 425
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 426
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadNotificationService$PendingNotification;->parseFromString(Ljava/lang/String;)Lorg/chromium/chrome/browser/download/DownloadNotificationService$PendingNotification;

    move-result-object v3

    .line 427
    iget v3, v3, Lorg/chromium/chrome/browser/download/DownloadNotificationService$PendingNotification;->downloadId:I

    if-ne v3, p1, :cond_0

    .line 428
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 429
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 430
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "PendingDownloadNotifications"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 438
    :cond_1
    :goto_0
    return-void

    .line 432
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "PendingDownloadNotifications"

    invoke-static {v0, v2, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->storeDownloadInfo(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelNotification(I)V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v1, "DownloadNotificationService"

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 200
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->removePendingDownloadFromSharedPrefs(I)V

    .line 201
    return-void
.end method

.method public clearPendingDownloads()V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "PendingDownloadNotifications"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 445
    return-void
.end method

.method public notifyDownloadFailed(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 261
    const v0, 0x1080082

    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->download_notification_failed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->buildNotification(ILjava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Z;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Landroid/support/v4/app/Z;->a()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->updateNotification(ILandroid/app/Notification;)V

    .line 266
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->removePendingDownloadFromSharedPrefs(I)V

    .line 267
    return-void
.end method

.method public notifyDownloadPaused(ILjava/lang/String;ZZ)V
    .locals 5

    .prologue
    .line 212
    const v0, 0x1080023

    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->download_notification_paused:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->buildNotification(ILjava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Z;

    move-result-object v0

    .line 216
    const-string/jumbo v1, "org.chromium.chrome.browser.download.DOWNLOAD_CANCEL"

    invoke-direct {p0, v1, p1, p2}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->buildPendingIntent(Ljava/lang/String;ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 218
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Z;->b(Landroid/app/PendingIntent;)Landroid/support/v4/app/Z;

    .line 219
    const v2, 0x1080038

    iget-object v3, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lorg/chromium/chrome/R$string;->download_notification_cancel_button:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/app/Z;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/Z;

    .line 222
    if-eqz p3, :cond_0

    .line 223
    const v1, 0x1080082

    iget-object v2, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$string;->download_notification_resume_button:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "org.chromium.chrome.browser.download.DOWNLOAD_RESUME"

    invoke-direct {p0, v3, p1, p2}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->buildPendingIntent(Ljava/lang/String;ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/Z;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/Z;

    .line 227
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/Z;->a()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->updateNotification(ILandroid/app/Notification;)V

    .line 230
    if-eqz p3, :cond_1

    if-eqz p4, :cond_2

    .line 231
    :cond_1
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->removePendingDownloadFromSharedPrefs(I)V

    .line 233
    :cond_2
    return-void
.end method

.method public notifyDownloadProgress(ILjava/lang/String;IJJZ)V
    .locals 6

    .prologue
    .line 171
    const/4 v0, -0x1

    if-ne p3, v0, :cond_3

    const/4 v0, 0x1

    .line 172
    :goto_0
    const v1, 0x1080081

    const/4 v2, 0x0

    invoke-direct {p0, v1, p2, v2}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->buildNotification(ILjava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Z;

    move-result-object v1

    .line 174
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Z;->b(Z)Landroid/support/v4/app/Z;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3, p3, v0}, Landroid/support/v4/app/Z;->a(IIZ)Landroid/support/v4/app/Z;

    .line 175
    if-nez v0, :cond_0

    .line 176
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 177
    int-to-double v2, p3

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {p4, p5}, Lorg/chromium/ui/base/LocalizationUtils;->getDurationString(J)Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Z;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/Z;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/Z;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/Z;

    .line 181
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, p6, v2

    if-lez v0, :cond_1

    invoke-virtual {v1, p6, p7}, Landroid/support/v4/app/Z;->a(J)Landroid/support/v4/app/Z;

    .line 182
    :cond_1
    const v0, 0x1080038

    iget-object v2, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$string;->download_notification_cancel_button:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "org.chromium.chrome.browser.download.DOWNLOAD_CANCEL"

    invoke-direct {p0, v3, p1, p2}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->buildPendingIntent(Ljava/lang/String;ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/app/Z;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/Z;

    .line 185
    if-eqz p8, :cond_2

    .line 186
    const v0, 0x1080023

    iget-object v2, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$string;->download_notification_pause_button:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "org.chromium.chrome.browser.download.DOWNLOAD_PAUSE"

    invoke-direct {p0, v3, p1, p2}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->buildPendingIntent(Ljava/lang/String;ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/app/Z;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/Z;

    .line 190
    :cond_2
    invoke-virtual {v1}, Landroid/support/v4/app/Z;->a()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->updateNotification(ILandroid/app/Notification;)V

    .line 191
    new-instance v0, Lorg/chromium/chrome/browser/download/DownloadNotificationService$PendingNotification;

    invoke-direct {v0, p1, p2, p8}, Lorg/chromium/chrome/browser/download/DownloadNotificationService$PendingNotification;-><init>(ILjava/lang/String;Z)V

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->addPendingDownloadToSharedPrefs(Lorg/chromium/chrome/browser/download/DownloadNotificationService$PendingNotification;)V

    .line 192
    return-void

    .line 171
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDownloadSuccessful(ILjava/lang/String;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 242
    const v0, 0x1080082

    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->download_notification_completed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->buildNotification(ILjava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Z;

    move-result-object v0

    .line 246
    if-eqz p3, :cond_0

    .line 247
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, p3, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Z;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/Z;

    .line 250
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/Z;->a()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->updateNotification(ILandroid/app/Notification;)V

    .line 251
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->removePendingDownloadFromSharedPrefs(I)V

    .line 252
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->mContext:Landroid/content/Context;

    .line 125
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 127
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 136
    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->hasDownloadManagerService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->pauseAllDownloads()V

    .line 138
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->stopSelf()V

    .line 140
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 144
    invoke-static {p1}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->isDownloadOperationIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->handleDownloadOperation(Landroid/content/Intent;)V

    .line 150
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 118
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->pauseAllDownloads()V

    .line 119
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->stopSelf()V

    .line 120
    return-void
.end method

.method pauseAllDownloads()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 274
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->parseDownloadNotificationsFromSharedPrefs(Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 276
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 277
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/download/DownloadNotificationService$PendingNotification;

    .line 278
    iget v4, v0, Lorg/chromium/chrome/browser/download/DownloadNotificationService$PendingNotification;->downloadId:I

    if-lez v4, :cond_0

    .line 279
    iget v4, v0, Lorg/chromium/chrome/browser/download/DownloadNotificationService$PendingNotification;->downloadId:I

    iget-object v5, v0, Lorg/chromium/chrome/browser/download/DownloadNotificationService$PendingNotification;->fileName:Ljava/lang/String;

    iget-boolean v0, v0, Lorg/chromium/chrome/browser/download/DownloadNotificationService$PendingNotification;->isResumable:Z

    invoke-virtual {p0, v4, v5, v0, v2}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->notifyDownloadPaused(ILjava/lang/String;ZZ)V

    .line 276
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 283
    :cond_1
    return-void
.end method

.method updateNotification(ILandroid/app/Notification;)V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v1, "DownloadNotificationService"

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 374
    return-void
.end method
