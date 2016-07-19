.class public Lorg/chromium/chrome/browser/metrics/StartupMetrics;
.super Ljava/lang/Object;
.source "StartupMetrics.java"


# static fields
.field private static sInstance:Lorg/chromium/chrome/browser/metrics/StartupMetrics;


# instance fields
.field private mFirstActionTaken:I

.field private mHandler:Landroid/os/Handler;

.field private mIsMainIntent:Z

.field private mShouldRecordHistogram:Z

.field private mStartTimeMilli:J

.field private mStartTimeNanoMonotonic:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->mFirstActionTaken:I

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->mHandler:Landroid/os/Handler;

    .line 65
    return-void
.end method

.method public static getInstance()Lorg/chromium/chrome/browser/metrics/StartupMetrics;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->sInstance:Lorg/chromium/chrome/browser/metrics/StartupMetrics;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lorg/chromium/chrome/browser/metrics/StartupMetrics;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->sInstance:Lorg/chromium/chrome/browser/metrics/StartupMetrics;

    .line 59
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->sInstance:Lorg/chromium/chrome/browser/metrics/StartupMetrics;

    return-object v0
.end method

.method private isShortlyAfterChromeStarted()Z
    .locals 4

    .prologue
    .line 81
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->mStartTimeNanoMonotonic:J

    sub-long/2addr v0, v2

    const-wide v2, 0x2540be400L

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setFirstAction(I)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->isShortlyAfterChromeStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->mFirstActionTaken:I

    if-eqz v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iput p1, p0, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->mFirstActionTaken:I

    goto :goto_0
.end method


# virtual methods
.method public recordFocusedOmnibox()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->setFirstAction(I)V

    .line 97
    return-void
.end method

.method public recordHistogram(Z)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 121
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->mShouldRecordHistogram:Z

    if-nez v0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->isShortlyAfterChromeStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->mFirstActionTaken:I

    if-nez v0, :cond_2

    if-eqz p1, :cond_4

    .line 123
    :cond_2
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->mIsMainIntent:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "MobileStartup.MainIntentAction"

    .line 125
    :goto_1
    iget v1, p0, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->mFirstActionTaken:I

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->mShouldRecordHistogram:Z

    .line 127
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 128
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "umasessionstats.lastusedtime"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 130
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->mIsMainIntent:Z

    if-eqz v2, :cond_0

    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->mStartTimeMilli:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    iget-wide v2, p0, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->mStartTimeMilli:J

    sub-long/2addr v2, v0

    const-wide/32 v4, 0x7fffffff

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 133
    const-string/jumbo v2, "MobileStartup.TimeSinceLastUse"

    iget-wide v4, p0, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->mStartTimeMilli:J

    sub-long v0, v4, v0

    long-to-int v0, v0

    const v1, 0xea60

    div-int/2addr v0, v1

    const/4 v1, 0x1

    const v3, 0xa8c0

    const/16 v4, 0x32

    invoke-static {v2, v0, v1, v3, v4}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomCountHistogram(Ljava/lang/String;IIII)V

    goto :goto_0

    .line 123
    :cond_3
    const-string/jumbo v0, "MobileStartup.NonMainIntentAction"

    goto :goto_1

    .line 139
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/chrome/browser/metrics/StartupMetrics$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/metrics/StartupMetrics$1;-><init>(Lorg/chromium/chrome/browser/metrics/StartupMetrics;)V

    const-wide v2, 0x2540be400L

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->mStartTimeNanoMonotonic:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public recordOpenedBookmarks()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->setFirstAction(I)V

    .line 102
    return-void
.end method

.method public recordOpenedHistory()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->setFirstAction(I)V

    .line 112
    return-void
.end method

.method public recordOpenedNTP()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->setFirstAction(I)V

    .line 92
    return-void
.end method

.method public recordOpenedRecents()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->setFirstAction(I)V

    .line 107
    return-void
.end method

.method public recordOpenedTabSwitcher()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->setFirstAction(I)V

    .line 117
    return-void
.end method

.method public updateIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    if-eqz p1, :cond_0

    const-string/jumbo v0, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->mIsMainIntent:Z

    .line 74
    iput v2, p0, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->mFirstActionTaken:I

    .line 75
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->mStartTimeNanoMonotonic:J

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->mStartTimeMilli:J

    .line 77
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->mShouldRecordHistogram:Z

    .line 78
    return-void

    :cond_0
    move v0, v2

    .line 73
    goto :goto_0
.end method
