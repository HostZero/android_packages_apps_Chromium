.class public Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$DataAxis;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lorg/chromium/third_party/android/datausagechart/ChartAxis;


# static fields
.field private static final sSpanSize:Ljava/lang/Object;

.field private static final sSpanUnit:Ljava/lang/Object;


# instance fields
.field private mMax:J

.field private mMin:J

.field private mSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 400
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$DataAxis;->sSpanSize:Ljava/lang/Object;

    .line 401
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$DataAxis;->sSpanUnit:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertToPoint(J)F
    .locals 7

    .prologue
    .line 384
    iget v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$DataAxis;->mSize:F

    iget-wide v2, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$DataAxis;->mMin:J

    sub-long v2, p1, v2

    long-to-float v1, v2

    mul-float/2addr v0, v1

    iget-wide v2, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$DataAxis;->mMax:J

    iget-wide v4, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$DataAxis;->mMin:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public convertToValue(F)J
    .locals 6

    .prologue
    .line 396
    iget-wide v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$DataAxis;->mMin:J

    long-to-float v0, v0

    iget-wide v2, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$DataAxis;->mMax:J

    iget-wide v4, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$DataAxis;->mMin:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    mul-float/2addr v1, p1

    iget v2, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$DataAxis;->mSize:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getTickPoints()[F
    .locals 8

    .prologue
    .line 436
    iget-wide v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$DataAxis;->mMax:J

    iget-wide v2, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$DataAxis;->mMin:J

    sub-long/2addr v0, v2

    .line 439
    const-wide/16 v2, 0x10

    div-long v2, v0, v2

    # invokes: Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->roundUpToPowerOfTwo(J)J
    invoke-static {v2, v3}, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->access$100(J)J

    move-result-wide v4

    .line 440
    div-long/2addr v0, v4

    long-to-int v3, v0

    .line 441
    new-array v6, v3, [F

    .line 442
    iget-wide v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$DataAxis;->mMin:J

    .line 443
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 444
    invoke-virtual {p0, v0, v1}, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$DataAxis;->convertToPoint(J)F

    move-result v7

    aput v7, v6, v2

    .line 445
    add-long/2addr v0, v4

    .line 443
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 448
    :cond_0
    return-object v6
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 351
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$DataAxis;->mMin:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$DataAxis;->mMax:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$DataAxis;->mSize:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$DataAxis;->objectsHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public varargs objectsHashCode([Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 346
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setBounds(JJ)Z
    .locals 3

    .prologue
    .line 356
    iget-wide v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$DataAxis;->mMin:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$DataAxis;->mMax:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_1

    .line 357
    :cond_0
    iput-wide p1, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$DataAxis;->mMin:J

    .line 358
    iput-wide p3, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$DataAxis;->mMax:J

    .line 359
    const/4 v0, 0x1

    .line 361
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSize(F)Z
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$DataAxis;->mSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 368
    iput p1, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$DataAxis;->mSize:F

    .line 369
    const/4 v0, 0x1

    .line 371
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
