.class public Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;
.super Landroid/content/BroadcastReceiver;
.source "PrecacheServiceLauncher.java"


# static fields
.field static final ACTION_ALARM:Ljava/lang/String; = "org.chromium.chrome.browser.precache.PrecacheServiceLauncher.ALARM"

.field static final PREF_IS_PRECACHING_ENABLED:Ljava/lang/String; = "precache.is_precaching_enabled"

.field static final PREF_LAST_ELAPSED_TIME:Ljava/lang/String; = "precache.last_elapsed_time"

.field static final PREF_PRECACHE_LAST_TIME:Ljava/lang/String; = "precache.last_time"

.field static final WAIT_UNTIL_NEXT_PRECACHE_MS:I = 0xdbba00

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private mDeviceState:Lorg/chromium/components/precache/DeviceState;

.field private mFailureReasonsToRecord:Ljava/util/Queue;

.field private mPrecacheLauncher:Lorg/chromium/chrome/browser/precache/PrecacheLauncher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 58
    invoke-static {}, Lorg/chromium/components/precache/DeviceState;->getInstance()Lorg/chromium/components/precache/DeviceState;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->mDeviceState:Lorg/chromium/components/precache/DeviceState;

    .line 60
    invoke-static {}, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->get()Lorg/chromium/chrome/browser/precache/PrecacheLauncher;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->mPrecacheLauncher:Lorg/chromium/chrome/browser/precache/PrecacheLauncher;

    .line 62
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->mFailureReasonsToRecord:Ljava/util/Queue;

    return-void
.end method

