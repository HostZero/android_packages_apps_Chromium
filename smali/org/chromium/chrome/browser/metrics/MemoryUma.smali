.class public Lorg/chromium/chrome/browser/metrics/MemoryUma;
.super Ljava/lang/Object;
.source "MemoryUma.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mLastLowMemoryMsec:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lorg/chromium/chrome/browser/metrics/MemoryUma;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/metrics/MemoryUma;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/chromium/chrome/browser/metrics/MemoryUma;->mLastLowMemoryMsec:J

    return-void
.end method

.method private static memoryNotificationBackground(I)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 82
    sget-boolean v0, Lorg/chromium/chrome/browser/metrics/MemoryUma;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p0, :cond_0

    if-lt p0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 83
    :cond_1
    const-string/jumbo v0, "MemoryAndroid.NotificationBackground"

    invoke-static {v0, p0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 85
    return-void
.end method

.method private static memoryNotificationForeground(I)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 76
    sget-boolean v0, Lorg/chromium/chrome/browser/metrics/MemoryUma;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p0, :cond_0

    if-lt p0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 77
    :cond_1
    const-string/jumbo v0, "MemoryAndroid.NotificationForeground"

    invoke-static {v0, p0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 79
    return-void
.end method


# virtual methods
.method public onLowMemory()V
    .locals 12

    .prologue
    const-wide/16 v4, 0x0

    .line 47
    const/4 v0, 0x3

    invoke-static {v0}, Lorg/chromium/chrome/browser/metrics/MemoryUma;->memoryNotificationForeground(I)V

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 49
    iget-wide v0, p0, Lorg/chromium/chrome/browser/metrics/MemoryUma;->mLastLowMemoryMsec:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    .line 50
    const-string/jumbo v1, "MemoryAndroid.LowMemoryTimeBetween"

    iget-wide v2, p0, Lorg/chromium/chrome/browser/metrics/MemoryUma;->mLastLowMemoryMsec:J

    sub-long v2, v10, v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0xa

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v9, 0x32

    invoke-static/range {v1 .. v9}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomTimesHistogram(Ljava/lang/String;JJJLjava/util/concurrent/TimeUnit;I)V

    .line 54
    :cond_0
    iput-wide v10, p0, Lorg/chromium/chrome/browser/metrics/MemoryUma;->mLastLowMemoryMsec:J

    .line 55
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/chromium/chrome/browser/metrics/MemoryUma;->mLastLowMemoryMsec:J

    .line 44
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 58
    const/16 v0, 0x50

    if-lt p1, v0, :cond_1

    .line 59
    const/4 v0, 0x3

    invoke-static {v0}, Lorg/chromium/chrome/browser/metrics/MemoryUma;->memoryNotificationBackground(I)V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_2

    .line 61
    invoke-static {v3}, Lorg/chromium/chrome/browser/metrics/MemoryUma;->memoryNotificationBackground(I)V

    goto :goto_0

    .line 62
    :cond_2
    const/16 v0, 0x28

    if-lt p1, v0, :cond_3

    .line 63
    invoke-static {v2}, Lorg/chromium/chrome/browser/metrics/MemoryUma;->memoryNotificationBackground(I)V

    goto :goto_0

    .line 64
    :cond_3
    const/16 v0, 0x14

    if-lt p1, v0, :cond_4

    .line 65
    invoke-static {v1}, Lorg/chromium/chrome/browser/metrics/MemoryUma;->memoryNotificationBackground(I)V

    goto :goto_0

    .line 66
    :cond_4
    const/16 v0, 0xf

    if-lt p1, v0, :cond_5

    .line 67
    invoke-static {v3}, Lorg/chromium/chrome/browser/metrics/MemoryUma;->memoryNotificationForeground(I)V

    goto :goto_0

    .line 68
    :cond_5
    const/16 v0, 0xa

    if-lt p1, v0, :cond_6

    .line 69
    invoke-static {v2}, Lorg/chromium/chrome/browser/metrics/MemoryUma;->memoryNotificationForeground(I)V

    goto :goto_0

    .line 70
    :cond_6
    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    .line 71
    invoke-static {v1}, Lorg/chromium/chrome/browser/metrics/MemoryUma;->memoryNotificationForeground(I)V

    goto :goto_0
.end method
