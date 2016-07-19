.class public Landroid/support/v4/widget/ab;
.super Landroid/view/ViewGroup;
.source "SwipeRefreshLayout.java"

# interfaces
.implements Landroid/support/v4/view/R;
.implements Landroid/support/v4/view/S;


# static fields
.field public static final DEFAULT:I = 0x1

.field public static final LARGE:I

.field private static final LAYOUT_ATTRS:[I

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mActivePointerId:I

.field private mAlphaMaxAnimation:Landroid/view/animation/Animation;

.field private mAlphaStartAnimation:Landroid/view/animation/Animation;

.field private final mAnimateToCorrectPosition:Landroid/view/animation/Animation;

.field private final mAnimateToStartPosition:Landroid/view/animation/Animation;

.field private mCircleHeight:I

.field private mCircleView:Landroid/support/v4/widget/d;

.field private mCircleViewIndex:I

.field private mCircleWidth:I

.field private mCurrentTargetOffsetTop:I

.field private final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mFrom:I

.field private mInitialDownY:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mListener:Landroid/support/v4/widget/ak;

.field private mMediumAnimationDuration:I

.field private final mNestedScrollingChildHelper$5df96aa:Landroid/support/v4/e/a;

.field private final mNestedScrollingParentHelper$39f2dfb6:Lcom/google/android/a/c;

.field private mNotify:Z

.field private mOriginalOffsetCalculated:Z

.field protected mOriginalOffsetTop:I

.field private final mParentScrollConsumed:[I

.field private mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

.field private mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

.field private mRefreshing:Z

.field private mReturningToStart:Z

.field private mScale:Z

.field private mScaleAnimation:Landroid/view/animation/Animation;

.field private mScaleDownAnimation:Landroid/view/animation/Animation;

.field private mScaleDownToStartAnimation:Landroid/view/animation/Animation;

.field private mSpinnerFinalOffset:F

.field private mStartingScale:F

.field private mTarget:Landroid/view/View;

.field private mTotalDragDistance:F

.field private mTotalUnconsumed:F

.field private mTouchSlop:I

.field private mUsingCustomStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    const-class v0, Landroid/support/v4/widget/ab;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/ab;->LOG_TAG:Ljava/lang/String;

    .line 129
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101000e

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/ab;->LAYOUT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/ab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 275
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v1, -0x1

    const/high16 v4, 0x42200000    # 40.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 284
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    iput-boolean v2, p0, Landroid/support/v4/widget/ab;->mRefreshing:Z

    .line 104
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/v4/widget/ab;->mTotalDragDistance:F

    .line 111
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v4/widget/ab;->mParentScrollConsumed:[I

    .line 116
    iput-boolean v2, p0, Landroid/support/v4/widget/ab;->mOriginalOffsetCalculated:Z

    .line 121
    iput v1, p0, Landroid/support/v4/widget/ab;->mActivePointerId:I

    .line 134
    iput v1, p0, Landroid/support/v4/widget/ab;->mCircleViewIndex:I

    .line 165
    new-instance v0, Landroid/support/v4/widget/ac;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/ac;-><init>(Landroid/support/v4/widget/ab;)V

    iput-object v0, p0, Landroid/support/v4/widget/ab;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1057
    new-instance v0, Landroid/support/v4/widget/ah;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/ah;-><init>(Landroid/support/v4/widget/ab;)V

    iput-object v0, p0, Landroid/support/v4/widget/ab;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    .line 1081
    new-instance v0, Landroid/support/v4/widget/ai;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/ai;-><init>(Landroid/support/v4/widget/ab;)V

    iput-object v0, p0, Landroid/support/v4/widget/ab;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    .line 286
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/ab;->mTouchSlop:I

    .line 288
    invoke-virtual {p0}, Landroid/support/v4/widget/ab;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/ab;->mMediumAnimationDuration:I

    .line 291
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/ab;->setWillNotDraw(Z)V

    .line 292
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Landroid/support/v4/widget/ab;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 294
    sget-object v0, Landroid/support/v4/widget/ab;->LAYOUT_ATTRS:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 295
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/ab;->setEnabled(Z)V

    .line 296
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 298
    invoke-virtual {p0}, Landroid/support/v4/widget/ab;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 299
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/ab;->mCircleWidth:I

    .line 300
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/ab;->mCircleHeight:I

    .line 302
    invoke-direct {p0}, Landroid/support/v4/widget/ab;->createProgressView()V

    .line 303
    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/ViewGroup;Z)V

    .line 305
    const/high16 v1, 0x42800000    # 64.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/ab;->mSpinnerFinalOffset:F

    .line 306
    iget v0, p0, Landroid/support/v4/widget/ab;->mSpinnerFinalOffset:F

    iput v0, p0, Landroid/support/v4/widget/ab;->mTotalDragDistance:F

    .line 307
    new-instance v0, Lcom/google/android/a/c;

    invoke-direct {v0, p0}, Lcom/google/android/a/c;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/support/v4/widget/ab;->mNestedScrollingParentHelper$39f2dfb6:Lcom/google/android/a/c;

    .line 309
    new-instance v0, Landroid/support/v4/e/a;

    invoke-direct {v0, p0}, Landroid/support/v4/e/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v4/widget/ab;->mNestedScrollingChildHelper$5df96aa:Landroid/support/v4/e/a;

    .line 310
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/ab;->setNestedScrollingEnabled(Z)V

    .line 311
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/widget/ab;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Landroid/support/v4/widget/ab;->mRefreshing:Z

    return v0
.end method

.method static synthetic access$100(Landroid/support/v4/widget/ab;)Landroid/support/v4/widget/MaterialProgressDrawable;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/support/v4/widget/ab;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ab;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/support/v4/widget/ab;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Landroid/support/v4/widget/ab;->mUsingCustomStart:Z

    return v0
.end method

.method static synthetic access$1200(Landroid/support/v4/widget/ab;)F
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Landroid/support/v4/widget/ab;->mSpinnerFinalOffset:F

    return v0
.end method

.method static synthetic access$1300(Landroid/support/v4/widget/ab;F)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ab;->moveToStart(F)V

    return-void
.end method

.method static synthetic access$1400(Landroid/support/v4/widget/ab;)F
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Landroid/support/v4/widget/ab;->mStartingScale:F

    return v0
.end method

.method static synthetic access$200(Landroid/support/v4/widget/ab;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Landroid/support/v4/widget/ab;->mNotify:Z

    return v0
.end method

.method static synthetic access$300(Landroid/support/v4/widget/ab;)Landroid/support/v4/widget/ak;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mListener:Landroid/support/v4/widget/ak;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v4/widget/ab;)Landroid/support/v4/widget/d;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/v4/widget/ab;I)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ab;->setColorViewAlpha(I)V

    return-void
.end method

.method static synthetic access$600(Landroid/support/v4/widget/ab;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Landroid/support/v4/widget/ab;->mScale:Z

    return v0
.end method

.method static synthetic access$700(Landroid/support/v4/widget/ab;F)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ab;->setAnimationProgress(F)V

    return-void
.end method

.method static synthetic access$800(Landroid/support/v4/widget/ab;)I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Landroid/support/v4/widget/ab;->mCurrentTargetOffsetTop:I

    return v0
.end method

.method static synthetic access$802(Landroid/support/v4/widget/ab;I)I
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Landroid/support/v4/widget/ab;->mCurrentTargetOffsetTop:I

    return p1
.end method

.method static synthetic access$900(Landroid/support/v4/widget/ab;IZ)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/ab;->setTargetOffsetTopAndBottom(IZ)V

    return-void
.end method

.method private animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4

    .prologue
    .line 1029
    iput p1, p0, Landroid/support/v4/widget/ab;->mFrom:I

    .line 1030
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 1031
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1032
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroid/support/v4/widget/ab;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1033
    if-eqz p2, :cond_0

    .line 1034
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/d;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1036
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->clearAnimation()V

    .line 1037
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    iget-object v1, p0, Landroid/support/v4/widget/ab;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1038
    return-void
.end method

.method private animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4

    .prologue
    .line 1041
    iget-boolean v0, p0, Landroid/support/v4/widget/ab;->mScale:Z

    if-eqz v0, :cond_0

    .line 1043
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/ab;->startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 1055
    :goto_0
    return-void

    .line 1045
    :cond_0
    iput p1, p0, Landroid/support/v4/widget/ab;->mFrom:I

    .line 1046
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 1047
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1048
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroid/support/v4/widget/ab;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1049
    if-eqz p2, :cond_1

    .line 1050
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/d;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1052
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->clearAnimation()V

    .line 1053
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    iget-object v1, p0, Landroid/support/v4/widget/ab;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private createProgressView()V
    .locals 4

    .prologue
    const v3, -0x50506

    .line 329
    new-instance v0, Landroid/support/v4/widget/d;

    invoke-virtual {p0}, Landroid/support/v4/widget/ab;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v4/widget/d;-><init>(Landroid/content/Context;IF)V

    iput-object v0, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    .line 330
    new-instance v0, Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {p0}, Landroid/support/v4/widget/ab;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/support/v4/widget/MaterialProgressDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v4/widget/ab;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    .line 331
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(I)V

    .line 332
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    iget-object v1, p0, Landroid/support/v4/widget/ab;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 333
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ab;->addView(Landroid/view/View;)V

    .line 335
    return-void
.end method

.method private ensureTarget()V
    .locals 3

    .prologue
    .line 543
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mTarget:Landroid/view/View;

    if-nez v0, :cond_0

    .line 544
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/ab;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 545
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ab;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 546
    iget-object v2, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 547
    iput-object v1, p0, Landroid/support/v4/widget/ab;->mTarget:Landroid/view/View;

    .line 552
    :cond_0
    return-void

    .line 544
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private finishSpinner(F)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 923
    iget v0, p0, Landroid/support/v4/widget/ab;->mTotalDragDistance:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 924
    invoke-direct {p0, v3, v3}, Landroid/support/v4/widget/ab;->setRefreshing(ZZ)V

    .line 953
    :goto_0
    return-void

    .line 927
    :cond_0
    iput-boolean v2, p0, Landroid/support/v4/widget/ab;->mRefreshing:Z

    .line 928
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, v1, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(FF)V

    .line 929
    const/4 v0, 0x0

    .line 930
    iget-boolean v1, p0, Landroid/support/v4/widget/ab;->mScale:Z

    if-nez v1, :cond_1

    .line 931
    new-instance v0, Landroid/support/v4/widget/ag;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/ag;-><init>(Landroid/support/v4/widget/ab;)V

    .line 950
    :cond_1
    iget v1, p0, Landroid/support/v4/widget/ab;->mCurrentTargetOffsetTop:I

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/ab;->animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 951
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(Z)V

    goto :goto_0
.end method

.method private getMotionEventY(Landroid/view/MotionEvent;I)F
    .locals 1

    .prologue
    .line 707
    invoke-static {p1, p2}, Landroid/support/v4/view/M;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 708
    if-gez v0, :cond_0

    .line 709
    const/high16 v0, -0x40800000    # -1.0f

    .line 711
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, v0}, Landroid/support/v4/view/M;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    goto :goto_0
.end method

.method private isAlphaUsedForScale()Z
    .locals 2

    .prologue
    .line 349
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAnimationRunning(Landroid/view/animation/Animation;)Z
    .locals 1

    .prologue
    .line 872
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveSpinner(F)V
    .locals 14

    .prologue
    const/high16 v6, 0x40800000    # 4.0f

    const v13, 0x3f4ccccd    # 0.8f

    const/4 v12, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v10, 0x3f800000    # 1.0f

    .line 876
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(Z)V

    .line 877
    iget v0, p0, Landroid/support/v4/widget/ab;->mTotalDragDistance:F

    div-float v0, p1, v0

    .line 879
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 880
    float-to-double v2, v1

    const-wide v4, 0x3fd999999999999aL    # 0.4

    sub-double/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-float v0, v2

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float v2, v0, v2

    .line 881
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Landroid/support/v4/widget/ab;->mTotalDragDistance:F

    sub-float v3, v0, v3

    .line 882
    iget-boolean v0, p0, Landroid/support/v4/widget/ab;->mUsingCustomStart:Z

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/support/v4/widget/ab;->mSpinnerFinalOffset:F

    iget v4, p0, Landroid/support/v4/widget/ab;->mOriginalOffsetTop:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    .line 884
    :goto_0
    mul-float v4, v0, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v3, v0

    invoke-static {v12, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 886
    div-float v4, v3, v6

    float-to-double v4, v4

    div-float/2addr v3, v6

    float-to-double v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double/2addr v4, v6

    double-to-float v3, v4

    mul-float/2addr v3, v11

    .line 888
    mul-float v4, v0, v3

    mul-float/2addr v4, v11

    .line 890
    iget v5, p0, Landroid/support/v4/widget/ab;->mOriginalOffsetTop:I

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    float-to-int v0, v0

    add-int/2addr v0, v5

    .line 892
    iget-object v1, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    invoke-virtual {v1}, Landroid/support/v4/widget/d;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 893
    iget-object v1, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/support/v4/widget/d;->setVisibility(I)V

    .line 895
    :cond_0
    iget-boolean v1, p0, Landroid/support/v4/widget/ab;->mScale:Z

    if-nez v1, :cond_1

    .line 896
    iget-object v1, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    invoke-static {v1, v10}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;F)V

    .line 897
    iget-object v1, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    invoke-static {v1, v10}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;F)V

    .line 899
    :cond_1
    iget v1, p0, Landroid/support/v4/widget/ab;->mTotalDragDistance:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_6

    .line 900
    iget-boolean v1, p0, Landroid/support/v4/widget/ab;->mScale:Z

    if-eqz v1, :cond_2

    .line 901
    iget v1, p0, Landroid/support/v4/widget/ab;->mTotalDragDistance:F

    div-float v1, p1, v1

    invoke-direct {p0, v1}, Landroid/support/v4/widget/ab;->setAnimationProgress(F)V

    .line 903
    :cond_2
    iget-object v1, p0, Landroid/support/v4/widget/ab;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v1

    const/16 v4, 0x4c

    if-le v1, v4, :cond_3

    iget-object v1, p0, Landroid/support/v4/widget/ab;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0, v1}, Landroid/support/v4/widget/ab;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 906
    invoke-direct {p0}, Landroid/support/v4/widget/ab;->startProgressAlphaStartAnimation()V

    .line 908
    :cond_3
    mul-float v1, v2, v13

    .line 909
    iget-object v4, p0, Landroid/support/v4/widget/ab;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-static {v13, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v4, v12, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(FF)V

    .line 910
    iget-object v1, p0, Landroid/support/v4/widget/ab;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-static {v10, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v1, v4}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(F)V

    .line 917
    :cond_4
    :goto_1
    const/high16 v1, -0x41800000    # -0.25f

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    mul-float v2, v3, v11

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    .line 918
    iget-object v2, p0, Landroid/support/v4/widget/ab;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->b(F)V

    .line 919
    iget v1, p0, Landroid/support/v4/widget/ab;->mCurrentTargetOffsetTop:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/ab;->setTargetOffsetTopAndBottom(IZ)V

    .line 920
    return-void

    .line 882
    :cond_5
    iget v0, p0, Landroid/support/v4/widget/ab;->mSpinnerFinalOffset:F

    goto/16 :goto_0

    .line 912
    :cond_6
    iget-object v1, p0, Landroid/support/v4/widget/ab;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v1

    const/16 v4, 0xff

    if-ge v1, v4, :cond_4

    iget-object v1, p0, Landroid/support/v4/widget/ab;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0, v1}, Landroid/support/v4/widget/ab;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 914
    invoke-direct {p0}, Landroid/support/v4/widget/ab;->startProgressAlphaMaxAnimation()V

    goto :goto_1
