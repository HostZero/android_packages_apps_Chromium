.class public Lorg/chromium/chrome/browser/widget/SlowedProgressBar;
.super Landroid/widget/ProgressBar;
.source "SlowedProgressBar.java"


# instance fields
.field private final mInvalidationRunnable:Ljava/lang/Runnable;

.field private mLastDrawTimeMs:J

.field private mPendingInvalidation:Z

.field private mTargetProgress:I

.field private final mUpdateProgressRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic access$002(Lorg/chromium/chrome/browser/widget/SlowedProgressBar;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/widget/SlowedProgressBar;->mPendingInvalidation:Z

    return p1
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/widget/SlowedProgressBar;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lorg/chromium/chrome/browser/widget/SlowedProgressBar;->mTargetProgress:I

    return v0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/widget/SlowedProgressBar;->mLastDrawTimeMs:J

    .line 73
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 74
    return-void
.end method

.method public postInvalidateOnAnimation()V
    .locals 6

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/SlowedProgressBar;->mPendingInvalidation:Z

    if-eqz v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/widget/SlowedProgressBar;->mLastDrawTimeMs:J

    const-wide/16 v2, 0x42

    add-long/2addr v0, v2

    .line 84
    const-wide/16 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 85
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/chromium/chrome/browser/widget/SlowedProgressBar;->mPendingInvalidation:Z

    .line 86
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/SlowedProgressBar;->mInvalidationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lorg/chromium/chrome/browser/widget/SlowedProgressBar;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/chromium/chrome/browser/widget/SlowedProgressBar;->mTargetProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 100
    :goto_0
    monitor-exit p0

    return-void

    .line 97
    :cond_0
    :try_start_1
    iput p1, p0, Lorg/chromium/chrome/browser/widget/SlowedProgressBar;->mTargetProgress:I

    .line 98
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/SlowedProgressBar;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/SlowedProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 99
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/SlowedProgressBar;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/SlowedProgressBar;->postOnAnimation(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected setProgressInternal(I)V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 108
    return-void
.end method
