.class Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$InternalGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "OverlayPanelEventFilter.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$InternalGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;

    invoke-virtual {v0, p1, p2, p4}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->handleScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z

    move-result v0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$InternalGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->handleSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