.end method

.method private moveToStart(F)V
    .locals 3

    .prologue
    .line 1076
    iget v0, p0, Landroid/support/v4/widget/ab;->mFrom:I

    iget v1, p0, Landroid/support/v4/widget/ab;->mOriginalOffsetTop:I

    iget v2, p0, Landroid/support/v4/widget/ab;->mFrom:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1077
    iget-object v1, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    invoke-virtual {v1}, Landroid/support/v4/widget/d;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1078
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/ab;->setTargetOffsetTopAndBottom(IZ)V

    .line 1079
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 1122
    invoke-static {p1}, Landroid/support/v4/view/M;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1123
    invoke-static {p1, v0}, Landroid/support/v4/view/M;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 1124
    iget v2, p0, Landroid/support/v4/widget/ab;->mActivePointerId:I

    if-ne v1, v2, :cond_0

    .line 1127
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1128
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/M;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/ab;->mActivePointerId:I

    .line 1130
    :cond_0
    return-void

    .line 1127
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAnimationProgress(F)V
    .locals 1

    .prologue
    .line 404
    invoke-direct {p0}, Landroid/support/v4/widget/ab;->isAlphaUsedForScale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/support/v4/widget/ab;->setColorViewAlpha(I)V

    .line 410
    :goto_0
    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;F)V

    .line 408
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;F)V

    goto :goto_0
