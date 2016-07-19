.class public Lorg/chromium/chrome/browser/metrics/WebappUma;
.super Ljava/lang/Object;
.source "WebappUma.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final HISTOGRAM_SPLASHSCREEN_BACKGROUNDCOLOR:Ljava/lang/String; = "Webapp.Splashscreen.BackgroundColor"

.field public static final HISTOGRAM_SPLASHSCREEN_DURATION:Ljava/lang/String; = "Webapp.Splashscreen.Duration"

.field public static final HISTOGRAM_SPLASHSCREEN_HIDES:Ljava/lang/String; = "Webapp.Splashscreen.Hides"

.field public static final HISTOGRAM_SPLASHSCREEN_ICON_SIZE:Ljava/lang/String; = "Webapp.Splashscreen.Icon.Size"

.field public static final HISTOGRAM_SPLASHSCREEN_ICON_TYPE:Ljava/lang/String; = "Webapp.Splashscreen.Icon.Type"

.field public static final HISTOGRAM_SPLASHSCREEN_THEMECOLOR:Ljava/lang/String; = "Webapp.Splashscreen.ThemeColor"

.field public static final SPLASHSCREEN_COLOR_STATUS_CUSTOM:I = 0x1

.field public static final SPLASHSCREEN_COLOR_STATUS_DEFAULT:I = 0x0

.field public static final SPLASHSCREEN_COLOR_STATUS_MAX:I = 0x2

.field public static final SPLASHSCREEN_HIDES_REASON_CRASH:I = 0x3

.field public static final SPLASHSCREEN_HIDES_REASON_LOAD_FAILED:I = 0x2

.field public static final SPLASHSCREEN_HIDES_REASON_LOAD_FINISHED:I = 0x1

.field public static final SPLASHSCREEN_HIDES_REASON_MAX:I = 0x4

.field public static final SPLASHSCREEN_HIDES_REASON_PAINT:I = 0x0

.field public static final SPLASHSCREEN_ICON_TYPE_CUSTOM:I = 0x2

.field public static final SPLASHSCREEN_ICON_TYPE_CUSTOM_SMALL:I = 0x3

.field public static final SPLASHSCREEN_ICON_TYPE_FALLBACK:I = 0x1

.field public static final SPLASHSCREEN_ICON_TYPE_MAX:I = 0x4

.field public static final SPLASHSCREEN_ICON_TYPE_NONE:I


# instance fields
.field private mCommitted:Z

.field private mSplashScreenBackgroundColor:I

.field private mSplashScreenIconSize:I

.field private mSplashScreenIconType:I

.field private mSplashScreenThemeColor:I

.field private mSplashScreenVisibleTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lorg/chromium/chrome/browser/metrics/WebappUma;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/metrics/WebappUma;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v1, p0, Lorg/chromium/chrome/browser/metrics/WebappUma;->mSplashScreenBackgroundColor:I

    .line 51
    const/4 v0, 0x4

    iput v0, p0, Lorg/chromium/chrome/browser/metrics/WebappUma;->mSplashScreenIconType:I

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/metrics/WebappUma;->mSplashScreenIconSize:I

    .line 53
    iput v1, p0, Lorg/chromium/chrome/browser/metrics/WebappUma;->mSplashScreenThemeColor:I

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/metrics/WebappUma;->mSplashScreenVisibleTime:J

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/metrics/WebappUma;->mCommitted:Z

    return-void
.end method


