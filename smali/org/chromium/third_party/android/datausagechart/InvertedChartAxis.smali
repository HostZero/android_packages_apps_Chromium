.class public Lorg/chromium/third_party/android/datausagechart/InvertedChartAxis;
.super Ljava/lang/Object;
.source "InvertedChartAxis.java"

# interfaces
.implements Lorg/chromium/third_party/android/datausagechart/ChartAxis;


# instance fields
.field private mSize:F

.field private final mWrapped:Lorg/chromium/third_party/android/datausagechart/ChartAxis;


# direct methods
.method public constructor <init>(Lorg/chromium/third_party/android/datausagechart/ChartAxis;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/chromium/third_party/android/datausagechart/InvertedChartAxis;->mWrapped:Lorg/chromium/third_party/android/datausagechart/ChartAxis;

    .line 32
    return-void
.end method


# virtual methods
.method public convertToPoint(J)F
    .locals 3

    .prologue
    .line 47
    iget v0, p0, Lorg/chromium/third_party/android/datausagechart/InvertedChartAxis;->mSize:F

    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/InvertedChartAxis;->mWrapped:Lorg/chromium/third_party/android/datausagechart/ChartAxis;

    invoke-interface {v1, p1, p2}, Lorg/chromium/third_party/android/datausagechart/ChartAxis;->convertToPoint(J)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public convertToValue(F)J
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/InvertedChartAxis;->mWrapped:Lorg/chromium/third_party/android/datausagechart/ChartAxis;

    iget v1, p0, Lorg/chromium/third_party/android/datausagechart/InvertedChartAxis;->mSize:F

    sub-float/2addr v1, p1

    invoke-interface {v0, v1}, Lorg/chromium/third_party/android/datausagechart/ChartAxis;->convertToValue(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTickPoints()[F
    .locals 4

    .prologue
    .line 62
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/InvertedChartAxis;->mWrapped:Lorg/chromium/third_party/android/datausagechart/ChartAxis;

    invoke-interface {v0}, Lorg/chromium/third_party/android/datausagechart/ChartAxis;->getTickPoints()[F

    move-result-object v1

    .line 63
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 64
    iget v2, p0, Lorg/chromium/third_party/android/datausagechart/InvertedChartAxis;->mSize:F

    aget v3, v1, v0

    sub-float/2addr v2, v3

    aput v2, v1, v0

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    return-object v1
.end method

.method public setBounds(JJ)Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/InvertedChartAxis;->mWrapped:Lorg/chromium/third_party/android/datausagechart/ChartAxis;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/chromium/third_party/android/datausagechart/ChartAxis;->setBounds(JJ)Z

    move-result v0

    return v0
.end method

.method public setSize(F)Z
    .locals 1

    .prologue
    .line 41
    iput p1, p0, Lorg/chromium/third_party/android/datausagechart/InvertedChartAxis;->mSize:F

    .line 42
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/InvertedChartAxis;->mWrapped:Lorg/chromium/third_party/android/datausagechart/ChartAxis;

    invoke-interface {v0, p1}, Lorg/chromium/third_party/android/datausagechart/ChartAxis;->setSize(F)Z

    move-result v0

    return v0
.end method