.end method

.method private setColorViewAlpha(I)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 203
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    .line 204
    return-void
.end method

.method private setRefreshing(ZZ)V
    .locals 2

    .prologue
    .line 413
    iget-boolean v0, p0, Landroid/support/v4/widget/ab;->mRefreshing:Z

    if-eq v0, p1, :cond_0

    .line 414
    iput-boolean p2, p0, Landroid/support/v4/widget/ab;->mNotify:Z

    .line 415
    invoke-direct {p0}, Landroid/support/v4/widget/ab;->ensureTarget()V

    .line 416
    iput-boolean p1, p0, Landroid/support/v4/widget/ab;->mRefreshing:Z

    .line 417
    iget-boolean v0, p0, Landroid/support/v4/widget/ab;->mRefreshing:Z

    if-eqz v0, :cond_1

    .line 418
    iget v0, p0, Landroid/support/v4/widget/ab;->mCurrentTargetOffsetTop:I

    iget-object v1, p0, Landroid/support/v4/widget/ab;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/ab;->animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0}, Landroid/support/v4/widget/ab;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private setTargetOffsetTopAndBottom(IZ)V
    .locals 2

    .prologue
    .line 1113
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->bringToFront()V

    .line 1114
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/d;->offsetTopAndBottom(I)V

    .line 1115
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/ab;->mCurrentTargetOffsetTop:I

    .line 1116
    if-eqz p2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 1117
    invoke-virtual {p0}, Landroid/support/v4/widget/ab;->invalidate()V

    .line 1119
    :cond_0
    return-void
