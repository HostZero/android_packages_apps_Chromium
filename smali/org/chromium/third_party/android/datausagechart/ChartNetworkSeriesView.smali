.class public Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;
.super Landroid/view/View;
.source "ChartNetworkSeriesView.java"


# instance fields
.field private mEnd:J

.field private mEndTime:J

.field private mEstimateVisible:Z

.field private mHoriz:Lorg/chromium/third_party/android/datausagechart/ChartAxis;

.field private mMax:J

.field private mMaxEstimate:J

.field private mPaintEstimate:Landroid/graphics/Paint;

.field private mPaintFill:Landroid/graphics/Paint;

.field private mPaintFillSecondary:Landroid/graphics/Paint;

.field private mPaintStroke:Landroid/graphics/Paint;

.field private mPathEstimate:Landroid/graphics/Path;

.field private mPathFill:Landroid/graphics/Path;

.field private mPathStroke:Landroid/graphics/Path;

.field private mPathValid:Z

.field private mPrimaryLeft:J

.field private mPrimaryRight:J

.field private mStart:J

.field private mStats:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

.field private mVert:Lorg/chromium/third_party/android/datausagechart/ChartAxis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 73
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/high16 v5, -0x10000

    const/4 v4, 0x0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mEndTime:J

    .line 66
    iput-boolean v4, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPathValid:Z

    .line 67
    iput-boolean v4, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mEstimateVisible:Z

    .line 83
    sget-object v0, Lorg/chromium/third_party/android/R$styleable;->ChartNetworkSeriesView:[I

    invoke-virtual {p1, p2, v0, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 86
    sget v1, Lorg/chromium/third_party/android/R$styleable;->ChartNetworkSeriesView_strokeColor:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 87
    sget v2, Lorg/chromium/third_party/android/R$styleable;->ChartNetworkSeriesView_fillColor:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 88
    sget v3, Lorg/chromium/third_party/android/R$styleable;->ChartNetworkSeriesView_fillColorSecondary:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 91
    invoke-virtual {p0, v1, v2, v3}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->setChartColor(III)V

    .line 92
    invoke-virtual {p0, v4}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->setWillNotDraw(Z)V

    .line 94
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    .line 97
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    .line 98
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPathEstimate:Landroid/graphics/Path;

    .line 99
    return-void
.end method

.method private generatePath()V
    .locals 23

    .prologue
    .line 167
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mMax:J

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPathEstimate:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 171
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPathValid:Z

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mStats:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mStats:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    invoke-virtual {v2}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->getHeight()I

    move-result v13

    .line 181
    const/4 v8, 0x0

    .line 182
    int-to-float v9, v13

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mHoriz:Lorg/chromium/third_party/android/datausagechart/ChartAxis;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/chromium/third_party/android/datausagechart/ChartAxis;->convertToValue(F)J

    move-result-wide v6

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 192
    const-wide/16 v4, 0x0

    .line 194
    const/4 v3, 0x0

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mStats:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mStart:J

    invoke-virtual {v2, v10, v11}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->getIndexBefore(J)I

    move-result v2

    .line 197
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mStats:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mEnd:J

    invoke-virtual {v10, v14, v15}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v14

    move v11, v2

    move-object/from16 v22, v3

    move-wide v2, v4

    move-object/from16 v4, v22

    .line 198
    :goto_1
    if-gt v11, v14, :cond_3

    .line 199
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mStats:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    invoke-virtual {v5, v11, v4}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->getValues(ILorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;)Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;

    move-result-object v12

    .line 201
    iget-wide v0, v12, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;->bucketStart:J

    move-wide/from16 v16, v0

    .line 202
    iget-wide v4, v12, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;->bucketDuration:J

    add-long v4, v4, v16

    .line 204
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mHoriz:Lorg/chromium/third_party/android/datausagechart/ChartAxis;

    move-wide/from16 v0, v16

    invoke-interface {v10, v0, v1}, Lorg/chromium/third_party/android/datausagechart/ChartAxis;->convertToPoint(J)F

    move-result v15

    .line 205
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mHoriz:Lorg/chromium/third_party/android/datausagechart/ChartAxis;

    invoke-interface {v10, v4, v5}, Lorg/chromium/third_party/android/datausagechart/ChartAxis;->convertToPoint(J)F

    move-result v10

    .line 208
    const/16 v18, 0x0

    cmpg-float v18, v10, v18

    if-ltz v18, :cond_5

    .line 211
    iget-wide v0, v12, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v18, v0

    iget-wide v0, v12, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    add-long v2, v2, v18

    .line 214
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mVert:Lorg/chromium/third_party/android/datausagechart/ChartAxis;

    invoke-interface {v8, v2, v3}, Lorg/chromium/third_party/android/datausagechart/ChartAxis;->convertToPoint(J)F

    move-result v8

    .line 216
    cmp-long v6, v6, v16

    if-eqz v6, :cond_2

    .line 218
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    invoke-virtual {v6, v15, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 219
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    invoke-virtual {v6, v15, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 223
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    invoke-virtual {v6, v10, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 224
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    invoke-virtual {v6, v10, v8}, Landroid/graphics/Path;->lineTo(FF)V

    move v6, v8

    move v7, v10

    .line 198
    :goto_2
    add-int/lit8 v8, v11, 0x1

    move v11, v8

    move v9, v6

    move v8, v7

    move-wide v6, v4

    move-object v4, v12

    goto :goto_1

    .line 232
    :cond_3
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mEndTime:J

    cmp-long v4, v6, v4

    if-gez v4, :cond_4

    .line 233
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mHoriz:Lorg/chromium/third_party/android/datausagechart/ChartAxis;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mEndTime:J

    invoke-interface {v4, v6, v7}, Lorg/chromium/third_party/android/datausagechart/ChartAxis;->convertToPoint(J)F

    move-result v8

    .line 235
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 236
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 247
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    int-to-float v5, v13

    invoke-virtual {v4, v8, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 248
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    const/4 v5, 0x0

    int-to-float v6, v13

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 250
    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mMax:J

    .line 252
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->invalidate()V

    goto/16 :goto_0

    :cond_5
    move-wide v4, v6

    move v6, v9

    move v7, v8

    goto :goto_2
.end method


# virtual methods
.method public bindNetworkStats(Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mStats:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    .line 135
    invoke-virtual {p0}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->invalidatePath()V

    .line 136
    invoke-virtual {p0}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->invalidate()V

    .line 137
    return-void
.end method

.method public getMaxVisible()J
    .locals 7

    .prologue
    .line 269
    iget-boolean v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mEstimateVisible:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mMaxEstimate:J

    .line 270
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mStats:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    if-eqz v2, :cond_0

    .line 272
    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mStats:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    iget-wide v2, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mStart:J

    iget-wide v4, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mEnd:J

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->getValues(JJLorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;)Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;

    move-result-object v0

    .line 273
    iget-wide v2, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v0, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v0, v2

    .line 275
    :cond_0
    return-wide v0

    .line 269
    :cond_1
    iget-wide v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mMax:J

    goto :goto_0
.end method

.method init(Lorg/chromium/third_party/android/datausagechart/ChartAxis;Lorg/chromium/third_party/android/datausagechart/ChartAxis;)V
    .locals 2

    .prologue
    .line 102
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "missing horiz"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "missing vert"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    iput-object p1, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mHoriz:Lorg/chromium/third_party/android/datausagechart/ChartAxis;

    .line 105
    iput-object p2, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mVert:Lorg/chromium/third_party/android/datausagechart/ChartAxis;

    .line 106
    return-void
.end method

.method public invalidatePath()V
    .locals 2

    .prologue
    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPathValid:Z

    .line 156
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mMax:J

    .line 157
    invoke-virtual {p0}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->invalidate()V

    .line 158
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 283
    iget-boolean v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPathValid:Z

    if-nez v0, :cond_0

    .line 284
    invoke-direct {p0}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->generatePath()V

    .line 287
    :cond_0
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mHoriz:Lorg/chromium/third_party/android/datausagechart/ChartAxis;

    iget-wide v2, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPrimaryLeft:J

    invoke-interface {v0, v2, v3}, Lorg/chromium/third_party/android/datausagechart/ChartAxis;->convertToPoint(J)F

    move-result v0

    .line 288
    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mHoriz:Lorg/chromium/third_party/android/datausagechart/ChartAxis;

    iget-wide v2, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPrimaryRight:J

    invoke-interface {v1, v2, v3}, Lorg/chromium/third_party/android/datausagechart/ChartAxis;->convertToPoint(J)F

    move-result v1

    .line 290
    iget-boolean v2, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mEstimateVisible:Z

    if-eqz v2, :cond_1

    .line 291
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 292
    invoke-virtual {p0}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->getHeight()I

    move-result v4

    invoke-virtual {p1, v6, v6, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 293
    iget-object v3, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPathEstimate:Landroid/graphics/Path;

    iget-object v4, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 294
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 297
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 298
    invoke-virtual {p0}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v5, v5, v0, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 299
    iget-object v3, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    iget-object v4, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 300
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 302
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 303
    invoke-virtual {p0}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v1, v5, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 304
    iget-object v3, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    iget-object v4, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 305
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 307
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 308
    invoke-virtual {p0}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v5, v1, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 309
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 310
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 311
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 313
    return-void
.end method

.method public setBounds(JJ)V
    .locals 1

    .prologue
    .line 140
    iput-wide p1, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mStart:J

    .line 141
    iput-wide p3, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mEnd:J

    .line 142
    return-void
.end method

.method public setChartColor(III)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 109
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    .line 110
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 111
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 113
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 115
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    .line 116
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 118
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 120
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    .line 121
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 125
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    .line 126
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 127
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 129
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 130
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 131
    return-void

    .line 130
    nop

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method public setEndTime(J)V
    .locals 1

    .prologue
    .line 256
    iput-wide p1, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mEndTime:J

    .line 257
    return-void
.end method

.method public setEstimateVisible(Z)V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mEstimateVisible:Z

    .line 261
    invoke-virtual {p0}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->invalidate()V

    .line 262
    return-void
.end method

.method public setPrimaryRange(JJ)V
    .locals 1

    .prologue
    .line 149
    iput-wide p1, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPrimaryLeft:J

    .line 150
    iput-wide p3, p0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->mPrimaryRight:J

    .line 151
    invoke-virtual {p0}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->invalidate()V

    .line 152
    return-void
.end method
