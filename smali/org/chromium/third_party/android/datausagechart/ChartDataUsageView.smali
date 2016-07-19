.class public Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;
.super Lorg/chromium/third_party/android/datausagechart/ChartView;
.source "ChartDataUsageView.java"


# static fields
.field public static final DAYS_IN_CHART:I = 0x1e


# instance fields
.field private mCompressedSeries:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

.field private mHistory:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

.field private mLeft:J

.field private mOriginalSeries:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

.field private mRight:J

.field private mVertMax:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/third_party/android/datausagechart/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    new-instance v0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$TimeAxis;

    invoke-direct {v0}, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$TimeAxis;-><init>()V

    new-instance v1, Lorg/chromium/third_party/android/datausagechart/InvertedChartAxis;

    new-instance v2, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$DataAxis;

    invoke-direct {v2}, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView$DataAxis;-><init>()V

    invoke-direct {v1, v2}, Lorg/chromium/third_party/android/datausagechart/InvertedChartAxis;-><init>(Lorg/chromium/third_party/android/datausagechart/ChartAxis;)V

    invoke-virtual {p0, v0, v1}, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->init(Lorg/chromium/third_party/android/datausagechart/ChartAxis;Lorg/chromium/third_party/android/datausagechart/ChartAxis;)V

    .line 79
    return-void
.end method

