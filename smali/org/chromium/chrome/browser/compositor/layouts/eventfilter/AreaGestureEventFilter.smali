.class public Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/AreaGestureEventFilter;
.super Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;
.source "AreaGestureEventFilter.java"


# instance fields
.field private final mTriggerRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;Landroid/graphics/RectF;ZZ)V
    .locals 6

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;ZZ)V

    .line 16
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/AreaGestureEventFilter;->mTriggerRect:Landroid/graphics/RectF;

    .line 56
    invoke-virtual {p0, p4}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/AreaGestureEventFilter;->setEventArea(Landroid/graphics/RectF;)V

    .line 57
    return-void
.end method


# virtual methods
.method public onInterceptTouchEventInternal(Landroid/view/MotionEvent;Z)Z
    .locals 4

    .prologue
    .line 72
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/AreaGestureEventFilter;->mTriggerRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/AreaGestureEventFilter;->mPxToDp:F

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/AreaGestureEventFilter;->mPxToDp:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->onInterceptTouchEventInternal(Landroid/view/MotionEvent;Z)Z

    move-result v0

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEventArea(Landroid/graphics/RectF;)V
    .locals 1

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 64
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/AreaGestureEventFilter;->mTriggerRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/AreaGestureEventFilter;->mTriggerRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_0
.end method
