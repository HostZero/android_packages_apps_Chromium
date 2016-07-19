.class public abstract Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;
.super Ljava/lang/Object;
.source "EventFilter.java"


# instance fields
.field private mAutoOffset:Z

.field protected mCurrentTouchOffsetX:F

.field protected mCurrentTouchOffsetY:F

.field protected final mHost:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;

.field protected final mPxToDp:F

.field private mSimulateIntercepting:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;Z)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;Z)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;->mSimulateIntercepting:Z

    .line 21
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;->mAutoOffset:Z

    .line 44
    iput-object p2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;

    .line 45
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;->mPxToDp:F

    .line 46
    iput-boolean p3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;->mAutoOffset:Z

    .line 47
    return-void
.end method


# virtual methods
.method protected autoOffsetEvents()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;->mAutoOffset:Z

    return v0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 56
    .line 57
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;->mAutoOffset:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;->mCurrentTouchOffsetX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;->mCurrentTouchOffsetY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 58
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 59
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;->mCurrentTouchOffsetX:F

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;->mCurrentTouchOffsetY:F

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 61
    :goto_0
    invoke-virtual {p0, v0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;->onInterceptTouchEventInternal(Landroid/view/MotionEvent;Z)Z

    move-result v1

    .line 62
    if-eq v0, p1, :cond_1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 63
    :cond_1
    return v1

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method protected abstract onInterceptTouchEventInternal(Landroid/view/MotionEvent;Z)Z
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 94
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;->mAutoOffset:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;->mCurrentTouchOffsetX:F

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;->mCurrentTouchOffsetY:F

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 95
    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;->onTouchEventInternal(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected abstract onTouchEventInternal(Landroid/view/MotionEvent;)Z
.end method

.method public setCurrentMotionEventOffsets(FF)V
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;->mCurrentTouchOffsetX:F

    .line 74
    iput p2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;->mCurrentTouchOffsetY:F

    .line 75
    return-void
.end method

.method public simulateTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;->mSimulateIntercepting:Z

    if-nez v0, :cond_1

    .line 115
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;->onInterceptTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;->mSimulateIntercepting:Z

    .line 117
    :cond_1
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
