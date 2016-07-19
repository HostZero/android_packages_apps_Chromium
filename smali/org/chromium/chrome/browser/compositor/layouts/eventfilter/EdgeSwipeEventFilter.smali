.class public Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;
.super Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;
.source "EdgeSwipeEventFilter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAN_SIDE_SWIPE_ANGLE_THRESHOLD:D


# instance fields
.field private final mAccumulatedEvents:Ljava/util/ArrayList;

.field private mAccumulatingEvents:Z

.field private final mEdgeSwipeHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;

.field private mEdgeSwipeStarted:Z

.field private mEnableTabSwiping:Z

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mInDoubleTap:Z

.field private mInLongPress:Z

.field private mPropagateEventsToHostView:Z

.field private mScrollDirection:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

.field private mScrollStarted:Z

.field private final mSwipeTimeConstantPx:D

.field private mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    const-class v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->$assertionsDisabled:Z

    .line 27
    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    sput-wide v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->TAN_SIDE_SWIPE_ANGLE_THRESHOLD:D

    return-void

    .line 21
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;Z)V

    .line 56
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mInLongPress:Z

    .line 57
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mInDoubleTap:Z

    .line 62
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mAccumulatingEvents:Z

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mAccumulatedEvents:Ljava/util/ArrayList;

    .line 76
    iput-boolean v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mEnableTabSwiping:Z

    .line 77
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mScrollDirection:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    .line 79
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mPxToDp:F

    float-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mSwipeTimeConstantPx:D

    .line 81
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ViewScrollerGestureDetector;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mGestureDetector:Landroid/view/GestureDetector;

    .line 82
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v4}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 84
    iput-object p3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mEdgeSwipeHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;

    .line 85
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mInDoubleTap:Z

    return v0
.end method

.method static synthetic access$1000()D
    .locals 2

    .prologue
    .line 22
    sget-wide v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->TAN_SIDE_SWIPE_ANGLE_THRESHOLD:D

    return-wide v0
.end method

.method static synthetic access$102(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mInDoubleTap:Z

    return p1
.end method

.method static synthetic access$1102(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mPropagateEventsToHostView:Z

    return p1
.end method

.method static synthetic access$1200(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;FF)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->scrollStarted(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;FF)V

    return-void
.end method

.method static synthetic access$1300(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;FFFFFF)V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p6}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->flingOccurred(FFFFFF)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mAccumulatedEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mScrollStarted:Z

    return v0
.end method

.method static synthetic access$302(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mScrollStarted:Z

    return p1
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;)Z
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->propagateAccumulatedEventsAndClear()Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mInLongPress:Z

    return p1
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;FFFFFF)V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p6}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->scrollUpdated(FFFFFF)V

    return-void
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;)Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mScrollDirection:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    return-object v0
.end method

.method static synthetic access$702(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;)Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mScrollDirection:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    return-object p1
.end method

