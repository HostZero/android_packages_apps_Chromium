.class public Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;
.super Ljava/lang/Object;
.source "ExponentialBackoffScheduler.java"


# static fields
.field private static sRandom:Ljava/util/Random;


# instance fields
.field private final mBaseMilliseconds:J

.field private final mContext:Landroid/content/Context;

.field private final mMaxMilliseconds:J

.field private final mPreferencePackage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->sRandom:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;JJ)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->mPreferencePackage:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->mContext:Landroid/content/Context;

    .line 67
    iput-wide p3, p0, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->mBaseMilliseconds:J

    .line 68
    iput-wide p5, p0, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->mMaxMilliseconds:J

    .line 69
    return-void
.end method

.method private computeConstrainedBackoffCoefficient(I)I
    .locals 2

    .prologue
    .line 191
    const/16 v0, 0xa

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 192
    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 193
    sget-object v1, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->sRandom:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private generateRandomDelay()J
    .locals 4

    .prologue
    .line 168
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->getNumFailedAttempts()I

    move-result v0

    .line 169
    if-nez v0, :cond_0

    .line 170
    iget-wide v0, p0, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->mBaseMilliseconds:J

    iget-wide v2, p0, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->mMaxMilliseconds:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 177
    :goto_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 178
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "delay"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 181
    return-wide v0

    .line 172
    :cond_0
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->computeConstrainedBackoffCoefficient(I)I

    move-result v0

    .line 173
    int-to-long v0, v0

    iget-wide v2, p0, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->mBaseMilliseconds:J

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->mMaxMilliseconds:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->mPreferencePackage:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 199
    return-object v0
.end method


# virtual methods
.method public createAlarm(Landroid/content/Intent;)J
    .locals 4

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->generateRandomDelay()J

    move-result-wide v0

    .line 78
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->getCurrentTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 79
    invoke-virtual {p0, p1, v0, v1}, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->createAlarm(Landroid/content/Intent;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public createAlarm(Landroid/content/Intent;J)J
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, p1, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 89
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 90
    invoke-virtual {p0, v0, p2, p3, v1}, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->setAlarm(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V

    .line 91
    return-wide p2
.end method

.method public getCurrentTime()J
    .locals 2

    .prologue
    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGeneratedDelay()J
    .locals 4

    .prologue
    .line 144
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 145
    const-string/jumbo v1, "delay"

    iget-wide v2, p0, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->mBaseMilliseconds:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumFailedAttempts()I
    .locals 3

    .prologue
    .line 113
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 114
    const-string/jumbo v1, "backoffFailedAttempts"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public increaseFailedAttempts()V
    .locals 3

    .prologue
    .line 118
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->getNumFailedAttempts()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 120
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "backoffFailedAttempts"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 123
    return-void
.end method

.method public resetFailedAttempts()V
    .locals 3

    .prologue
    .line 126
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 127
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "backoffFailedAttempts"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 130
    return-void
.end method

.method protected setAlarm(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V
    .locals 4

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "now("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omaha/ExponentialBackoffScheduler;->getCurrentTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") refiringAt("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0, p2, p3, p4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    const-string/jumbo v0, "omaha"

    const-string/jumbo v1, "Failed to set backoff alarm."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
