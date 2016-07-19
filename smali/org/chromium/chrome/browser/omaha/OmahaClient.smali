.class public Lorg/chromium/chrome/browser/omaha/OmahaClient;
.super Landroid/app/IntentService;
.source "OmahaClient.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final INSTALL_SOURCE_ORGANIC:Ljava/lang/String; = "organic"

.field static final INSTALL_SOURCE_SYSTEM:Ljava/lang/String; = "system_image"

.field static final INVALID_REQUEST_ID:Ljava/lang/String; = "invalid"

.field static final PREF_INSTALL_SOURCE:Ljava/lang/String; = "installSource"

.field static final PREF_LATEST_VERSION:Ljava/lang/String; = "latestVersion"

.field static final PREF_MARKET_URL:Ljava/lang/String; = "marketURL"

.field static final PREF_PACKAGE:Ljava/lang/String; = "com.google.android.apps.chrome.omaha"

.field static final PREF_PERSISTED_REQUEST_ID:Ljava/lang/String; = "persistedRequestID"

.field static final PREF_TIMESTAMP_OF_REQUEST:Ljava/lang/String; = "timestampOfRequest"

.field private static sEnableCommunication:Z

.field private static sEnableUpdateDetection:Z

.field private static final sIsFreshInstallLock:Ljava/lang/Object;

.field private static sIsFreshInstallOrDataCleared:Ljava/lang/Boolean;

.field private static sMarketURLGetter:Lorg/chromium/chrome/browser/omaha/MarketURLGetter;

.field private static sVersionNumberGetter:Lorg/chromium/chrome/browser/omaha/VersionNumberGetter;


# instance fields
.field private mBackoffScheduler:Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;

.field private mCurrentRequest:Lorg/chromium/chrome/browser/omaha/RequestData;

.field private mGenerator:Lorg/chromium/chrome/browser/omaha/RequestGenerator;

.field private mInstallSource:Ljava/lang/String;

.field private mLatestVersion:Ljava/lang/String;

.field private mMarketURL:Ljava/lang/String;

.field protected mSendInstallEvent:Z

.field private mStateHasBeenRestored:Z

.field private mTimestampForNewRequest:J

.field private mTimestampForNextPostAttempt:J

.field private mTimestampOfInstall:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 59
    const-class v0, Lorg/chromium/chrome/browser/omaha/OmahaClient;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->$assertionsDisabled:Z

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->sIsFreshInstallLock:Ljava/lang/Object;

    .line 111
    sput-boolean v1, Lorg/chromium/chrome/browser/omaha/OmahaClient;->sEnableCommunication:Z

    .line 112
    sput-boolean v1, Lorg/chromium/chrome/browser/omaha/OmahaClient;->sEnableUpdateDetection:Z

    .line 113
    sput-object v2, Lorg/chromium/chrome/browser/omaha/OmahaClient;->sVersionNumberGetter:Lorg/chromium/chrome/browser/omaha/VersionNumberGetter;

    .line 114
    sput-object v2, Lorg/chromium/chrome/browser/omaha/OmahaClient;->sMarketURLGetter:Lorg/chromium/chrome/browser/omaha/MarketURLGetter;

    .line 115
    sput-object v2, Lorg/chromium/chrome/browser/omaha/OmahaClient;->sIsFreshInstallOrDataCleared:Ljava/lang/Boolean;

    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 133
    const-string/jumbo v0, "omaha"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->setIntentRedelivery(Z)V

    .line 135
    return-void
.end method

