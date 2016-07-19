.class public Lorg/chromium/base/metrics/RecordHistogram;
.super Ljava/lang/Object;
.source "RecordHistogram.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field private static sIsDisabledForTests:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lorg/chromium/base/metrics/RecordHistogram;->sIsDisabledForTests:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clampToInt(J)I
    .locals 2

    .prologue
    .line 194
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const v0, 0x7fffffff

    .line 198
    :goto_0
    return v0

    .line 197
    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const/high16 v0, -0x80000000

    goto :goto_0

    .line 198
    :cond_1
    long-to-int v0, p0

    goto :goto_0
.end method

.method public static disableForTests()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/base/metrics/RecordHistogram;->sIsDisabledForTests:Z

    .line 29
    return-void
.end method

.method public static getHistogramValueCountForTesting(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 219
    invoke-static {p0, p1}, Lorg/chromium/base/metrics/RecordHistogram;->nativeGetHistogramValueCountForTesting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static initialize()V
    .locals 1

    .prologue
    .line 226
    sget-boolean v0, Lorg/chromium/base/metrics/RecordHistogram;->sIsDisabledForTests:Z

    if-eqz v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-static {}, Lorg/chromium/base/metrics/RecordHistogram;->nativeInitialize()V

    goto :goto_0
.end method

.method private static native nativeGetHistogramValueCountForTesting(Ljava/lang/String;I)I
.end method

.method private static native nativeInitialize()V
.end method

.method private static native nativeRecordBooleanHistogram(Ljava/lang/String;IZ)V
.end method

.method private static native nativeRecordCustomCountHistogram(Ljava/lang/String;IIIII)V
.end method

.method private static native nativeRecordCustomTimesHistogramMilliseconds(Ljava/lang/String;IIIII)V
.end method

.method private static native nativeRecordEnumeratedHistogram(Ljava/lang/String;III)V
.end method

.method private static native nativeRecordLinearCountHistogram(Ljava/lang/String;IIIII)V
.end method

.method private static native nativeRecordSparseHistogram(Ljava/lang/String;II)V
.end method

.method public static recordBooleanHistogram(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lorg/chromium/base/metrics/RecordHistogram;->sIsDisabledForTests:Z

    if-eqz v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p0, v0, p1}, Lorg/chromium/base/metrics/RecordHistogram;->nativeRecordBooleanHistogram(Ljava/lang/String;IZ)V

    goto :goto_0
.end method

.method public static recordCount1000Histogram(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 84
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    const/16 v2, 0x32

    invoke-static {p0, p1, v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomCountHistogram(Ljava/lang/String;IIII)V

    .line 85
    return-void
.end method

.method public static recordCount100Histogram(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 74
    const/4 v0, 0x1

    const/16 v1, 0x64

    const/16 v2, 0x32

    invoke-static {p0, p1, v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomCountHistogram(Ljava/lang/String;IIII)V

    .line 75
    return-void
.end method

.method public static recordCountHistogram(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 64
    const/4 v0, 0x1

    const v1, 0xf4240

    const/16 v2, 0x32

    invoke-static {p0, p1, v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomCountHistogram(Ljava/lang/String;IIII)V

    .line 65
    return-void
.end method

.method public static recordCustomCountHistogram(Ljava/lang/String;IIII)V
    .locals 6

    .prologue
    .line 98
    sget-boolean v0, Lorg/chromium/base/metrics/RecordHistogram;->sIsDisabledForTests:Z

    if-eqz v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lorg/chromium/base/metrics/RecordHistogram;->nativeRecordCustomCountHistogram(Ljava/lang/String;IIIII)V

    goto :goto_0
.end method

.method public static recordCustomTimesHistogram(Ljava/lang/String;JJJLjava/util/concurrent/TimeUnit;I)V
    .locals 13

    .prologue
    .line 189
    move-object/from16 v0, p7

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    move-object/from16 v0, p7

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    move-object/from16 v0, p7

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    move-object v5, p0

    move/from16 v12, p8

    invoke-static/range {v5 .. v12}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomTimesHistogramMilliseconds(Ljava/lang/String;JJJI)V

    .line 191
    return-void
.end method

.method private static recordCustomTimesHistogramMilliseconds(Ljava/lang/String;JJJI)V
    .locals 7

    .prologue
    .line 203
    sget-boolean v0, Lorg/chromium/base/metrics/RecordHistogram;->sIsDisabledForTests:Z

    if-eqz v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p1, p2}, Lorg/chromium/base/metrics/RecordHistogram;->clampToInt(J)I

    move-result v2

    invoke-static {p3, p4}, Lorg/chromium/base/metrics/RecordHistogram;->clampToInt(J)I

    move-result v3

    invoke-static {p5, p6}, Lorg/chromium/base/metrics/RecordHistogram;->clampToInt(J)I

    move-result v4

    move-object v0, p0

    move v5, p7

    invoke-static/range {v0 .. v5}, Lorg/chromium/base/metrics/RecordHistogram;->nativeRecordCustomTimesHistogramMilliseconds(Ljava/lang/String;IIIII)V

    goto :goto_0
.end method

.method public static recordEnumeratedHistogram(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lorg/chromium/base/metrics/RecordHistogram;->sIsDisabledForTests:Z

    if-eqz v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p0, v0, p1, p2}, Lorg/chromium/base/metrics/RecordHistogram;->nativeRecordEnumeratedHistogram(Ljava/lang/String;III)V

    goto :goto_0
.end method

.method public static recordLinearCountHistogram(Ljava/lang/String;IIII)V
    .locals 6

    .prologue
    .line 114
    sget-boolean v0, Lorg/chromium/base/metrics/RecordHistogram;->sIsDisabledForTests:Z

    if-eqz v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lorg/chromium/base/metrics/RecordHistogram;->nativeRecordLinearCountHistogram(Ljava/lang/String;IIIII)V

    goto :goto_0
.end method

.method public static recordLongTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    .locals 9

    .prologue
    const-wide/16 v4, 0x1

    .line 173
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    const/16 v8, 0x32

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomTimesHistogramMilliseconds(Ljava/lang/String;JJJI)V

    .line 175
    return-void
.end method

.method public static recordMediumTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    .locals 9

    .prologue
    .line 161
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const-wide/16 v4, 0xa

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x3

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    const/16 v8, 0x32

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomTimesHistogramMilliseconds(Ljava/lang/String;JJJI)V

    .line 163
    return-void
.end method

.method public static recordPercentageHistogram(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 126
    sget-boolean v0, Lorg/chromium/base/metrics/RecordHistogram;->sIsDisabledForTests:Z

    if-eqz v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x65

    invoke-static {p0, v0, p1, v1}, Lorg/chromium/base/metrics/RecordHistogram;->nativeRecordEnumeratedHistogram(Ljava/lang/String;III)V

    goto :goto_0
.end method

.method public static recordSparseSlowlyHistogram(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 137
    sget-boolean v0, Lorg/chromium/base/metrics/RecordHistogram;->sIsDisabledForTests:Z

    if-eqz v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p0, v0, p1}, Lorg/chromium/base/metrics/RecordHistogram;->nativeRecordSparseHistogram(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public static recordTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    .locals 9

    .prologue
    .line 149
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0xa

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    const/16 v8, 0x32

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomTimesHistogramMilliseconds(Ljava/lang/String;JJJI)V

    .line 151
    return-void
.end method