.end method

.method private startAlphaAnimation(II)Landroid/view/animation/Animation;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 449
    iget-boolean v1, p0, Landroid/support/v4/widget/ab;->mScale:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/support/v4/widget/ab;->isAlphaUsedForScale()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    :goto_0
    return-object v0

    .line 452
    :cond_0
    new-instance v1, Landroid/support/v4/widget/af;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v4/widget/af;-><init>(Landroid/support/v4/widget/ab;II)V

    .line 460
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 462
    iget-object v2, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/d;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 463
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->clearAnimation()V

    .line 464
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->startAnimation(Landroid/view/animation/Animation;)V

    move-object v0, v1

    .line 465
    goto :goto_0
.end method

.method private startProgressAlphaMaxAnimation()V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/ab;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/ab;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    .line 444
    return-void
.end method

.method private startProgressAlphaStartAnimation()V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0x4c

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/ab;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/ab;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    .line 440
    return-void
.end method

.method private startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4

    .prologue
    .line 426
    new-instance v0, Landroid/support/v4/widget/ae;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/ae;-><init>(Landroid/support/v4/widget/ab;)V

    iput-object v0, p0, Landroid/support/v4/widget/ab;->mScaleDownAnimation:Landroid/view/animation/Animation;

    .line 432
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mScaleDownAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 433
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/d;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 434
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->clearAnimation()V

    .line 435
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    iget-object v1, p0, Landroid/support/v4/widget/ab;->mScaleDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->startAnimation(Landroid/view/animation/Animation;)V

    .line 436
    return-void
.end method