.method static synthetic access$800(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mAccumulatingEvents:Z

    return v0
.end method

.method static synthetic access$802(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mAccumulatingEvents:Z

    return p1
.end method

.method static synthetic access$900(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->checkForFastScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private calculateBiasedPosition(FFF)F
    .locals 8

    .prologue
    .line 213
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 214
    :cond_0
    sub-float v0, p2, p1

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mPxToDp:F

    mul-float/2addr v0, v1

    div-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 215
    sub-float v1, p2, p1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-double v2, v1

    iget-wide v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mSwipeTimeConstantPx:D

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v6

    mul-double/2addr v0, v4

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 217
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mPxToDp:F

    mul-float/2addr v1, p1

    sub-float v0, v1, v0

    return v0
.end method

.method private checkForFastScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const v2, 0x40cccccd    # 6.4f

    .line 183
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-float v1, v4

    .line 184
    const/4 v3, 0x0

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v0

    .line 187
    :cond_1
    sget-object v3, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$1;->$SwitchMap$org$chromium$chrome$browser$compositor$layouts$eventfilter$EdgeSwipeEventFilter$ScrollDirection:[I

    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mScrollDirection:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 209
    :goto_1
    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 189
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mCurrentTouchOffsetX:F

    add-float/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mCurrentTouchOffsetX:F

    add-float/2addr v4, v5

    invoke-direct {p0, v3, v4, v1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->calculateBiasedPosition(FFF)F

    move-result v1

    goto :goto_1

    .line 194
    :pswitch_1
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;

    invoke-interface {v3}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;->getViewportWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mPxToDp:F

    mul-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mCurrentTouchOffsetX:F

    add-float/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mCurrentTouchOffsetX:F

    add-float/2addr v5, v6

    invoke-direct {p0, v4, v5, v1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->calculateBiasedPosition(FFF)F

    move-result v1

    sub-float v1, v3, v1

    .line 198
    goto :goto_1

    .line 200
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mCurrentTouchOffsetY:F

    add-float/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mCurrentTouchOffsetY:F

    add-float/2addr v4, v5

    invoke-direct {p0, v3, v4, v1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->calculateBiasedPosition(FFF)F

    move-result v1

    goto :goto_1

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private flingOccurred(FFFFFF)V
    .locals 7

    .prologue
    .line 154
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mEdgeSwipeHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mEdgeSwipeStarted:Z

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mEdgeSwipeHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;->swipeFlingOccurred(FFFFFF)V

    .line 157
    :cond_0
    return-void
.end method

.method private propagateAccumulatedEventsAndClear()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 226
    move v1, v2

    move v3, v4

    .line 227
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mAccumulatedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 228
    iget-object v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mAccumulatedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-interface {v5, v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;->propagateEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    move v3, v4

    .line 227
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v3, v2

    .line 228
    goto :goto_1

    .line 230
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mAccumulatedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 231
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mAccumulatingEvents:Z

    .line 232
    return v3
.end method

.method private scrollFinished()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mEdgeSwipeHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mEdgeSwipeStarted:Z

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mEdgeSwipeHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;->swipeFinished()V

    .line 125
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mEdgeSwipeStarted:Z

    .line 126
    return-void
.end method

.method private scrollStarted(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;FF)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mEdgeSwipeHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mEdgeSwipeHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;->swipeStarted(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;FF)V

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mEdgeSwipeStarted:Z

    .line 115
    :cond_0
    return-void
.end method

.method private scrollUpdated(FFFFFF)V
    .locals 7

    .prologue
    .line 139
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mEdgeSwipeHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mEdgeSwipeStarted:Z

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mEdgeSwipeHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;->swipeUpdated(FFFFFF)V

    .line 142
    :cond_0
    return-void
.end method


# virtual methods
.method public onInterceptTouchEventInternal(Landroid/view/MotionEvent;Z)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/high16 v6, 0x41f00000    # 30.0f

    .line 237
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    if-nez v0, :cond_0

    move v0, v1

    .line 268
    :goto_0
    return v0

    .line 239
    :cond_0
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mPropagateEventsToHostView:Z

    .line 241
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mInLongPress:Z

    .line 242
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v0

    .line 243
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 244
    iget-boolean v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mEnableTabSwiping:Z

    if-eqz v4, :cond_4

    if-nez p2, :cond_4

    if-nez v3, :cond_4

    if-lez v0, :cond_4

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mScrollDirection:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    if-ne v0, v3, :cond_4

    .line 249
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    .line 250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mCurrentTouchOffsetX:F

    add-float/2addr v3, v4

    iget v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mPxToDp:F

    mul-float/2addr v3, v4

    cmpg-float v3, v3, v6

    if-gez v3, :cond_5

    .line 251
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->RIGHT:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    .line 260
    :cond_1
    :goto_1
    sget-object v3, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    if-eq v0, v3, :cond_3

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mEdgeSwipeHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mEdgeSwipeHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;

    invoke-interface {v3, v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;->isSwipeEnabled(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 262
    :cond_2
    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mScrollDirection:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    .line 265
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mScrollDirection:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    if-eq v0, v3, :cond_4

    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mPropagateEventsToHostView:Z

    :cond_4
    move v0, v2

    .line 268
    goto :goto_0

    .line 252
    :cond_5
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;

    invoke-interface {v3}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;->getViewportWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mPxToDp:F

    mul-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mCurrentTouchOffsetX:F

    add-float/2addr v4, v5

    iget v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mPxToDp:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    cmpg-float v3, v3, v6

    if-gez v3, :cond_6

    .line 254
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->LEFT:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    goto :goto_1

    .line 255
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mCurrentTouchOffsetY:F

    add-float/2addr v3, v4

    iget v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mPxToDp:F

    mul-float/2addr v3, v4

    cmpg-float v3, v3, v6

    if-gez v3, :cond_1

    .line 256
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->DOWN:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    goto :goto_1
.end method

.method public onTouchEventInternal(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 273
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mPropagateEventsToHostView:Z

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;->propagateEvent(Landroid/view/MotionEvent;)Z

    .line 320
    :cond_0
    :goto_0
    return v8

    .line 280
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 281
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mScrollStarted:Z

    if-nez v1, :cond_2

    .line 284
    iput-boolean v8, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mPropagateEventsToHostView:Z

    .line 286
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mScrollDirection:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    .line 287
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 293
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->propagateAccumulatedEventsAndClear()Z

    .line 294
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;->propagateEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 298
    :cond_2
    if-ne v0, v8, :cond_4

    .line 299
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mInLongPress:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mInDoubleTap:Z

    if-eqz v1, :cond_4

    .line 300
    :cond_3
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;

    invoke-interface {v1, p1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;->propagateEvent(Landroid/view/MotionEvent;)Z

    .line 301
    iput-boolean v7, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mInLongPress:Z

    .line 302
    iput-boolean v7, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mInDoubleTap:Z

    .line 306
    :cond_4
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mScrollDirection:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    if-eq v1, v2, :cond_0

    .line 307
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mAccumulatingEvents:Z

    if-eqz v1, :cond_5

    .line 308
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mAccumulatedEvents:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_5
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 312
    if-eq v0, v8, :cond_6

    if-ne v0, v4, :cond_0

    .line 313
    :cond_6
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->scrollFinished()V

    .line 314
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->propagateAccumulatedEventsAndClear()Z

    .line 316
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mScrollDirection:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    goto :goto_0
.end method

.method public setTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    .line 101
    return-void
.end method
