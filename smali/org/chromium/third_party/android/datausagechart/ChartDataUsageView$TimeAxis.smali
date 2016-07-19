.class public Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$TimeAxis;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lorg/chromium/third_party/android/datausagechart/ChartAxis;


# static fields
.field private static final FIRST_DAY_OF_WEEK:I


# instance fields
.field private mMax:J

.field private mMin:J

.field private mSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 231
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$TimeAxis;->FIRST_DAY_OF_WEEK:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 239
    const-wide v2, 0x9a7ec800L

    sub-long v2, v0, v2

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$TimeAxis;->setBounds(JJ)Z

    .line 240
    return-void
.end method


# virtual methods
.method public convertToPoint(J)F
    .locals 7

    .prologue
    .line 289
    iget v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$TimeAxis;->mSize:F

    iget-wide v2, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$TimeAxis;->mMin:J

    sub-long v2, p1, v2

    long-to-float v1, v2

    mul-float/2addr v0, v1

    iget-wide v2, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$TimeAxis;->mMax:J

    iget-wide v4, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$TimeAxis;->mMin:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public convertToValue(F)J
    .locals 6

    .prologue
    .line 294
    iget-wide v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$TimeAxis;->mMin:J

    long-to-float v0, v0

    iget-wide v2, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$TimeAxis;->mMax:J

    iget-wide v4, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$TimeAxis;->mMin:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    mul-float/2addr v1, p1

    iget v2, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$TimeAxis;->mSize:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getTickPoints()[F
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 305
    const/16 v0, 0x20

    new-array v4, v0, [F

    .line 309
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 310
    iget-wide v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$TimeAxis;->mMax:J

    invoke-virtual {v5, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 311
    iget v0, v5, Landroid/text/format/Time;->monthDay:I

    iget v1, v5, Landroid/text/format/Time;->weekDay:I

    sget v3, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$TimeAxis;->FIRST_DAY_OF_WEEK:I

    sub-int/2addr v1, v3

    sub-int/2addr v0, v1

    iput v0, v5, Landroid/text/format/Time;->monthDay:I

    .line 312
    iput v2, v5, Landroid/text/format/Time;->second:I

    iput v2, v5, Landroid/text/format/Time;->minute:I

    iput v2, v5, Landroid/text/format/Time;->hour:I

    .line 314
    invoke-virtual {v5, v8}, Landroid/text/format/Time;->normalize(Z)J

    .line 315
    invoke-virtual {v5, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 316
    :goto_0
    iget-wide v6, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$TimeAxis;->mMin:J

    cmp-long v3, v0, v6

    if-lez v3, :cond_1

    .line 317
    iget-wide v6, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$TimeAxis;->mMax:J

    cmp-long v3, v0, v6

    if-gtz v3, :cond_0

    .line 318
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$TimeAxis;->convertToPoint(J)F

    move-result v0

    aput v0, v4, v2

    move v2, v3

    .line 320
    :cond_0
    iget v0, v5, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v0, -0x7

    iput v0, v5, Landroid/text/format/Time;->monthDay:I

    .line 321
    invoke-virtual {v5, v8}, Landroid/text/format/Time;->normalize(Z)J

    .line 322
    invoke-virtual {v5, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    goto :goto_0

    .line 325
    :cond_1
    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 263
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$TimeAxis;->mMin:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$TimeAxis;->mMax:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$TimeAxis;->mSize:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$TimeAxis;->objectsHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public varargs objectsHashCode([Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 258
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setBounds(JJ)Z
    .locals 3

    .prologue
    .line 268
    iget-wide v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$TimeAxis;->mMin:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$TimeAxis;->mMax:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_1

    .line 269
    :cond_0
    iput-wide p1, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$TimeAxis;->mMin:J

    .line 270
    iput-wide p3, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$TimeAxis;->mMax:J

    .line 271
    const/4 v0, 0x1

    .line 273
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSize(F)Z
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$TimeAxis;->mSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 280
    iput p1, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$TimeAxis;->mSize:F

    .line 281
    const/4 v0, 0x1

    .line 283
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