.method private startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4

    .prologue
    .line 1090
    iput p1, p0, Landroid/support/v4/widget/ab;->mFrom:I

    .line 1091
    invoke-direct {p0}, Landroid/support/v4/widget/ab;->isAlphaUsedForScale()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1092
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v4/widget/ab;->mStartingScale:F

    .line 1096
    :goto_0
    new-instance v0, Landroid/support/v4/widget/aj;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/aj;-><init>(Landroid/support/v4/widget/ab;)V

    iput-object v0, p0, Landroid/support/v4/widget/ab;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    .line 1104
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1105
    if-eqz p2, :cond_0

    .line 1106
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/d;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1108
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->clearAnimation()V

    .line 1109
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    iget-object v1, p0, Landroid/support/v4/widget/ab;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1110
    return-void

    .line 1094
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->r(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/ab;->mStartingScale:F

    goto :goto_0
.end method

.method private startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4

    .prologue
    .line 378
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->setVisibility(I)V

    .line 379
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 383
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    .line 385
    :cond_0
    new-instance v0, Landroid/support/v4/widget/ad;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/ad;-><init>(Landroid/support/v4/widget/ab;)V

    iput-object v0, p0, Landroid/support/v4/widget/ab;->mScaleAnimation:Landroid/view/animation/Animation;

    .line 391
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mScaleAnimation:Landroid/view/animation/Animation;

    iget v1, p0, Landroid/support/v4/widget/ab;->mMediumAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 392
    if-eqz p1, :cond_1

    .line 393
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/d;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 395
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->clearAnimation()V

    .line 396
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    iget-object v1, p0, Landroid/support/v4/widget/ab;->mScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->startAnimation(Landroid/view/animation/Animation;)V

    .line 397
    return-void
.end method


# virtual methods
.method public canChildScrollUp()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 633
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v0, v3, :cond_5

    .line 634
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mTarget:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_2

    .line 635
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mTarget:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    .line 636
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v0

    if-ge v3, v0, :cond_1

    :cond_0
    move v0, v1

    .line 643
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 636
    goto :goto_0

    .line 640
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mTarget:Landroid/view/View;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/widget/ab;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    .line 643
    :cond_5
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mTarget:Landroid/view/View;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mNestedScrollingChildHelper$5df96aa:Landroid/support/v4/e/a;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/e/a;->a(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mNestedScrollingChildHelper$5df96aa:Landroid/support/v4/e/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/e/a;->a(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mNestedScrollingChildHelper$5df96aa:Landroid/support/v4/e/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/e/a;->a(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .prologue
    .line 840
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mNestedScrollingChildHelper$5df96aa:Landroid/support/v4/e/a;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/e/a;->a(IIII[I)Z

    move-result v0

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Landroid/support/v4/widget/ab;->mCircleViewIndex:I

    if-gez v0, :cond_1

    .line 324
    :cond_0
    :goto_0
    return p2

    .line 316
    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    .line 318
    iget p2, p0, Landroid/support/v4/widget/ab;->mCircleViewIndex:I

    goto :goto_0

    .line 319
    :cond_2
    iget v0, p0, Landroid/support/v4/widget/ab;->mCircleViewIndex:I

    if-lt p2, v0, :cond_0

    .line 321
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mNestedScrollingParentHelper$39f2dfb6:Lcom/google/android/a/c;

    invoke-virtual {v0}, Lcom/google/android/a/c;->a()I

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mNestedScrollingChildHelper$5df96aa:Landroid/support/v4/e/a;

    invoke-virtual {v0}, Landroid/support/v4/e/a;->c()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mNestedScrollingChildHelper$5df96aa:Landroid/support/v4/e/a;

    invoke-virtual {v0}, Landroid/support/v4/e/a;->b()Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v0, 0x0

    .line 649
    invoke-direct {p0}, Landroid/support/v4/widget/ab;->ensureTarget()V

    .line 651
    invoke-static {p1}, Landroid/support/v4/view/M;->a(Landroid/view/MotionEvent;)I

    move-result v1

    .line 653
    iget-boolean v2, p0, Landroid/support/v4/widget/ab;->mReturningToStart:Z

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 654
    iput-boolean v0, p0, Landroid/support/v4/widget/ab;->mReturningToStart:Z

    .line 657
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/ab;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/support/v4/widget/ab;->mReturningToStart:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/widget/ab;->canChildScrollUp()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/support/v4/widget/ab;->mRefreshing:Z

    if-eqz v2, :cond_2

    .line 703
    :cond_1
    :goto_0
    return v0

    .line 662
    :cond_2
    packed-switch v1, :pswitch_data_0

    .line 703
    :cond_3
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Landroid/support/v4/widget/ab;->mIsBeingDragged:Z

    goto :goto_0

    .line 664
    :pswitch_1
    iget v1, p0, Landroid/support/v4/widget/ab;->mOriginalOffsetTop:I

    iget-object v2, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    invoke-virtual {v2}, Landroid/support/v4/widget/d;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v1, v5}, Landroid/support/v4/widget/ab;->setTargetOffsetTopAndBottom(IZ)V

    .line 665
    invoke-static {p1, v0}, Landroid/support/v4/view/M;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/ab;->mActivePointerId:I

    .line 666
    iput-boolean v0, p0, Landroid/support/v4/widget/ab;->mIsBeingDragged:Z

    .line 667
    iget v1, p0, Landroid/support/v4/widget/ab;->mActivePointerId:I

    invoke-direct {p0, p1, v1}, Landroid/support/v4/widget/ab;->getMotionEventY(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 668
    cmpl-float v2, v1, v3

    if-eqz v2, :cond_1

    .line 671
    iput v1, p0, Landroid/support/v4/widget/ab;->mInitialDownY:F

    goto :goto_1

    .line 675
    :pswitch_2
    iget v1, p0, Landroid/support/v4/widget/ab;->mActivePointerId:I

    if-ne v1, v4, :cond_4

    .line 676
    sget-object v1, Landroid/support/v4/widget/ab;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 680
    :cond_4
    iget v1, p0, Landroid/support/v4/widget/ab;->mActivePointerId:I

    invoke-direct {p0, p1, v1}, Landroid/support/v4/widget/ab;->getMotionEventY(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 681
    cmpl-float v2, v1, v3

    if-eqz v2, :cond_1

    .line 684
    iget v0, p0, Landroid/support/v4/widget/ab;->mInitialDownY:F

    sub-float v0, v1, v0

    .line 685
    iget v1, p0, Landroid/support/v4/widget/ab;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v4/widget/ab;->mIsBeingDragged:Z

    if-nez v0, :cond_3

    .line 686
    iget v0, p0, Landroid/support/v4/widget/ab;->mInitialDownY:F

    iget v1, p0, Landroid/support/v4/widget/ab;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/ab;->mInitialMotionY:F

    .line 687
    iput-boolean v5, p0, Landroid/support/v4/widget/ab;->mIsBeingDragged:Z

    .line 688
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    goto :goto_1

    .line 693
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ab;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 698
    :pswitch_4
    iput-boolean v0, p0, Landroid/support/v4/widget/ab;->mIsBeingDragged:Z

    .line 699
    iput v4, p0, Landroid/support/v4/widget/ab;->mActivePointerId:I

    goto :goto_1

    .line 662
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .prologue
    .line 565
    invoke-virtual {p0}, Landroid/support/v4/widget/ab;->getMeasuredWidth()I

    move-result v0

    .line 566
    invoke-virtual {p0}, Landroid/support/v4/widget/ab;->getMeasuredHeight()I

    move-result v1

    .line 567
    invoke-virtual {p0}, Landroid/support/v4/widget/ab;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    iget-object v2, p0, Landroid/support/v4/widget/ab;->mTarget:Landroid/view/View;

    if-nez v2, :cond_2

    .line 571
    invoke-direct {p0}, Landroid/support/v4/widget/ab;->ensureTarget()V

    .line 573
    :cond_2
    iget-object v2, p0, Landroid/support/v4/widget/ab;->mTarget:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 576
    iget-object v2, p0, Landroid/support/v4/widget/ab;->mTarget:Landroid/view/View;

    .line 577
    invoke-virtual {p0}, Landroid/support/v4/widget/ab;->getPaddingLeft()I

    move-result v3

    .line 578
    invoke-virtual {p0}, Landroid/support/v4/widget/ab;->getPaddingTop()I

    move-result v4

    .line 579
    invoke-virtual {p0}, Landroid/support/v4/widget/ab;->getPaddingLeft()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0}, Landroid/support/v4/widget/ab;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 580
    invoke-virtual {p0}, Landroid/support/v4/widget/ab;->getPaddingTop()I

    move-result v6

    sub-int/2addr v1, v6

    invoke-virtual {p0}, Landroid/support/v4/widget/ab;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v1, v6

    .line 581
    add-int/2addr v5, v3

    add-int/2addr v1, v4

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/view/View;->layout(IIII)V

    .line 582
    iget-object v1, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    invoke-virtual {v1}, Landroid/support/v4/widget/d;->getMeasuredWidth()I

    move-result v1

    .line 583
    iget-object v2, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    invoke-virtual {v2}, Landroid/support/v4/widget/d;->getMeasuredHeight()I

    move-result v2

    .line 584
    iget-object v3, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    div-int/lit8 v4, v0, 0x2

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/support/v4/widget/ab;->mCurrentTargetOffsetTop:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/v4/widget/ab;->mCurrentTargetOffsetTop:I

    add-int/2addr v1, v2

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/support/v4/widget/d;->layout(IIII)V

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 590
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 591
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mTarget:Landroid/view/View;

    if-nez v0, :cond_0

    .line 592
    invoke-direct {p0}, Landroid/support/v4/widget/ab;->ensureTarget()V

    .line 594
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mTarget:Landroid/view/View;

    if-nez v0, :cond_2

    .line 615
    :cond_1
    :goto_0
    return-void

    .line 597
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mTarget:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/widget/ab;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/ab;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/ab;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/ab;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/ab;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/ab;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 601
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    iget v1, p0, Landroid/support/v4/widget/ab;->mCircleWidth:I

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/ab;->mCircleHeight:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/d;->measure(II)V

    .line 603
    iget-boolean v0, p0, Landroid/support/v4/widget/ab;->mUsingCustomStart:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v4/widget/ab;->mOriginalOffsetCalculated:Z

    if-nez v0, :cond_3

    .line 604
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/ab;->mOriginalOffsetCalculated:Z

    .line 605
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/ab;->mOriginalOffsetTop:I

    iput v0, p0, Landroid/support/v4/widget/ab;->mCurrentTargetOffsetTop:I

    .line 607
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/ab;->mCircleViewIndex:I

    .line 609
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/widget/ab;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 610
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ab;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    if-ne v1, v2, :cond_4

    .line 611
    iput v0, p0, Landroid/support/v4/widget/ab;->mCircleViewIndex:I

    goto :goto_0

    .line 609
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1

    .prologue
    .line 858
    invoke-virtual {p0, p2, p3, p4}, Landroid/support/v4/widget/ab;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1

    .prologue
    .line 852
    invoke-virtual {p0, p2, p3}, Landroid/support/v4/widget/ab;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 751
    if-lez p3, :cond_0

    iget v0, p0, Landroid/support/v4/widget/ab;->mTotalUnconsumed:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 752
    int-to-float v0, p3

    iget v1, p0, Landroid/support/v4/widget/ab;->mTotalUnconsumed:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 753
    iget v0, p0, Landroid/support/v4/widget/ab;->mTotalUnconsumed:F

    float-to-int v0, v0

    sub-int v0, p3, v0

    aput v0, p4, v4

    .line 754
    iput v2, p0, Landroid/support/v4/widget/ab;->mTotalUnconsumed:F

    .line 760
    :goto_0
    iget v0, p0, Landroid/support/v4/widget/ab;->mTotalUnconsumed:F

    invoke-direct {p0, v0}, Landroid/support/v4/widget/ab;->moveSpinner(F)V

    .line 767
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/widget/ab;->mUsingCustomStart:Z

    if-eqz v0, :cond_1

    if-lez p3, :cond_1

    iget v0, p0, Landroid/support/v4/widget/ab;->mTotalUnconsumed:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    aget v0, p4, v4

    sub-int v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 769
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mCircleView:Landroid/support/v4/widget/d;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->setVisibility(I)V

    .line 773
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mParentScrollConsumed:[I

    .line 774
    aget v1, p4, v5

    sub-int v1, p2, v1

    aget v2, p4, v4

    sub-int v2, p3, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/support/v4/widget/ab;->dispatchNestedPreScroll(II[I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 775
    aget v1, p4, v5

    aget v2, v0, v5

    add-int/2addr v1, v2

    aput v1, p4, v5

    .line 776
    aget v1, p4, v4

    aget v0, v0, v4

    add-int/2addr v0, v1

    aput v0, p4, v4

    .line 778
    :cond_2
    return-void

    .line 756
    :cond_3
    iget v0, p0, Landroid/support/v4/widget/ab;->mTotalUnconsumed:F

    int-to-float v1, p3

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/ab;->mTotalUnconsumed:F

    .line 757
    aput p3, p4, v4

    goto :goto_0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6

    .prologue
    .line 801
    if-gez p5, :cond_0

    .line 802
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 803
    iget v1, p0, Landroid/support/v4/widget/ab;->mTotalUnconsumed:F

    int-to-float v0, v0

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/ab;->mTotalUnconsumed:F

    .line 804
    iget v0, p0, Landroid/support/v4/widget/ab;->mTotalUnconsumed:F

    invoke-direct {p0, v0}, Landroid/support/v4/widget/ab;->moveSpinner(F)V

    .line 807
    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ab;->dispatchNestedScroll(IIII[I)Z

    .line 808
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mNestedScrollingParentHelper$39f2dfb6:Lcom/google/android/a/c;

    invoke-virtual {v0, p3}, Lcom/google/android/a/c;->a(I)V

    .line 744
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/ab;->mTotalUnconsumed:F

    .line 745
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 731
    invoke-virtual {p0}, Landroid/support/v4/widget/ab;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/widget/ab;->mReturningToStart:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/ab;->canChildScrollUp()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/widget/ab;->mRefreshing:Z

    if-nez v0, :cond_0

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 734
    and-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ab;->startNestedScroll(I)Z

    .line 735
    const/4 v0, 0x1

    .line 737
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 787
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mNestedScrollingParentHelper$39f2dfb6:Lcom/google/android/a/c;

    invoke-virtual {v0}, Lcom/google/android/a/c;->b()V

    .line 790
    iget v0, p0, Landroid/support/v4/widget/ab;->mTotalUnconsumed:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 791
    iget v0, p0, Landroid/support/v4/widget/ab;->mTotalUnconsumed:F

    invoke-direct {p0, v0}, Landroid/support/v4/widget/ab;->finishSpinner(F)V

    .line 792
    iput v1, p0, Landroid/support/v4/widget/ab;->mTotalUnconsumed:F

    .line 795
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/ab;->stopNestedScroll()V

    .line 796
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    .line 957
    invoke-static {p1}, Landroid/support/v4/view/M;->a(Landroid/view/MotionEvent;)I

    move-result v1

    .line 960
    iget-boolean v2, p0, Landroid/support/v4/widget/ab;->mReturningToStart:Z

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 961
    iput-boolean v0, p0, Landroid/support/v4/widget/ab;->mReturningToStart:Z

    .line 964
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/ab;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/support/v4/widget/ab;->mReturningToStart:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/widget/ab;->canChildScrollUp()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1025
    :cond_1
    :goto_0
    :pswitch_0
    return v0

    .line 969
    :cond_2
    packed-switch v1, :pswitch_data_0

    .line 1025
    :cond_3
    :goto_1
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 971
    :pswitch_2
    invoke-static {p1, v0}, Landroid/support/v4/view/M;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/ab;->mActivePointerId:I

    .line 972
    iput-boolean v0, p0, Landroid/support/v4/widget/ab;->mIsBeingDragged:Z

    goto :goto_1

    .line 976
    :pswitch_3
    iget v1, p0, Landroid/support/v4/widget/ab;->mActivePointerId:I

    invoke-static {p1, v1}, Landroid/support/v4/view/M;->a(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 977
    if-gez v1, :cond_4

    .line 978
    sget-object v1, Landroid/support/v4/widget/ab;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 982
    :cond_4
    invoke-static {p1, v1}, Landroid/support/v4/view/M;->d(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 983
    iget v2, p0, Landroid/support/v4/widget/ab;->mInitialMotionY:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    .line 984
    iget-boolean v2, p0, Landroid/support/v4/widget/ab;->mIsBeingDragged:Z

    if-eqz v2, :cond_3

    .line 985
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 986
    invoke-direct {p0, v1}, Landroid/support/v4/widget/ab;->moveSpinner(F)V

    goto :goto_1

    .line 994
    :pswitch_4
    invoke-static {p1}, Landroid/support/v4/view/M;->b(Landroid/view/MotionEvent;)I

    move-result v1

    .line 995
    if-gez v1, :cond_5

    .line 996
    sget-object v1, Landroid/support/v4/widget/ab;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 999
    :cond_5
    invoke-static {p1, v1}, Landroid/support/v4/view/M;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/ab;->mActivePointerId:I

    goto :goto_1

    .line 1004
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ab;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1008
    :pswitch_6
    iget v1, p0, Landroid/support/v4/widget/ab;->mActivePointerId:I

    invoke-static {p1, v1}, Landroid/support/v4/view/M;->a(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 1009
    if-gez v1, :cond_6

    .line 1010
    sget-object v1, Landroid/support/v4/widget/ab;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1014
    :cond_6
    invoke-static {p1, v1}, Landroid/support/v4/view/M;->d(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 1015
    iget v2, p0, Landroid/support/v4/widget/ab;->mInitialMotionY:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    .line 1016
    iput-boolean v0, p0, Landroid/support/v4/widget/ab;->mIsBeingDragged:Z

    .line 1017
    invoke-direct {p0, v1}, Landroid/support/v4/widget/ab;->finishSpinner(F)V

    .line 1018
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/widget/ab;->mActivePointerId:I

    goto :goto_0

    .line 969
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2

    .prologue
    .line 719
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/ab;->mTarget:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mTarget:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/ab;->mTarget:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->y(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 723
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 725
    :cond_2
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mNestedScrollingChildHelper$5df96aa:Landroid/support/v4/e/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/e/a;->a(Z)V

    .line 815
    return-void
.end method

.method public setOnRefreshListener(Landroid/support/v4/widget/ak;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Landroid/support/v4/widget/ab;->mListener:Landroid/support/v4/widget/ak;

    .line 343
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 359
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/widget/ab;->mRefreshing:Z

    if-eq v0, p1, :cond_1

    .line 361
    iput-boolean p1, p0, Landroid/support/v4/widget/ab;->mRefreshing:Z

    .line 363
    iget-boolean v0, p0, Landroid/support/v4/widget/ab;->mUsingCustomStart:Z

    if-nez v0, :cond_0

    .line 364
    iget v0, p0, Landroid/support/v4/widget/ab;->mSpinnerFinalOffset:F

    iget v1, p0, Landroid/support/v4/widget/ab;->mOriginalOffsetTop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 368
    :goto_0
    iget v1, p0, Landroid/support/v4/widget/ab;->mCurrentTargetOffsetTop:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/ab;->setTargetOffsetTopAndBottom(IZ)V

    .line 370
    iput-boolean v2, p0, Landroid/support/v4/widget/ab;->mNotify:Z

    .line 371
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0}, Landroid/support/v4/widget/ab;->startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    .line 375
    :goto_1
    return-void

    .line 366
    :cond_0
    iget v0, p0, Landroid/support/v4/widget/ab;->mSpinnerFinalOffset:F

    float-to-int v0, v0

    goto :goto_0

    .line 373
    :cond_1
    invoke-direct {p0, p1, v2}, Landroid/support/v4/widget/ab;->setRefreshing(ZZ)V

    goto :goto_1
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mNestedScrollingChildHelper$5df96aa:Landroid/support/v4/e/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/e/a;->a(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Landroid/support/v4/widget/ab;->mNestedScrollingChildHelper$5df96aa:Landroid/support/v4/e/a;

    invoke-virtual {v0}, Landroid/support/v4/e/a;->d()V

    .line 830
    return-void
.end method
