.class public Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;
.super Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;
.source "ContextualSearchEventFilter.java"


# instance fields
.field private mEventTarget:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureOrientation:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;

.field private mHasChangedEventTarget:Z

.field private mHasDeterminedEventTarget:Z

.field private mHasDeterminedGestureOrientation:Z

.field private mInitialEventY:F

.field private mIsDeterminingEventTarget:Z

.field private mIsRecordingEvents:Z

.field private mMayChangeEventTarget:Z

.field private mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

.field private mPreviousEventTarget:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;

.field private final mRecordedEvents:Ljava/util/ArrayList;

.field private mSyntheticActionDownX:F

.field private mSyntheticActionDownY:F

.field private final mTouchSlopSquarePx:F

.field private mWasActionDownEventSynthetic:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 146
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;ZZ)V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mRecordedEvents:Ljava/util/ArrayList;

    .line 148
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$InternalGestureDetector;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$InternalGestureDetector;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mGestureDetector:Landroid/view/GestureDetector;

    .line 149
    iput-object p4, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    .line 153
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    .line 154
    mul-float/2addr v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mTouchSlopSquarePx:F

    .line 156
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->reset()V

    .line 157
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->handleSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->handleScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z

    move-result v0

    return v0
.end method

.method private copyEvent(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;
    .locals 1

    .prologue
    .line 397
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 398
    invoke-virtual {v0, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 399
    return-object v0
.end method

.method private determineEventTarget(F)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 467
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mGestureOrientation:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;->VERTICAL:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 470
    :goto_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->getActivePanel()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    move-result-object v3

    .line 471
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->isMaximized()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 474
    cmpg-float v3, p1, v4

    if-gez v3, :cond_3

    move v3, v1

    .line 475
    :goto_1
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->getSearchContentViewVerticalScroll()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_4

    move v0, v1

    .line 487
    :cond_0
    :goto_2
    if-eqz v0, :cond_6

    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;->SEARCH_PANEL:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;

    .line 490
    :goto_3
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mEventTarget:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;

    if-eq v0, v3, :cond_1

    .line 491
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mEventTarget:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;

    iput-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mPreviousEventTarget:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;

    .line 492
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->setEventTarget(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;)V

    .line 494
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mEventTarget:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mPreviousEventTarget:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;

    if-eq v0, v3, :cond_7

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mPreviousEventTarget:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;->UNDETERMINED:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;

    if-eq v0, v3, :cond_7

    :goto_4
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mHasChangedEventTarget:Z

    .line 497
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 467
    goto :goto_0

    :cond_3
    move v3, v2

    .line 474
    goto :goto_1

    :cond_4
    move v0, v2

    .line 475
    goto :goto_2

    .line 484
    :cond_5
    if-nez v0, :cond_0

    iput-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mMayChangeEventTarget:Z

    goto :goto_2

    .line 487
    :cond_6
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;->SEARCH_CONTENT_VIEW:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;

    goto :goto_3

    :cond_7
    move v1, v2

    .line 494
    goto :goto_4
.end method

.method private determineGestureOrientation(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 452
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 453
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 454
    const/high16 v2, 0x3fa00000    # 1.25f

    mul-float/2addr v1, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;->VERTICAL:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;

    :goto_0
    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mGestureOrientation:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;

    .line 456
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mHasDeterminedGestureOrientation:Z

    .line 457
    return-void

    .line 454
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;->HORIZONTAL:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;

    goto :goto_0
.end method

.method private handleScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 429
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mHasDeterminedGestureOrientation:Z

    if-nez v2, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->isDistanceGreaterThanTouchSlop(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 430
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->determineGestureOrientation(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 437
    :cond_0
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mMayChangeEventTarget:Z

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 438
    :goto_0
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mHasDeterminedGestureOrientation:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mHasDeterminedEventTarget:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_2

    .line 440
    :cond_1
    invoke-direct {p0, p3}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->determineEventTarget(F)V

    .line 443
    :cond_2
    return v1

    :cond_3
    move v0, v1

    .line 437
    goto :goto_0
.end method

.method private handleSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 408
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->getActivePanel()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    move-result-object v0

    .line 409
    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mPxToDp:F

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mPxToDp:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->isCoordinateInsideContent(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;->SEARCH_CONTENT_VIEW:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;

    :goto_0
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->setEventTarget(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;)V

    .line 414
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 410
    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;->SEARCH_PANEL:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;

    goto :goto_0
.end method

.method private isDistanceGreaterThanTouchSlop(FF)Z
    .locals 2

    .prologue
    .line 528
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mTouchSlopSquarePx:F

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
    .line 516
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 517
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 519
    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->isDistanceGreaterThanTouchSlop(FF)Z

    move-result v0

    return v0
.end method

.method private propagateAndRecycleEvent(Landroid/view/MotionEvent;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->propagateEvent(Landroid/view/MotionEvent;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;)V

    .line 304
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 305
    return-void
.end method

.method private propagateEvent(Landroid/view/MotionEvent;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;)V
    .locals 1

    .prologue
    .line 313
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;->SEARCH_PANEL:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;

    if-ne p2, v0, :cond_1

    .line 314
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->onTouchEventInternal(Landroid/view/MotionEvent;)Z

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;->SEARCH_CONTENT_VIEW:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;

    if-ne p2, v0, :cond_0

    .line 316
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->propagateEventToSearchContentView(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 222
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;->UNDETERMINED:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mEventTarget:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;

    .line 223
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mIsDeterminingEventTarget:Z

    .line 224
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mHasDeterminedEventTarget:Z

    .line 226
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;->UNDETERMINED:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mPreviousEventTarget:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;

    .line 227
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mHasChangedEventTarget:Z

    .line 228
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mMayChangeEventTarget:Z

    .line 230
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mWasActionDownEventSynthetic:Z

    .line 232
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;->UNDETERMINED:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mGestureOrientation:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;

    .line 233
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mHasDeterminedGestureOrientation:Z

    .line 234
    return-void
.end method

.method private resumeAndPropagateEvent(Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 249
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->getActivePanel()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    move-result-object v0

    .line 250
    if-nez v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mIsRecordingEvents:Z

    if-eqz v1, :cond_1

    .line 253
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->resumeRecordedEvents()V

    .line 256
    :cond_1
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mHasChangedEventTarget:Z

    if-eqz v1, :cond_2

    .line 260
    const/4 v1, 0x3

    invoke-direct {p0, p1, v1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->copyEvent(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mPreviousEventTarget:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;

    invoke-direct {p0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->propagateAndRecycleEvent(Landroid/view/MotionEvent;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;)V

    .line 264
    invoke-direct {p0, p1, v4}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->copyEvent(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;

    move-result-object v1

    .line 268
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mWasActionDownEventSynthetic:Z

    .line 269
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mSyntheticActionDownX:F

    .line 270
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getContentY()F

    move-result v0

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mPxToDp:F

    div-float/2addr v0, v3

    sub-float v0, v2, v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mSyntheticActionDownY:F

    .line 272
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mEventTarget:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;

    invoke-direct {p0, v1, v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->propagateAndRecycleEvent(Landroid/view/MotionEvent;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;)V

    .line 274
    iput-boolean v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mHasChangedEventTarget:Z

    .line 277
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mEventTarget:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->propagateEvent(Landroid/view/MotionEvent;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;)V

    goto :goto_0
.end method

.method private resumeRecordedEvents()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 284
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mRecordedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    .line 285
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mRecordedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mEventTarget:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;

    invoke-direct {p0, v0, v4}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->propagateAndRecycleEvent(Landroid/view/MotionEvent;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;)V

    .line 284
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 288
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mRecordedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 289
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mIsRecordingEvents:Z

    .line 290
    return-void
.end method

.method private setEventTarget(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;)V
    .locals 1

    .prologue
    .line 504
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mEventTarget:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;

    .line 506
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mIsDeterminingEventTarget:Z

    .line 507
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mHasDeterminedEventTarget:Z

    .line 508
    return-void
.end method


# virtual methods
.method protected getSearchContentViewVerticalScroll()F
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->getActivePanel()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    move-result-object v0

    .line 167
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 169
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getContentVerticalScroll()F

    move-result v0

    goto :goto_0
.end method

.method public onTouchEventInternal(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 176
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mIsDeterminingEventTarget:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mInitialEventY:F

    .line 178
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->getActivePanel()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    move-result-object v1

    .line 179
    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mPxToDp:F

    mul-float/2addr v2, v3

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mInitialEventY:F

    iget v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mPxToDp:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->isCoordinateInsideContent(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 185
    iput-boolean v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mIsDeterminingEventTarget:Z

    .line 186
    iput-boolean v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mMayChangeEventTarget:Z

    .line 196
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 198
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mHasDeterminedEventTarget:Z

    if-eqz v1, :cond_4

    .line 201
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->resumeAndPropagateEvent(Landroid/view/MotionEvent;)V

    .line 210
    :goto_1
    if-eq v0, v5, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 211
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->reset()V

    .line 214
    :cond_2
    return v5

    .line 190
    :cond_3
    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;->SEARCH_PANEL:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->setEventTarget(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$EventTarget;)V

    .line 191
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mMayChangeEventTarget:Z

    goto :goto_0

    .line 205
    :cond_4
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 206
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mRecordedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    iput-boolean v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mIsRecordingEvents:Z

    goto :goto_1
.end method

.method protected propagateEventToSearchContentView(Landroid/view/MotionEvent;)V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 326
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->getActivePanel()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    move-result-object v10

    .line 327
    if-nez v10, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    .line 332
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mGestureOrientation:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;->HORIZONTAL:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter$GestureOrientation;

    if-ne v0, v1, :cond_6

    invoke-virtual {v10}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->isMaximized()Z

    move-result v0

    if-nez v0, :cond_6

    .line 334
    const/4 v0, 0x6

    if-eq v11, v0, :cond_0

    const/4 v0, 0x5

    if-eq v11, v0, :cond_0

    .line 346
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mInitialEventY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    move v0, v8

    .line 360
    :goto_1
    invoke-virtual {v10}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getContentX()F

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mPxToDp:F

    div-float/2addr v1, v2

    .line 361
    invoke-virtual {v10}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getContentY()F

    move-result v2

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mPxToDp:F

    div-float/2addr v2, v3

    .line 364
    neg-float v1, v1

    neg-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 367
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mWasActionDownEventSynthetic:Z

    if-eqz v1, :cond_4

    if-ne v11, v8, :cond_4

    .line 368
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mSyntheticActionDownX:F

    sub-float/2addr v1, v2

    .line 369
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mSyntheticActionDownY:F

    sub-float/2addr v2, v3

    .line 374
    invoke-direct {p0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->isDistanceGreaterThanTouchSlop(FF)Z

    move-result v1

    if-nez v1, :cond_5

    .line 375
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 376
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;

    invoke-interface {v1, p1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;->propagateEvent(Landroid/view/MotionEvent;)Z

    :goto_2
    move v9, v8

    .line 384
    :cond_2
    :goto_3
    if-nez v9, :cond_3

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;

    invoke-interface {v1, p1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;->propagateEvent(Landroid/view/MotionEvent;)Z

    .line 387
    :cond_3
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 379
    :cond_4
    if-nez v11, :cond_2

    .line 380
    invoke-virtual {v10}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->onTouchSearchContentViewAck()V

    goto :goto_3

    :cond_5
    move v8, v9

    goto :goto_2

    :cond_6
    move v0, v9

    goto :goto_1
.end method
