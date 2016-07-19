.class Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;
.super Lorg/chromium/chrome/browser/tab/EmptyTabObserver;
.source "CustomTabObserver.java"


# instance fields
.field private mCurrentState:I

.field private mCustomTabsConnection:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

.field private mIntentReceivedTimestamp:J

.field private mPageLoadStartedTimestamp:J

.field private mSession:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/EmptyTabObserver;-><init>()V

    .line 36
    invoke-static {p1}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->getInstance(Landroid/app/Application;)Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;->mCustomTabsConnection:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    .line 37
    iput-object p2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;->mSession:Landroid/os/IBinder;

    .line 38
    invoke-direct {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;->resetPageLoadTracking()V

    .line 39
    return-void
.end method

.method private resetPageLoadTracking()V
    .locals 2

    .prologue
    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;->mCurrentState:I

    .line 115
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;->mIntentReceivedTimestamp:J

    .line 116
    return-void
.end method


# virtual methods
.method public onDidAttachInterstitialPage(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 3

    .prologue
    .line 100
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getSecurityLevel()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;->resetPageLoadTracking()V

    .line 102
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;->mCustomTabsConnection:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;->mSession:Landroid/os/IBinder;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->notifyNavigationEvent(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public onLoadUrl(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/LoadUrlParams;I)V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;->mCustomTabsConnection:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;->mSession:Landroid/os/IBinder;

    invoke-virtual {p2}, Lorg/chromium/content_public/browser/LoadUrlParams;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->registerLaunch(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public onPageLoadFailed(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 3

    .prologue
    .line 108
    invoke-direct {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;->resetPageLoadTracking()V

    .line 109
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;->mCustomTabsConnection:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;->mSession:Landroid/os/IBinder;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->notifyNavigationEvent(Landroid/os/IBinder;I)Z

    .line 111
    return-void
.end method

.method public onPageLoadFinished(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 14

    .prologue
    const-wide/16 v12, 0xa

    const-wide/16 v4, 0x1

    const/4 v6, 0x2

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 77
    iget-object v2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;->mCustomTabsConnection:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    iget-object v3, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;->mSession:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v6}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->notifyNavigationEvent(Landroid/os/IBinder;I)Z

    .line 82
    iget v2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;->mCurrentState:I

    if-ne v2, v6, :cond_0

    iget-wide v2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;->mIntentReceivedTimestamp:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    .line 83
    iget-wide v2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;->mPageLoadStartedTimestamp:J

    iget-wide v6, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;->mIntentReceivedTimestamp:J

    sub-long/2addr v2, v6

    .line 84
    iget-wide v6, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;->mIntentReceivedTimestamp:J

    sub-long v10, v0, v6

    .line 87
    const-string/jumbo v1, "CustomTabs.IntentToFirstCommitNavigationTime"

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v9, 0xe1

    invoke-static/range {v1 .. v9}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomTimesHistogram(Ljava/lang/String;JJJLjava/util/concurrent/TimeUnit;I)V

    .line 91
    const-string/jumbo v1, "CustomTabs.IntentToPageLoadedTime"

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v9, 0x64

    move-wide v2, v10

    move-wide v4, v12

    invoke-static/range {v1 .. v9}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomTimesHistogram(Ljava/lang/String;JJJLjava/util/concurrent/TimeUnit;I)V

    .line 95
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;->resetPageLoadTracking()V

    .line 96
    return-void
.end method

.method public onPageLoadStarted(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 56
    iget v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;->mCurrentState:I

    if-ne v0, v3, :cond_1

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;->mPageLoadStartedTimestamp:J

    .line 58
    iput v2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;->mCurrentState:I

    .line 64
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;->mCustomTabsConnection:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;->mSession:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v3}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->notifyNavigationEvent(Landroid/os/IBinder;I)Z

    .line 66
    return-void

    .line 59
    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;->mCurrentState:I

    if-ne v0, v2, :cond_0

    .line 60
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;->mCustomTabsConnection:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;->mSession:Landroid/os/IBinder;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->notifyNavigationEvent(Landroid/os/IBinder;I)Z

    .line 62
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;->mPageLoadStartedTimestamp:J

    goto :goto_0
.end method

.method public onShown(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;->mCustomTabsConnection:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;->mSession:Landroid/os/IBinder;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->notifyNavigationEvent(Landroid/os/IBinder;I)Z

    .line 72
    return-void
.end method

.method public trackNextPageLoadFromTimestamp(J)V
    .locals 1

    .prologue
    .line 45
    iput-wide p1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;->mIntentReceivedTimestamp:J

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabObserver;->mCurrentState:I

    .line 47
    return-void
.end method
