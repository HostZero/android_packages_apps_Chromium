.class Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;
.super Ljava/lang/Object;
.source "StackScroller.java"


# static fields
.field private static final DECELERATION_RATE:F

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F


# instance fields
.field private mCurrVelocity:F

.field private mCurrentPosition:I

.field private mDeceleration:F

.field private mDuration:I

.field private mFinal:I

.field private mFinished:Z

.field private final mFlingFriction:F

.field private mOver:I

.field private final mPhysicalCoeff:F

.field private mSplineDistance:I

.field private mSplineDuration:I

.field private mStart:I

.field private mStartTime:J

.field private mState:I

.field private mVelocity:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const v13, 0x3e333333    # 0.175f

    const/4 v4, 0x0

    const-wide v14, 0x3ee4f8b588e368f1L    # 1.0E-5

    const/16 v12, 0x64

    const/high16 v1, 0x3f800000    # 1.0f

    .line 326
    const-wide v2, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double/2addr v2, v6

    double-to-float v0, v2

    sput v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->DECELERATION_RATE:F

    .line 334
    const/16 v0, 0x65

    new-array v0, v0, [F

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->SPLINE_POSITION:[F

    .line 335
    const/16 v0, 0x65

    new-array v0, v0, [F

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->SPLINE_TIME:[F

    .line 344
    const/4 v0, 0x0

    move v5, v0

    move v2, v4

    :goto_0
    if-ge v5, v12, :cond_4

    .line 345
    int-to-float v0, v5

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v6, v0, v3

    move v0, v1

    move v3, v2

    .line 350
    :goto_1
    sub-float v2, v0, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v2, v7

    add-float/2addr v2, v3

    .line 351
    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v7, v2

    sub-float v8, v1, v2

    mul-float/2addr v7, v8

    .line 352
    sub-float v8, v1, v2

    mul-float/2addr v8, v13

    const v9, 0x3eb33334    # 0.35000002f

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    mul-float/2addr v8, v7

    mul-float v9, v2, v2

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    .line 353
    sub-float v9, v8, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v10, v9

    cmpg-double v9, v10, v14

    if-ltz v9, :cond_1

    .line 354
    cmpl-float v7, v8, v6

    if-lez v7, :cond_0

    move v0, v2

    .line 355
    goto :goto_1

    :cond_0
    move v3, v2

    .line 357
    goto :goto_1

    .line 360
    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->SPLINE_POSITION:[F

    sub-float v8, v1, v2

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    add-float/2addr v8, v2

    mul-float/2addr v7, v8

    mul-float v8, v2, v2

    mul-float/2addr v2, v8

    add-float/2addr v2, v7

    aput v2, v0, v5

    move v0, v1

    .line 365
    :goto_2
    sub-float v2, v0, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v2, v7

    add-float/2addr v2, v4

    .line 366
    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v7, v2

    sub-float v8, v1, v2

    mul-float/2addr v7, v8

    .line 367
    sub-float v8, v1, v2

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    add-float/2addr v8, v2

    mul-float/2addr v8, v7

    mul-float v9, v2, v2

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    .line 368
    sub-float v9, v8, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v10, v9

    cmpg-double v9, v10, v14

    if-ltz v9, :cond_3

    .line 369
    cmpl-float v7, v8, v6

    if-lez v7, :cond_2

    move v0, v2

    .line 370
    goto :goto_2

    :cond_2
    move v4, v2

    .line 372
    goto :goto_2

    .line 375
    :cond_3
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->SPLINE_TIME:[F

    sub-float v6, v1, v2

    mul-float/2addr v6, v13

    const v8, 0x3eb33334    # 0.35000002f

    mul-float/2addr v8, v2

    add-float/2addr v6, v8

    mul-float/2addr v6, v7

    mul-float v7, v2, v2

    mul-float/2addr v2, v7

    add-float/2addr v2, v6

    aput v2, v0, v5

    .line 344
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v2, v3

    goto/16 :goto_0

    .line 377
    :cond_4
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->SPLINE_POSITION:[F

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->SPLINE_TIME:[F

    aput v1, v2, v12

    aput v1, v0, v12

    .line 378
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFlingFriction:F

    .line 318
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mState:I

    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFinished:Z

    .line 382
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    .line 383
    const v1, 0x43c10b3d

    mul-float/2addr v0, v1

    const v1, 0x3f570a3d    # 0.84f

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mPhysicalCoeff:F

    .line 386
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;)Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFinished:Z

    return v0
.end method

.method static synthetic access$002(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;Z)Z
    .locals 0

    .prologue
    .line 277
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFinished:Z

    return p1
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;)I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;)I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFinal:I

    return v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;)J
    .locals 2

    .prologue
    .line 277
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;)I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mDuration:I

    return v0
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;)F
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mCurrVelocity:F

    return v0
.end method

.method private adjustDuration(III)V
    .locals 6

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    .line 404
    sub-int v0, p2, p1

    .line 405
    sub-int v1, p3, p1

    .line 406
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 407
    mul-float v1, v4, v0

    float-to-int v1, v1

    .line 408
    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    .line 409
    int-to-float v2, v1

    div-float/2addr v2, v4

    .line 410
    add-int/lit8 v3, v1, 0x1

    int-to-float v3, v3

    div-float/2addr v3, v4

    .line 411
    sget-object v4, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->SPLINE_TIME:[F

    aget v4, v4, v1

    .line 412
    sget-object v5, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->SPLINE_TIME:[F

    add-int/lit8 v1, v1, 0x1

    aget v1, v5, v1

    .line 413
    sub-float/2addr v0, v2

    sub-float v2, v3, v2

    div-float/2addr v0, v2

    sub-float/2addr v1, v4

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    .line 414
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mDuration:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mDuration:I

    .line 416
    :cond_0
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .locals 6

    .prologue
    .line 533
    neg-int v0, p3

    int-to-float v0, v0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mDeceleration:F

    div-float/2addr v0, v1

    .line 534
    mul-int v1, p3, p3

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mDeceleration:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v1, v2

    .line 535
    sub-int v2, p2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    .line 536
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    add-float/2addr v1, v2

    float-to-double v2, v1

    mul-double/2addr v2, v4

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mDeceleration:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v4, v1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 538
    iget-wide v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mStartTime:J

    const/high16 v4, 0x447a0000    # 1000.0f

    sub-float v0, v1, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mStartTime:J

    .line 539
    iput p2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mStart:I

    .line 540
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mDeceleration:F

    neg-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mVelocity:I

    .line 541
    return-void
.end method

.method private static getDeceleration(I)F
    .locals 1

    .prologue
    .line 396
    if-lez p0, :cond_0

    const/high16 v0, -0x3b060000    # -2000.0f

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x44fa0000    # 2000.0f

    goto :goto_0
.end method

.method private getSplineDeceleration(I)D
    .locals 3

    .prologue
    .line 514
    const v0, 0x3eb33333    # 0.35f

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFlingFriction:F

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mPhysicalCoeff:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(I)D
    .locals 8

    .prologue
    .line 518
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    .line 519
    sget v2, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 520
    iget v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFlingFriction:F

    iget v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mPhysicalCoeff:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    sget v6, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->DECELERATION_RATE:F

    float-to-double v6, v6

    div-double v2, v6, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    return-wide v0
.end method

.method private getSplineFlingDuration(I)I
    .locals 6

    .prologue
    .line 526
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    .line 527
    sget v2, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 528
    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    return v0
.end method

.method private onEdgeReached()V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 575
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mVelocity:I

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mVelocity:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mDeceleration:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v1, v3

    div-float/2addr v0, v1

    .line 576
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mVelocity:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 578
    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mOver:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 580
    neg-float v0, v1

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mVelocity:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mVelocity:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mOver:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    div-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mDeceleration:F

    .line 581
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mOver:I

    int-to-float v0, v0

    .line 584
    :cond_0
    float-to-int v1, v0

    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mOver:I

    .line 585
    const/4 v1, 0x2

    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mState:I

    .line 586
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mStart:I

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mVelocity:I

    if-lez v2, :cond_1

    :goto_0
    float-to-int v0, v0

    add-int/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFinal:I

    .line 587
    const/high16 v0, 0x447a0000    # 1000.0f

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mVelocity:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mDeceleration:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    neg-int v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mDuration:I

    .line 588
    return-void

    .line 586
    :cond_1
    neg-float v0, v0

    goto :goto_0
.end method

.method private startAfterEdge(IIIIJ)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 550
    if-le p1, p2, :cond_0

    if-ge p1, p3, :cond_0

    .line 551
    const-string/jumbo v1, "StackScroller"

    const-string/jumbo v2, "startAfterEdge called from a valid position"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFinished:Z

    .line 571
    :goto_0
    return-void

    .line 555
    :cond_0
    if-le p1, p3, :cond_1

    move v4, v0

    .line 556
    :goto_1
    if-eqz v4, :cond_2

    move v2, p3

    .line 557
    :goto_2
    sub-int v3, p1, v2

    .line 558
    mul-int v5, v3, p4

    if-ltz v5, :cond_3

    .line 559
    :goto_3
    if-eqz v0, :cond_4

    .line 561
    invoke-direct {p0, p1, v2, p4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->startBounceAfterEdge(III)V

    goto :goto_0

    :cond_1
    move v4, v1

    .line 555
    goto :goto_1

    :cond_2
    move v2, p2

    .line 556
    goto :goto_2

    :cond_3
    move v0, v1

    .line 558
    goto :goto_3

    .line 563
    :cond_4
    invoke-direct {p0, p4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->getSplineFlingDistance(I)D

    move-result-wide v0

    .line 564
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v6, v3

    cmpl-double v0, v0, v6

    if-lez v0, :cond_7

    .line 565
    if-eqz v4, :cond_5

    move v3, p2

    :goto_4
    if-eqz v4, :cond_6

    move v4, p1

    :goto_5
    iget v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mOver:I

    move-object v0, p0

    move v1, p1

    move v2, p4

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->fling(IIIIIJ)V

    goto :goto_0

    :cond_5
    move v3, p1

    goto :goto_4

    :cond_6
    move v4, p3

    goto :goto_5

    .line 568
    :cond_7
    invoke-direct {p0, p1, v2, p4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->startSpringback(III)V

    goto :goto_0
.end method

.method private startBounceAfterEdge(III)V
    .locals 1

    .prologue
    .line 544
    if-nez p3, :cond_0

    sub-int v0, p1, p2

    :goto_0
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mDeceleration:F

    .line 545
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->fitOnBounceCurve(III)V

    .line 546
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->onEdgeReached()V

    .line 547
    return-void

    :cond_0
    move v0, p3

    .line 544
    goto :goto_0
.end method

.method private startSpringback(III)V
    .locals 6

    .prologue
    .line 465
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFinished:Z

    .line 466
    const/4 v0, 0x1

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mState:I

    .line 467
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mStart:I

    .line 468
    iput p2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFinal:I

    .line 469
    sub-int v0, p1, p2

    .line 470
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->getDeceleration(I)F

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mDeceleration:F

    .line 472
    neg-int v1, v0

    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mVelocity:I

    .line 473
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mOver:I

    .line 474
    const-wide v2, 0x408f400000000000L    # 1000.0

    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    int-to-double v0, v0

    mul-double/2addr v0, v4

    iget v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mDeceleration:F

    float-to-double v4, v4

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mDuration:I

    .line 475
    return-void
.end method


# virtual methods
.method continueWhenFinished(J)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 591
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 615
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->update(J)Z

    .line 616
    const/4 v0, 0x1

    :cond_0
    :pswitch_0
    return v0

    .line 594
    :pswitch_1
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mDuration:I

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mSplineDuration:I

    if-ge v1, v2, :cond_0

    .line 596
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFinal:I

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mStart:I

    .line 598
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mCurrVelocity:F

    float-to-int v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mVelocity:I

    .line 599
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mVelocity:I

    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mDeceleration:F

    .line 600
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mStartTime:J

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mStartTime:J

    .line 601
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->onEdgeReached()V

    goto :goto_0

    .line 608
    :pswitch_2
    iget-wide v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mStartTime:J

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mDuration:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mStartTime:J

    .line 609
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFinal:I

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mStart:I

    invoke-direct {p0, v1, v2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->startSpringback(III)V

    goto :goto_0

    .line 591
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method finish()V
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFinal:I

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mCurrentPosition:I

    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFinished:Z

    .line 438
    return-void
.end method

.method fling(IIIIIJ)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 478
    iput p5, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mOver:I

    .line 479
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFinished:Z

    .line 480
    iput p2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mVelocity:I

    int-to-float v0, p2

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mCurrVelocity:F

    .line 481
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mSplineDuration:I

    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mDuration:I

    .line 482
    iput-wide p6, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mStartTime:J

    .line 483
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mStart:I

    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mCurrentPosition:I

    .line 485
    if-gt p1, p4, :cond_0

    if-ge p1, p3, :cond_2

    :cond_0
    move-object v1, p0

    move v2, p1

    move v3, p3

    move v4, p4

    move v5, p2

    move-wide v6, p6

    .line 486
    invoke-direct/range {v1 .. v7}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->startAfterEdge(IIIIJ)V

    .line 511
    :cond_1
    :goto_0
    return-void

    .line 490
    :cond_2
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mState:I

    .line 491
    const-wide/16 v0, 0x0

    .line 493
    if-eqz p2, :cond_3

    .line 494
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->getSplineFlingDuration(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mSplineDuration:I

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mDuration:I

    .line 495
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->getSplineFlingDistance(I)D

    move-result-wide v0

    .line 498
    :cond_3
    int-to-float v2, p2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mSplineDistance:I

    .line 499
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mSplineDistance:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFinal:I

    .line 502
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFinal:I

    if-ge v0, p3, :cond_4

    .line 503
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mStart:I

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFinal:I

    invoke-direct {p0, v0, v1, p3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->adjustDuration(III)V

    .line 504
    iput p3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFinal:I

    .line 507
    :cond_4
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFinal:I

    if-le v0, p4, :cond_1

    .line 508
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mStart:I

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFinal:I

    invoke-direct {p0, v0, v1, p4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->adjustDuration(III)V

    .line 509
    iput p4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFinal:I

    goto :goto_0
.end method

.method setFinalPosition(I)V
    .locals 1

    .prologue
    .line 441
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFinal:I

    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFinished:Z

    .line 443
    return-void
.end method

.method springback(IIIJ)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 446
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFinished:Z

    .line 448
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFinal:I

    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mStart:I

    .line 449
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mVelocity:I

    .line 451
    iput-wide p4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mStartTime:J

    .line 452
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mDuration:I

    .line 454
    if-ge p1, p2, :cond_1

    .line 455
    invoke-direct {p0, p1, p2, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->startSpringback(III)V

    .line 460
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFinished:Z

    if-nez v2, :cond_2

    :goto_1
    return v0

    .line 456
    :cond_1
    if-le p1, p3, :cond_0

    .line 457
    invoke-direct {p0, p1, p3, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->startSpringback(III)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 460
    goto :goto_1
.end method

.method startScroll(IIJI)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 419
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFinished:Z

    .line 421
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mStart:I

    .line 422
    add-int v0, p1, p2

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFinal:I

    .line 424
    iput-wide p3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mStartTime:J

    .line 425
    iput p5, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mDuration:I

    .line 428
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mDeceleration:F

    .line 429
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mVelocity:I

    .line 430
    return-void
.end method

.method update(J)Z
    .locals 9

    .prologue
    const/high16 v7, 0x447a0000    # 1000.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x42c80000    # 100.0f

    .line 625
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mStartTime:J

    sub-long v2, p1, v0

    .line 627
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mDuration:I

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 628
    const/4 v0, 0x0

    .line 671
    :goto_0
    return v0

    .line 631
    :cond_0
    const-wide/16 v0, 0x0

    .line 632
    iget v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mState:I

    packed-switch v4, :pswitch_data_0

    .line 669
    :goto_1
    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mStart:I

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/2addr v0, v2

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mCurrentPosition:I

    .line 671
    const/4 v0, 0x1

    goto :goto_0

    .line 634
    :pswitch_0
    long-to-float v0, v2

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mSplineDuration:I

    int-to-float v1, v1

    div-float v2, v0, v1

    .line 635
    mul-float v0, v5, v2

    float-to-int v3, v0

    .line 636
    const/high16 v1, 0x3f800000    # 1.0f

    .line 637
    const/4 v0, 0x0

    .line 638
    const/16 v4, 0x64

    if-ge v3, v4, :cond_1

    .line 639
    int-to-float v0, v3

    div-float v1, v0, v5

    .line 640
    add-int/lit8 v0, v3, 0x1

    int-to-float v0, v0

    div-float/2addr v0, v5

    .line 641
    sget-object v4, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->SPLINE_POSITION:[F

    aget v4, v4, v3

    .line 642
    sget-object v5, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->SPLINE_POSITION:[F

    add-int/lit8 v3, v3, 0x1

    aget v3, v5, v3

    .line 643
    sub-float/2addr v3, v4

    sub-float/2addr v0, v1

    div-float v0, v3, v0

    .line 644
    sub-float v1, v2, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v4

    .line 647
    :cond_1
    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mSplineDistance:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-double v2, v1

    .line 648
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mSplineDistance:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mSplineDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v7

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mCurrVelocity:F

    move-wide v0, v2

    .line 649
    goto :goto_1

    .line 653
    :pswitch_1
    long-to-float v0, v2

    div-float/2addr v0, v7

    .line 654
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mVelocity:I

    int-to-float v1, v1

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mDeceleration:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mCurrVelocity:F

    .line 655
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mVelocity:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mDeceleration:F

    mul-float/2addr v2, v0

    mul-float/2addr v0, v2

    div-float/2addr v0, v6

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 656
    goto :goto_1

    .line 660
    :pswitch_2
    long-to-float v0, v2

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mDuration:I

    int-to-float v1, v1

    div-float v2, v0, v1

    .line 661
    mul-float v3, v2, v2

    .line 662
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mVelocity:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v4

    .line 663
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mOver:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, v3

    mul-float v5, v2, v6

    mul-float/2addr v5, v3

    sub-float/2addr v1, v5

    mul-float/2addr v0, v1

    float-to-double v0, v0

    .line 664
    iget v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mOver:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x40c00000    # 6.0f

    mul-float/2addr v4, v5

    neg-float v2, v2

    add-float/2addr v2, v3

    mul-float/2addr v2, v4

    iput v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mCurrVelocity:F

    goto/16 :goto_1

    .line 632
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method updateScroll(F)V
    .locals 3

    .prologue
    .line 389
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mStart:I

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mFinal:I

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller$SplineStackScroller;->mCurrentPosition:I

    .line 390
    return-void
.end method
