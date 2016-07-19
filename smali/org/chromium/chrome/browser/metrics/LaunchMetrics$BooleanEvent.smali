.class public Lorg/chromium/chrome/browser/metrics/LaunchMetrics$BooleanEvent;
.super Lorg/chromium/chrome/browser/metrics/LaunchMetrics$CachedHistogram;
.source "LaunchMetrics.java"


# instance fields
.field private mIsHit:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/metrics/LaunchMetrics$CachedHistogram;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method protected commitAndClear()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lorg/chromium/chrome/browser/metrics/LaunchMetrics$BooleanEvent;->mHistogramName:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/metrics/LaunchMetrics$BooleanEvent;->mIsHit:Z

    invoke-static {v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/metrics/LaunchMetrics$BooleanEvent;->mIsHit:Z

    .line 63
    return-void
.end method

.method public recordHit()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/metrics/LaunchMetrics$BooleanEvent;->mIsHit:Z

    .line 57
    return-void
.end method