.method private cancelRepeatingAlarm()V
    .locals 3

    .prologue
    .line 381
    invoke-static {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->createRegisterRequestIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 382
    const/4 v1, 0x0

    const/high16 v2, 0x20000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 387
    if-eqz v1, :cond_0

    .line 388
    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 389
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 390
    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 392
    :cond_0
    return-void
.end method

.method private checkServerResponseCode(Ljava/net/HttpURLConnection;)V
    .locals 3

    .prologue
    .line 562
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 563
    new-instance v0, Lorg/chromium/chrome/browser/omaha/RequestFailureException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Received "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " code instead of 200 (OK) from the server.  Aborting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/omaha/RequestFailureException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    :catch_0
    move-exception v0

    .line 568
    new-instance v1, Lorg/chromium/chrome/browser/omaha/RequestFailureException;

    const-string/jumbo v2, "Failed to read response code from server: "

    invoke-direct {v1, v2, v0}, Lorg/chromium/chrome/browser/omaha/RequestFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 569
    :cond_0
    return-void
.end method

.method static createInitializeIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 226
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/chromium/chrome/browser/omaha/OmahaClient;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    const-string/jumbo v1, "org.chromium.chrome.browser.omaha.ACTION_INITIALIZE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    return-object v0
.end method

.method static createPostRequestIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 279
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/chromium/chrome/browser/omaha/OmahaClient;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 280
    const-string/jumbo v1, "org.chromium.chrome.browser.omaha.ACTION_POST_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    return-object v0
.end method

.method static createRegisterRequestIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 245
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/chromium/chrome/browser/omaha/OmahaClient;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 246
    const-string/jumbo v1, "org.chromium.chrome.browser.omaha.ACTION_REGISTER_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    return-object v0
.end method

.method private createRequestData(JLjava/lang/String;)Lorg/chromium/chrome/browser/omaha/RequestData;
    .locals 7

    .prologue
    .line 426
    if-eqz p3, :cond_0

    const-string/jumbo v0, "invalid"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->generateRandomUUID()Ljava/lang/String;

    move-result-object v4

    .line 431
    :goto_0
    new-instance v0, Lorg/chromium/chrome/browser/omaha/RequestData;

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mSendInstallEvent:Z

    iget-object v5, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mInstallSource:Ljava/lang/String;

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/omaha/RequestData;-><init>(ZJLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    move-object v4, p3

    .line 429
    goto :goto_0
.end method

.method private generateAndPostRequest(JLjava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 320
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->getBackoffScheduler()Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;

    move-result-object v8

    .line 323
    :try_start_0
    iget-wide v2, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mTimestampOfInstall:J

    iget-object v1, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mCurrentRequest:Lorg/chromium/chrome/browser/omaha/RequestData;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/omaha/RequestData;->isSendInstallEvent()Z

    move-result v1

    invoke-static {p1, p2, v2, v3, v1}, Lorg/chromium/chrome/browser/omaha/RequestGenerator;->installAge(JJZ)J

    move-result-wide v4

    .line 325
    invoke-static {}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->getVersionNumberGetter()Lorg/chromium/chrome/browser/omaha/VersionNumberGetter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/chromium/chrome/browser/omaha/VersionNumberGetter;->getCurrentlyUsedVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 326
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->getRequestGenerator()Lorg/chromium/chrome/browser/omaha/RequestGenerator;

    move-result-object v1

    iget-object v6, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mCurrentRequest:Lorg/chromium/chrome/browser/omaha/RequestData;

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/chrome/browser/omaha/RequestGenerator;->generateXML(Ljava/lang/String;Ljava/lang/String;JLorg/chromium/chrome/browser/omaha/RequestData;)Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-virtual {p0, p1, p2, v1}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->postRequest(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->parseServerResponse(Ljava/lang/String;)V

    .line 334
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mCurrentRequest:Lorg/chromium/chrome/browser/omaha/RequestData;

    .line 335
    const-wide/32 v2, 0x36ee80

    add-long/2addr v2, p1

    iput-wide v2, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mTimestampForNextPostAttempt:J

    .line 336
    invoke-virtual {v8}, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->resetFailedAttempts()V

    .line 337
    const-string/jumbo v1, "omaha"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Request to Server Successful. Timestamp for next request:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mTimestampForNextPostAttempt:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/chromium/chrome/browser/omaha/RequestFailureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    return v0

    .line 341
    :catch_0
    move-exception v1

    .line 343
    const-string/jumbo v2, "omaha"

    const-string/jumbo v3, "Failed to contact server: "

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v7

    invoke-static {v2, v3, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    invoke-static {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->createPostRequestIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 345
    invoke-virtual {v8, v0}, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->createAlarm(Landroid/content/Intent;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mTimestampForNextPostAttempt:J

    .line 346
    invoke-virtual {v8}, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->increaseFailedAttempts()V

    move v0, v7

    .line 347
    goto :goto_0
.end method

.method private static getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 786
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 787
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :cond_0
    return p2
.end method

.method private static getLongFromMap(Ljava/util/Map;Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 768
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 769
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :cond_0
    return-wide p2
.end method

.method public static getMarketURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 758
    sget-object v0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->sMarketURLGetter:Lorg/chromium/chrome/browser/omaha/MarketURLGetter;

    if-nez v0, :cond_0

    .line 759
    new-instance v0, Lorg/chromium/chrome/browser/omaha/MarketURLGetter;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/omaha/MarketURLGetter;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->sMarketURLGetter:Lorg/chromium/chrome/browser/omaha/MarketURLGetter;

    .line 761
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->sMarketURLGetter:Lorg/chromium/chrome/browser/omaha/MarketURLGetter;

    const-string/jumbo v1, "com.google.android.apps.chrome.omaha"

    const-string/jumbo v2, "marketURL"

    invoke-virtual {v0, p0, v1, v2}, Lorg/chromium/chrome/browser/omaha/MarketURLGetter;->getMarketURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getStringFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 777
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 778
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method static getVersionNumberGetter()Lorg/chromium/chrome/browser/omaha/VersionNumberGetter;
    .locals 1

    .prologue
    .line 738
    sget-object v0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->sVersionNumberGetter:Lorg/chromium/chrome/browser/omaha/VersionNumberGetter;

    if-nez v0, :cond_0

    .line 739
    new-instance v0, Lorg/chromium/chrome/browser/omaha/VersionNumberGetter;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/omaha/VersionNumberGetter;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->sVersionNumberGetter:Lorg/chromium/chrome/browser/omaha/VersionNumberGetter;

    .line 741
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->sVersionNumberGetter:Lorg/chromium/chrome/browser/omaha/VersionNumberGetter;

    return-object v0
.end method

.method private handleInitialize()V
    .locals 1

    .prologue
    .line 235
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->scheduleRepeatingAlarm()V

    .line 238
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->hasRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->createPostRequestIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 239
    :cond_0
    return-void
.end method

.method private handlePostRequestIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 289
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->hasRequest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    :goto_0
    return-void

    .line 294
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->getBackoffScheduler()Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->getCurrentTime()J

    move-result-wide v0

    .line 295
    iget-wide v2, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mTimestampForNextPostAttempt:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 297
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->generateRandomUUID()Ljava/lang/String;

    move-result-object v2

    .line 298
    iget-boolean v3, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mSendInstallEvent:Z

    .line 299
    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->generateAndPostRequest(JLjava/lang/String;)Z

    move-result v4

    .line 301
    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 303
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mSendInstallEvent:Z

    .line 306
    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->registerNewRequest(J)V

    .line 307
    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->generateAndPostRequest(JLjava/lang/String;)Z

    .line 316
    :cond_1
    :goto_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->saveState()V

    goto :goto_0

    .line 311
    :cond_2
    invoke-static {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->createPostRequestIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 312
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->getBackoffScheduler()Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mTimestampForNextPostAttempt:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->createAlarm(Landroid/content/Intent;J)J

    goto :goto_1
.end method

.method private handleRegisterRequest(Landroid/content/Intent;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 255
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->isChromeBeingUsed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->cancelRepeatingAlarm()V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->getBackoffScheduler()Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->getCurrentTime()J

    move-result-wide v4

    .line 262
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->hasRequest()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mCurrentRequest:Lorg/chromium/chrome/browser/omaha/RequestData;

    invoke-virtual {v0, v4, v5}, Lorg/chromium/chrome/browser/omaha/RequestData;->getAgeInMilliseconds(J)J

    move-result-wide v6

    const-wide/32 v8, 0x112a880

    cmp-long v0, v6, v8

    if-ltz v0, :cond_4

    move v0, v1

    .line 264
    :goto_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->hasRequest()Z

    move-result v3

    if-nez v3, :cond_5

    iget-wide v6, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mTimestampForNewRequest:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_5

    .line 265
    :goto_2
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 266
    :cond_2
    invoke-virtual {p0, v4, v5}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->registerNewRequest(J)V

    .line 270
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->hasRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-static {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->createPostRequestIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_4
    move v0, v2

    .line 262
    goto :goto_1

    :cond_5
    move v1, v2

    .line 264
    goto :goto_2
.end method

.method public static isFreshInstallOrDataHasBeenCleared(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 799
    invoke-static {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->setIsFreshInstallOrDataHasBeenCleared(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static isNewerVersionAvailable(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 580
    sget-boolean v1, Lorg/chromium/chrome/browser/omaha/OmahaClient;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 583
    :cond_0
    sget-boolean v1, Lorg/chromium/chrome/browser/omaha/OmahaClient;->sEnableUpdateDetection:Z

    if-nez v1, :cond_2

    .line 605
    :cond_1
    :goto_0
    return v0

    .line 589
    :cond_2
    const-string/jumbo v1, ""

    invoke-static {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->getMarketURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 594
    invoke-static {}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->getVersionNumberGetter()Lorg/chromium/chrome/browser/omaha/VersionNumberGetter;

    move-result-object v1

    .line 595
    invoke-virtual {v1, p0}, Lorg/chromium/chrome/browser/omaha/VersionNumberGetter;->getCurrentlyUsedVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 596
    const-string/jumbo v3, "com.google.android.apps.chrome.omaha"

    const-string/jumbo v4, "latestVersion"

    invoke-virtual {v1, p0, v3, v4}, Lorg/chromium/chrome/browser/omaha/VersionNumberGetter;->getLatestKnownVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 598
    invoke-static {v2}, Lorg/chromium/chrome/browser/omaha/VersionNumber;->fromString(Ljava/lang/String;)Lorg/chromium/chrome/browser/omaha/VersionNumber;

    move-result-object v2

    .line 599
    invoke-static {v1}, Lorg/chromium/chrome/browser/omaha/VersionNumber;->fromString(Ljava/lang/String;)Lorg/chromium/chrome/browser/omaha/VersionNumber;

    move-result-object v1

    .line 601
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 605
    invoke-virtual {v2, v1}, Lorg/chromium/chrome/browser/omaha/VersionNumber;->isSmallerThan(Lorg/chromium/chrome/browser/omaha/VersionNumber;)Z

    move-result v0

    goto :goto_0
.end method

.method public static onForegroundSessionStart(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 220
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeVersionInfo;->isOfficialBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-static {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->createInitializeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 222
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private parseServerResponse(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 467
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->getRequestGenerator()Lorg/chromium/chrome/browser/omaha/RequestGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omaha/RequestGenerator;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 468
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mSendInstallEvent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 469
    :goto_0
    new-instance v2, Lorg/chromium/chrome/browser/omaha/ResponseParser;

    iget-boolean v3, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mSendInstallEvent:Z

    invoke-direct {v2, v1, v3, v0, v0}, Lorg/chromium/chrome/browser/omaha/ResponseParser;-><init>(Ljava/lang/String;ZZZ)V

    .line 471
    invoke-virtual {v2, p1}, Lorg/chromium/chrome/browser/omaha/ResponseParser;->parseResponse(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->getBackoffScheduler()Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->getCurrentTime()J

    move-result-wide v0

    const-wide/32 v4, 0x112a880

    add-long/2addr v0, v4

    iput-wide v0, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mTimestampForNewRequest:J

    .line 473
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/omaha/ResponseParser;->getNewVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mLatestVersion:Ljava/lang/String;

    .line 474
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/omaha/ResponseParser;->getURL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mMarketURL:Ljava/lang/String;

    .line 475
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->scheduleRepeatingAlarm()V

    .line 476
    return-void

    .line 468
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readResponseFromServer(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 539
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 540
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 546
    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->checkServerResponseCode(Ljava/net/HttpURLConnection;)V

    .line 547
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 549
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 551
    :catch_0
    move-exception v0

    .line 552
    new-instance v1, Lorg/chromium/chrome/browser/omaha/RequestFailureException;

    const-string/jumbo v2, "Failed when reading response from server: "

    invoke-direct {v1, v2, v0}, Lorg/chromium/chrome/browser/omaha/RequestFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private saveState()V
    .locals 6

    .prologue
    .line 699
    const-string/jumbo v0, "com.google.android.apps.chrome.omaha"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 700
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 701
    const-string/jumbo v0, "sendInstallEvent"

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mSendInstallEvent:Z

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 702
    invoke-static {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->setIsFreshInstallOrDataHasBeenCleared(Landroid/content/Context;)Z

    .line 703
    const-string/jumbo v0, "timestampOfInstall"

    iget-wide v4, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mTimestampOfInstall:J

    invoke-interface {v2, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 704
    const-string/jumbo v0, "timestampForNextPostAttempt"

    iget-wide v4, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mTimestampForNextPostAttempt:J

    invoke-interface {v2, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 705
    const-string/jumbo v0, "timestampForNewRequest"

    iget-wide v4, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mTimestampForNewRequest:J

    invoke-interface {v2, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 706
    const-string/jumbo v3, "timestampOfRequest"

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->hasRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mCurrentRequest:Lorg/chromium/chrome/browser/omaha/RequestData;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omaha/RequestData;->getCreationTimestamp()J

    move-result-wide v0

    :goto_0
    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 708
    const-string/jumbo v1, "persistedRequestID"

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->hasRequest()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mCurrentRequest:Lorg/chromium/chrome/browser/omaha/RequestData;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omaha/RequestData;->getRequestID()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 710
    const-string/jumbo v1, "latestVersion"

    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mLatestVersion:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    :goto_2
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 711
    const-string/jumbo v1, "marketURL"

    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mMarketURL:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string/jumbo v0, ""

    :goto_3
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 713
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mInstallSource:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "installSource"

    iget-object v1, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mInstallSource:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 715
    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 716
    return-void

    .line 706
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 708
    :cond_2
    const-string/jumbo v0, "invalid"

    goto :goto_1

    .line 710
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mLatestVersion:Ljava/lang/String;

    goto :goto_2

    .line 711
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mMarketURL:Ljava/lang/String;

    goto :goto_3
.end method

.method private scheduleRepeatingAlarm()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 357
    invoke-static {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->createRegisterRequestIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 358
    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 359
    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 360
    const/4 v3, 0x1

    iget-wide v4, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mTimestampForNewRequest:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->setAlarm(Landroid/app/AlarmManager;Landroid/app/PendingIntent;IJ)V

    .line 361
    return-void
.end method

.method private sendRequestToServer(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 523
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 524
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 525
    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, p2, v0, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;II)V

    .line 526
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    .line 527
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->checkServerResponseCode(Ljava/net/HttpURLConnection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    return-void

    .line 528
    :catch_0
    move-exception v0

    .line 529
    new-instance v1, Lorg/chromium/chrome/browser/omaha/RequestFailureException;

    const-string/jumbo v2, "Failed to write request to server: "

    invoke-direct {v1, v2, v0}, Lorg/chromium/chrome/browser/omaha/RequestFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static setEnableCommunication(Z)V
    .locals 0

    .prologue
    .line 145
    sput-boolean p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->sEnableCommunication:Z

    .line 146
    return-void
.end method

.method public static setEnableUpdateDetection(Z)V
    .locals 0

    .prologue
    .line 153
    sput-boolean p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->sEnableUpdateDetection:Z

    .line 154
    return-void
.end method

.method private static setIsFreshInstallOrDataHasBeenCleared(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v0, 0x0

    .line 803
    sget-object v1, Lorg/chromium/chrome/browser/omaha/OmahaClient;->sIsFreshInstallLock:Ljava/lang/Object;

    monitor-enter v1

    .line 804
    :try_start_0
    sget-object v2, Lorg/chromium/chrome/browser/omaha/OmahaClient;->sIsFreshInstallOrDataCleared:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    .line 805
    const-string/jumbo v2, "com.google.android.apps.chrome.omaha"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 807
    const-string/jumbo v3, "timestampOfInstall"

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->sIsFreshInstallOrDataCleared:Ljava/lang/Boolean;

    .line 809
    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->sIsFreshInstallOrDataCleared:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 810
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static setMarketURLGetterForTests(Lorg/chromium/chrome/browser/omaha/MarketURLGetter;)V
    .locals 0

    .prologue
    .line 750
    sput-object p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->sMarketURLGetter:Lorg/chromium/chrome/browser/omaha/MarketURLGetter;

    .line 751
    return-void
.end method

.method private setUpPostRequest(JLjava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 502
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 503
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 504
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mSendInstallEvent:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->getCumulativeFailedAttempts()I

    move-result v0

    if-lez v0, :cond_0

    .line 505
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mCurrentRequest:Lorg/chromium/chrome/browser/omaha/RequestData;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/omaha/RequestData;->getAgeInSeconds(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 506
    const-string/jumbo v1, "X-RequestAge"

    invoke-virtual {p3, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 514
    :cond_0
    return-void

    .line 508
    :catch_0
    move-exception v0

    .line 509
    new-instance v1, Lorg/chromium/chrome/browser/omaha/RequestFailureException;

    const-string/jumbo v2, "Caught an IllegalAccessError:"

    invoke-direct {v1, v2, v0}, Lorg/chromium/chrome/browser/omaha/RequestFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 510
    :catch_1
    move-exception v0

    .line 511
    new-instance v1, Lorg/chromium/chrome/browser/omaha/RequestFailureException;

    const-string/jumbo v2, "Caught an IllegalArgumentException:"

    invoke-direct {v1, v2, v0}, Lorg/chromium/chrome/browser/omaha/RequestFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 512
    :catch_2
    move-exception v0

    .line 513
    new-instance v1, Lorg/chromium/chrome/browser/omaha/RequestFailureException;

    const-string/jumbo v2, "Caught an IllegalStateException:"

    invoke-direct {v1, v2, v0}, Lorg/chromium/chrome/browser/omaha/RequestFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static setVersionNumberGetterForTests(Lorg/chromium/chrome/browser/omaha/VersionNumberGetter;)V
    .locals 0

    .prologue
    .line 732
    sput-object p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->sVersionNumberGetter:Lorg/chromium/chrome/browser/omaha/VersionNumberGetter;

    .line 733
    return-void
.end method


# virtual methods
.method createBackoffScheduler(Ljava/lang/String;Landroid/content/Context;JJ)Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;
    .locals 9

    .prologue
    .line 177
    new-instance v1, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;-><init>(Ljava/lang/String;Landroid/content/Context;JJ)V

    return-object v1
.end method

.method protected createConnection()Ljava/net/HttpURLConnection;
    .locals 3

    .prologue
    .line 484
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->getRequestGenerator()Lorg/chromium/chrome/browser/omaha/RequestGenerator;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/omaha/RequestGenerator;->getServerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 486
    const v1, 0xea60

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 487
    const v1, 0xea60

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 488
    return-object v0

    .line 489
    :catch_0
    move-exception v0

    .line 490
    new-instance v1, Lorg/chromium/chrome/browser/omaha/RequestFailureException;

    const-string/jumbo v2, "Caught a malformed URL exception."

    invoke-direct {v1, v2, v0}, Lorg/chromium/chrome/browser/omaha/RequestFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 491
    :catch_1
    move-exception v0

    .line 492
    new-instance v1, Lorg/chromium/chrome/browser/omaha/RequestFailureException;

    const-string/jumbo v2, "Failed to open connection to URL"

    invoke-direct {v1, v2, v0}, Lorg/chromium/chrome/browser/omaha/RequestFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method createRequestGenerator(Landroid/content/Context;)Lorg/chromium/chrome/browser/omaha/RequestGenerator;
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeApplication;->createOmahaRequestGenerator()Lorg/chromium/chrome/browser/omaha/RequestGenerator;

    move-result-object v0

    return-object v0
.end method

.method determineInstallSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 614
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->getApplicationFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 615
    :goto_0
    if-eqz v0, :cond_1

    const-string/jumbo v0, "system_image"

    :goto_1
    return-object v0

    .line 614
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 615
    :cond_1
    const-string/jumbo v0, "organic"

    goto :goto_1
.end method

.method protected generateRandomUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 723
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getApplicationFlags()I
    .locals 1

    .prologue
    .line 625
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    return v0
.end method

.method protected final getBackoffScheduler()Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;
    .locals 8

    .prologue
    .line 819
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mBackoffScheduler:Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;

    if-nez v0, :cond_0

    .line 820
    const-string/jumbo v2, "com.google.android.apps.chrome.omaha"

    const-wide/32 v4, 0x36ee80

    const-wide/32 v6, 0x112a880

    move-object v1, p0

    move-object v3, p0

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->createBackoffScheduler(Ljava/lang/String;Landroid/content/Context;JJ)Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mBackoffScheduler:Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;

    .line 823
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mBackoffScheduler:Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;

    return-object v0
.end method

.method getCumulativeFailedAttempts()I
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->getBackoffScheduler()Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->getNumFailedAttempts()I

    move-result v0

    return v0
.end method

.method protected final getRequestGenerator()Lorg/chromium/chrome/browser/omaha/RequestGenerator;
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mGenerator:Lorg/chromium/chrome/browser/omaha/RequestGenerator;

    if-nez v0, :cond_0

    invoke-virtual {p0, p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->createRequestGenerator(Landroid/content/Context;)Lorg/chromium/chrome/browser/omaha/RequestGenerator;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mGenerator:Lorg/chromium/chrome/browser/omaha/RequestGenerator;

    .line 815
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mGenerator:Lorg/chromium/chrome/browser/omaha/RequestGenerator;

    return-object v0
.end method

.method getTimestampForNewRequest()J
    .locals 2

    .prologue
    .line 163
    iget-wide v0, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mTimestampForNewRequest:J

    return-wide v0
.end method

.method getTimestampForNextPostAttempt()J
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mTimestampForNextPostAttempt:J

    return-wide v0
.end method

.method hasRequest()Z
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mCurrentRequest:Lorg/chromium/chrome/browser/omaha/RequestData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isChromeBeingUsed()Z
    .locals 2

    .prologue
    .line 399
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->hasVisibleActivities()Z

    move-result v0

    .line 400
    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->isInteractive(Landroid/content/Context;)Z

    move-result v1

    .line 401
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 194
    sget-boolean v0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 196
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->sEnableCommunication:Z

    if-nez v0, :cond_1

    .line 214
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mStateHasBeenRestored:Z

    if-nez v0, :cond_2

    .line 202
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->restoreState()V

    .line 205
    :cond_2
    const-string/jumbo v0, "org.chromium.chrome.browser.omaha.ACTION_INITIALIZE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 206
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->handleInitialize()V

    goto :goto_0

    .line 207
    :cond_3
    const-string/jumbo v0, "org.chromium.chrome.browser.omaha.ACTION_REGISTER_REQUEST"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 208
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->handleRegisterRequest(Landroid/content/Intent;)V

    goto :goto_0

    .line 209
    :cond_4
    const-string/jumbo v0, "org.chromium.chrome.browser.omaha.ACTION_POST_REQUEST"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 210
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->handlePostRequestIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 212
    :cond_5
    const-string/jumbo v0, "omaha"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Got unknown action from intent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method postRequest(JLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 448
    const/4 v1, 0x0

    .line 450
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->createConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 451
    invoke-direct {p0, p1, p2, v1, p3}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->setUpPostRequest(JLjava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 452
    invoke-direct {p0, v1, p3}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->sendRequestToServer(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 453
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->readResponseFromServer(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 455
    if-eqz v1, :cond_0

    .line 456
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 460
    :cond_0
    return-object v0

    .line 455
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 456
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    throw v0
.end method

.method registerNewRequest(J)V
    .locals 3

    .prologue
    .line 411
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->createRequestData(JLjava/lang/String;)Lorg/chromium/chrome/browser/omaha/RequestData;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mCurrentRequest:Lorg/chromium/chrome/browser/omaha/RequestData;

    .line 412
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->getBackoffScheduler()Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->resetFailedAttempts()V

    .line 413
    iput-wide p1, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mTimestampForNextPostAttempt:J

    .line 417
    const-wide/32 v0, 0x112a880

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mTimestampForNewRequest:J

    .line 418
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->scheduleRepeatingAlarm()V

    .line 420
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->saveState()V

    .line 421
    return-void
.end method

.method restoreState()V
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 634
    .line 635
    const-string/jumbo v0, "com.google.android.apps.chrome.omaha"

    invoke-virtual {p0, v0, v2}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 636
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 639
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->getBackoffScheduler()Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->getCurrentTime()J

    move-result-wide v4

    .line 640
    const-string/jumbo v0, "timestampForNewRequest"

    invoke-static {v3, v0, v4, v5}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->getLongFromMap(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mTimestampForNewRequest:J

    .line 642
    const-string/jumbo v0, "timestampForNextPostAttempt"

    invoke-static {v3, v0, v4, v5}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->getLongFromMap(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mTimestampForNextPostAttempt:J

    .line 645
    const-string/jumbo v0, "timestampOfRequest"

    invoke-static {v3, v0, v10, v11}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->getLongFromMap(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v6

    .line 648
    const-string/jumbo v0, "sendInstallEvent"

    invoke-static {v3, v0, v1}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mSendInstallEvent:Z

    .line 651
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->determineInstallSource()Ljava/lang/String;

    move-result-object v0

    .line 652
    const-string/jumbo v8, "installSource"

    invoke-static {v3, v8, v0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mInstallSource:Ljava/lang/String;

    .line 656
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mSendInstallEvent:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "persistedRequestID"

    const-string/jumbo v8, "invalid"

    invoke-static {v3, v0, v8}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 660
    :goto_0
    cmp-long v8, v6, v10

    if-nez v8, :cond_3

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mCurrentRequest:Lorg/chromium/chrome/browser/omaha/RequestData;

    .line 663
    const-string/jumbo v0, "latestVersion"

    const-string/jumbo v6, ""

    invoke-static {v3, v0, v6}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mLatestVersion:Ljava/lang/String;

    .line 664
    const-string/jumbo v0, "marketURL"

    const-string/jumbo v6, ""

    invoke-static {v3, v0, v6}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mMarketURL:Ljava/lang/String;

    .line 667
    const-string/jumbo v0, "timestampOfInstall"

    invoke-static {v3, v0, v4, v5}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->getLongFromMap(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mTimestampOfInstall:J

    .line 670
    iget-wide v6, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mTimestampForNewRequest:J

    sub-long/2addr v6, v4

    .line 671
    const-wide/32 v8, 0x112a880

    cmp-long v0, v6, v8

    if-lez v0, :cond_4

    .line 672
    const-string/jumbo v0, "omaha"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Delay to next request ("

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ") is longer than expected.  Resetting to now."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v6}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 674
    iput-wide v4, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mTimestampForNewRequest:J

    move v0, v1

    .line 679
    :goto_2
    iget-wide v6, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mTimestampForNextPostAttempt:J

    sub-long/2addr v6, v4

    .line 680
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->getBackoffScheduler()Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->getGeneratedDelay()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-lez v3, :cond_0

    .line 681
    const-string/jumbo v0, "omaha"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Delay to next post attempt ("

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ") is greater than expected ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->getBackoffScheduler()Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;

    move-result-object v6

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->getGeneratedDelay()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ").  Resetting to now."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 684
    iput-wide v4, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mTimestampForNextPostAttempt:J

    move v0, v1

    .line 688
    :cond_0
    if-eqz v0, :cond_1

    .line 689
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->saveState()V

    .line 692
    :cond_1
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/omaha/OmahaClient;->mStateHasBeenRestored:Z

    .line 693
    return-void

    .line 656
    :cond_2
    const-string/jumbo v0, "invalid"

    goto/16 :goto_0

    .line 660
    :cond_3
    invoke-direct {p0, v6, v7, v0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->createRequestData(JLjava/lang/String;)Lorg/chromium/chrome/browser/omaha/RequestData;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method protected setAlarm(Landroid/app/AlarmManager;Landroid/app/PendingIntent;IJ)V
    .locals 8

    .prologue
    .line 371
    const/4 v1, 0x1

    const-wide/32 v4, 0x112a880

    move-object v0, p1

    move-wide v2, p4

    move-object v6, p2

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_0
    return-void

    .line 373
    :catch_0
    move-exception v0

    const-string/jumbo v0, "omaha"

    const-string/jumbo v1, "Failed to set repeating alarm."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
