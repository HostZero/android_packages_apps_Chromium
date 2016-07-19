.class public Lorg/chromium/chrome/browser/metrics/LaunchMetrics;
.super Ljava/lang/Object;
.source "LaunchMetrics.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field private static final sActivityUrls:Ljava/util/List;

.field private static final sTabUrls:Ljava/util/List;

.field private static final sWebappHistogramTimes:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/metrics/LaunchMetrics;->sActivityUrls:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/metrics/LaunchMetrics;->sTabUrls:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/metrics/LaunchMetrics;->sWebappHistogramTimes:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static commitLaunchMetrics(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 6

    .prologue
    .line 131
    sget-object v0, Lorg/chromium/chrome/browser/metrics/LaunchMetrics;->sActivityUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 132
    const/4 v3, 0x1

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v1, v0, p0}, Lorg/chromium/chrome/browser/metrics/LaunchMetrics;->nativeRecordLaunch(ZLjava/lang/String;ILorg/chromium/content_public/browser/WebContents;)V

    goto :goto_0

    .line 134
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/metrics/LaunchMetrics;->sActivityUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 136
    sget-object v0, Lorg/chromium/chrome/browser/metrics/LaunchMetrics;->sTabUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 137
    const/4 v3, 0x0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v1, v0, p0}, Lorg/chromium/chrome/browser/metrics/LaunchMetrics;->nativeRecordLaunch(ZLjava/lang/String;ILorg/chromium/content_public/browser/WebContents;)V

    goto :goto_1

    .line 139
    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/metrics/LaunchMetrics;->sTabUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 141
    sget-object v0, Lorg/chromium/chrome/browser/metrics/LaunchMetrics;->sWebappHistogramTimes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 142
    const-string/jumbo v2, "Android.StrictMode.WebappAuthenticatorMac"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v4, v5, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    goto :goto_2

    .line 145
    :cond_2
    sget-object v0, Lorg/chromium/chrome/browser/metrics/LaunchMetrics;->sWebappHistogramTimes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 148
    # getter for: Lorg/chromium/chrome/browser/metrics/LaunchMetrics$CachedHistogram;->sEvents:Ljava/util/List;
    invoke-static {}, Lorg/chromium/chrome/browser/metrics/LaunchMetrics$CachedHistogram;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/metrics/LaunchMetrics$CachedHistogram;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/metrics/LaunchMetrics$CachedHistogram;->commitAndClear()V

    goto :goto_3

    .line 149
    :cond_3
    return-void
.end method

.method private static native nativeRecordLaunch(ZLjava/lang/String;ILorg/chromium/content_public/browser/WebContents;)V
.end method

.method public static recordHomeScreenLaunchIntoStandaloneActivity(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 104
    sget-object v0, Lorg/chromium/chrome/browser/metrics/LaunchMetrics;->sActivityUrls:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method public static recordHomeScreenLaunchIntoTab(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 113
    sget-object v0, Lorg/chromium/chrome/browser/metrics/LaunchMetrics;->sTabUrls:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public static recordWebappHistogramTimes(J)V
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lorg/chromium/chrome/browser/metrics/LaunchMetrics;->sWebappHistogramTimes:Ljava/util/List;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    return-void
.end method
