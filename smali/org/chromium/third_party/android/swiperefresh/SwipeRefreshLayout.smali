.class public Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SwipeRefreshLayout.java"


# static fields
.field public static final DEFAULT:I = 0x1

.field public static final LARGE:I

.field private static final LAYOUT_ATTRS:[I

.field private static final LOG_TAG:Ljava/lang/String;

.field private static MIN_PULLS_TO_ACTIVATE:I


# instance fields
.field private final mAnimateToCorrectPosition:Landroid/view/animation/Animation;

.field private final mAnimateToStartPosition:Landroid/view/animation/Animation;

.field private mCancelAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCircleHeight:I

.field private mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

.field private mCircleViewIndex:I

.field private mCircleWidth:I

.field private mCurrentTargetOffsetTop:I

.field private final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mFrom:I

.field private mIsBeingDragged:Z

.field private mListener:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$OnRefreshListener;

.field private mMediumAnimationDuration:I

.field private mNotify:Z

.field private mOriginalOffsetCalculated:Z

.field protected mOriginalOffsetTop:I

.field private mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

.field private mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

.field private mRefreshing:Z

.field private mResetListener:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$OnResetListener;

.field private mScale:Z

.field private mScaleAnimation:Landroid/view/animation/Animation;

.field private mScaleDownAnimation:Landroid/view/animation/Animation;

.field private mScaleDownToStartAnimation:Landroid/view/animation/Animation;

.field private mSpinnerFinalOffset:F

.field private mStartingScale:F

.field private mTotalDragDistance:F

.field private mTotalMotionY:F

.field private mUsingCustomStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const-class v0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    .line 108
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101000e

    aput v2, v0, v1

    sput-object v0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    .line 176
    const/4 v0, 0x3

    sput v0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->MIN_PULLS_TO_ACTIVATE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 254
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x42200000    # 40.0f

    const/4 v2, 0x0

    .line 263
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    iput-boolean v2, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mRefreshing:Z

    .line 93
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 97
    iput-boolean v2, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mOriginalOffsetCalculated:Z

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleViewIndex:I

    .line 146
    new-instance v0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$1;

    invoke-direct {v0, p0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$1;-><init>(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)V

    iput-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    .line 737
    new-instance v0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$6;

    invoke-direct {v0, p0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$6;-><init>(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)V

    iput-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    .line 761
    new-instance v0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$7;

    invoke-direct {v0, p0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$7;-><init>(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)V

    iput-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    .line 265
    invoke-virtual {p0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mMediumAnimationDuration:I

    .line 268
    invoke-virtual {p0, v2}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setWillNotDraw(Z)V

    .line 269
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 271
    sget-object v0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 272
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setEnabled(Z)V

    .line 273
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 275
    invoke-virtual {p0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 276
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleWidth:I

    .line 277
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleHeight:I

    .line 279
    invoke-direct {p0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->createProgressView()V

    .line 280
    invoke-virtual {p0, v4}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setChildrenDrawingOrderEnabled(Z)V

    .line 282
    const/high16 v1, 0x42800000    # 64.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    .line 283
    iget v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    iput v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 284
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mRefreshing:Z

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mUsingCustomStart:Z

    return v0
.end method

.method static synthetic access$1100(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)F
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    return v0
.end method

.method static synthetic access$1200(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;IZ)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    return-void
.end method

.method static synthetic access$1300(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;F)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->moveToStart(F)V

    return-void
.end method

.method static synthetic access$1400(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)F
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mStartingScale:F

    return v0
.end method

.method static synthetic access$200(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mNotify:Z

    return v0
.end method

.method static synthetic access$300(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$OnRefreshListener;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mListener:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$OnRefreshListener;

    return-object v0
.end method

.method static synthetic access$402(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;I)I
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    return p1
.end method

.method static synthetic access$500(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Lorg/chromium/third_party/android/swiperefresh/CircleImageView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    return-object v0
.end method

.method static synthetic access$600(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;F)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setAnimationProgress(F)V

    return-void
.end method

.method static synthetic access$700(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mScale:Z

    return v0
.end method

.method static synthetic access$800(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$900(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4

    .prologue
    .line 709
    iput p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mFrom:I

    .line 710
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 711
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 712
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 713
    if-eqz p2, :cond_0

    .line 714
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0, p2}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 716
    :cond_0
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->clearAnimation()V

    .line 717
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 718
    return-void
.end method

.method private animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4

    .prologue
    .line 721
    iget-boolean v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mScale:Z

    if-eqz v0, :cond_0

    .line 723
    invoke-direct {p0, p1, p2}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 735
    :goto_0
    return-void

    .line 725
    :cond_0
    iput p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mFrom:I

    .line 726
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 727
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 728
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 729
    if-eqz p2, :cond_1

    .line 730
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0, p2}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 732
    :cond_1
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->clearAnimation()V

    .line 733
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private createProgressView()V
    .locals 4

    .prologue
    const v3, -0x50506

    .line 302
    new-instance v0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-direct {v0, v1, v3, v2}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;-><init>(Landroid/content/Context;IF)V

    iput-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    .line 303
    new-instance v0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {p0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    .line 304
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {v0, v3}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->setBackgroundColor(I)V

    .line 305
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p0, v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->addView(Landroid/view/View;)V

    .line 308
    return-void
.end method

.method private isAlphaUsedForScale()Z
    .locals 2

    .prologue
    .line 329
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

.method private moveToStart(F)V
    .locals 3

    .prologue
    .line 756
    iget v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mFrom:I

    iget v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iget v2, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mFrom:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 757
    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v1}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 758
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 759
    return-void
.end method

.method private setAnimationProgress(F)V
    .locals 1

    .prologue
    .line 386
    invoke-direct {p0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->isAlphaUsedForScale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setColorViewAlpha(I)V

    .line 392
    :goto_0
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0, p1}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->setScaleX(F)V

    .line 390
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0, p1}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->setScaleY(F)V

    goto :goto_0
.end method

.method private setColorViewAlpha(I)V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 182
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->setAlpha(I)V

    .line 183
    return-void
.end method

.method private setRefreshing(ZZ)V
    .locals 2

    .prologue
    .line 395
    iget-boolean v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mRefreshing:Z

    if-eq v0, p1, :cond_0

    .line 396
    iput-boolean p2, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mNotify:Z

    .line 397
    iput-boolean p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mRefreshing:Z

    .line 398
    iget-boolean v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mRefreshing:Z

    if-eqz v0, :cond_1

    .line 399
    iget v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0, v1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private setTargetOffsetTopAndBottom(IZ)V
    .locals 2

    .prologue
    .line 795
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->bringToFront()V

    .line 796
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0, p1}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->offsetTopAndBottom(I)V

    .line 797
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->getTop()I

    move-result v0

    iput v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 798
    if-eqz p2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 799
    invoke-virtual {p0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->invalidate()V

    .line 801
    :cond_0
    return-void
.end method

.method private startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4

    .prologue
    .line 407
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 408
    new-instance v0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$3;

    invoke-direct {v0, p0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$3;-><init>(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)V

    iput-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    .line 414
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 416
    :cond_0
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0, p1}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 417
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->clearAnimation()V

    .line 418
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 419
    return-void
.end method

.method private startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4

    .prologue
    .line 770
    iput p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mFrom:I

    .line 771
    invoke-direct {p0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->isAlphaUsedForScale()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 772
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mStartingScale:F

    .line 776
    :goto_0
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 777
    new-instance v0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$8;

    invoke-direct {v0, p0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$8;-><init>(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)V

    iput-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    .line 785
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 787
    :cond_0
    if-eqz p2, :cond_1

    .line 788
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0, p2}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 790
    :cond_1
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->clearAnimation()V

    .line 791
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 792
    return-void

    .line 774
    :cond_2
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->getScaleX()F

    move-result v0

    iput v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mStartingScale:F

    goto :goto_0
.end method

.method private startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4

    .prologue
    .line 358
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->setVisibility(I)V

    .line 359
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 363
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->setAlpha(I)V

    .line 365
    :cond_0
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 366
    new-instance v0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$2;

    invoke-direct {v0, p0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$2;-><init>(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)V

    iput-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    .line 372
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    iget v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mMediumAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 374
    :cond_1
    if-eqz p1, :cond_2

    .line 375
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0, p1}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 377
    :cond_2
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->clearAnimation()V

    .line 378
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 379
    return-void
.end method


# virtual methods
.method protected getChildDrawingOrder(II)I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleViewIndex:I

    if-gez v0, :cond_1

    .line 297
    :cond_0
    :goto_0
    return p2

    .line 289
    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    .line 291
    iget p2, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleViewIndex:I

    goto :goto_0

    .line 292
    :cond_2
    iget v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleViewIndex:I

    if-lt p2, v0, :cond_0

    .line 294
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public isRefreshing()Z
    .locals 1

    .prologue
    .line 518
    iget-boolean v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mRefreshing:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    .line 532
    invoke-virtual {p0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v0

    .line 533
    invoke-virtual {p0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 540
    :goto_0
    return-void

    .line 536
    :cond_0
    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v1}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->getMeasuredWidth()I

    move-result v1

    .line 537
    iget-object v2, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v2}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->getMeasuredHeight()I

    move-result v2

    .line 538
    iget-object v3, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    div-int/lit8 v4, v0, 0x2

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    add-int/2addr v1, v2

    invoke-virtual {v3, v4, v5, v0, v1}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->layout(IIII)V

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 544
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 545
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    iget v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleWidth:I

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v2, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleHeight:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->measure(II)V

    .line 547
    iget-boolean v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mOriginalOffsetCalculated:Z

    if-nez v0, :cond_0

    .line 548
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mOriginalOffsetCalculated:Z

    .line 549
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const v1, 0x3f866666    # 1.05f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iput v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 552
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleViewIndex:I

    .line 554
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 555
    invoke-virtual {p0, v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    if-ne v1, v2, :cond_2

    .line 556
    iput v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleViewIndex:I

    .line 560
    :cond_1
    return-void

    .line 554
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public pull(F)V
    .locals 10

    .prologue
    .line 586
    invoke-virtual {p0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-eqz v0, :cond_0

    .line 588
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p1

    .line 589
    iget v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mTotalDragDistance:F

    sget v2, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->MIN_PULLS_TO_ACTIVATE:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 590
    neg-float v2, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 591
    iget v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mTotalMotionY:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mTotalMotionY:F

    .line 594
    iget v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mTotalMotionY:F

    .line 595
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->showArrow(Z)V

    .line 596
    iget v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mTotalDragDistance:F

    div-float v0, v1, v0

    .line 597
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_0

    .line 598
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 599
    float-to-double v4, v2

    const-wide v6, 0x3fd999999999999aL    # 0.4

    sub-double/2addr v4, v6

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-float v0, v4

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v0, v3

    const/high16 v3, 0x40400000    # 3.0f

    div-float v3, v0, v3

    .line 600
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mTotalDragDistance:F

    sub-float v4, v0, v4

    .line 601
    iget-boolean v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    iget v5, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mOriginalOffsetTop:I

    int-to-float v5, v5

    sub-float/2addr v0, v5

    .line 603
    :goto_1
    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v0

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float/2addr v4, v0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 605
    const/high16 v5, 0x40800000    # 4.0f

    div-float v5, v4, v5

    float-to-double v6, v5

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double v4, v6, v4

    double-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    .line 607
    mul-float v5, v0, v4

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    .line 609
    iget v6, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mOriginalOffsetTop:I

    mul-float/2addr v0, v2

    add-float/2addr v0, v5

    float-to-int v0, v0

    add-int/2addr v0, v6

    .line 612
    iget-object v5, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v5}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_2

    .line 613
    iget-object v5, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->setVisibility(I)V

    .line 615
    :cond_2
    iget-boolean v5, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mScale:Z

    if-nez v5, :cond_3

    .line 616
    iget-object v5, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->setScaleX(F)V

    .line 617
    iget-object v5, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->setScaleY(F)V

    .line 619
    :cond_3
    iget v5, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mTotalDragDistance:F

    cmpg-float v5, v1, v5

    if-gez v5, :cond_4

    .line 620
    iget-boolean v5, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mScale:Z

    if-eqz v5, :cond_4

    .line 621
    iget v5, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mTotalDragDistance:F

    div-float/2addr v1, v5

    invoke-direct {p0, v1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 624
    :cond_4
    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v3

    .line 625
    iget-object v5, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    const/4 v6, 0x0

    const v7, 0x3f4ccccd    # 0.8f

    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v5, v6, v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->setStartEndTrim(FF)V

    .line 626
    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-virtual {v1, v5}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->setArrowScale(F)V

    .line 628
    const/4 v1, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f666666    # 0.9f

    sub-float/2addr v2, v6

    const v6, 0x3dcccccd    # 0.1f

    div-float/2addr v2, v6

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 630
    const/high16 v2, 0x43330000    # 179.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x4c

    .line 631
    iget-object v2, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {v2, v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->setAlpha(I)V

    .line 633
    const/high16 v1, -0x41800000    # -0.25f

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    .line 634
    iget-object v2, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {v2, v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->setProgressRotation(F)V

    .line 635
    iget v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    goto/16 :goto_0

    .line 601
    :cond_5
    iget v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    goto/16 :goto_1
.end method

.method public release(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 647
    iget-boolean v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-nez v0, :cond_0

    .line 684
    :goto_0
    return-void

    .line 650
    :cond_0
    iput-boolean v2, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 651
    iget v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mTotalMotionY:F

    .line 652
    invoke-virtual {p0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mTotalDragDistance:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 653
    invoke-direct {p0, v4, v4}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setRefreshing(ZZ)V

    goto :goto_0

    .line 657
    :cond_1
    iput-boolean v2, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mRefreshing:Z

    .line 658
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {v0, v3, v3}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->setStartEndTrim(FF)V

    .line 659
    const/4 v0, 0x0

    .line 660
    iget-boolean v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mScale:Z

    if-nez v1, :cond_3

    .line 661
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCancelAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-nez v0, :cond_2

    .line 662
    new-instance v0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$5;

    invoke-direct {v0, p0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$5;-><init>(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)V

    iput-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCancelAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 680
    :cond_2
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCancelAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 682
    :cond_3
    iget v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    invoke-direct {p0, v1, v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 683
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {v0, v2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->showArrow(Z)V

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 690
    iput-boolean v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 691
    invoke-direct {p0, v0, v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setRefreshing(ZZ)V

    .line 692
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->stop()V

    .line 693
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->setVisibility(I)V

    .line 694
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setColorViewAlpha(I)V

    .line 696
    iget-boolean v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mScale:Z

    if-eqz v0, :cond_1

    .line 697
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 702
    :goto_0
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->getTop()I

    move-result v0

    iput v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 703
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mResetListener:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$OnResetListener;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mResetListener:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$OnResetListener;

    invoke-interface {v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$OnResetListener;->onReset()V

    .line 706
    :cond_0
    return-void

    .line 699
    :cond_1
    iget v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iget v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    goto :goto_0
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->setColorSchemeColors([I)V

    .line 511
    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 4

    .prologue
    .line 494
    invoke-virtual {p0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 495
    array-length v0, p1

    new-array v2, v0, [I

    .line 496
    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 497
    aget v3, p1, v0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v2, v0

    .line 496
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 499
    :cond_0
    invoke-virtual {p0, v2}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 500
    return-void
.end method

.method public setOnRefreshListener(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$OnRefreshListener;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mListener:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$OnRefreshListener;

    .line 316
    return-void
.end method

.method public setOnResetListener(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$OnResetListener;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mResetListener:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$OnResetListener;

    .line 323
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 339
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mRefreshing:Z

    if-eq v0, p1, :cond_1

    .line 341
    iput-boolean p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mRefreshing:Z

    .line 343
    iget-boolean v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-nez v0, :cond_0

    .line 344
    iget v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    iget v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mOriginalOffsetTop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 348
    :goto_0
    iget v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 350
    iput-boolean v2, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mNotify:Z

    .line 351
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    .line 355
    :goto_1
    return-void

    .line 346
    :cond_0
    iget v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    float-to-int v0, v0

    goto :goto_0

    .line 353
    :cond_1
    invoke-direct {p0, p1, v2}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setRefreshing(ZZ)V

    goto :goto_1
.end method

.method public setSize(I)V
    .locals 2

    .prologue
    .line 230
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 234
    if-nez p1, :cond_1

    .line 235
    const/high16 v1, 0x42600000    # 56.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleWidth:I

    iput v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleHeight:I

    .line 242
    :goto_1
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->updateSizes(I)V

    .line 244
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 237
    :cond_1
    const/high16 v1, 0x42200000    # 40.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleWidth:I

    iput v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleHeight:I

    goto :goto_1
.end method

.method public start()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 568
    invoke-virtual {p0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 577
    :cond_0
    :goto_0
    return v0

    .line 569
    :cond_1
    iget-boolean v2, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mRefreshing:Z

    if-nez v2, :cond_0

    .line 570
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->clearAnimation()V

    .line 571
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->stop()V

    .line 573
    iget v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iget-object v2, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v2}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 574
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mTotalMotionY:F

    .line 575
    iput-boolean v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 576
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    const/16 v2, 0x4c

    invoke-virtual {v0, v2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->setAlpha(I)V

    move v0, v1

    .line 577
    goto :goto_0
.end method
