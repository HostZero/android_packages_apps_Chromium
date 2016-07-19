.class public Lorg/chromium/chrome/browser/metrics/LaunchMetrics$SparseHistogramSample;
.super Lorg/chromium/chrome/browser/metrics/LaunchMetrics$CachedHistogram;
.source "LaunchMetrics.java"


# instance fields
.field private final mSamples:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/metrics/LaunchMetrics$CachedHistogram;-><init>(Ljava/lang/String;)V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/metrics/LaunchMetrics$SparseHistogramSample;->mSamples:Ljava/util/List;

    .line 72
    return-void
.end method


# virtual methods
.method protected commitAndClear()V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lorg/chromium/chrome/browser/metrics/LaunchMetrics$SparseHistogramSample;->mSamples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 81
    iget-object v2, p0, Lorg/chromium/chrome/browser/metrics/LaunchMetrics$SparseHistogramSample;->mHistogramName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordSparseSlowlyHistogram(Ljava/lang/String;I)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/metrics/LaunchMetrics$SparseHistogramSample;->mSamples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 84
    return-void
.end method

.method public record(I)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lorg/chromium/chrome/browser/metrics/LaunchMetrics$SparseHistogramSample;->mSamples:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method
