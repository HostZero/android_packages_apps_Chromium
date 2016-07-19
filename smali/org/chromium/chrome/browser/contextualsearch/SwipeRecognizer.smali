.class public Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SwipeRecognizer.java"


# instance fields
.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mMotionStartPoint:Landroid/graphics/PointF;

.field private final mPxToDp:F

.field private mSwipeDirection:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

.field private mSwipeHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 64
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mSwipeDirection:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    .line 69
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mMotionStartPoint:Landroid/graphics/PointF;

    .line 85
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mPxToDp:F

    .line 86
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    .line 87
    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 179
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mSwipeHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;

    if-nez v1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v0

    .line 181
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mSwipeDirection:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    if-eq v1, v2, :cond_0

    .line 182
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mPxToDp:F

    mul-float/2addr v1, v0

    .line 183
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mPxToDp:F

    mul-float/2addr v2, v0

    .line 184
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v3, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mMotionStartPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    iget v3, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mPxToDp:F

    mul-float/2addr v3, v0

    .line 185
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v4, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mMotionStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v4

    iget v4, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mPxToDp:F

    mul-float/2addr v4, v0

    .line 186
    iget v0, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mPxToDp:F

    mul-float v5, p3, v0

    .line 187
    iget v0, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mPxToDp:F

    mul-float v6, p4, v0

    .line 189
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mSwipeHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;

    invoke-interface/range {v0 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;->swipeFlingOccurred(FFFFFF)V

    .line 190
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 140
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mSwipeHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v0, v3

    .line 174
    :goto_0
    return v0

    .line 142
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mPxToDp:F

    mul-float/2addr v1, v0

    .line 143
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mPxToDp:F

    mul-float/2addr v2, v0

    .line 145
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mSwipeDirection:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    sget-object v4, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    if-ne v0, v4, :cond_3

    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->shouldRecognizeSwipe(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 146
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    sub-float/2addr v0, v4

    iget v4, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mPxToDp:F

    mul-float/2addr v4, v0

    .line 147
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    sub-float/2addr v0, v5

    iget v5, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mPxToDp:F

    mul-float/2addr v5, v0

    .line 149
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    .line 151
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    .line 152
    cmpl-float v0, v4, v8

    if-lez v0, :cond_4

    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->RIGHT:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    .line 157
    :cond_2
    :goto_1
    sget-object v4, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    if-eq v0, v4, :cond_3

    iget-object v4, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mSwipeHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;

    invoke-interface {v4, v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;->isSwipeEnabled(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 158
    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mSwipeDirection:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    .line 159
    iget-object v4, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mSwipeHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;

    invoke-interface {v4, v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;->swipeStarted(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;FF)V

    .line 160
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mMotionStartPoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 164
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mSwipeDirection:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    sget-object v4, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    if-eq v0, v4, :cond_7

    .line 165
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v3, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mMotionStartPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    iget v3, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mPxToDp:F

    mul-float v5, v0, v3

    .line 166
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v3, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mMotionStartPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v3

    iget v3, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mPxToDp:F

    mul-float v6, v0, v3

    .line 167
    neg-float v0, p3

    iget v3, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mPxToDp:F

    mul-float/2addr v3, v0

    .line 168
    neg-float v0, p4

    iget v4, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mPxToDp:F

    mul-float/2addr v4, v0

    .line 170
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mSwipeHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;

    invoke-interface/range {v0 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;->swipeUpdated(FFFFFF)V

    .line 171
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 152
    :cond_4
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->LEFT:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    goto :goto_1

    .line 153
    :cond_5
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v6, 0x40a00000    # 5.0f

    cmpl-float v4, v4, v6

    if-lez v4, :cond_2

    .line 154
    cmpl-float v0, v5, v8

    if-lez v0, :cond_6

    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->DOWN:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    goto :goto_1

    :cond_6
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->UP:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    goto :goto_1

    :cond_7
    move v0, v3

    .line 174
    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 106
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 108
    iget-object v2, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mSwipeHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;

    if-eqz v2, :cond_1

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 110
    if-eq v2, v1, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mSwipeDirection:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    if-eq v2, v3, :cond_1

    .line 112
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mSwipeHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;->swipeFinished()V

    .line 113
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mSwipeDirection:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    move v0, v1

    .line 118
    :cond_1
    return v0
.end method

.method public setSwipeHandler(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->mSwipeHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;

    .line 95
    return-void
.end method

.method public shouldRecognizeSwipe(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method
