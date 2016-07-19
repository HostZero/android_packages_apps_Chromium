.class public Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;
.super Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;
.source "GestureEventFilter.java"


# instance fields
.field private mButtons:I

.field private final mDetector:Landroid/view/GestureDetector;

.field private final mHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;

.field private mInLongPress:Z

.field private mLongPressHandler:Landroid/os/Handler;

.field private mLongPressRunnable:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$LongPressRunnable;

.field private final mLongPressTimeoutMs:I

.field private final mScaledTouchSlop:I

.field private mSeenFirstScrollEvent:Z

.field private mSingleInput:Z

.field private final mUseDefaultLongPress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;Z)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;Z)V
    .locals 6

    .prologue
    .line 75
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;ZZ)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;ZZ)V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p4}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;Z)V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mSingleInput:Z

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mButtons:I

    .line 26
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$LongPressRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$LongPressRunnable;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mLongPressRunnable:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$LongPressRunnable;

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mLongPressHandler:Landroid/os/Handler;

    .line 87
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mScaledTouchSlop:I

    .line 88
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mLongPressTimeoutMs:I

    .line 89
    iput-boolean p5, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mUseDefaultLongPress:Z

    .line 90
    iput-object p3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 93
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$1;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mDetector:Landroid/view/GestureDetector;

    .line 171
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mDetector:Landroid/view/GestureDetector;

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mUseDefaultLongPress:Z

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 172
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->longPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;)Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mSeenFirstScrollEvent:Z

    return v0
.end method

.method static synthetic access$202(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;Z)Z
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mSeenFirstScrollEvent:Z

    return p1
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mScaledTouchSlop:I

    return v0
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;)Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;)Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mSingleInput:Z

    return v0
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;)Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mInLongPress:Z

    return v0
.end method

.method static synthetic access$602(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;Z)Z
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mInLongPress:Z

    return p1
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mButtons:I

    return v0
.end method

.method static synthetic access$702(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;I)I
    .locals 0

    .prologue
    .line 16
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mButtons:I

    return p1
.end method

.method private cancelLongPress()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mLongPressHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mLongPressRunnable:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$LongPressRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 188
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mLongPressRunnable:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$LongPressRunnable;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$LongPressRunnable;->cancel()V

    .line 189
    return-void
.end method

.method private longPress(Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    .line 175
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mSingleInput:Z

    if-eqz v0, :cond_0

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mInLongPress:Z

    .line 177
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mPxToDp:F

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mPxToDp:F

    mul-float/2addr v2, v3

    invoke-interface {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;->onLongPress(FF)V

    .line 179
    :cond_0
    return-void
.end method


# virtual methods
.method public onInterceptTouchEventInternal(Landroid/view/MotionEvent;Z)Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEventInternal(Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 197
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mUseDefaultLongPress:Z

    if-nez v0, :cond_0

    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v6, :cond_3

    .line 200
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mLongPressRunnable:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$LongPressRunnable;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$LongPressRunnable;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->cancelLongPress()V

    .line 230
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v6, :cond_9

    .line 231
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mPxToDp:F

    mul-float/2addr v1, v2

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mPxToDp:F

    mul-float/2addr v2, v3

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mPxToDp:F

    mul-float/2addr v3, v4

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mPxToDp:F

    mul-float/2addr v4, v5

    const/4 v5, 0x5

    if-ne v8, v5, :cond_8

    move v5, v6

    :goto_1
    invoke-interface/range {v0 .. v5}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;->onPinch(FFFFZ)V

    .line 234
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v7}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 235
    iput-boolean v7, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mSingleInput:Z

    .line 240
    :goto_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 243
    if-eq v8, v6, :cond_1

    if-ne v8, v9, :cond_2

    .line 244
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;->onUpOrCancel()V

    .line 246
    :cond_2
    return v6

    .line 203
    :cond_3
    if-nez v8, :cond_5

    .line 205
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mLongPressRunnable:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$LongPressRunnable;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$LongPressRunnable;->isPending()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 206
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->cancelLongPress()V

    .line 208
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mLongPressRunnable:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$LongPressRunnable;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$LongPressRunnable;->init(Landroid/view/MotionEvent;)V

    .line 209
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mLongPressHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mLongPressRunnable:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$LongPressRunnable;

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mLongPressTimeoutMs:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 210
    :cond_5
    if-eq v8, v6, :cond_6

    if-ne v8, v9, :cond_7

    .line 211
    :cond_6
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->cancelLongPress()V

    goto :goto_0

    .line 212
    :cond_7
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mLongPressRunnable:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$LongPressRunnable;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$LongPressRunnable;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mLongPressRunnable:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$LongPressRunnable;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter$LongPressRunnable;->getInitialEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    .line 216
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    .line 217
    mul-float/2addr v1, v1

    mul-float/2addr v0, v0

    add-float/2addr v0, v1

    .line 220
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mScaledTouchSlop:I

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mScaledTouchSlop:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 221
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->cancelLongPress()V

    goto/16 :goto_0

    :cond_8
    move v5, v7

    .line 231
    goto :goto_1

    .line 237
    :cond_9
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mDetector:Landroid/view/GestureDetector;

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mUseDefaultLongPress:Z

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 238
    iput-boolean v6, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;->mSingleInput:Z

    goto :goto_2
.end method
