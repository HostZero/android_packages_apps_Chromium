.class public Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;
.super Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;
.source "OverlayPanelEventFilter.java"


# instance fields
.field private mEventTarget:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureOrientation:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;

.field private mHasChangedEventTarget:Z

.field private mHasDeterminedEventTarget:Z

.field private mHasDeterminedGestureOrientation:Z

.field private mInitialEventY:F

.field private mIsDeterminingEventTarget:Z

.field private mIsRecordingEvents:Z

.field private mMayChangeEventTarget:Z

.field private mPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

.field private mPreviousEventTarget:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

.field private final mRecordedEvents:Ljava/util/ArrayList;

.field private final mSwipeRecognizer:Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;

.field private mSyntheticActionDownX:F

.field private mSyntheticActionDownY:F

.field private final mTouchSlopSquarePx:F

.field private mWasActionDownEventSynthetic:Z


# direct methods
.method static synthetic access$000(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    return-object v0
.end method

.method private copyEvent(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;
    .locals 1

    .prologue
    .line 408
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 409
    invoke-virtual {v0, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 410
    return-object v0
.end method

.method private determineEventTarget(F)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 475
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mGestureOrientation:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;->VERTICAL:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 478
    :goto_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->isMaximized()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 480
    cmpg-float v3, p1, v4

    if-gez v3, :cond_3

    move v3, v1

    .line 481
    :goto_1
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->getContentViewVerticalScroll()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_4

    move v0, v1

    .line 493
    :cond_0
    :goto_2
    if-eqz v0, :cond_6

    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;->PANEL:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    .line 496
    :goto_3
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mEventTarget:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    if-eq v0, v3, :cond_1

    .line 497
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mEventTarget:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    iput-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPreviousEventTarget:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    .line 498
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->setEventTarget(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;)V

    .line 500
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mEventTarget:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPreviousEventTarget:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    if-eq v0, v3, :cond_7

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPreviousEventTarget:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;->UNDETERMINED:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    if-eq v0, v3, :cond_7

    :goto_4
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mHasChangedEventTarget:Z

    .line 503
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 475
    goto :goto_0

    :cond_3
    move v3, v2

    .line 480
    goto :goto_1

    :cond_4
    move v0, v2

    .line 481
    goto :goto_2

    .line 490
    :cond_5
    if-nez v0, :cond_0

    iput-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mMayChangeEventTarget:Z

    goto :goto_2

    .line 493
    :cond_6
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;->CONTENT_VIEW:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    goto :goto_3

    :cond_7
    move v1, v2

    .line 500
    goto :goto_4
.end method

.method private determineGestureOrientation(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 460
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 461
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 462
    const/high16 v2, 0x3fa00000    # 1.25f

    mul-float/2addr v1, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;->VERTICAL:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;

    :goto_0
    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mGestureOrientation:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;

    .line 464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mHasDeterminedGestureOrientation:Z

    .line 465
    return-void

    .line 462
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;->HORIZONTAL:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;

    goto :goto_0
.end method

.method private isDistanceGreaterThanTouchSlop(FF)Z
    .locals 2

    .prologue
    .line 534
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mTouchSlopSquarePx:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDistanceGreaterThanTouchSlop(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 522
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 523
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 525
    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->isDistanceGreaterThanTouchSlop(FF)Z

    move-result v0

    return v0
.end method

.method private propagateAndRecycleEvent(Landroid/view/MotionEvent;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;)V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->propagateEvent(Landroid/view/MotionEvent;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;)V

    .line 316
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 317
    return-void
.end method

.method private propagateEvent(Landroid/view/MotionEvent;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;)V
    .locals 1

    .prologue
    .line 325
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;->PANEL:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    if-ne p2, v0, :cond_1

    .line 326
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->onTouchEventInternal(Landroid/view/MotionEvent;)Z

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;->CONTENT_VIEW:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    if-ne p2, v0, :cond_0

    .line 328
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->propagateEventToContentViewCore(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 236
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;->UNDETERMINED:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mEventTarget:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    .line 237
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mIsDeterminingEventTarget:Z

    .line 238
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mHasDeterminedEventTarget:Z

    .line 240
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;->UNDETERMINED:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPreviousEventTarget:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    .line 241
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mHasChangedEventTarget:Z

    .line 242
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mMayChangeEventTarget:Z

    .line 244
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mWasActionDownEventSynthetic:Z

    .line 246
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;->UNDETERMINED:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mGestureOrientation:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;

    .line 247
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mHasDeterminedGestureOrientation:Z

    .line 248
    return-void
.end method

.method private resumeAndPropagateEvent(Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 263
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mIsRecordingEvents:Z

    if-eqz v0, :cond_0

    .line 264
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->resumeRecordedEvents()V

    .line 267
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mHasChangedEventTarget:Z

    if-eqz v0, :cond_1

    .line 271
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->copyEvent(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPreviousEventTarget:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->propagateAndRecycleEvent(Landroid/view/MotionEvent;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;)V

    .line 275
    invoke-direct {p0, p1, v4}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->copyEvent(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;

    move-result-object v0

    .line 279
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mWasActionDownEventSynthetic:Z

    .line 280
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mSyntheticActionDownX:F

    .line 281
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getContentY()F

    move-result v2

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPxToDp:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mSyntheticActionDownY:F

    .line 284
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mEventTarget:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->propagateAndRecycleEvent(Landroid/view/MotionEvent;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;)V

    .line 286
    iput-boolean v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mHasChangedEventTarget:Z

    .line 289
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mEventTarget:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->propagateEvent(Landroid/view/MotionEvent;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;)V

    .line 290
    return-void
.end method

.method private resumeRecordedEvents()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 296
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mRecordedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    .line 297
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mRecordedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mEventTarget:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    invoke-direct {p0, v0, v4}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->propagateAndRecycleEvent(Landroid/view/MotionEvent;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;)V

    .line 296
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 300
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mRecordedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 301
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mIsRecordingEvents:Z

    .line 302
    return-void
.end method

.method private setEventTarget(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;)V
    .locals 1

    .prologue
    .line 510
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mEventTarget:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    .line 512
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mIsDeterminingEventTarget:Z

    .line 513
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mHasDeterminedEventTarget:Z

    .line 514
    return-void
.end method


# virtual methods
.method protected getContentViewVerticalScroll()F
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getContentVerticalScroll()F

    move-result v0

    return v0
.end method

.method protected handleScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 437
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mHasDeterminedGestureOrientation:Z

    if-nez v2, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->isDistanceGreaterThanTouchSlop(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->determineGestureOrientation(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 445
    :cond_0
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mMayChangeEventTarget:Z

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 446
    :goto_0
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mHasDeterminedGestureOrientation:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mHasDeterminedEventTarget:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_2

    .line 448
    :cond_1
    invoke-direct {p0, p3}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->determineEventTarget(F)V

    .line 451
    :cond_2
    return v1

    :cond_3
    move v0, v1

    .line 445
    goto :goto_0
.end method

.method protected handleSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 419
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPxToDp:F

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPxToDp:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->isCoordinateInsideContent(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;->CONTENT_VIEW:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    :goto_0
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->setEventTarget(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;)V

    .line 422
    const/4 v0, 0x0

    return v0

    .line 419
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;->PANEL:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    goto :goto_0
.end method

.method public onInterceptTouchEventInternal(Landroid/view/MotionEvent;Z)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 161
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPxToDp:F

    mul-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPxToDp:F

    mul-float/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->isCoordinateInsideBar(FF)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPxToDp:F

    mul-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPxToDp:F

    mul-float/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->isCoordinateInsideContent(FF)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v2

    .line 164
    :goto_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getPanelState()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-result-object v3

    sget-object v4, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->CLOSED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getPanelState()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-result-object v3

    sget-object v4, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->UNDEFINED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-eq v3, v4, :cond_5

    .line 169
    :goto_1
    if-eqz v2, :cond_1

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->isPanelOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->onInterceptTouchEventInternal(Landroid/view/MotionEvent;Z)Z

    move-result v1

    .line 172
    :cond_3
    return v1

    :cond_4
    move v0, v1

    .line 161
    goto :goto_0

    :cond_5
    move v2, v1

    .line 164
    goto :goto_1
.end method

.method public onTouchEventInternal(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 179
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getPanelState()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-result-object v1

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-ne v1, v2, :cond_2

    .line 180
    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPxToDp:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->notifyBarTouched(F)V

    .line 188
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mSwipeRecognizer:Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 228
    :cond_1
    :goto_0
    return v5

    .line 192
    :cond_2
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mIsDeterminingEventTarget:Z

    if-nez v1, :cond_3

    if-nez v0, :cond_3

    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mInitialEventY:F

    .line 194
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPxToDp:F

    mul-float/2addr v2, v3

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mInitialEventY:F

    iget v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPxToDp:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->isCoordinateInsideContent(FF)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 199
    iput-boolean v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mIsDeterminingEventTarget:Z

    .line 200
    iput-boolean v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mMayChangeEventTarget:Z

    .line 210
    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 212
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mHasDeterminedEventTarget:Z

    if-eqz v1, :cond_6

    .line 215
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->resumeAndPropagateEvent(Landroid/view/MotionEvent;)V

    .line 224
    :goto_2
    if-eq v0, v5, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 225
    :cond_4
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->reset()V

    goto :goto_0

    .line 204
    :cond_5
    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;->PANEL:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->setEventTarget(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$EventTarget;)V

    .line 205
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mMayChangeEventTarget:Z

    goto :goto_1

    .line 219
    :cond_6
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 220
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mRecordedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    iput-boolean v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mIsRecordingEvents:Z

    goto :goto_2
.end method

.method protected propagateEventToContentViewCore(Landroid/view/MotionEvent;)V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 337
    .line 338
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    .line 340
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mGestureOrientation:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;->HORIZONTAL:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter$GestureOrientation;

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->isMaximized()Z

    move-result v0

    if-nez v0, :cond_8

    .line 342
    const/4 v0, 0x6

    if-eq v10, v0, :cond_0

    const/4 v0, 0x5

    if-ne v10, v0, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mInitialEventY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    move v0, v8

    .line 368
    :goto_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getContentX()F

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPxToDp:F

    div-float/2addr v1, v2

    .line 369
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getContentY()F

    move-result v2

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPxToDp:F

    div-float/2addr v2, v3

    .line 372
    neg-float v1, v1

    neg-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 375
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    .line 376
    if-nez v1, :cond_5

    const/4 v1, 0x0

    .line 379
    :goto_2
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mWasActionDownEventSynthetic:Z

    if-eqz v2, :cond_6

    if-ne v10, v8, :cond_6

    .line 380
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mSyntheticActionDownX:F

    sub-float/2addr v2, v3

    .line 381
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mSyntheticActionDownY:F

    sub-float/2addr v3, v4

    .line 386
    invoke-direct {p0, v2, v3}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->isDistanceGreaterThanTouchSlop(FF)Z

    move-result v2

    if-nez v2, :cond_7

    .line 387
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 388
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    :goto_3
    move v9, v8

    .line 395
    :cond_3
    :goto_4
    if-nez v9, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 398
    :cond_4
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 376
    :cond_5
    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v1

    goto :goto_2

    .line 391
    :cond_6
    if-nez v10, :cond_3

    .line 392
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/OverlayPanelEventFilter;->mPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->onTouchSearchContentViewAck()V

    goto :goto_4

    :cond_7
    move v8, v9

    goto :goto_3

    :cond_8
    move v0, v9

    goto :goto_1
.end method