# virtual methods
.method public commitMetrics()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 124
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/metrics/WebappUma;->mCommitted:Z

    if-eqz v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/metrics/WebappUma;->mCommitted:Z

    .line 128
    sget-boolean v0, Lorg/chromium/chrome/browser/metrics/WebappUma;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/chromium/chrome/browser/metrics/WebappUma;->mSplashScreenBackgroundColor:I

    if-ne v0, v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 129
    :cond_1
    const-string/jumbo v0, "Webapp.Splashscreen.BackgroundColor"

    iget v1, p0, Lorg/chromium/chrome/browser/metrics/WebappUma;->mSplashScreenBackgroundColor:I

    invoke-static {v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 132
    iput v2, p0, Lorg/chromium/chrome/browser/metrics/WebappUma;->mSplashScreenBackgroundColor:I

    .line 134
    sget-boolean v0, Lorg/chromium/chrome/browser/metrics/WebappUma;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/chromium/chrome/browser/metrics/WebappUma;->mSplashScreenIconType:I

    if-ne v0, v3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 135
    :cond_2
    const-string/jumbo v0, "Webapp.Splashscreen.Icon.Type"

    iget v1, p0, Lorg/chromium/chrome/browser/metrics/WebappUma;->mSplashScreenIconType:I

    invoke-static {v0, v1, v3}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 139
    iget v0, p0, Lorg/chromium/chrome/browser/metrics/WebappUma;->mSplashScreenIconType:I

    if-nez v0, :cond_3

    .line 140
    sget-boolean v0, Lorg/chromium/chrome/browser/metrics/WebappUma;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    iget v0, p0, Lorg/chromium/chrome/browser/metrics/WebappUma;->mSplashScreenIconSize:I

    if-eq v0, v4, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 142
    :cond_3
    sget-boolean v0, Lorg/chromium/chrome/browser/metrics/WebappUma;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    iget v0, p0, Lorg/chromium/chrome/browser/metrics/WebappUma;->mSplashScreenIconSize:I

    if-gez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 143
    :cond_4
    const-string/jumbo v0, "Webapp.Splashscreen.Icon.Size"

    iget v1, p0, Lorg/chromium/chrome/browser/metrics/WebappUma;->mSplashScreenIconSize:I

    invoke-static {v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordCount1000Histogram(Ljava/lang/String;I)V

    .line 146
    :cond_5
    iput v3, p0, Lorg/chromium/chrome/browser/metrics/WebappUma;->mSplashScreenIconType:I

    .line 147
    iput v4, p0, Lorg/chromium/chrome/browser/metrics/WebappUma;->mSplashScreenIconSize:I

    .line 149
    sget-boolean v0, Lorg/chromium/chrome/browser/metrics/WebappUma;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    iget v0, p0, Lorg/chromium/chrome/browser/metrics/WebappUma;->mSplashScreenThemeColor:I

    if-ne v0, v2, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 150
    :cond_6
    const-string/jumbo v0, "Webapp.Splashscreen.ThemeColor"

    iget v1, p0, Lorg/chromium/chrome/browser/metrics/WebappUma;->mSplashScreenThemeColor:I

    invoke-static {v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 153
    iput v2, p0, Lorg/chromium/chrome/browser/metrics/WebappUma;->mSplashScreenThemeColor:I

    goto :goto_0
.end method

.method public recordSplashscreenBackgroundColor(I)V
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Lorg/chromium/chrome/browser/metrics/WebappUma;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/metrics/WebappUma;->mCommitted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 73
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/metrics/WebappUma;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 74
    :cond_2
    iput p1, p0, Lorg/chromium/chrome/browser/metrics/WebappUma;->mSplashScreenBackgroundColor:I

    .line 75
    return-void
.end method

.method public recordSplashscreenIconSize(I)V
    .locals 1

    .prologue
    .line 104
    sget-boolean v0, Lorg/chromium/chrome/browser/metrics/WebappUma;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/metrics/WebappUma;->mCommitted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 105
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/metrics/WebappUma;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 106
    :cond_1
    iput p1, p0, Lorg/chromium/chrome/browser/metrics/WebappUma;->mSplashScreenIconSize:I

    .line 107
    return-void
.end method

.method public recordSplashscreenIconType(I)V
    .locals 1

    .prologue
    .line 98
    sget-boolean v0, Lorg/chromium/chrome/browser/metrics/WebappUma;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/metrics/WebappUma;->mCommitted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 99
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/metrics/WebappUma;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-ltz p1, :cond_1

    const/4 v0, 0x4

    if-lt p1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 100
    :cond_2
    iput p1, p0, Lorg/chromium/chrome/browser/metrics/WebappUma;->mSplashScreenIconType:I

    .line 101
    return-void
.end method

.method public recordSplashscreenThemeColor(I)V
    .locals 1

    .prologue
    .line 114
    sget-boolean v0, Lorg/chromium/chrome/browser/metrics/WebappUma;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/metrics/WebappUma;->mCommitted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 115
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/metrics/WebappUma;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 116
    :cond_2
    iput p1, p0, Lorg/chromium/chrome/browser/metrics/WebappUma;->mSplashScreenThemeColor:I

    .line 117
    return-void
.end method

.method public splashscreenHidden(I)V
    .locals 6

    .prologue
    const/4 v1, 0x4

    .line 84
    sget-boolean v0, Lorg/chromium/chrome/browser/metrics/WebappUma;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    if-lt p1, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 85
    :cond_1
    const-string/jumbo v0, "Webapp.Splashscreen.Hides"

    invoke-static {v0, p1, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 88
    sget-boolean v0, Lorg/chromium/chrome/browser/metrics/WebappUma;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Lorg/chromium/chrome/browser/metrics/WebappUma;->mSplashScreenVisibleTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 89
    :cond_2
    const-string/jumbo v0, "Webapp.Splashscreen.Duration"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/chromium/chrome/browser/metrics/WebappUma;->mSplashScreenVisibleTime:J

    sub-long/2addr v2, v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v3, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordMediumTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    .line 91
    return-void
.end method

.method public splashscreenVisible()V
    .locals 4

    .prologue
    .line 63
    sget-boolean v0, Lorg/chromium/chrome/browser/metrics/WebappUma;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/metrics/WebappUma;->mSplashScreenVisibleTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 64
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/metrics/WebappUma;->mSplashScreenVisibleTime:J

    .line 65
    return-void
.end method