.method private acquireWakeLockAndStartService(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->acquireWakeLock(Landroid/content/Context;)V

    .line 241
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->startPrecacheService(Landroid/content/Context;)V

    .line 242
    return-void
.end method

.method private cancelAlarm(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 301
    invoke-static {p1}, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->getPendingAlarmIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->cancelAlarmOnSystem(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 302
    return-void
.end method

.method private static getPendingAlarmIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 5

    .prologue
    .line 268
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "org.chromium.chrome.browser.precache.PrecacheServiceLauncher.ALARM"

    const/4 v3, 0x0

    const-class v4, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;

    invoke-direct {v1, v2, v3, p0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x8000000

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static isPrecachingEnabled(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 141
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 142
    const-string/jumbo v1, "precache.is_precaching_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static precachingFinished(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;-><init>()V

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->precachingFinishedInternal(Landroid/content/Context;Z)V

    .line 115
    return-void
.end method

.method private precachingFinishedInternal(Landroid/content/Context;Z)V
    .locals 6

    .prologue
    .line 118
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 119
    if-eqz p2, :cond_0

    .line 120
    const-wide/32 v0, 0xdbba0

    const-wide/32 v2, 0xdbba00

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->timeSinceLastPrecacheMs(Landroid/content/Context;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->setAlarm(Landroid/content/Context;J)V

    .line 132
    :goto_0
    return-void

    .line 125
    :cond_0
    const v0, 0xdbba0

    const v1, 0xdbba00

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->setAlarm(Landroid/content/Context;J)V

    .line 128
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 129
    const-string/jumbo v1, "precache.last_time"

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->getElapsedRealtimeOnSystem()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 130
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method protected static releaseWakeLock()V
    .locals 1

    .prologue
    .line 230
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 231
    sget-object v0, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 232
    :cond_0
    return-void
.end method

.method private resetLastPrecacheMsIfDeviceRebooted(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 328
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 329
    const-string/jumbo v1, "precache.last_elapsed_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 330
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->getElapsedRealtimeOnSystem()J

    move-result-wide v4

    .line 332
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 333
    cmp-long v1, v4, v2

    if-gez v1, :cond_0

    .line 336
    const-string/jumbo v1, "precache.last_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 338
    :cond_0
    const-string/jumbo v1, "precache.last_elapsed_time"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 339
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 340
    return-void
.end method

.method private setAlarm(Landroid/content/Context;J)V
    .locals 8

    .prologue
    .line 280
    const/4 v3, 0x2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->getElapsedRealtimeOnSystem()J

    move-result-wide v0

    add-long v4, v0, p2

    invoke-static {p1}, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->getPendingAlarmIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->setAlarmOnSystem(Landroid/content/Context;IJLandroid/app/PendingIntent;)V

    .line 282
    return-void
.end method

.method public static setIsPrecachingEnabled(Landroid/content/Context;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 87
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 88
    const-string/jumbo v1, "precache.is_precaching_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 89
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 91
    if-nez p1, :cond_0

    .line 94
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/chromium/chrome/browser/precache/PrecacheService;

    invoke-direct {v0, v2, v2, p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 100
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-eq v1, v2, :cond_0

    throw v0
.end method

.method private timeSinceLastPrecacheMs(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 318
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 321
    const-string/jumbo v1, "precache.last_time"

    const-wide/32 v2, -0xdbba00

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 323
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->getElapsedRealtimeOnSystem()J

    move-result-wide v2

    sub-long v0, v2, v0

    return-wide v0
.end method


# virtual methods
.method protected acquireWakeLock(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 253
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 254
    sget-object v0, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 255
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 256
    const/4 v1, 0x1

    const-string/jumbo v2, "Precache"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 258
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 259
    return-void
.end method

.method protected cancelAlarmOnSystem(Landroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 307
    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 308
    invoke-virtual {v0, p2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 309
    return-void
.end method

.method failureReasons(Landroid/content/Context;)Ljava/util/EnumSet;
    .locals 6

    .prologue
    .line 152
    const-class v0, Lorg/chromium/chrome/browser/precache/FailureReason;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->mPrecacheLauncher:Lorg/chromium/chrome/browser/precache/PrecacheLauncher;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->failureReasons()Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 154
    iget-object v1, p0, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->mDeviceState:Lorg/chromium/components/precache/DeviceState;

    invoke-virtual {v1, p1}, Lorg/chromium/components/precache/DeviceState;->isPowerConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/chromium/chrome/browser/precache/FailureReason;->NO_POWER:Lorg/chromium/chrome/browser/precache/FailureReason;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->mDeviceState:Lorg/chromium/components/precache/DeviceState;

    invoke-virtual {v1, p1}, Lorg/chromium/components/precache/DeviceState;->isWifiAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/chromium/chrome/browser/precache/FailureReason;->NO_WIFI:Lorg/chromium/chrome/browser/precache/FailureReason;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_1
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->timeSinceLastPrecacheMs(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/32 v4, 0xdbba00

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    .line 157
    sget-object v1, Lorg/chromium/chrome/browser/precache/FailureReason;->NOT_ENOUGH_TIME_SINCE_LAST_PRECACHE:Lorg/chromium/chrome/browser/precache/FailureReason;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_2
    invoke-static {}, Lorg/chromium/chrome/browser/precache/PrecacheService;->isPrecaching()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lorg/chromium/chrome/browser/precache/FailureReason;->CURRENTLY_PRECACHING:Lorg/chromium/chrome/browser/precache/FailureReason;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_3
    return-object v0
.end method

.method protected getElapsedRealtimeOnSystem()J
    .locals 2

    .prologue
    .line 313
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const-wide/32 v6, 0xdbba00

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 190
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->resetLastPrecacheMsIfDeviceRebooted(Landroid/content/Context;)V

    .line 194
    iget-object v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->mDeviceState:Lorg/chromium/components/precache/DeviceState;

    invoke-virtual {v0, p1}, Lorg/chromium/components/precache/DeviceState;->isPowerConnected(Landroid/content/Context;)Z

    move-result v0

    .line 195
    iget-object v3, p0, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->mDeviceState:Lorg/chromium/components/precache/DeviceState;

    invoke-virtual {v3, p1}, Lorg/chromium/components/precache/DeviceState;->isWifiAvailable(Landroid/content/Context;)Z

    move-result v3

    .line 196
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    move v0, v1

    .line 197
    :goto_0
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->timeSinceLastPrecacheMs(Landroid/content/Context;)J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    .line 201
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->isPrecachingEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 202
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->recordFailureReasons(Landroid/content/Context;)V

    .line 225
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 196
    goto :goto_0

    :cond_1
    move v1, v2

    .line 197
    goto :goto_1

    .line 206
    :cond_2
    if-eqz v0, :cond_4

    .line 207
    if-eqz v1, :cond_3

    .line 208
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->recordFailureReasons(Landroid/content/Context;)V

    .line 209
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->acquireWakeLockAndStartService(Landroid/content/Context;)V

    goto :goto_2

    .line 215
    :cond_3
    const-wide/32 v0, 0xdbba0

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->timeSinceLastPrecacheMs(Landroid/content/Context;)J

    move-result-wide v2

    sub-long v2, v6, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->setAlarm(Landroid/content/Context;J)V

    goto :goto_2

    .line 220
    :cond_4
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->recordFailureReasons(Landroid/content/Context;)V

    .line 223
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->cancelAlarm(Landroid/content/Context;)V

    goto :goto_2
.end method

.method recordFailureReasons(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->failureReasons(Landroid/content/Context;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/precache/FailureReason;->bitValue(Ljava/util/EnumSet;)I

    move-result v0

    .line 175
    iget-object v1, p0, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->mFailureReasonsToRecord:Ljava/util/Queue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->mFailureReasonsToRecord:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 181
    const-string/jumbo v1, "Precache.Fetch.FailureReasons"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordSparseSlowlyHistogram(Ljava/lang/String;I)V

    .line 183
    const-string/jumbo v0, "Precache.Fetch.IntentReceived"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_0
    return-void
.end method

.method protected setAlarmOnSystem(Landroid/content/Context;IJLandroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 291
    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 292
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 293
    return-void
.end method

.method setDeviceState(Lorg/chromium/components/precache/DeviceState;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->mDeviceState:Lorg/chromium/components/precache/DeviceState;

    .line 67
    return-void
.end method

.method setPrecacheLauncher(Lorg/chromium/chrome/browser/precache/PrecacheLauncher;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->mPrecacheLauncher:Lorg/chromium/chrome/browser/precache/PrecacheLauncher;

    .line 72
    return-void
.end method

.method protected startPrecacheService(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 246
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "org.chromium.chrome.browser.precache.PrecacheService.START_PRECACHE"

    const/4 v2, 0x0

    const-class v3, Lorg/chromium/chrome/browser/precache/PrecacheService;

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 248
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 249
    return-void
.end method
