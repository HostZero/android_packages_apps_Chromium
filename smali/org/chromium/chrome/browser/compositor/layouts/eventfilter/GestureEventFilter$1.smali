.class Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GestureEventFilter.java"


# instance fields
.field private mOnScrollBeginX:F

.field private mOnScrollBeginY:F

.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 153
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    # setter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mButtons:I
    invoke-static {v2, v3}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->access$702(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;I)I

    .line 154
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    # setter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mInLongPress:Z
    invoke-static {v2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->access$602(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;Z)Z

    .line 155
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    # setter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mSeenFirstScrollEvent:Z
    invoke-static {v2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->access$202(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;Z)Z

    .line 156
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;
    invoke-static {v2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->access$400(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;)Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mSingleInput:Z
    invoke-static {v2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->access$500(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;
    invoke-static {v2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->access$400(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;)Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    iget v4, v4, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mPxToDp:F

    mul-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    iget v5, v5, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mPxToDp:F

    mul-float/2addr v4, v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    move v0, v1

    :cond_0
    iget-object v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mButtons:I
    invoke-static {v5}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->access$700(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;)I

    move-result v5

    invoke-interface {v2, v3, v4, v0, v5}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;->onDown(FFZI)V

    .line 162
    :cond_1
    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    .prologue
    .line 144
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->access$400(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;)Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mSingleInput:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->access$500(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->access$400(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;)Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    iget v2, v2, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mPxToDp:F

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    iget v3, v3, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mPxToDp:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    iget v3, v3, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mPxToDp:F

    mul-float/2addr v3, p3

    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    iget v4, v4, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mPxToDp:F

    mul-float/2addr v4, p4

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;->fling(FFFF)V

    .line 148
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    # invokes: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->longPress(Landroid/view/MotionEvent;)V
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->access$100(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;Landroid/view/MotionEvent;)V

    .line 168
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 101
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mSeenFirstScrollEvent:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->access$200(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    # setter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mSeenFirstScrollEvent:Z
    invoke-static {v0, v8}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->access$202(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;Z)Z

    .line 105
    mul-float v0, p3, p3

    mul-float v1, p4, p4

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 107
    cmpl-float v1, v0, v2

    if-lez v1, :cond_0

    .line 108
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mScaledTouchSlop:I
    invoke-static {v1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->access$300(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float v0, v1, v0

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float v2, v3, v0

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->mOnScrollBeginX:F

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float v2, v3, v0

    mul-float/2addr v2, p4

    add-float/2addr v1, v2

    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->mOnScrollBeginY:F

    .line 111
    mul-float/2addr p3, v0

    .line 112
    mul-float/2addr p4, v0

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->access$400(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;)Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mSingleInput:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->access$500(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->mOnScrollBeginX:F

    sub-float v5, v0, v1

    .line 119
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->mOnScrollBeginY:F

    sub-float v6, v0, v1

    .line 120
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->access$400(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;)Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    iget v2, v2, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mPxToDp:F

    mul-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    iget v3, v3, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mPxToDp:F

    mul-float/2addr v2, v3

    neg-float v3, p3

    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    iget v4, v4, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mPxToDp:F

    mul-float/2addr v3, v4

    neg-float v4, p4

    iget-object v7, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    iget v7, v7, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mPxToDp:F

    mul-float/2addr v4, v7

    iget-object v7, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    iget v7, v7, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mPxToDp:F

    mul-float/2addr v5, v7

    iget-object v7, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    iget v7, v7, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mPxToDp:F

    mul-float/2addr v6, v7

    invoke-interface/range {v0 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;->drag(FFFFFF)V

    .line 124
    :cond_1
    return v8
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 133
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;
    invoke-static {v2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->access$400(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;)Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mSingleInput:Z
    invoke-static {v2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->access$500(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mInLongPress:Z
    invoke-static {v2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->access$600(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 134
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;
    invoke-static {v2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->access$400(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;)Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    iget v4, v4, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mPxToDp:F

    mul-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    iget v5, v5, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mPxToDp:F

    mul-float/2addr v4, v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    move v0, v1

    :cond_0
    iget-object v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mButtons:I
    invoke-static {v5}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->access$700(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;)I

    move-result v5

    invoke-interface {v2, v3, v4, v0, v5}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;->click(FFZI)V

    .line 138
    :cond_1
    return v1
.end method
