.class Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "EdgeSwipeEventFilter.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$1;)V
    .locals 0

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    const/4 v1, 0x1

    # setter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mInDoubleTap:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->access$102(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;Z)Z

    .line 351
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 330
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mInDoubleTap:Z
    invoke-static {v1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->access$100(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    iget-object v0, v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;->propagateEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 337
    :goto_0
    return v0

    .line 335
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mAccumulatedEvents:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->access$200(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    # setter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mScrollStarted:Z
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->access$302(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;Z)Z

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    .prologue
    .line 427
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    iget v1, v1, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mPxToDp:F

    mul-float/2addr v1, v0

    .line 428
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    iget v2, v2, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mPxToDp:F

    mul-float/2addr v2, v0

    .line 429
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v0, v3

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    iget v3, v3, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mPxToDp:F

    mul-float/2addr v3, v0

    .line 430
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    sub-float/2addr v0, v4

    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    iget v4, v4, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mPxToDp:F

    mul-float/2addr v4, v0

    .line 431
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    iget v0, v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mPxToDp:F

    mul-float v5, p3, v0

    .line 432
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    iget v0, v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mPxToDp:F

    mul-float v6, p4, v0

    .line 433
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    # invokes: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->flingOccurred(FFFFFF)V
    invoke-static/range {v0 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->access$1300(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;FFFFFF)V

    .line 434
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    # invokes: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->propagateAccumulatedEventsAndClear()Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->access$400(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;)Z

    .line 359
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    const/4 v1, 0x1

    # setter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mInLongPress:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->access$502(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;Z)Z

    .line 360
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10

    .prologue
    .line 364
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    iget v1, v1, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mPxToDp:F

    mul-float/2addr v1, v0

    .line 365
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    iget v2, v2, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mPxToDp:F

    mul-float/2addr v2, v0

    .line 366
    neg-float v0, p3

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    iget v3, v3, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mPxToDp:F

    mul-float/2addr v3, v0

    .line 367
    neg-float v0, p4

    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    iget v4, v4, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mPxToDp:F

    mul-float/2addr v4, v0

    .line 368
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    sub-float/2addr v0, v5

    iget-object v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    iget v5, v5, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mPxToDp:F

    mul-float/2addr v5, v0

    .line 369
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    sub-float/2addr v0, v6

    iget-object v6, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    iget v6, v6, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mPxToDp:F

    mul-float/2addr v6, v0

    .line 371
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mScrollStarted:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->access$300(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    # invokes: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->scrollUpdated(FFFFFF)V
    invoke-static/range {v0 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->access$600(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;FFFFFF)V

    .line 373
    const/4 v0, 0x1

    .line 421
    :goto_0
    return v0

    .line 376
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mScrollDirection:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->access$700(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;)Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    move-result-object v0

    sget-object v3, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->DOWN:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    if-eq v0, v3, :cond_1

    const/4 v0, 0x1

    move v3, v0

    .line 377
    :goto_1
    if-eqz v3, :cond_2

    move v0, v5

    :goto_2
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 378
    if-eqz v3, :cond_3

    :goto_3
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 380
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mAccumulatingEvents:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->access$800(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 381
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mAccumulatedEvents:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->access$200(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mAccumulatedEvents:Ljava/util/ArrayList;
    invoke-static {v5}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->access$200(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    .line 383
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mAccumulatedEvents:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->access$200(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    .line 384
    sub-long/2addr v6, v8

    .line 388
    const/high16 v0, 0x41400000    # 12.0f

    cmpg-float v0, v3, v0

    if-gez v0, :cond_5

    const/high16 v0, 0x41f00000    # 30.0f

    cmpg-float v0, v4, v0

    if-gez v0, :cond_5

    const-wide/16 v8, 0xc8

    cmp-long v0, v6, v8

    if-gtz v0, :cond_5

    .line 391
    const/4 v0, 0x1

    goto :goto_0

    .line 376
    :cond_1
    const/4 v0, 0x0

    move v3, v0

    goto :goto_1

    :cond_2
    move v0, v6

    .line 377
    goto :goto_2

    :cond_3
    move v6, v5

    .line 378
    goto :goto_3

    .line 395
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mAccumulatedEvents:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->access$200(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mAccumulatingEvents:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->access$800(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;)Z

    move-result v0

    if-nez v0, :cond_6

    const/high16 v0, 0x41400000    # 12.0f

    cmpg-float v0, v3, v0

    if-gez v0, :cond_6

    const/high16 v0, 0x41400000    # 12.0f

    cmpg-float v0, v4, v0

    if-gez v0, :cond_6

    .line 404
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    const/4 v1, 0x1

    # setter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mAccumulatingEvents:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->access$802(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;Z)Z

    .line 405
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 408
    :cond_6
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    # invokes: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->checkForFastScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->access$900(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    float-to-double v6, v3

    float-to-double v4, v4

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->TAN_SIDE_SWIPE_ANGLE_THRESHOLD:D
    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->access$1000()D

    move-result-wide v8

    mul-double/2addr v4, v8

    cmpl-double v0, v6, v4

    if-lez v0, :cond_8

    .line 412
    :cond_7
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    # invokes: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->propagateAccumulatedEventsAndClear()Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->access$400(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;)Z

    .line 413
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    # setter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mScrollDirection:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->access$702(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;)Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    .line 414
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    const/4 v1, 0x1

    # setter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mPropagateEventsToHostView:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->access$1102(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;Z)Z

    .line 421
    :goto_4
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 416
    :cond_8
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mScrollDirection:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;
    invoke-static {v3}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->access$700(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;)Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    move-result-object v3

    # invokes: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->scrollStarted(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;FF)V
    invoke-static {v0, v3, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->access$1200(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;FF)V

    .line 417
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    const/4 v1, 0x1

    # setter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mScrollStarted:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->access$302(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;Z)Z

    .line 418
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mAccumulatedEvents:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->access$200(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 419
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mAccumulatingEvents:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->access$802(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;Z)Z

    goto :goto_4
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    # invokes: Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->propagateAccumulatedEventsAndClear()Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->access$400(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;)Z

    .line 343
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    iget-object v0, v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;->propagateEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
