.class Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$SwipeRecognizerImpl;
.super Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;
.source "OverlayPanelEventFilter.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 121
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$SwipeRecognizerImpl;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->access$000(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$SwipeRecognizerImpl;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;

    iget v4, v4, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPxToDp:F

    mul-float/2addr v1, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$SwipeRecognizerImpl;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;

    iget v5, v5, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPxToDp:F

    mul-float/2addr v4, v5

    invoke-virtual {v0, v2, v3, v1, v4}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->handleClick(JFF)V

    .line 123
    const/4 v0, 0x1

    return v0
.end method
