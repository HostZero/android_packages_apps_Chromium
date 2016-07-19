.class public Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;
.super Landroid/preference/PreferenceCategory;
.source "DataReductionStatsPreference.java"


# instance fields
.field private mChartDataUsageView:Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;

.field private mCurrentTime:Ljava/lang/Long;

.field private mEndDatePhrase:Ljava/lang/String;

.field private mEndDateTextView:Landroid/widget/TextView;

.field private mLeftPosition:J

.field private mOriginalNetworkStatsHistory:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

.field private mOriginalSizeTextView:Landroid/widget/TextView;

.field private mOriginalTotalPhrase:Ljava/lang/String;

.field private mPercentReductionPhrase:Ljava/lang/String;

.field private mPercentReductionTextView:Landroid/widget/TextView;

.field private mReceivedNetworkStatsHistory:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

.field private mReceivedSizeTextView:Landroid/widget/TextView;

.field private mReceivedTotalPhrase:Ljava/lang/String;

.field private mRightPosition:J

.field private mStartDatePhrase:Ljava/lang/String;

.field private mStartDateTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method private static formatDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    const/16 v0, 0x18

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateDetailData()V
    .locals 14

    .prologue
    const/4 v8, 0x0

    .line 137
    iget-wide v2, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mLeftPosition:J

    .line 139
    iget-wide v4, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mRightPosition:J

    .line 140
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mCurrentTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 141
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 143
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mOriginalNetworkStatsHistory:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    invoke-virtual/range {v1 .. v8}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->getValues(JJJLorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;)Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;

    move-result-object v0

    .line 146
    iget-wide v10, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;->rxBytes:J

    .line 147
    invoke-static {v9, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mOriginalTotalPhrase:Ljava/lang/String;

    .line 149
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mReceivedNetworkStatsHistory:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    invoke-virtual/range {v1 .. v8}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->getValues(JJJLorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;)Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;

    move-result-object v0

    .line 152
    iget-wide v6, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;->rxBytes:J

    .line 153
    invoke-static {v9, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mReceivedTotalPhrase:Ljava/lang/String;

    .line 155
    const/4 v0, 0x0

    .line 156
    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-lez v1, :cond_0

    cmp-long v1, v10, v6

    if-lez v1, :cond_0

    .line 157
    sub-long v0, v10, v6

    long-to-float v0, v0

    long-to-float v1, v10

    div-float/2addr v0, v1

    .line 159
    :cond_0
    const-string/jumbo v1, "%.0f%%"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    float-to-double v12, v0

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mPercentReductionPhrase:Ljava/lang/String;

    .line 161
    invoke-static {v9, v2, v3}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mStartDatePhrase:Ljava/lang/String;

    .line 162
    invoke-static {v9, v4, v5}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mEndDatePhrase:Ljava/lang/String;

    .line 163
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/preference/PreferenceCategory;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 10

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->onBindView(Landroid/view/View;)V

    .line 101
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mOriginalTotalPhrase:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->updateDetailData()V

    .line 102
    :cond_0
    sget v0, Lorg/chromium/chrome/R$id;->data_reduction_original_size:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mOriginalSizeTextView:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mOriginalSizeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mOriginalTotalPhrase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    sget v0, Lorg/chromium/chrome/R$id;->data_reduction_compressed_size:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mReceivedSizeTextView:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mReceivedSizeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mReceivedTotalPhrase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    sget v0, Lorg/chromium/chrome/R$id;->data_reduction_percent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mPercentReductionTextView:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mPercentReductionTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mPercentReductionPhrase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    sget v0, Lorg/chromium/chrome/R$id;->data_reduction_start_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mStartDateTextView:Landroid/widget/TextView;

    .line 109
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mStartDateTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mStartDatePhrase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    sget v0, Lorg/chromium/chrome/R$id;->data_reduction_end_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mEndDateTextView:Landroid/widget/TextView;

    .line 111
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mEndDateTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mEndDatePhrase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    sget v0, Lorg/chromium/chrome/R$id;->chart:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mChartDataUsageView:Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;

    .line 114
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mChartDataUsageView:Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mOriginalNetworkStatsHistory:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->bindOriginalNetworkStats(Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;)V

    .line 115
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mChartDataUsageView:Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mReceivedNetworkStatsHistory:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->bindCompressedNetworkStats(Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;)V

    .line 116
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mChartDataUsageView:Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mCurrentTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide v4, 0x9a7ec800L

    sub-long/2addr v2, v4

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mCurrentTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x36ee80

    add-long/2addr v4, v6

    iget-wide v6, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mLeftPosition:J

    iget-wide v8, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mRightPosition:J

    invoke-virtual/range {v1 .. v9}, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->setVisibleRange(JJJJ)V

    .line 120
    sget v0, Lorg/chromium/chrome/R$id;->data_reduction_proxy_unreachable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 122
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getInstance()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->isDataReductionProxyUnreachable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onPrepareAddPreference(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->onPrepareAddPreference(Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public setReductionStats(JLorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;)V
    .locals 7

    .prologue
    .line 76
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mCurrentTime:Ljava/lang/Long;

    .line 77
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mCurrentTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mCurrentTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mRightPosition:J

    .line 79
    const-wide v0, 0x9a7ec800L

    sub-long v0, p1, v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mLeftPosition:J

    .line 80
    iput-object p3, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mOriginalNetworkStatsHistory:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    .line 81
    iput-object p4, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionStatsPreference;->mReceivedNetworkStatsHistory:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

    .line 82
    return-void
.end method
