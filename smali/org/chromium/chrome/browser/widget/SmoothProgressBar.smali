.class public Lorg/chromium/chrome/browser/widget/SmoothProgressBar;
.super Landroid/widget/ProgressBar;
.source "SmoothProgressBar.java"


# instance fields
.field private mIsAnimated:Z

.field private final mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

.field private mResolutionMutiplier:I

.field private mTargetProgress:I

.field private mUpdateProgressRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic access$000(Lorg/chromium/chrome/browser/widget/SmoothProgressBar;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->mTargetProgress:I

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/widget/SmoothProgressBar;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->mIsAnimated:Z

    return v0
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 3

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    .line 105
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->getProgress()I

    move-result v0

    iget v1, p0, Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->mResolutionMutiplier:I

    div-int/2addr v0, v1

    .line 108
    const/4 v1, 0x1

    add-int/lit8 v2, p1, 0x64

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x64

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->mResolutionMutiplier:I

    .line 109
    iget v1, p0, Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->mResolutionMutiplier:I

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->setMax(I)V

    .line 110
    iget v1, p0, Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->mResolutionMutiplier:I

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->setProgressInternal(I)V

    .line 111
    return-void
.end method

.method public setProgress(I)V
    .locals 2

    .prologue
    .line 115
    iget v0, p0, Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->mResolutionMutiplier:I

    mul-int/2addr v0, p1

    .line 116
    iget v1, p0, Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->mTargetProgress:I

    if-ne v1, v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 117
    :cond_0
    iput v0, p0, Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->mTargetProgress:I

    .line 118
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 119
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected setProgressInternal(I)V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 137
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/SmoothProgressBar$ProgressChangeListener;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/widget/SmoothProgressBar$ProgressChangeListener;->onProgressChanged(I)V

    goto :goto_0

    .line 142
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/SmoothProgressBar;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/SmoothProgressBar$ProgressChangeListener;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/widget/SmoothProgressBar$ProgressChangeListener;->onProgressVisibilityChanged(I)V

    goto :goto_0

    .line 153
    :cond_0
    return-void
.end method