.method static synthetic access$100(J)J
    .locals 2

    .prologue
    .line 41
    invoke-static {p0, p1}, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->roundUpToPowerOfTwo(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static roundUpToPowerOfTwo(J)J
    .locals 6

    .prologue
    const-wide/16 v4, 0x1

    .line 479
    sub-long v0, p0, v4

    .line 482
    const/4 v2, 0x1

    ushr-long v2, v0, v2

    or-long/2addr v0, v2

    .line 483
    const/4 v2, 0x2

    ushr-long v2, v0, v2

    or-long/2addr v0, v2

    .line 484
    const/4 v2, 0x4

    ushr-long v2, v0, v2

    or-long/2addr v0, v2

    .line 485
    const/16 v2, 0x8

    ushr-long v2, v0, v2

    or-long/2addr v0, v2

    .line 486
    const/16 v2, 0x10

    ushr-long v2, v0, v2

    or-long/2addr v0, v2

    .line 487
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    or-long/2addr v0, v2

    .line 489
    add-long/2addr v0, v4

    .line 491
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method private updateEstimateVisible()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mOriginalSeries:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->setEstimateVisible(Z)V

    .line 147
    return-void
.end method

.method private updatePrimaryRange()V
    .locals 5

    .prologue
    .line 214
    iget-wide v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mLeft:J

    .line 215
    iget-wide v2, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mRight:J

    .line 218
    iget-object v4, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mCompressedSeries:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    invoke-virtual {v4}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 219
    iget-object v4, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mCompressedSeries:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->setPrimaryRange(JJ)V

    .line 223
    :cond_0
    iget-object v4, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mOriginalSeries:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->setPrimaryRange(JJ)V

    .line 225
    return-void
.end method

.method private updateVertAxisBounds()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 126
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mOriginalSeries:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->getMaxVisible()J

    move-result-wide v0

    iget-object v2, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mCompressedSeries:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    invoke-virtual {v2}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->getMaxVisible()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 128
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xa

    div-long/2addr v0, v2

    .line 129
    const-wide/32 v2, 0x100000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 130
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 133
    iget-wide v2, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mVertMax:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 134
    iput-wide v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mVertMax:J

    .line 136
    iget-object v2, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mVert:Lorg/chromium/third_party/android/datausagechart/ChartAxis;

    invoke-interface {v2, v4, v5, v0, v1}, Lorg/chromium/third_party/android/datausagechart/ChartAxis;->setBounds(JJ)Z

    move-result v0

    .line 138
    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mOriginalSeries:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->invalidatePath()V

    .line 140
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mCompressedSeries:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->invalidatePath()V

    .line 143
    :cond_0
    return-void
.end method


# virtual methods
.method public bindCompressedNetworkStats(Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;)V
    .locals 6

    .prologue
    .line 105
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mCompressedSeries:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->bindNetworkStats(Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;)V

    .line 106
    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mCompressedSeries:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mHistory:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mOriginalSeries:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mHistory:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    invoke-virtual {v1}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->getEnd()J

    move-result-wide v2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    iget-object v4, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mHistory:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    invoke-virtual {v4}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->getEnd()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->setEndTime(J)V

    .line 111
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mCompressedSeries:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mHistory:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    invoke-virtual {v1}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->getEnd()J

    move-result-wide v2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    iget-object v4, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mHistory:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    invoke-virtual {v4}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->getEnd()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->setEndTime(J)V

    .line 114
    :cond_0
    invoke-direct {p0}, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->updateEstimateVisible()V

    .line 115
    invoke-direct {p0}, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->updatePrimaryRange()V

    .line 116
    invoke-virtual {p0}, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->requestLayout()V

    .line 117
    return-void

    .line 106
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public bindOriginalNetworkStats(Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mOriginalSeries:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->bindNetworkStats(Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;)V

    .line 97
    iput-object p1, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mHistory:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    .line 98
    invoke-direct {p0}, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->updateVertAxisBounds()V

    .line 99
    invoke-direct {p0}, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->updateEstimateVisible()V

    .line 100
    invoke-direct {p0}, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->updatePrimaryRange()V

    .line 101
    invoke-virtual {p0}, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->requestLayout()V

    .line 102
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 83
    invoke-super {p0}, Lorg/chromium/third_party/android/datausagechart/ChartView;->onFinishInflate()V

    .line 85
    sget v0, Lorg/chromium/third_party/android/R$id;->original_series:I

    invoke-virtual {p0, v0}, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mOriginalSeries:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    .line 86
    sget v0, Lorg/chromium/third_party/android/R$id;->compressed_series:I

    invoke-virtual {p0, v0}, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mCompressedSeries:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    .line 89
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mOriginalSeries:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mHoriz:Lorg/chromium/third_party/android/datausagechart/ChartAxis;

    iget-object v2, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mVert:Lorg/chromium/third_party/android/datausagechart/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->init(Lorg/chromium/third_party/android/datausagechart/ChartAxis;Lorg/chromium/third_party/android/datausagechart/ChartAxis;)V

    .line 90
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mCompressedSeries:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mHoriz:Lorg/chromium/third_party/android/datausagechart/ChartAxis;

    iget-object v2, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mVert:Lorg/chromium/third_party/android/datausagechart/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->init(Lorg/chromium/third_party/android/datausagechart/ChartAxis;Lorg/chromium/third_party/android/datausagechart/ChartAxis;)V

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->setActivated(Z)V

    .line 92
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 151
    invoke-virtual {p0}, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    :goto_0
    return v0

    .line 152
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 154
    goto :goto_0

    .line 157
    :pswitch_1
    invoke-virtual {p0, v1}, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->setActivated(Z)V

    move v0, v1

    .line 158
    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setVisibleRange(JJJJ)V
    .locals 13

    .prologue
    .line 181
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    move-wide/from16 v0, p7

    invoke-virtual {v2, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    int-to-long v4, v2

    .line 182
    iget-object v2, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mHoriz:Lorg/chromium/third_party/android/datausagechart/ChartAxis;

    move-wide/from16 v0, p3

    invoke-interface {v2, p1, p2, v0, v1}, Lorg/chromium/third_party/android/datausagechart/ChartAxis;->setBounds(JJ)Z

    move-result v6

    .line 183
    iget-object v2, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mOriginalSeries:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    move-wide/from16 v0, p3

    invoke-virtual {v2, p1, p2, v0, v1}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->setBounds(JJ)V

    .line 184
    iget-object v2, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mCompressedSeries:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    move-wide/from16 v0, p3

    invoke-virtual {v2, p1, p2, v0, v1}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->setBounds(JJ)V

    .line 189
    const-wide v2, 0x9a7ec800L

    sub-long v2, p3, v2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 191
    const-wide/32 v8, 0x36ee80

    sub-long v8, p3, v8

    const-wide v10, 0x9a7ec800L

    sub-long/2addr v8, v10

    cmp-long v7, v8, p5

    if-nez v7, :cond_0

    add-long v4, v4, p7

    cmp-long v4, p3, v4

    if-eqz v4, :cond_2

    .line 196
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->setActivated(Z)V

    move-wide/from16 p3, p7

    .line 199
    :goto_0
    move-wide/from16 v0, p5

    iput-wide v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mLeft:J

    .line 200
    move-wide/from16 v0, p3

    iput-wide v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mRight:J

    .line 202
    invoke-virtual {p0}, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->requestLayout()V

    .line 203
    if-eqz v6, :cond_1

    .line 204
    iget-object v2, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mOriginalSeries:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    invoke-virtual {v2}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->invalidatePath()V

    .line 205
    iget-object v2, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->mCompressedSeries:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    invoke-virtual {v2}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->invalidatePath()V

    .line 208
    :cond_1
    invoke-direct {p0}, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->updateVertAxisBounds()V

    .line 209
    invoke-direct {p0}, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->updateEstimateVisible()V

    .line 210
    invoke-direct {p0}, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->updatePrimaryRange()V

    .line 211
    return-void

    :cond_2
    move-wide/from16 p5, v2

    goto :goto_0
.end method
