.class public Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;
.super Ljava/lang/Object;
.source "Stack.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DISCARD_RANGE_SCREEN:F = 0.7f

.field private static final DRAG_ANGLE_THRESHOLD:F

.field public static final MAX_NUMBER_OF_STACKED_TABS_BOTTOM:I = 0x3

.field public static final MAX_NUMBER_OF_STACKED_TABS_TOP:I = 0x3

.field public static final SPACING_SCREEN:F = 0.26f


# instance fields
.field private mAnimationFactory:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;

.field private mBorderLeftPadding:F

.field private mBorderTopPadding:F

.field private mBorderTransparentSide:F

.field private mBorderTransparentTop:F

.field private mCurrentMode:I

.field private mCurrentScrollDirection:F

.field private mDiscardDirection:F

.field private mDiscardingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

.field private mDragLock:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

.field private mEvenOutProgress:F

.field private mEvenOutRate:F

.field private mInSwipe:Z

.field private mIsDying:Z

.field private mIsStackForCurrentTabModel:Z

.field private mLastPinch0Offset:F

.field private mLastPinch1Offset:F

.field private mLastScrollUpdate:J

.field private final mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

.field private mLongPressSelected:I

.field private mMaxOverScroll:F

.field private mMaxOverScrollAngle:F

.field private mMaxOverScrollSlide:F

.field private mMaxUnderScroll:F

.field private mMinScrollMotion:F

.field private mMinSpacing:F

.field private final mOverScrollAngleInterpolator:Landroid/view/animation/Interpolator;

.field private mOverScrollCounter:I

.field private mOverScrollDerivative:I

.field private mOverScrollOffset:F

.field private final mOverscrollSlideInterpolator:Landroid/view/animation/Interpolator;

.field private mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

.field private mPinch0TabIndex:I

.field private mPinch1TabIndex:I

.field private mRecomputePosition:Z

.field private mReferenceOrderIndex:I

.field private mScrollOffset:F

.field private mScrollOffsetForDyingTabs:F

.field private mScrollTarget:F

.field private mScroller:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

.field private mScrollingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

.field private mSpacing:I

.field private mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

.field private mSwipeBoundedScrollOffset:F

.field private mSwipeCanScroll:Z

.field private mSwipeIsCancelable:Z

.field private mSwipeUnboundScrollOffset:F

.field private mTabAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

.field private mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

.field private final mUnderScrollAngleInterpolator:Landroid/view/animation/Interpolator;

.field private mViewAnimationFactory:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackViewAnimation;

.field private mViewAnimations:Landroid/animation/Animator;

.field private final mViewAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mWarpSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-class v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->$assertionsDisabled:Z

    .line 115
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->DRAG_ANGLE_THRESHOLD:F

    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLongPressSelected:I

    .line 163
    iput v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mPinch0TabIndex:I

    .line 164
    iput v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mPinch1TabIndex:I

    .line 169
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mEvenOutProgress:F

    .line 171
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mEvenOutRate:F

    .line 182
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverScrollAngleInterpolator:Landroid/view/animation/Interpolator;

    .line 184
    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->getDecelerateInterpolator()Landroid/view/animation/DecelerateInterpolator;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mUnderScrollAngleInterpolator:Landroid/view/animation/Interpolator;

    .line 186
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverscrollSlideInterpolator:Landroid/view/animation/Interpolator;

    .line 190
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;->NONE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDragLock:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    .line 191
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLastScrollUpdate:J

    .line 192
    iput v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mMinScrollMotion:F

    .line 195
    iput v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollTarget:F

    .line 196
    iput v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    .line 197
    iput v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffsetForDyingTabs:F

    .line 198
    iput v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mCurrentScrollDirection:F

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    .line 213
    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDiscardDirection:F

    .line 217
    iput-boolean v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mRecomputePosition:Z

    .line 219
    iput v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mReferenceOrderIndex:I

    .line 222
    iput v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mCurrentMode:I

    .line 225
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->NONE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    .line 245
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$1;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mViewAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 261
    iput-object p2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    .line 262
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->contextChanged(Landroid/content/Context;)V

    .line 263
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;)Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    return-object v0
.end method

.method private allowOverscroll()Z
    .locals 2

    .prologue
    .line 2136
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->NONE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->VIEW_MORE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->ENTER_STACK:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mPinch0TabIndex:I

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private approxScreen(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;F)F
    .locals 2

    .prologue
    .line 2239
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getScrollOffset()F

    move-result v0

    add-float/2addr v0, p2

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mWarpSize:F

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->scrollToScreen(FF)F

    move-result v0

    return v0
.end method

.method private canUpdateAnimation(JLorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;IZ)Z
    .locals 2

    .prologue
    .line 661
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mAnimationFactory:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;

    if-eqz v0, :cond_2

    .line 662
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->DISCARD:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->UNDISCARD:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->DISCARD_ALL:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-ne v0, v1, :cond_2

    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->DISCARD:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-eq p3, v0, :cond_1

    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->UNDISCARD:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-eq p3, v0, :cond_1

    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->DISCARD_ALL:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-ne p3, v0, :cond_2

    .line 668
    :cond_1
    const/4 v0, 0x1

    .line 671
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelDiscardScrollingAnimation()Z
    .locals 3

    .prologue
    .line 679
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->DISCARD:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->UNDISCARD:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->DISCARD_ALL:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-ne v0, v1, :cond_1

    .line 682
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    const/4 v1, 0x0

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;->SCROLL_OFFSET:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab$Property;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->cancel(Ljava/lang/Object;Ljava/lang/Enum;)V

    .line 683
    const/4 v0, 0x1

    .line 685
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cleanupStackTabState()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 606
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    if-eqz v0, :cond_2

    move v0, v1

    move v2, v1

    .line 609
    :goto_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 610
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->isDying()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 611
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->releaseTabLayout(Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;)V

    .line 609
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 613
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 617
    :cond_1
    if-nez v2, :cond_3

    .line 619
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->cleanupTabs()V

    .line 638
    :cond_2
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getDefaultDiscardDirection()F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDiscardDirection:F

    .line 639
    return-void

    .line 620
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v0, v0

    if-ge v2, v0, :cond_2

    .line 623
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    .line 624
    new-array v0, v2, [Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    move v0, v1

    .line 627
    :goto_2
    array-length v4, v3

    if-ge v1, v4, :cond_5

    .line 628
    aget-object v4, v3, v1

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->isDying()Z

    move-result v4

    if-nez v4, :cond_4

    .line 629
    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v5, v3, v1

    aput-object v5, v4, v0

    .line 630
    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v4, v4, v0

    invoke-virtual {v4, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setNewIndex(I)V

    .line 631
    add-int/lit8 v0, v0, 0x1

    .line 627
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 634
    :cond_5
    sget-boolean v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-eq v0, v2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private commitDiscard(JZ)V
    .locals 3

    .prologue
    .line 1226
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDiscardingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    if-nez v0, :cond_0

    .line 1240
    :goto_0
    return-void

    .line 1228
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1229
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDiscardingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    .line 1230
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getDiscardAmount()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getDiscardRange()F

    move-result v2

    div-float/2addr v1, v2

    const v2, 0x3ecccccd    # 0.4f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    if-eqz p3, :cond_2

    .line 1232
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getId()I

    move-result v0

    invoke-virtual {v1, p1, p2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->uiRequestingCloseTab(JI)V

    .line 1233
    const-string/jumbo v0, "MobileStackViewSwipeCloseTab"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 1234
    const-string/jumbo v0, "MobileTabClosed"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 1238
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDiscardingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    .line 1239
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->requestUpdate()V

    goto :goto_0

    .line 1236
    :cond_2
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->UNDISCARD:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->startAnimation(JLorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;)V

    goto :goto_1
.end method

.method public static computeDiscardAlpha(FF)F
    .locals 3

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2286
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    .line 2289
    :goto_0
    return v0

    .line 2287
    :cond_0
    div-float v1, p0, p1

    .line 2288
    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2, v0}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v1

    .line 2289
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public static computeDiscardScale(FFZ)F
    .locals 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2272
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    move v0, v1

    .line 2275
    :goto_0
    return v0

    .line 2273
    :cond_0
    div-float v2, p0, p1

    .line 2274
    if-eqz p2, :cond_1

    const v0, 0x3f333333    # 0.7f

    .line 2275
    :goto_1
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1, v0, v2}, Lorg/chromium/chrome/browser/util/MathUtils;->interpolate(FFF)F

    move-result v0

    goto :goto_0

    .line 2274
    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_1
.end method

.method private computeDragLock(FF)Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;
    .locals 10

    .prologue
    .line 748
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 749
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 750
    sget v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->DRAG_ANGLE_THRESHOLD:F

    mul-float/2addr v0, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;->DISCARD:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    .line 753
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 754
    iget-wide v6, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLastScrollUpdate:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x190

    cmp-long v3, v6, v8

    if-lez v3, :cond_0

    .line 755
    sget-object v3, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;->NONE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    iput-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDragLock:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    .line 758
    :cond_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDragLock:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    sget-object v6, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;->NONE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    if-ne v3, v6, :cond_1

    sub-float v3, v1, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v6, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mMinScrollMotion:F

    cmpl-float v3, v3, v6

    if-gtz v3, :cond_3

    :cond_1
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDragLock:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    sget-object v6, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;->DISCARD:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    if-ne v3, v6, :cond_2

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mMinScrollMotion:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDragLock:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;->SCROLL:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    if-ne v2, v3, :cond_4

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mMinScrollMotion:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 761
    :cond_3
    iput-wide v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLastScrollUpdate:J

    .line 762
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDragLock:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;->NONE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    if-ne v1, v2, :cond_4

    .line 763
    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDragLock:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    .line 767
    :cond_4
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDragLock:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;->NONE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    if-ne v1, v2, :cond_6

    :goto_1
    return-object v0

    .line 750
    :cond_5
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;->SCROLL:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    goto :goto_0

    .line 767
    :cond_6
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDragLock:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    goto :goto_1
.end method

.method private computeOverscrollPercent()F
    .locals 2

    .prologue
    .line 1781
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverScrollOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 1782
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverScrollOffset:F

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mMaxOverScroll:F

    div-float/2addr v0, v1

    .line 1784
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverScrollOffset:F

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mMaxUnderScroll:F

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private computeSpacing(I)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2054
    .line 2055
    const/4 v1, 0x1

    if-le p1, v1, :cond_3

    .line 2056
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getScrollDimensionSize()F

    move-result v2

    .line 2057
    const v1, 0x3e851eb8    # 0.26f

    mul-float/2addr v1, v2

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mMinSpacing:F

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    .line 2058
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    if-eqz v3, :cond_2

    .line 2059
    :goto_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 2060
    sget-boolean v3, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v3, v3, v0

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2061
    :cond_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->isDying()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2062
    int-to-float v1, v1

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v3, v3, v0

    iget v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mCurrentMode:I

    invoke-virtual {v3, v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getSizeInScrollDirection(I)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    .line 2059
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2067
    :cond_2
    const/high16 v0, 0x41a00000    # 20.0f

    sub-float v0, v2, v0

    int-to-float v2, p1

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 2068
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2070
    :cond_3
    return v0
.end method

.method private computeTabClippingVisibilityHelper()V
    .locals 12

    .prologue
    .line 1627
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    move v9, v0

    .line 1634
    :goto_0
    if-eqz v9, :cond_2

    .line 1636
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getHeight()F

    move-result v0

    sget v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->sStackedTabVisibleSize:F

    add-float/2addr v0, v1

    .line 1645
    :goto_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    move v8, v1

    move v6, v0

    :goto_2
    if-ltz v8, :cond_f

    .line 1646
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v10

    .line 1647
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setVisible(Z)V

    .line 1651
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->isDying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getXInStackOffset()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {v10}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 1653
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setClipOffset(FF)V

    .line 1654
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {v10, v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setClipSize(FF)V

    move v0, v6

    .line 1645
    :goto_3
    add-int/lit8 v1, v8, -0x1

    move v8, v1

    move v6, v0

    goto :goto_2

    .line 1627
    :cond_1
    const/4 v0, 0x0

    move v9, v0

    goto :goto_0

    .line 1637
    :cond_2
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1639
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getWidth()F

    move-result v0

    sget v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->sStackedTabVisibleSize:F

    add-float/2addr v0, v1

    goto :goto_1

    .line 1642
    :cond_3
    sget v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->sStackedTabVisibleSize:F

    neg-float v0, v0

    goto :goto_1

    .line 1660
    :cond_4
    if-eqz v9, :cond_5

    .line 1662
    invoke-virtual {v10}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getY()F

    move-result v4

    .line 1663
    invoke-virtual {v10}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getScaledContentHeight()F

    move-result v3

    .line 1664
    sub-float v0, v6, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1665
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mBorderTransparentTop:F

    .line 1666
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mBorderTopPadding:F

    .line 1683
    :goto_4
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 1685
    cmpg-float v7, v2, v5

    if-gtz v7, :cond_7

    .line 1687
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setVisible(Z)V

    .line 1688
    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setDrawDecoration(Z)V

    .line 1721
    :goto_5
    if-lez v8, :cond_11

    .line 1722
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    add-int/lit8 v5, v8, -0x1

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v3

    .line 1723
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getScale()F

    move-result v3

    invoke-virtual {v10}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getScale()F

    move-result v5

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_e

    .line 1732
    :goto_6
    add-float/2addr v1, v4

    .line 1734
    invoke-virtual {v10}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getBorderAlpha()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_10

    invoke-virtual {v10}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getToolbarAlpha()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_10

    .line 1735
    add-float/2addr v0, v1

    goto :goto_3

    .line 1667
    :cond_5
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1669
    invoke-virtual {v10}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getX()F

    move-result v4

    .line 1670
    invoke-virtual {v10}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getScaledContentWidth()F

    move-result v3

    .line 1671
    sub-float v0, v6, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1672
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mBorderTransparentSide:F

    .line 1673
    const/4 v0, 0x0

    goto :goto_4

    .line 1676
    :cond_6
    invoke-virtual {v10}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getX()F

    move-result v0

    invoke-virtual {v10}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getScaledContentWidth()F

    move-result v1

    add-float v4, v0, v1

    .line 1677
    invoke-virtual {v10}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getScaledContentWidth()F

    move-result v3

    .line 1678
    sub-float v0, v4, v6

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1679
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mBorderTransparentSide:F

    neg-float v1, v0

    .line 1680
    const/4 v0, 0x0

    goto :goto_4

    .line 1692
    :cond_7
    sub-float v5, v2, v5

    sget v7, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->sStackedTabVisibleSize:F

    div-float/2addr v5, v7

    const/4 v7, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v5, v7, v11}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v5

    .line 1695
    invoke-virtual {v10, v5}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setDecorationAlpha(F)V

    .line 1701
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1702
    invoke-virtual {v10}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getTiltX()F

    move-result v7

    const/4 v11, 0x0

    cmpl-float v7, v7, v11

    if-gtz v7, :cond_8

    if-nez v9, :cond_a

    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v10}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getTiltY()F

    move-result v7

    const/4 v11, 0x0

    cmpg-float v7, v7, v11

    if-gez v7, :cond_9

    .line 1705
    :cond_8
    :goto_7
    invoke-virtual {v10}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getTiltX()F

    move-result v5

    invoke-virtual {v10}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getTiltY()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1707
    const/high16 v7, 0x3f800000    # 1.0f

    iget v11, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mMaxOverScrollAngle:F

    div-float/2addr v5, v11

    const v11, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v11

    add-float/2addr v5, v7

    .line 1710
    :cond_9
    mul-float/2addr v5, v2

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1712
    if-nez v9, :cond_b

    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_b

    sub-float/2addr v3, v5

    :goto_8
    const/4 v7, 0x0

    invoke-virtual {v10, v3, v7}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setClipOffset(FF)V

    .line 1716
    if-eqz v9, :cond_c

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    move v7, v3

    :goto_9
    if-eqz v9, :cond_d

    move v3, v5

    :goto_a
    invoke-virtual {v10, v7, v3}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setClipSize(FF)V

    goto/16 :goto_5

    .line 1702
    :cond_a
    invoke-virtual {v10}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getTiltY()F

    move-result v7

    const/4 v11, 0x0

    cmpl-float v7, v7, v11

    if-lez v7, :cond_9

    goto :goto_7

    .line 1712
    :cond_b
    const/4 v3, 0x0

    goto :goto_8

    :cond_c
    move v7, v5

    .line 1716
    goto :goto_9

    :cond_d
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_a

    .line 1726
    :cond_e
    invoke-virtual {v10}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getScale()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v4, v2

    goto/16 :goto_6

    .line 1739
    :cond_f
    return-void

    :cond_10
    move v0, v1

    goto/16 :goto_3

    :cond_11
    move v0, v6

    goto/16 :goto_3
.end method

.method private computeTabOffsetHelper(Landroid/graphics/RectF;)V
    .locals 19

    .prologue
    .line 1471
    move-object/from16 v0, p0

    iget v2, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mCurrentMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .line 1474
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v9

    .line 1475
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v10

    .line 1476
    invoke-direct/range {p0 .. p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->computeOverscrollPercent()F

    move-result v11

    .line 1477
    move-object/from16 v0, p0

    iget v3, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getMinScroll(Z)F

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getMaxScroll(Z)F

    move-result v5

    invoke-static {v3, v4, v5}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v7

    .line 1479
    invoke-direct/range {p0 .. p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getStackScale(Landroid/graphics/RectF;)F

    move-result v12

    .line 1481
    const/4 v5, 0x0

    .line 1482
    const/4 v4, 0x0

    .line 1483
    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v6, v6

    if-ge v3, v6, :cond_8

    .line 1484
    sget-boolean v6, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v6, v6, v3

    if-nez v6, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1471
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1485
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v8, v6, v3

    .line 1486
    invoke-virtual {v8}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v13

    .line 1489
    invoke-virtual {v8}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->isDying()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    iget v6, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffsetForDyingTabs:F

    .line 1491
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v6}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->approxScreen(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;F)F

    move-result v6

    .line 1494
    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1495
    const/4 v14, 0x3

    if-ge v5, v14, :cond_2

    .line 1498
    invoke-virtual {v13}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getTiltX()F

    move-result v14

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v14, v14

    .line 1499
    invoke-virtual {v13}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getTiltY()F

    move-result v15

    float-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v15, v0

    .line 1500
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 1501
    invoke-virtual {v13}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getAlpha()F

    move-result v15

    mul-float/2addr v14, v15

    .line 1502
    sget v15, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->sStackedTabVisibleSize:F

    mul-float/2addr v14, v15

    add-float/2addr v4, v14

    .line 1504
    :cond_2
    invoke-virtual {v8}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->isDying()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    :goto_3
    add-int/2addr v5, v8

    .line 1505
    const/4 v8, 0x0

    cmpg-float v8, v11, v8

    if-gez v8, :cond_3

    .line 1509
    const/high16 v8, 0x3e800000    # 0.25f

    div-float v8, v11, v8

    mul-float/2addr v8, v6

    add-float/2addr v6, v8

    .line 1511
    const/4 v8, 0x0

    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1518
    :cond_3
    invoke-virtual {v13}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getScaledContentWidth()F

    move-result v8

    sub-float v8, v9, v8

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v8, v14

    .line 1519
    invoke-virtual {v13}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getScaledContentHeight()F

    move-result v14

    sub-float v14, v10, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    .line 1524
    invoke-virtual {v13}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getOriginalContentWidth()F

    move-result v15

    const v16, 0x3f666666    # 0.9f

    mul-float v15, v15, v16

    mul-float/2addr v15, v12

    sub-float v15, v9, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    .line 1528
    invoke-virtual {v13}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getOriginalContentHeight()F

    move-result v16

    const v17, 0x3f666666    # 0.9f

    mul-float v16, v16, v17

    mul-float v16, v16, v12

    sub-float v16, v10, v16

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    .line 1533
    if-eqz v2, :cond_6

    .line 1534
    const v15, -0x40b33333    # -0.8f

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    .line 1535
    add-float/2addr v6, v14

    .line 1547
    :goto_4
    invoke-virtual {v13, v8}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setX(F)V

    .line 1548
    invoke-virtual {v13, v6}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setY(F)V

    .line 1483
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_4
    move v6, v7

    .line 1489
    goto/16 :goto_2

    .line 1504
    :cond_5
    const/4 v8, 0x1

    goto :goto_3

    .line 1537
    :cond_6
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1538
    const v17, -0x40cccccd    # -0.7f

    mul-float v15, v15, v17

    sub-float/2addr v8, v15

    .line 1539
    sub-float v6, v8, v6

    .line 1544
    :goto_5
    const/high16 v8, -0x41000000    # -0.5f

    mul-float v8, v8, v16

    add-float/2addr v8, v14

    move/from16 v18, v8

    move v8, v6

    move/from16 v6, v18

    goto :goto_4

    .line 1541
    :cond_7
    const v17, -0x40cccccd    # -0.7f

    mul-float v15, v15, v17

    add-float/2addr v8, v15

    .line 1542
    add-float/2addr v6, v8

    goto :goto_5

    .line 1552
    :cond_8
    const/4 v5, 0x0

    .line 1553
    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getHeightMinusTopControls()F

    move-result v3

    .line 1555
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    move v6, v4

    move v4, v5

    :goto_7
    if-ltz v6, :cond_e

    .line 1556
    sget-boolean v5, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->$assertionsDisabled:Z

    if-nez v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v5, v5, v6

    if-nez v5, :cond_a

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1553
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getWidth()F

    move-result v3

    goto :goto_6

    .line 1557
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v5, v5, v6

    .line 1558
    invoke-virtual {v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v7

    .line 1559
    invoke-virtual {v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->isDying()Z

    move-result v5

    if-nez v5, :cond_b

    .line 1562
    if-eqz v2, :cond_c

    .line 1563
    invoke-virtual {v7}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getY()F

    move-result v5

    .line 1564
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-virtual {v7, v8}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setY(F)V

    .line 1576
    :goto_8
    cmpl-float v5, v5, v3

    if-ltz v5, :cond_b

    const/4 v5, 0x3

    if-ge v4, v5, :cond_b

    .line 1577
    sget v5, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->sStackedTabVisibleSize:F

    sub-float/2addr v3, v5

    .line 1578
    add-int/lit8 v4, v4, 0x1

    .line 1555
    :cond_b
    add-int/lit8 v5, v6, -0x1

    move v6, v5

    goto :goto_7

    .line 1565
    :cond_c
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1567
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getWidth()F

    move-result v5

    invoke-virtual {v7}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getOriginalContentWidth()F

    move-result v8

    const v9, 0x3f666666    # 0.9f

    mul-float/2addr v8, v9

    mul-float/2addr v8, v12

    sub-float v8, v5, v8

    .line 1570
    invoke-virtual {v7}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getX()F

    move-result v5

    neg-float v5, v5

    add-float/2addr v5, v8

    .line 1571
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v9

    neg-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setX(F)V

    goto :goto_8

    .line 1573
    :cond_d
    invoke-virtual {v7}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getX()F

    move-result v5

    .line 1574
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-virtual {v7, v8}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setX(F)V

    goto :goto_8

    .line 1583
    :cond_e
    invoke-direct/range {p0 .. p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getDiscardRange()F

    move-result v7

    .line 1584
    const/4 v3, 0x0

    move v5, v3

    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v3, v3

    if-ge v5, v3, :cond_13

    .line 1585
    sget-boolean v3, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->$assertionsDisabled:Z

    if-nez v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v3, v3, v5

    if-nez v3, :cond_f

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1586
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v8, v3, v5

    .line 1587
    invoke-virtual {v8}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v9

    .line 1589
    invoke-virtual {v9}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getX()F

    move-result v3

    invoke-virtual {v8}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getXInStackOffset()F

    move-result v4

    add-float/2addr v3, v4

    .line 1590
    invoke-virtual {v9}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getY()F

    move-result v4

    invoke-virtual {v8}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getYInStackOffset()F

    move-result v6

    add-float/2addr v6, v4

    .line 1591
    invoke-virtual {v8}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getXOutOfStack()F

    move-result v4

    .line 1592
    invoke-virtual {v8}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getYOutOfStack()F

    move-result v10

    .line 1593
    invoke-virtual {v8}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getXInStackInfluence()F

    move-result v11

    invoke-static {v4, v3, v11}, Lorg/chromium/chrome/browser/util/MathUtils;->interpolate(FFF)F

    move-result v4

    .line 1594
    invoke-virtual {v8}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getYInStackInfluence()F

    move-result v3

    invoke-static {v10, v6, v3}, Lorg/chromium/chrome/browser/util/MathUtils;->interpolate(FFF)F

    move-result v3

    .line 1597
    invoke-virtual {v8}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getDiscardAmount()F

    move-result v6

    const/4 v10, 0x0

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_11

    .line 1598
    invoke-virtual {v8}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getDiscardAmount()F

    move-result v6

    .line 1599
    invoke-virtual {v8}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getDiscardFromClick()Z

    move-result v10

    .line 1600
    invoke-static {v6, v7, v10}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->computeDiscardScale(FFZ)F

    move-result v11

    .line 1601
    invoke-virtual {v8}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getDiscardOriginX()F

    move-result v12

    invoke-virtual {v8}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v13

    invoke-virtual {v13}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getOriginalContentWidth()F

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    .line 1603
    invoke-virtual {v8}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getDiscardOriginY()F

    move-result v13

    invoke-virtual {v8}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v8

    invoke-virtual {v8}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getOriginalContentHeight()F

    move-result v8

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v8, v14

    sub-float v8, v13, v8

    .line 1605
    if-eqz v10, :cond_10

    const/4 v6, 0x0

    .line 1606
    :cond_10
    if-eqz v2, :cond_12

    .line 1607
    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v11

    mul-float/2addr v10, v12

    add-float/2addr v6, v10

    add-float/2addr v4, v6

    .line 1608
    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v11

    mul-float/2addr v6, v8

    add-float/2addr v3, v6

    .line 1616
    :cond_11
    :goto_a
    move-object/from16 v0, p1

    iget v6, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v6

    invoke-virtual {v9, v4}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setX(F)V

    .line 1617
    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v4

    invoke-virtual {v9, v3}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setY(F)V

    .line 1584
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto/16 :goto_9

    .line 1610
    :cond_12
    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v11

    mul-float/2addr v10, v12

    add-float/2addr v4, v10

    .line 1611
    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v11

    mul-float/2addr v8, v10

    add-float/2addr v6, v8

    add-float/2addr v3, v6

    goto :goto_a

    .line 1619
    :cond_13
    return-void
.end method

.method private computeTabScaleAlphaDepthHelper(Landroid/graphics/RectF;)V
    .locals 8

    .prologue
    .line 1424
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getStackScale(Landroid/graphics/RectF;)F

    move-result v1

    .line 1425
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getDiscardRange()F

    move-result v2

    .line 1427
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 1428
    sget-boolean v3, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v3, v3, v0

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1429
    :cond_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v3, v3, v0

    .line 1430
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v4

    .line 1431
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getDiscardAmount()F

    move-result v5

    .line 1434
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getDiscardFromClick()Z

    move-result v6

    invoke-static {v5, v2, v6}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->computeDiscardScale(FFZ)F

    move-result v6

    .line 1436
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getScale()F

    move-result v7

    mul-float/2addr v7, v6

    mul-float/2addr v7, v1

    invoke-virtual {v4, v7}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setScale(F)V

    .line 1437
    invoke-virtual {v4, v6}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setBorderScale(F)V

    .line 1440
    invoke-static {v5, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->computeDiscardAlpha(FF)F

    move-result v5

    .line 1441
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getAlpha()F

    move-result v3

    mul-float/2addr v3, v5

    invoke-virtual {v4, v3}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setAlpha(F)V

    .line 1427
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1443
    :cond_1
    return-void
.end method

.method private computeTabScrollOffsetHelper()V
    .locals 5

    .prologue
    .line 1450
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 1451
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1452
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->isDying()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1454
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getScrollOffset()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1455
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setScrollOffset(F)V

    .line 1457
    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    add-float/2addr v1, v2

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->scrollToScreen(F)F

    move-result v1

    .line 1458
    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    neg-float v2, v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v3, v3, v0

    iget v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mCurrentMode:I

    invoke-virtual {v3, v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getSizeInScrollDirection(I)F

    move-result v3

    add-float/2addr v1, v3

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->screenToScroll(F)F

    move-result v1

    add-float/2addr v1, v2

    .line 1451
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1462
    :cond_1
    return-void
.end method

.method private computeTabTiltHelper(JLandroid/graphics/RectF;)V
    .locals 11

    .prologue
    .line 1796
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 1797
    :goto_0
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 1798
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 1799
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->computeOverscrollPercent()F

    move-result v4

    .line 1802
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v5, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->START_PINCH:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-eq v1, v5, :cond_3

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v5, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->DISCARD:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-eq v1, v5, :cond_3

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v5, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->FULL_ROLL:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-eq v1, v5, :cond_3

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v5, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->TAB_FOCUSED:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-eq v1, v5, :cond_3

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v5, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->UNDISCARD:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-eq v1, v5, :cond_3

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v5, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->DISCARD_ALL:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-eq v1, v5, :cond_3

    .line 1809
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mPinch0TabIndex:I

    if-gez v1, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v5, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->REACH_TOP:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-ne v1, v5, :cond_2

    .line 1812
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 1813
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v1, v1, v0

    .line 1814
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v1

    .line 1815
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setTiltX(FF)V

    .line 1816
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setTiltY(FF)V

    .line 1812
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1796
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1818
    :cond_2
    const/4 v1, 0x0

    cmpg-float v1, v4, v1

    if-gez v1, :cond_9

    .line 1819
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverScrollCounter:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_4

    .line 1820
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->FULL_ROLL:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->startAnimation(JLorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;)V

    .line 1821
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverScrollCounter:I

    .line 1824
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getMinScroll(Z)F

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getMaxScroll(Z)F

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->setScrollTarget(FZ)V

    .line 1890
    :cond_3
    return-void

    .line 1833
    :cond_4
    const/4 v1, 0x0

    .line 1834
    const/high16 v2, -0x41800000    # -0.25f

    cmpg-float v2, v4, v2

    if-gez v2, :cond_5

    .line 1836
    const/high16 v1, 0x3e800000    # 0.25f

    add-float/2addr v1, v4

    const/high16 v2, 0x3f400000    # 0.75f

    div-float/2addr v1, v2

    .line 1838
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mUnderScrollAngleInterpolator:Landroid/view/animation/Interpolator;

    neg-float v1, v1

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mMaxOverScrollAngle:F

    neg-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    .line 1843
    :cond_5
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v2

    .line 1844
    if-eqz v0, :cond_6

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getScaledContentHeight()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getY()F

    move-result v2

    add-float/2addr v2, v3

    .line 1847
    :goto_2
    const/4 v3, 0x0

    :goto_3
    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 1848
    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v4, v4, v3

    .line 1849
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v5

    .line 1850
    if-eqz v0, :cond_7

    .line 1851
    invoke-virtual {v5}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getY()F

    move-result v4

    sub-float v4, v2, v4

    invoke-virtual {v5, v1, v4}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setTiltX(FF)V

    .line 1847
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1844
    :cond_6
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getScaledContentWidth()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getX()F

    move-result v2

    add-float/2addr v2, v3

    goto :goto_2

    .line 1853
    :cond_7
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_8

    neg-float v4, v1

    :goto_5
    invoke-virtual {v5}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getX()F

    move-result v6

    sub-float v6, v2, v6

    invoke-virtual {v5, v4, v6}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setTiltY(FF)V

    goto :goto_4

    :cond_8
    move v4, v1

    goto :goto_5

    .line 1864
    :cond_9
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverScrollAngleInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    iget v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mMaxOverScrollAngle:F

    mul-float/2addr v5, v1

    .line 1866
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverscrollSlideInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    iget v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mMaxOverScrollSlide:F

    mul-float/2addr v4, v1

    .line 1869
    const/4 v1, 0x0

    :goto_6
    iget-object v6, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v6, v6

    if-ge v1, v6, :cond_3

    .line 1870
    iget-object v6, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v6, v6, v1

    .line 1871
    invoke-virtual {v6}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v6

    .line 1872
    if-eqz v0, :cond_a

    .line 1874
    invoke-virtual {v6}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getY()F

    move-result v7

    div-float/2addr v7, v3

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v7, v8, v9}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v7

    .line 1875
    mul-float/2addr v7, v5

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getScaledContentHeight()F

    move-result v8

    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setTiltX(FF)V

    .line 1876
    invoke-virtual {v6}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getY()F

    move-result v7

    add-float/2addr v7, v4

    invoke-virtual {v6, v7}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setY(F)V

    .line 1869
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1877
    :cond_a
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1879
    invoke-virtual {v6}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getX()F

    move-result v7

    div-float/2addr v7, v2

    neg-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v7, v8, v9}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v7

    .line 1880
    neg-float v8, v5

    mul-float/2addr v7, v8

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getScaledContentWidth()F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setTiltY(FF)V

    .line 1881
    invoke-virtual {v6}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getX()F

    move-result v7

    sub-float/2addr v7, v4

    invoke-virtual {v6, v7}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setX(F)V

    goto :goto_7

    .line 1884
    :cond_b
    invoke-virtual {v6}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getX()F

    move-result v7

    div-float/2addr v7, v2

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v7, v8, v9}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v7

    .line 1885
    mul-float/2addr v7, v5

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getScaledContentWidth()F

    move-result v8

    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setTiltY(FF)V

    .line 1886
    invoke-virtual {v6}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getX()F

    move-result v7

    add-float/2addr v7, v4

    invoke-virtual {v6, v7}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setX(F)V

    goto :goto_7
.end method

.method private computeTabVisibilitySortingHelper(Landroid/graphics/RectF;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 1748
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mReferenceOrderIndex:I

    .line 1749
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 1750
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getWidth()F

    move-result v0

    div-float/2addr v0, v3

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getHeight()F

    move-result v2

    div-float/2addr v2, v3

    invoke-direct {p0, v0, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getTabIndexAtPositon(FF)I

    move-result v0

    .line 1753
    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mCurrentScrollDirection:F

    cmpl-float v2, v2, v8

    if-lez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 1754
    :cond_0
    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mCurrentScrollDirection:F

    cmpg-float v2, v2, v8

    if-gez v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 1755
    :cond_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(III)I

    move-result v0

    .line 1758
    :cond_2
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getWidth()F

    move-result v2

    .line 1759
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getHeight()F

    move-result v3

    .line 1760
    iget v4, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v4, v8, v2}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v4

    .line 1761
    iget v5, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v5, v8, v2}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v5

    .line 1762
    iget v6, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v6, v8, v3}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v6

    .line 1763
    iget v7, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v7, v8, v3}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v7

    .line 1764
    sub-float v4, v5, v4

    sub-float v5, v7, v6

    mul-float/2addr v4, v5

    .line 1765
    mul-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1766
    div-float v2, v4, v2

    .line 1768
    :goto_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 1769
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->updateStackVisiblityValue(F)V

    .line 1770
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->updateVisiblityValue(I)V

    .line 1768
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1772
    :cond_3
    return-void
.end method

.method private createStackTabs(Z)V
    .locals 12

    .prologue
    const/high16 v8, -0x40800000    # -1.0f

    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 1970
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v10

    .line 1971
    if-nez v10, :cond_1

    .line 1972
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->cleanupTabs()V

    .line 2011
    :cond_0
    return-void

    .line 1974
    :cond_1
    iget-object v11, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    .line 1975
    new-array v0, v10, [Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    .line 1977
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->isIncognito()Z

    move-result v2

    .line 1978
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->isHiding()Z

    move-result v0

    if-nez v0, :cond_3

    move v4, v3

    :goto_0
    move v9, v7

    .line 1979
    :goto_1
    if-ge v9, v10, :cond_0

    .line 1980
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0, v9}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 1981
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    .line 1982
    :goto_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    invoke-direct {p0, v11, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->findTabById([Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;I)Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    move-result-object v5

    aput-object v5, v0, v9

    .line 1987
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v0, v0, v9

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    .line 1988
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getMaxContentWidth()F

    move-result v5

    .line 1989
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getMaxContentHeight()F

    move-result v6

    .line 1992
    :goto_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->createLayoutTab(IZZZFF)Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v1

    .line 1994
    invoke-virtual {v1, v3}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setInsetBorderVertical(Z)V

    .line 1995
    invoke-virtual {v1, v3}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setShowToolbar(Z)V

    .line 1996
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setToolbarAlpha(F)V

    .line 1997
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mIsStackForCurrentTabModel:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->index()I

    move-result v0

    if-eq v0, v9, :cond_5

    :cond_2
    move v0, v3

    :goto_4
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setAnonymizeToolbar(Z)V

    .line 2000
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v0, v0, v9

    if-nez v0, :cond_6

    .line 2001
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    new-instance v5, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    invoke-direct {v5, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;)V

    aput-object v5, v0, v9

    .line 2006
    :goto_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v0, v0, v9

    invoke-virtual {v0, v9}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setNewIndex(I)V

    .line 1979
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    :cond_3
    move v4, v7

    .line 1978
    goto :goto_0

    .line 1981
    :cond_4
    const/4 v1, -0x1

    goto :goto_2

    :cond_5
    move v0, v7

    .line 1997
    goto :goto_4

    .line 2003
    :cond_6
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v0, v0, v9

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setLayoutTab(Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;)V

    goto :goto_5

    :cond_7
    move v6, v8

    move v5, v8

    goto :goto_3
.end method

.method private createTabHelper(I)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2030
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-static {v2, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2046
    :cond_0
    :goto_0
    return v0

    .line 2035
    :cond_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    if-eqz v2, :cond_2

    .line 2036
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v3, v2

    move v2, v0

    .line 2037
    :goto_1
    if-ge v2, v3, :cond_2

    .line 2038
    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getId()I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 2037
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2044
    :cond_2
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->createStackTabs(Z)V

    move v0, v1

    .line 2046
    goto :goto_0
.end method

.method private discard(FFFF)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    .line 822
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->NONE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->DISCARD:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->DISCARD_ALL:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->UNDISCARD:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-eq v0, v1, :cond_1

    .line 871
    :cond_0
    :goto_0
    return-void

    .line 830
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDiscardingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    if-nez v0, :cond_2

    .line 831
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mInSwipe:Z

    if-nez v0, :cond_3

    .line 832
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getTabAtPositon(FF)Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDiscardingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    .line 838
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDiscardingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    if-eqz v0, :cond_2

    .line 839
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->cancelDiscardScrollingAnimation()Z

    .line 842
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDiscardingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getClickTargetBounds()Landroid/graphics/RectF;

    move-result-object v1

    .line 845
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mCurrentMode:I

    if-ne v0, v6, :cond_4

    .line 846
    iput v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDiscardDirection:F

    .line 847
    iget v0, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p1

    iget v2, v1, Landroid/graphics/RectF;->right:F

    sub-float v2, p1, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 848
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 856
    :goto_2
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDiscardingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getX()F

    move-result v2

    sub-float v2, p1, v2

    .line 857
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDiscardingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getY()F

    move-result v3

    sub-float v3, p2, v3

    .line 858
    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDiscardingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    iget-object v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDiscardingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    invoke-virtual {v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getScale()F

    move-result v5

    div-float/2addr v2, v5

    invoke-virtual {v4, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setDiscardOriginX(F)V

    .line 859
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDiscardingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDiscardingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getScale()F

    move-result v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setDiscardOriginY(F)V

    .line 860
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDiscardingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setDiscardFromClick(Z)V

    .line 862
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 863
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDiscardingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    .line 867
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDiscardingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    if-eqz v0, :cond_0

    .line 868
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mCurrentMode:I

    if-ne v0, v6, :cond_5

    .line 869
    :goto_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDiscardingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    invoke-virtual {v0, p3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->addToDiscardAmount(F)V

    goto/16 :goto_0

    .line 834
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->index()I

    move-result v0

    if-ltz v0, :cond_0

    .line 835
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->index()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDiscardingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    goto/16 :goto_1

    .line 850
    :cond_4
    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v2, 0x40800000    # 4.0f

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getWidth()F

    move-result v3

    div-float v3, p1, v3

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDiscardDirection:F

    .line 851
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDiscardDirection:F

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v2, v4}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDiscardDirection:F

    .line 852
    iget v0, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p2

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v2, p2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 853
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    goto/16 :goto_2

    :cond_5
    move p3, p4

    .line 868
    goto :goto_3
.end method

.method private evenOutTabs(FZ)Z
    .locals 13

    .prologue
    const/4 v3, 0x1

    const/4 v12, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 949
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->NONE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mEvenOutProgress:F

    cmpl-float v1, v1, v5

    if-gez v1, :cond_0

    cmpl-float v1, p1, v12

    if-nez v1, :cond_2

    :cond_0
    move v2, v0

    .line 998
    :cond_1
    :goto_0
    return v2

    .line 960
    :cond_2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mEvenOutRate:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mEvenOutProgress:F

    sub-float v2, v5, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 962
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mEvenOutProgress:F

    sub-float v1, v5, v1

    div-float v5, v4, v1

    .line 964
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getScrollDimensionSize()F

    move-result v6

    move v1, v0

    move v2, v0

    .line 965
    :goto_1
    iget-object v7, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v7, v7

    if-ge v0, v7, :cond_7

    .line 966
    iget-object v7, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getScrollOffset()F

    move-result v7

    .line 967
    iget v8, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mSpacing:I

    mul-int/2addr v8, v0

    int-to-float v8, v8

    invoke-direct {p0, v8}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->screenToScroll(F)F

    move-result v8

    .line 968
    iget v9, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollTarget:F

    add-float/2addr v9, v7

    invoke-direct {p0, v9}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->scrollToScreen(F)F

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 969
    iget v10, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollTarget:F

    add-float/2addr v10, v8

    invoke-direct {p0, v10}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->scrollToScreen(F)F

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 972
    cmpl-float v11, v9, v10

    if-nez v11, :cond_3

    .line 973
    iget-object v7, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v7, v7, v0

    invoke-virtual {v7, v8}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setScrollOffset(F)V

    .line 965
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 976
    :cond_3
    sub-float/2addr v8, v7

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    .line 977
    iget v8, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollTarget:F

    add-float/2addr v8, v7

    invoke-direct {p0, v8}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->scrollToScreen(F)F

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 979
    cmpl-float v8, v9, v8

    if-nez v8, :cond_4

    .line 980
    iget-object v8, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v8, v8, v0

    invoke-virtual {v8, v7}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setScrollOffset(F)V

    goto :goto_2

    .line 984
    :cond_4
    sub-float v8, v10, v9

    mul-float/2addr v8, p1

    cmpl-float v8, v8, v12

    if-gtz v8, :cond_5

    if-eqz p2, :cond_6

    .line 985
    :cond_5
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v2, v2, v0

    invoke-virtual {v2, v7}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setScrollOffset(F)V

    move v2, v3

    .line 986
    goto :goto_2

    :cond_6
    move v1, v3

    .line 988
    goto :goto_2

    .line 995
    :cond_7
    if-nez v1, :cond_1

    .line 996
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mEvenOutProgress:F

    add-float/2addr v0, v4

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mEvenOutProgress:F

    goto/16 :goto_0
.end method

.method private findTabById([Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;I)Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2014
    if-nez p1, :cond_1

    .line 2019
    :cond_0
    :goto_0
    return-object v0

    .line 2015
    :cond_1
    array-length v2, p1

    .line 2016
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 2017
    aget-object v3, p1, v1

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getId()I

    move-result v3

    if-ne v3, p2, :cond_2

    aget-object v0, p1, v1

    goto :goto_0

    .line 2016
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private finishAnimation(J)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 554
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->updateAndFinish()V

    .line 555
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mViewAnimations:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mViewAnimations:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 556
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mViewAnimations:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->onStackAnimationFinished()V

    .line 558
    :cond_3
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$2;->$SwitchMap$org$chromium$chrome$browser$compositor$layouts$phone$stack$StackAnimation$OverviewAnimationType:[I

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 596
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->NONE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-eq v0, v1, :cond_4

    .line 598
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    invoke-direct {p0, v0, v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->setScrollTarget(FZ)V

    .line 599
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->NONE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    .line 601
    :cond_4
    iput-object v7, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    .line 602
    iput-object v7, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mViewAnimations:Landroid/animation/Animator;

    .line 603
    return-void

    .line 560
    :pswitch_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->uiDoneEnteringStack()V

    goto :goto_0

    .line 563
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->springBack(J)V

    goto :goto_0

    .line 571
    :pswitch_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->isIncognito()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->uiDoneClosingAllTabs(Z)V

    .line 590
    :cond_5
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->cleanupStackTabState()V

    goto :goto_0

    .line 580
    :pswitch_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    if-eqz v0, :cond_5

    .line 582
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 583
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v2, v1, v0

    .line 584
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->isDying()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 585
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getId()I

    move-result v4

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->isIncognito()Z

    move-result v6

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->uiDoneClosingTab(JIZZ)V

    .line 582
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 558
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private finishAnimationsIfDone(JZ)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 727
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mViewAnimations:Landroid/animation/Animator;

    if-eqz v0, :cond_4

    move v0, v1

    .line 728
    :goto_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    if-eqz v3, :cond_5

    move v7, v1

    .line 729
    :goto_1
    if-nez v0, :cond_0

    if-eqz v7, :cond_6

    :cond_0
    move v6, v1

    .line 730
    :goto_2
    if-eqz v0, :cond_7

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mViewAnimations:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_7

    move v5, v2

    .line 731
    :goto_3
    if-eqz v7, :cond_8

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->finished()Z

    move-result v3

    move v4, v3

    .line 733
    :goto_4
    if-eqz p3, :cond_9

    if-eqz v6, :cond_9

    move v3, v1

    .line 734
    :goto_5
    if-eqz v6, :cond_a

    if-eqz v0, :cond_1

    if-eqz v5, :cond_a

    :cond_1
    if-eqz v7, :cond_2

    if-eqz v4, :cond_a

    :cond_2
    :goto_6
    or-int v0, v3, v1

    .line 736
    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->finishAnimation(J)V

    .line 737
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 727
    goto :goto_0

    :cond_5
    move v7, v2

    .line 728
    goto :goto_1

    :cond_6
    move v6, v2

    .line 729
    goto :goto_2

    :cond_7
    move v5, v1

    .line 730
    goto :goto_3

    :cond_8
    move v4, v1

    .line 731
    goto :goto_4

    :cond_9
    move v3, v2

    .line 733
    goto :goto_5

    :cond_a
    move v1, v2

    .line 734
    goto :goto_6
.end method

.method private forceScrollStop()V
    .locals 2

    .prologue
    .line 2160
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScroller:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->forceFinished(Z)V

    .line 2161
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->updateOverscrollOffset()V

    .line 2162
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollTarget:F

    .line 2163
    return-void
.end method

.method private getDefaultDiscardDirection()F
    .locals 2

    .prologue
    .line 442
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mCurrentMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private getDiscardRange()F
    .locals 1

    .prologue
    .line 2255
    const v0, 0x3f333333    # 0.7f

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getRange(F)F

    move-result v0

    return v0
.end method

.method private getMaxScroll(Z)F
    .locals 1

    .prologue
    .line 2110
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 2111
    :cond_0
    const/4 v0, 0x0

    .line 2113
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mMaxOverScroll:F

    goto :goto_0
.end method

.method private getMinScroll(Z)F
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2092
    .line 2093
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    if-eqz v0, :cond_1

    .line 2095
    const/4 v0, 0x0

    move v1, v2

    :goto_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 2096
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->isDying()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2097
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getScrollOffset()F

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 2095
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 2101
    :cond_2
    if-eqz p1, :cond_3

    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mMaxUnderScroll:F

    neg-float v2, v0

    :cond_3
    sub-float v0, v2, v1

    return v0
.end method

.method private getRange(F)F
    .locals 2

    .prologue
    .line 2259
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getWidth()F

    move-result v0

    :goto_0
    mul-float/2addr v0, p1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getHeightMinusTopControls()F

    move-result v0

    goto :goto_0
.end method

.method private getScrollDimensionSize()F
    .locals 2

    .prologue
    .line 1360
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getHeightMinusTopControls()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getWidth()F

    move-result v0

    goto :goto_0
.end method

.method private getStackScale(Landroid/graphics/RectF;)F
    .locals 2

    .prologue
    .line 2074
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getWidth()F

    move-result v1

    div-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getHeightMinusTopControls()F

    move-result v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private getTabAtPositon(FF)Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;
    .locals 2

    .prologue
    .line 1372
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getTabIndexAtPositon(FFF)I

    move-result v0

    .line 1373
    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method private getTabIndexAtPositon(FF)I
    .locals 1

    .prologue
    .line 1384
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getTabIndexAtPositon(FFF)I

    move-result v0

    return v0
.end method

.method private getTabIndexAtPositon(FFF)I
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 1396
    .line 1397
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getHeight()F

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getWidth()F

    move-result v1

    add-float/2addr v0, v1

    .line 1398
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    if-eqz v1, :cond_4

    .line 1399
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v1, v1

    add-int/lit8 v2, v1, -0x1

    move v1, v0

    move v3, v4

    :goto_0
    if-ltz v2, :cond_3

    .line 1402
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->isDying()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1403
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->computeDistanceTo(FF)F

    move-result v0

    .line 1406
    cmpg-float v5, v0, v1

    if-gez v5, :cond_2

    .line 1409
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 1399
    :goto_1
    add-int/lit8 v2, v2, -0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v0

    move v0, v2

    .line 1414
    :goto_2
    cmpg-float v1, v1, p3

    if-gtz v1, :cond_1

    :goto_3
    return v0

    :cond_1
    move v0, v4

    goto :goto_3

    :cond_2
    move v0, v1

    move v1, v3

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    move v1, v0

    move v0, v4

    goto :goto_2
.end method

.method private resetAllScrollOffset()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 2211
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    if-nez v0, :cond_0

    .line 2236
    :goto_0
    return-void

    .line 2216
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getScrollDimensionSize()F

    move-result v0

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mSpacing:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 2217
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    .line 2218
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v3}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v3

    .line 2219
    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v4}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->index()I

    move-result v4

    .line 2220
    int-to-float v5, v4

    cmpg-float v5, v5, v2

    if-ltz v5, :cond_1

    int-to-float v5, v3

    cmpg-float v5, v5, v0

    if-gtz v5, :cond_2

    .line 2221
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    .line 2230
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    if-eqz v0, :cond_5

    move v0, v1

    .line 2231
    :goto_2
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 2232
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v2, v2, v0

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mSpacing:I

    mul-int/2addr v3, v0

    int-to-float v3, v3

    invoke-direct {p0, v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->screenToScroll(F)F

    move-result v3

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setScrollOffset(F)V

    .line 2231
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2222
    :cond_2
    add-int/lit8 v5, v3, -0x1

    if-ne v4, v5, :cond_3

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    int-to-double v8, v3

    cmpg-double v5, v6, v8

    if-gez v5, :cond_3

    .line 2223
    int-to-float v2, v3

    sub-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mSpacing:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    goto :goto_1

    .line 2224
    :cond_3
    sub-int v5, v3, v4

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    cmpg-float v5, v5, v2

    if-gez v5, :cond_4

    .line 2225
    int-to-float v2, v3

    sub-float/2addr v0, v2

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mSpacing:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    goto :goto_1

    .line 2227
    :cond_4
    int-to-float v0, v4

    sub-float v0, v2, v0

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mSpacing:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    goto :goto_1

    .line 2235
    :cond_5
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->setScrollTarget(FZ)V

    goto :goto_0
.end method

.method private resetInputActionIndices()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 2325
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mPinch0TabIndex:I

    .line 2326
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mPinch1TabIndex:I

    .line 2327
    iput-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    .line 2328
    iput-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDiscardingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    .line 2329
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLongPressSelected:I

    .line 2330
    return-void
.end method

.method private screenToScroll(F)F
    .locals 1

    .prologue
    .line 2247
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mWarpSize:F

    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->screenToScroll(FF)F

    move-result v0

    return v0
.end method

.method private scroll(FFFFZ)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 883
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScroller:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p5, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->NONE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->DISCARD:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->UNDISCARD:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->DISCARD_ALL:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->ENTER_STACK:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-eq v1, v2, :cond_2

    .line 937
    :cond_1
    :goto_0
    return-void

    .line 892
    :cond_2
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mCurrentMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 898
    :goto_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    if-eqz v1, :cond_3

    if-eqz p5, :cond_4

    .line 899
    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getTabAtPositon(FF)Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    .line 902
    :cond_4
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mInSwipe:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    if-eqz v1, :cond_5

    .line 903
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->index()I

    move-result v1

    .line 904
    if-ltz v1, :cond_5

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v2, v2

    if-gt v1, v2, :cond_5

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v1, v2, v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    .line 907
    :cond_5
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    if-nez v1, :cond_8

    .line 908
    if-nez p5, :cond_a

    move p4, v0

    move v1, v0

    .line 929
    :goto_2
    invoke-direct {p0, p4, v6}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->evenOutTabs(FZ)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getIndex()I

    move-result v2

    if-lez v2, :cond_6

    .line 931
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getScrollOffset()F

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    add-float/2addr v1, v2

    .line 932
    sub-float v1, v0, v1

    .line 936
    :cond_6
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollTarget:F

    add-float/2addr v0, v1

    invoke-direct {p0, v0, v6}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->setScrollTarget(FZ)V

    goto :goto_0

    :cond_7
    move p4, p3

    .line 892
    goto :goto_1

    .line 912
    :cond_8
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getIndex()I

    move-result v1

    if-nez v1, :cond_9

    move v1, p4

    move p4, v0

    .line 913
    goto :goto_2

    .line 917
    :cond_9
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getScrollOffset()F

    move-result v0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    add-float/2addr v1, v0

    .line 918
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->scrollToScreen(F)F

    move-result v0

    .line 919
    add-float/2addr v0, p4

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->screenToScroll(F)F

    move-result v0

    .line 920
    sub-float v1, v0, v1

    .line 923
    invoke-static {p4}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    invoke-static {v1, v3, v4}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v1

    mul-float/2addr v1, v2

    goto :goto_2

    :cond_a
    move v1, p4

    goto :goto_2
.end method

.method private scrollToScreen(F)F
    .locals 1

    .prologue
    .line 2243
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mWarpSize:F

    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->scrollToScreen(FF)F

    move-result v0

    return v0
.end method

.method private setScrollTarget(FZ)V
    .locals 2

    .prologue
    .line 2085
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->allowOverscroll()Z

    move-result v0

    .line 2086
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getMinScroll(Z)F

    move-result v1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getMaxScroll(Z)F

    move-result v0

    invoke-static {p1, v1, v0}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollTarget:F

    .line 2087
    if-eqz p2, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollTarget:F

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    .line 2088
    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollTarget:F

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mCurrentScrollDirection:F

    .line 2089
    return-void
.end method

.method private setWarpState(ZZ)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2357
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getScrollDimensionSize()F

    move-result v0

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v2

    .line 2359
    :goto_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mWarpSize:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_1

    .line 2360
    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getMinScroll(Z)F

    move-result v3

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getMaxScroll(Z)F

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v2

    .line 2362
    :goto_1
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 2363
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v3, v3, v1

    .line 2364
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getScrollOffset()F

    move-result v4

    .line 2365
    add-float v5, v4, v2

    .line 2366
    iget v6, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mWarpSize:F

    invoke-static {v5, v6}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->scrollToScreen(FF)F

    move-result v6

    .line 2367
    invoke-static {v6, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->screenToScroll(FF)F

    move-result v6

    .line 2368
    sub-float v5, v6, v5

    .line 2369
    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setScrollOffset(F)V

    .line 2362
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2357
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2373
    :cond_1
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mWarpSize:F

    .line 2374
    return-void
.end method

.method private smoothInput(FF)F
    .locals 2

    .prologue
    const/high16 v1, 0x41a00000    # 20.0f

    .line 2155
    sub-float v0, p2, v1

    add-float/2addr v1, p2

    invoke-static {p1, v0, v1}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v0

    .line 2156
    const v1, 0x3f666666    # 0.9f

    invoke-static {v0, p2, v1}, Lorg/chromium/chrome/browser/util/MathUtils;->interpolate(FFF)F

    move-result v0

    return v0
.end method

.method private springBack(J)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 1263
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScroller:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1264
    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getMinScroll(Z)F

    move-result v0

    float-to-int v6, v0

    .line 1265
    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getMaxScroll(Z)F

    move-result v0

    float-to-int v7, v0

    .line 1266
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollTarget:F

    int-to-float v1, v6

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollTarget:F

    int-to-float v1, v7

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 1267
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScroller:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollTarget:F

    float-to-int v3, v0

    move v4, v2

    move v5, v2

    move-wide v8, p1

    invoke-virtual/range {v1 .. v9}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->springBack(IIIIIIJ)Z

    .line 1268
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollTarget:F

    int-to-float v1, v6

    int-to-float v3, v7

    invoke-static {v0, v1, v3}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v0

    invoke-direct {p0, v0, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->setScrollTarget(FZ)V

    .line 1269
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->requestUpdate()V

    .line 1272
    :cond_1
    return-void
.end method

.method private startAnimation(JLorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;)V
    .locals 7

    .prologue
    .line 478
    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->startAnimation(JLorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;IZ)V

    .line 479
    return-void
.end method

.method private startAnimation(JLorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;IIZ)V
    .locals 9

    .prologue
    .line 507
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p5

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->canUpdateAnimation(JLorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->finishAnimation(J)V

    .line 512
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->stopScrollingMovement(J)V

    .line 515
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mAnimationFactory:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mViewAnimationFactory:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackViewAnimation;

    if-eqz v0, :cond_7

    .line 516
    iput-object p3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    .line 520
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mViewAnimationFactory:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackViewAnimation;

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getViewContainer()Landroid/view/ViewGroup;

    move-result-object v3

    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-object v1, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackViewAnimation;->createAnimatorForType(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;Landroid/view/ViewGroup;Lorg/chromium/chrome/browser/tabmodel/TabModel;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mViewAnimations:Landroid/animation/Animator;

    .line 523
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mViewAnimations:Landroid/animation/Animator;

    if-eqz v0, :cond_8

    .line 524
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mViewAnimations:Landroid/animation/Animator;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mViewAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 534
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->start()V

    .line 535
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mViewAnimations:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mViewAnimations:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 536
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mViewAnimations:Landroid/animation/Animator;

    if-eqz v0, :cond_4

    .line 537
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->onStackAnimationStarted()V

    .line 540
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mViewAnimations:Landroid/animation/Animator;

    if-eqz v0, :cond_6

    :cond_5
    if-eqz p6, :cond_7

    .line 541
    :cond_6
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->finishAnimation(J)V

    .line 545
    :cond_7
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->requestUpdate()V

    .line 546
    return-void

    .line 529
    :cond_8
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mAnimationFactory:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    iget v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mSpacing:I

    iget v6, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    iget v7, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mWarpSize:F

    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getDiscardRange()F

    move-result v8

    move-object v1, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v8}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;->createAnimatorSetForType(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;IIIFFF)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    goto :goto_0
.end method

.method private startAnimation(JLorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;IZ)V
    .locals 9

    .prologue
    .line 502
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->index()I

    move-result v5

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->startAnimation(JLorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;IIZ)V

    .line 503
    return-void
.end method

.method private startAnimation(JLorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;Z)V
    .locals 7

    .prologue
    .line 489
    const/4 v5, -0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->startAnimation(JLorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;IZ)V

    .line 490
    return-void
.end method

.method private stopScrollingMovement(J)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2119
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScroller:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->computeScrollOffset(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2122
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScroller:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->getCurrY()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->setScrollTarget(FZ)V

    .line 2125
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScroller:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->forceFinished(Z)V

    .line 2131
    :goto_0
    return-void

    .line 2129
    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->setScrollTarget(FZ)V

    goto :goto_0
.end method

.method private updateCurrentMode(I)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2293
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mCurrentMode:I

    .line 2294
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getDefaultDiscardDirection()F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDiscardDirection:F

    .line 2295
    const/4 v0, 0x1

    invoke-direct {p0, v0, v7}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->setWarpState(ZZ)V

    .line 2296
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mBorderTopPadding:F

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mBorderTransparentTop:F

    sub-float v4, v0, v1

    .line 2297
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getWidth()F

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getHeight()F

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getHeightMinusTopControls()F

    move-result v2

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mBorderTopPadding:F

    iget v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mBorderLeftPadding:F

    iget v6, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mCurrentMode:I

    invoke-static/range {v0 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;->createAnimationFactory(FFFFFFI)Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mAnimationFactory:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation;

    .line 2300
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 2301
    new-instance v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackViewAnimation;

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getWidth()F

    move-result v2

    invoke-direct {v1, v0, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackViewAnimation;-><init>(FF)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mViewAnimationFactory:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackViewAnimation;

    .line 2302
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    if-nez v0, :cond_1

    .line 2311
    :cond_0
    return-void

    .line 2303
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getWidth()F

    move-result v1

    .line 2304
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getHeightMinusTopControls()F

    move-result v2

    move v0, v7

    .line 2305
    :goto_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 2306
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v3

    .line 2307
    if-eqz v3, :cond_2

    .line 2308
    invoke-virtual {v3, v1}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setMaxContentWidth(F)V

    .line 2309
    invoke-virtual {v3, v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setMaxContentHeight(F)V

    .line 2305
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateOverscrollOffset()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2192
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    invoke-direct {p0, v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getMinScroll(Z)F

    move-result v1

    invoke-direct {p0, v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getMaxScroll(Z)F

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v0

    .line 2193
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->allowOverscroll()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2194
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    .line 2196
    :cond_0
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    sub-float v0, v1, v0

    .line 2199
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverScrollOffset:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    .line 2200
    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverScrollDerivative:I

    if-eq v1, v2, :cond_2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    cmpg-float v2, v0, v3

    if-gez v2, :cond_2

    .line 2201
    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverScrollCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverScrollCounter:I

    .line 2205
    :cond_1
    :goto_0
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverScrollDerivative:I

    .line 2207
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverScrollOffset:F

    .line 2208
    return-void

    .line 2202
    :cond_2
    cmpl-float v2, v0, v3

    if-gtz v2, :cond_3

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mCurrentMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 2203
    :cond_3
    iput v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverScrollCounter:I

    goto :goto_0
.end method

.method private updateScrollOffset(J)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2169
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollTarget:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 2170
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScroller:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->computeScrollOffset(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2171
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScroller:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->getCurrY()I

    move-result v0

    int-to-float v0, v0

    .line 2172
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    sub-float v1, v0, v1

    invoke-direct {p0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->evenOutTabs(FZ)Z

    .line 2175
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    .line 2183
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->requestUpdate()V

    .line 2188
    :goto_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->updateOverscrollOffset()V

    .line 2189
    return-void

    .line 2181
    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollTarget:F

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->smoothInput(FF)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    goto :goto_0

    .line 2186
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScroller:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->forceFinished(Z)V

    goto :goto_1
.end method


# virtual methods
.method public cleanupTabs()V
    .locals 1

    .prologue
    .line 2317
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    .line 2318
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->resetInputActionIndices()V

    .line 2319
    return-void
.end method

.method public click(JFF)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/high16 v3, 0x41900000    # 18.0f

    const/4 v1, 0x1

    .line 1282
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v4, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->NONE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v4, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->DISCARD:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v4, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->UNDISCARD:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v4, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->DISCARD_ALL:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-eq v0, v4, :cond_1

    .line 1316
    :cond_0
    :goto_0
    return-void

    .line 1288
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getTouchSlop()F

    move-result v0

    invoke-direct {p0, p3, p4, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getTabIndexAtPositon(FFF)I

    move-result v4

    .line 1289
    if-ltz v4, :cond_0

    .line 1292
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mCurrentMode:I

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v5

    xor-int/2addr v0, v5

    if-nez v0, :cond_2

    move v2, v1

    .line 1294
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v0

    invoke-virtual {v0, p3, p4, v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->checkCloseHitTest(FFZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1298
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v4, v0, v4

    .line 1300
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mBorderTopPadding:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v0, v5

    .line 1301
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getOriginalContentWidth()F

    move-result v5

    .line 1303
    invoke-virtual {v4, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setDiscardOriginY(F)V

    .line 1304
    if-eqz v2, :cond_4

    move v0, v3

    :goto_2
    invoke-virtual {v4, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setDiscardOriginX(F)V

    .line 1305
    invoke-virtual {v4, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setDiscardFromClick(Z)V

    .line 1306
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getId()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->uiRequestingCloseTab(JI)V

    .line 1307
    const-string/jumbo v0, "MobileStackViewCloseTab"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 1308
    const-string/jumbo v0, "MobileTabClosed"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 1292
    goto :goto_1

    .line 1304
    :cond_4
    sub-float v0, v5, v3

    goto :goto_2

    .line 1313
    :cond_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getId()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->uiSelectingTab(JI)V

    goto :goto_0
.end method

.method public computeTabPosition(JLandroid/graphics/RectF;)V
    .locals 1

    .prologue
    .line 1899
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 1921
    :cond_0
    :goto_0
    return-void

    .line 1901
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mRecomputePosition:Z

    if-eqz v0, :cond_0

    .line 1902
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mRecomputePosition:Z

    .line 1905
    invoke-direct {p0, p3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->computeTabScaleAlphaDepthHelper(Landroid/graphics/RectF;)V

    .line 1908
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->computeTabScrollOffsetHelper()V

    .line 1911
    invoke-direct {p0, p3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->computeTabOffsetHelper(Landroid/graphics/RectF;)V

    .line 1914
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->computeTabTiltHelper(JLandroid/graphics/RectF;)V

    .line 1917
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->computeTabClippingVisibilityHelper()V

    .line 1920
    invoke-direct {p0, p3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->computeTabVisibilitySortingHelper(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public contextChanged(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1326
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1327
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v1, v4, v1

    .line 1329
    const/high16 v2, 0x3fa00000    # 1.25f

    iput v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mMinScrollMotion:F

    .line 1330
    sget v2, Lorg/chromium/chrome/R$dimen;->over_scroll:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    .line 1331
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    .line 1332
    mul-float/2addr v2, v1

    iput v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mMaxOverScroll:F

    .line 1333
    mul-float v2, v3, v1

    iput v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mMaxUnderScroll:F

    .line 1334
    sget v2, Lorg/chromium/chrome/R$integer;->over_scroll_angle:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mMaxOverScrollAngle:F

    .line 1335
    sget v2, Lorg/chromium/chrome/R$dimen;->over_scroll_slide:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iput v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mMaxOverScrollSlide:F

    .line 1336
    sget v2, Lorg/chromium/chrome/R$dimen;->even_out_scrolling:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    mul-float/2addr v2, v1

    div-float v2, v4, v2

    iput v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mEvenOutRate:F

    .line 1337
    sget v2, Lorg/chromium/chrome/R$dimen;->min_spacing:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iput v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mMinSpacing:F

    .line 1338
    sget v2, Lorg/chromium/chrome/R$dimen;->tabswitcher_border_frame_transparent_top:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    mul-float/2addr v2, v1

    iput v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mBorderTransparentTop:F

    .line 1340
    sget v2, Lorg/chromium/chrome/R$dimen;->tabswitcher_border_frame_transparent_side:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    mul-float/2addr v2, v1

    iput v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mBorderTransparentSide:F

    .line 1342
    sget v2, Lorg/chromium/chrome/R$dimen;->tabswitcher_border_frame_padding_top:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    mul-float/2addr v2, v1

    iput v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mBorderTopPadding:F

    .line 1343
    sget v2, Lorg/chromium/chrome/R$dimen;->tabswitcher_border_frame_padding_left:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mBorderLeftPadding:F

    .line 1347
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScroller:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

    .line 1348
    return-void
.end method

.method public drag(JFFFF)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 792
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, p6

    move v1, p5

    .line 799
    :goto_0
    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->computeDragLock(FF)Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    move-result-object v0

    .line 800
    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;->DISCARD:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    if-ne v0, v1, :cond_2

    .line 801
    invoke-direct {p0, p3, p4, p5, p6}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->discard(FFFF)V

    .line 810
    :goto_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->requestUpdate()V

    .line 811
    return-void

    .line 797
    :cond_0
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    neg-float v0, p5

    move v1, p6

    goto :goto_0

    :cond_1
    move v0, p5

    move v1, p6

    goto :goto_0

    .line 805
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDragLock:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;->SCROLL:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDiscardingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    if-eqz v0, :cond_3

    .line 806
    invoke-direct {p0, p1, p2, v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->commitDiscard(JZ)V

    .line 808
    :cond_3
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_4

    neg-float v3, p5

    :goto_2
    move-object v0, p0

    move v1, p3

    move v2, p4

    move v4, p6

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->scroll(FFFFZ)V

    goto :goto_1

    :cond_4
    move v3, p5

    goto :goto_2
.end method

.method public ensureCleaningUpDyingTabs(J)V
    .locals 1

    .prologue
    .line 647
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->finishAnimation(J)V

    .line 648
    return-void
.end method

.method public fling(JFFFF)V
    .locals 19

    .prologue
    .line 1011
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDragLock:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    sget-object v5, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;->SCROLL:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    if-eq v4, v5, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDiscardingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    if-eqz v4, :cond_2

    .line 1012
    move-object/from16 v0, p0

    iget v4, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mCurrentMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1013
    :goto_0
    invoke-direct/range {p0 .. p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getDiscardRange()F

    move-result v4

    const v5, 0x3ecccccd    # 0.4f

    mul-float/2addr v4, v5

    .line 1014
    const v5, 0x3cb60b61

    mul-float v5, v5, p5

    neg-float v6, v4

    invoke-static {v5, v6, v4}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v4

    .line 1015
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDiscardingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    invoke-virtual {v5, v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->addToDiscardAmount(F)V

    .line 1033
    :cond_0
    :goto_1
    return-void

    :cond_1
    move/from16 p5, p6

    .line 1012
    goto :goto_0

    .line 1016
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v5, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->NONE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-ne v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScroller:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverScrollOffset:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getTabIndexAtPositon(FF)I

    move-result v4

    if-ltz v4, :cond_0

    .line 1018
    move-object/from16 v0, p0

    iget v4, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mCurrentMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 1022
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScroller:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollTarget:F

    float-to-int v7, v4

    const/4 v8, 0x0

    move/from16 v0, p6

    float-to-int v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getMinScroll(Z)F

    move-result v4

    float-to-int v12, v4

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getMaxScroll(Z)F

    move-result v4

    float-to-int v13, v4

    const/4 v14, 0x0

    const/4 v4, 0x0

    cmpl-float v4, p6, v4

    if-lez v4, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mMaxOverScroll:F

    :goto_3
    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v4, v15

    float-to-int v15, v4

    move-wide/from16 v16, p1

    invoke-virtual/range {v5 .. v17}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->fling(IIIIIIIIIIJ)V

    .line 1031
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScroller:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackScroller;->getFinalY()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->setScrollTarget(FZ)V

    goto :goto_1

    .line 1018
    :cond_3
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_4

    move/from16 v0, p5

    neg-float v0, v0

    move/from16 p6, v0

    goto :goto_2

    :cond_4
    move/from16 p6, p5

    goto :goto_2

    .line 1022
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mMaxUnderScroll:F

    goto :goto_3
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTabs()[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    return-object v0
.end method

.method public getVisibleCount()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 293
    .line 294
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    if-eqz v1, :cond_1

    move v1, v0

    .line 295
    :goto_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 296
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 295
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 299
    :cond_2
    return v1
.end method

.method public isDisplayable()Z
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mIsDying:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifySizeChanged(FFI)V
    .locals 0

    .prologue
    .line 1356
    invoke-direct {p0, p3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->updateCurrentMode(I)V

    .line 1357
    return-void
.end method

.method public onDown(J)V
    .locals 3

    .prologue
    .line 1041
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;->NONE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDragLock:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$DragLock;

    .line 1042
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->NONE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-ne v0, v1, :cond_0

    .line 1043
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->stopScrollingMovement(J)V

    .line 1046
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    .line 1047
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->commitDiscard(JZ)V

    .line 1048
    return-void
.end method

.method public onLongPress(JFF)V
    .locals 7

    .prologue
    .line 1058
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->NONE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-ne v0, v1, :cond_0

    .line 1059
    invoke-direct {p0, p3, p4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getTabIndexAtPositon(FF)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLongPressSelected:I

    .line 1060
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLongPressSelected:I

    if-ltz v0, :cond_0

    .line 1061
    sget-object v4, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->VIEW_MORE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    iget v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLongPressSelected:I

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->startAnimation(JLorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;IZ)V

    .line 1062
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mEvenOutProgress:F

    .line 1065
    :cond_0
    return-void
.end method

.method public onPinch(JFFFFZ)V
    .locals 17

    .prologue
    .line 1078
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v4, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->START_PINCH:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverviewAnimationType:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v4, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->NONE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    if-ne v3, v4, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    if-nez v3, :cond_2

    .line 1215
    :cond_1
    :goto_0
    return-void

    .line 1082
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mPinch0TabIndex:I

    if-gez v3, :cond_3

    sget-object v3, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->START_PINCH:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->startAnimation(JLorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;)V

    .line 1088
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mCurrentMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    cmpl-float v3, p4, p6

    if-lez v3, :cond_7

    const/4 v3, 0x1

    .line 1091
    :goto_1
    if-eqz v3, :cond_c

    move/from16 v5, p5

    .line 1092
    :goto_2
    if-eqz v3, :cond_d

    move/from16 v4, p6

    .line 1093
    :goto_3
    if-eqz v3, :cond_e

    move/from16 v7, p3

    .line 1094
    :goto_4
    if-eqz v3, :cond_f

    .line 1095
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mCurrentMode:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_10

    move v3, v4

    .line 1098
    :goto_6
    move-object/from16 v0, p0

    iget v6, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mCurrentMode:I

    const/4 v8, 0x1

    if-ne v6, v8, :cond_12

    move/from16 v11, p4

    .line 1102
    :goto_7
    if-eqz p7, :cond_4

    .line 1104
    const/4 v6, -0x1

    move-object/from16 v0, p0

    iput v6, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mPinch0TabIndex:I

    .line 1105
    const/4 v6, -0x1

    move-object/from16 v0, p0

    iput v6, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mPinch1TabIndex:I

    .line 1106
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    .line 1107
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v6}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->commitDiscard(JZ)V

    .line 1109
    :cond_4
    move-object/from16 v0, p0

    iget v8, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mPinch0TabIndex:I

    .line 1110
    move-object/from16 v0, p0

    iget v6, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mPinch1TabIndex:I

    .line 1111
    move-object/from16 v0, p0

    iget v9, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mPinch0TabIndex:I

    if-gez v9, :cond_19

    .line 1112
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getTabIndexAtPositon(FF)I

    move-result v8

    .line 1113
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v7, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getTabIndexAtPositon(FF)I

    move-result v4

    .line 1115
    if-ltz v8, :cond_5

    if-gez v4, :cond_18

    .line 1116
    :cond_5
    const/4 v8, -0x1

    .line 1117
    const/4 v4, -0x1

    move v10, v4

    .line 1121
    :goto_8
    if-ltz v8, :cond_6

    move-object/from16 v0, p0

    iget v4, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mPinch0TabIndex:I

    if-ne v4, v8, :cond_6

    move-object/from16 v0, p0

    iget v4, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mPinch1TabIndex:I

    if-ne v4, v10, :cond_6

    .line 1123
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getMinScroll(Z)F

    move-result v4

    .line 1124
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getMaxScroll(Z)F

    move-result v5

    .line 1125
    move-object/from16 v0, p0

    iget v6, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollTarget:F

    invoke-static {v6, v4, v5}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v12

    .line 1129
    if-lt v8, v10, :cond_15

    .line 1131
    move-object/from16 v0, p0

    iget v4, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLastPinch0Offset:F

    sub-float v4, v3, v4

    .line 1132
    if-nez v8, :cond_14

    .line 1134
    add-float/2addr v4, v12

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->setScrollTarget(FZ)V

    .line 1209
    :cond_6
    :goto_9
    move-object/from16 v0, p0

    iput v8, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mPinch0TabIndex:I

    .line 1210
    move-object/from16 v0, p0

    iput v10, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mPinch1TabIndex:I

    .line 1211
    move-object/from16 v0, p0

    iput v3, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLastPinch0Offset:F

    .line 1212
    move-object/from16 v0, p0

    iput v11, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLastPinch1Offset:F

    .line 1213
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mEvenOutProgress:F

    .line 1214
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->requestUpdate()V

    goto/16 :goto_0

    .line 1088
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_8
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_a

    cmpg-float v3, p3, p5

    if-gtz v3, :cond_9

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_a
    cmpl-float v3, p3, p5

    if-lez v3, :cond_b

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_c
    move/from16 v5, p3

    .line 1091
    goto/16 :goto_2

    :cond_d
    move/from16 v4, p4

    .line 1092
    goto/16 :goto_3

    :cond_e
    move/from16 v7, p5

    .line 1093
    goto/16 :goto_4

    :cond_f
    move/from16 p4, p6

    .line 1094
    goto/16 :goto_5

    .line 1095
    :cond_10
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_11

    neg-float v3, v5

    goto/16 :goto_6

    :cond_11
    move v3, v5

    goto/16 :goto_6

    .line 1098
    :cond_12
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_13

    neg-float v6, v7

    move v11, v6

    goto/16 :goto_7

    :cond_13
    move v11, v7

    goto/16 :goto_7

    .line 1136
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getScrollOffset()F

    move-result v5

    add-float/2addr v5, v12

    .line 1138
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->scrollToScreen(F)F

    move-result v5

    .line 1139
    add-float/2addr v4, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->screenToScroll(F)F

    move-result v4

    .line 1140
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getScrollOffset()F

    move-result v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->setScrollTarget(FZ)V

    goto/16 :goto_9

    .line 1147
    :cond_15
    move-object/from16 v0, p0

    iget v4, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLastPinch0Offset:F

    sub-float v4, v3, v4

    .line 1148
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v5, v5, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->approxScreen(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;F)F

    move-result v13

    .line 1149
    add-float v9, v13, v4

    .line 1153
    move-object/from16 v0, p0

    iget v4, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLastPinch1Offset:F

    sub-float v4, v11, v4

    .line 1154
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v5, v5, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->approxScreen(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;F)F

    move-result v5

    .line 1155
    add-float v14, v5, v4

    .line 1161
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->screenToScroll(F)F

    move-result v4

    .line 1162
    add-float v6, v9, v13

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->screenToScroll(F)F

    move-result v6

    .line 1163
    add-float/2addr v6, v12

    sub-float v4, v6, v4

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->setScrollTarget(FZ)V

    move v4, v8

    move v6, v9

    move v7, v9

    .line 1168
    :goto_a
    if-gt v4, v10, :cond_16

    .line 1169
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v15, v15, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v12}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->approxScreen(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;F)F

    move-result v15

    .line 1170
    sub-float/2addr v15, v13

    sub-float v16, v5, v13

    div-float v15, v15, v16

    .line 1172
    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v15

    mul-float v16, v16, v9

    mul-float/2addr v15, v14

    add-float v15, v15, v16

    .line 1173
    invoke-static {v7, v15}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 1174
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 1175
    sget v6, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->sStackedTabVisibleSize:F

    add-float v7, v15, v6

    .line 1176
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v6, v6, v4

    move-object/from16 v0, p0

    iget v0, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mCurrentMode:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getSizeInScrollDirection(I)F

    move-result v6

    add-float/2addr v6, v15

    .line 1177
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->screenToScroll(F)F

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollTarget:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    move-object/from16 v16, v0

    aget-object v16, v16, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setScrollOffset(F)V

    .line 1168
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 1182
    :cond_16
    sub-float v5, v14, v5

    .line 1183
    add-int/lit8 v4, v10, 0x1

    :goto_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v14, v14

    if-ge v4, v14, :cond_17

    .line 1184
    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v5, v14

    .line 1185
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v14, v14, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->approxScreen(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;F)F

    move-result v14

    add-float/2addr v14, v5

    .line 1186
    invoke-static {v7, v14}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 1187
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 1188
    sget v6, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->sStackedTabVisibleSize:F

    add-float v7, v14, v6

    .line 1189
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v6, v6, v4

    move-object/from16 v0, p0

    iget v15, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mCurrentMode:I

    invoke-virtual {v6, v15}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getSizeInScrollDirection(I)F

    move-result v6

    add-float/2addr v6, v14

    .line 1190
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v15, v15, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->screenToScroll(F)F

    move-result v14

    move-object/from16 v0, p0

    iget v0, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollTarget:F

    move/from16 v16, v0

    sub-float v14, v14, v16

    invoke-virtual {v15, v14}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setScrollOffset(F)V

    .line 1183
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 1197
    :cond_17
    sub-float v5, v9, v13

    .line 1198
    add-int/lit8 v4, v8, -0x1

    :goto_c
    if-lez v4, :cond_6

    .line 1199
    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 1200
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v6, v6, v4

    move-object/from16 v0, p0

    iget v7, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mCurrentMode:I

    invoke-virtual {v6, v7}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getSizeInScrollDirection(I)F

    move-result v6

    sub-float v6, v9, v6

    .line 1201
    sget v7, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->sStackedTabVisibleSize:F

    sub-float v7, v9, v7

    .line 1202
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v13, v13, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->approxScreen(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;F)F

    move-result v13

    add-float/2addr v13, v5

    .line 1203
    invoke-static {v6, v13}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1204
    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 1205
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v7, v7, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->screenToScroll(F)F

    move-result v6

    move-object/from16 v0, p0

    iget v13, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollTarget:F

    sub-float/2addr v6, v13

    invoke-virtual {v7, v6}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setScrollOffset(F)V

    .line 1198
    add-int/lit8 v4, v4, -0x1

    goto :goto_c

    :cond_18
    move v10, v4

    goto/16 :goto_8

    :cond_19
    move v10, v6

    goto/16 :goto_8
.end method

.method public onUpOrCancel(J)V
    .locals 1

    .prologue
    .line 1247
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mPinch0TabIndex:I

    if-ltz v0, :cond_0

    .line 1248
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->REACH_TOP:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->startAnimation(JLorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;)V

    .line 1249
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->requestUpdate()V

    .line 1252
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->commitDiscard(JZ)V

    .line 1254
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->resetInputActionIndices()V

    .line 1256
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->springBack(J)V

    .line 1257
    return-void
.end method

.method public onUpdateCompositorAnimations(JZ)Z
    .locals 3

    .prologue
    .line 710
    if-nez p3, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->updateScrollOffset(J)V

    .line 712
    :cond_0
    const/4 v0, 0x1

    .line 713
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    if-eqz v1, :cond_1

    .line 714
    if-eqz p3, :cond_3

    .line 715
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->finished()Z

    move-result v0

    .line 719
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->finishAnimationsIfDone(JZ)V

    .line 722
    :cond_1
    if-eqz p3, :cond_2

    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->forceScrollStop()V

    .line 723
    :cond_2
    return v0

    .line 717
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->update(J)Z

    move-result v0

    goto :goto_0
.end method

.method public onUpdateViewAnimation(JZ)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 695
    .line 696
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mViewAnimations:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 697
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mViewAnimations:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 698
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->finishAnimationsIfDone(JZ)V

    .line 700
    :cond_0
    return v0

    .line 697
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestUpdate()V
    .locals 1

    .prologue
    .line 2336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mRecomputePosition:Z

    .line 2337
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->requestUpdate()V

    .line 2338
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 2345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mIsDying:Z

    .line 2346
    return-void
.end method

.method public setStackFocusInfo(FI)V
    .locals 2

    .prologue
    .line 1929
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    if-nez v0, :cond_1

    .line 1934
    :cond_0
    return-void

    .line 1930
    :cond_1
    iput p2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mReferenceOrderIndex:I

    .line 1931
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1932
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setBorderCloseButtonAlpha(F)V

    .line 1931
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setTabModel(Lorg/chromium/chrome/browser/tabmodel/TabModel;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 270
    return-void
.end method

.method public show(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 452
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mIsStackForCurrentTabModel:Z

    .line 454
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getDefaultDiscardDirection()F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDiscardDirection:F

    .line 457
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mOverScrollCounter:I

    .line 461
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->createStackTabs(Z)V

    .line 462
    return-void
.end method

.method public stackEntered(JZ)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 428
    if-nez p3, :cond_1

    const/4 v0, 0x1

    .line 429
    :goto_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v1, v1

    :cond_0
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->computeSpacing(I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mSpacing:I

    .line 430
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->resetAllScrollOffset()V

    .line 431
    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->ENTER_STACK:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    invoke-direct {p0, p1, p2, v1, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->startAnimation(JLorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;Z)V

    .line 432
    return-void

    :cond_1
    move v0, v1

    .line 428
    goto :goto_0
.end method

.method public swipeCancelled(J)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2512
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mInSwipe:Z

    if-nez v0, :cond_0

    .line 2524
    :goto_0
    return-void

    .line 2514
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mDiscardingTab:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    .line 2516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mInSwipe:Z

    .line 2518
    invoke-direct {p0, v1, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->setWarpState(ZZ)V

    .line 2519
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mEvenOutProgress:F

    .line 2522
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getCurrentTab(Lorg/chromium/chrome/browser/tabmodel/TabList;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 2523
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    :goto_1
    invoke-virtual {v1, p1, p2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->uiSelectingTab(JI)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public swipeFinished(J)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2495
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mInSwipe:Z

    if-nez v0, :cond_0

    .line 2504
    :goto_0
    return-void

    .line 2497
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mInSwipe:Z

    .line 2500
    invoke-direct {p0, v1, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->setWarpState(ZZ)V

    .line 2501
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mEvenOutProgress:F

    .line 2503
    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->onUpOrCancel(J)V

    goto :goto_0
.end method

.method public swipeFlingOccurred(JFFFFFF)V
    .locals 9

    .prologue
    .line 2538
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mInSwipe:Z

    if-nez v0, :cond_0

    .line 2544
    :goto_0
    return-void

    :cond_0
    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move/from16 v6, p7

    move/from16 v7, p8

    .line 2541
    invoke-virtual/range {v1 .. v7}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->fling(JFFFF)V

    .line 2543
    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->onUpOrCancel(J)V

    goto :goto_0
.end method

.method public swipeStarted(JLorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;FF)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2384
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->DOWN:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    if-eq p3, v0, :cond_0

    .line 2415
    :goto_0
    return-void

    .line 2387
    :cond_0
    invoke-direct {p0, v3, v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->setWarpState(ZZ)V

    .line 2390
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->ENTER_STACK:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->startAnimation(JLorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;)V

    .line 2393
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->index()I

    move-result v0

    .line 2395
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mCurrentMode:I

    if-ne v1, v4, :cond_1

    .line 2396
    neg-int v0, v0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mSpacing:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    .line 2402
    :goto_1
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    invoke-direct {p0, v0, v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->setScrollTarget(FZ)V

    .line 2405
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mEvenOutProgress:F

    .line 2408
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mSwipeUnboundScrollOffset:F

    .line 2409
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mSwipeBoundedScrollOffset:F

    .line 2412
    iput-boolean v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mSwipeIsCancelable:Z

    .line 2413
    iput-boolean v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mSwipeCanScroll:Z

    .line 2414
    iput-boolean v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mInSwipe:Z

    goto :goto_0

    .line 2398
    :cond_1
    neg-int v0, v0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mSpacing:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p4

    const/high16 v1, 0x42200000    # 40.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    .line 2399
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    invoke-direct {p0, v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getMinScroll(Z)F

    move-result v1

    invoke-direct {p0, v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getMaxScroll(Z)F

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    goto :goto_1
.end method

.method public swipeUpdated(JFFFFFF)V
    .locals 9

    .prologue
    .line 2428
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mInSwipe:Z

    if-nez v0, :cond_1

    .line 2487
    :cond_0
    :goto_0
    return-void

    .line 2430
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getHeight()F

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getHeightMinusTopControls()F

    move-result v1

    sub-float/2addr v0, v1

    .line 2431
    cmpl-float v0, p8, v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mSwipeCanScroll:Z

    .line 2432
    :cond_2
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mSwipeCanScroll:Z

    if-eqz v0, :cond_0

    .line 2434
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->index()I

    move-result v8

    .line 2437
    if-ltz v8, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v0, v0

    if-lt v8, v0, :cond_4

    .line 2438
    :cond_3
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Tab index out of bounds in Stack#swipeUpdated()"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2442
    :cond_4
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    move v0, p6

    .line 2445
    :goto_1
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mSwipeUnboundScrollOffset:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mSwipeUnboundScrollOffset:F

    .line 2448
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getMinScroll(Z)F

    move-result v0

    .line 2449
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getMaxScroll(Z)F

    move-result v1

    .line 2450
    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mSwipeUnboundScrollOffset:F

    invoke-static {v2, v0, v1}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v0

    .line 2452
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mSwipeBoundedScrollOffset:F

    sub-float v7, v0, v1

    .line 2453
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mSwipeBoundedScrollOffset:F

    .line 2455
    const/4 v0, 0x0

    cmpl-float v0, v7, v0

    if-eqz v0, :cond_0

    .line 2457
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    move v6, p5

    :goto_2
    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    .line 2464
    invoke-virtual/range {v1 .. v7}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->drag(JFFFF)V

    .line 2467
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 2469
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getScrollOffset()F

    move-result v0

    .line 2470
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    neg-float v1, v1

    cmpg-float v0, v1, v0

    if-gez v0, :cond_7

    const/4 v0, 0x1

    .line 2473
    :goto_3
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mSwipeIsCancelable:Z

    or-int/2addr v1, v0

    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mSwipeIsCancelable:Z

    .line 2476
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mSwipeIsCancelable:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->swipeCancelled(J)V

    goto/16 :goto_0

    :cond_5
    move v0, p5

    .line 2442
    goto :goto_1

    :cond_6
    move v6, v7

    move v7, p6

    .line 2460
    goto :goto_2

    .line 2470
    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    .line 2479
    :cond_8
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getY()F

    move-result v0

    .line 2481
    const v1, 0x3e428f5c    # 0.19f

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getRange(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    const/4 v0, 0x1

    .line 2483
    :goto_4
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mSwipeIsCancelable:Z

    if-nez v0, :cond_a

    const/4 v1, 0x1

    :goto_5
    or-int/2addr v1, v2

    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mSwipeIsCancelable:Z

    .line 2485
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mSwipeIsCancelable:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->swipeCancelled(J)V

    goto/16 :goto_0

    .line 2481
    :cond_9
    const/4 v0, 0x0

    goto :goto_4

    .line 2483
    :cond_a
    const/4 v1, 0x0

    goto :goto_5
.end method

.method public tabClosingEffect(JI)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 320
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    if-nez v0, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    :cond_1
    move v0, v1

    move v2, v1

    move v3, v1

    .line 327
    :goto_1
    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v4, v4

    if-ge v0, v4, :cond_4

    .line 328
    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getId()I

    move-result v4

    if-ne v4, p3, :cond_3

    .line 332
    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->isDying()Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v5

    :goto_2
    or-int/2addr v2, v4

    .line 333
    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v4, v4, v0

    invoke-virtual {v4, v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setDying(Z)V

    .line 327
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v4, v1

    .line 332
    goto :goto_2

    .line 337
    :cond_3
    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v6, v4, v0

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v6, v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setNewIndex(I)V

    move v3, v4

    goto :goto_3

    .line 341
    :cond_4
    if-eqz v2, :cond_5

    .line 342
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffsetForDyingTabs:F

    .line 343
    invoke-direct {p0, v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->computeSpacing(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mSpacing:I

    .line 345
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->DISCARD:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->startAnimation(JLorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;)V

    .line 348
    :cond_5
    if-nez v3, :cond_0

    .line 349
    iput-boolean v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mIsDying:Z

    goto :goto_0
.end method

.method public tabCreated(JI)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 400
    invoke-direct {p0, p3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->createTabHelper(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    :goto_0
    return-void

    .line 402
    :cond_0
    iput-boolean v7, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mIsDying:Z

    .line 403
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->finishAnimation(J)V

    .line 404
    sget-object v4, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->NEW_TAB_OPENED:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-static {v0, p3}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabIndexById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)I

    move-result v5

    const/4 v6, -0x1

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->startAnimation(JLorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;IIZ)V

    goto :goto_0
.end method

.method public tabSelectingEffect(JI)V
    .locals 9

    .prologue
    .line 415
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-static {v0, p3}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabIndexById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)I

    move-result v5

    .line 416
    sget-object v4, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->TAB_FOCUSED:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->startAnimation(JLorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;IIZ)V

    .line 417
    return-void
.end method

.method public tabsAllClosingEffect(J)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 359
    .line 361
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    if-eqz v0, :cond_1

    move v0, v1

    move v2, v1

    .line 362
    :goto_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 363
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->isDying()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    :goto_1
    or-int/2addr v2, v3

    .line 364
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v3, v3, v0

    invoke-virtual {v3, v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setDying(Z)V

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    .line 363
    goto :goto_1

    :cond_1
    move v2, v4

    .line 372
    :cond_2
    if-eqz v2, :cond_7

    .line 373
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffset:F

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mScrollOffsetForDyingTabs:F

    .line 374
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->computeSpacing(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mSpacing:I

    .line 376
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    if-eqz v0, :cond_6

    .line 377
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mCurrentMode:I

    if-ne v0, v4, :cond_3

    move v0, v4

    :goto_2
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v2

    xor-int/2addr v0, v2

    if-nez v0, :cond_4

    move v0, v4

    .line 379
    :goto_3
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 380
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v3, v2, v1

    .line 381
    invoke-virtual {v3, v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setDiscardOriginY(F)V

    .line 382
    if-eqz v0, :cond_5

    move v2, v5

    :goto_4
    invoke-virtual {v3, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setDiscardOriginX(F)V

    .line 384
    invoke-virtual {v3, v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setDiscardFromClick(Z)V

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move v0, v1

    .line 377
    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    .line 382
    :cond_5
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getOriginalContentWidth()F

    move-result v2

    goto :goto_4

    .line 387
    :cond_6
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->DISCARD_ALL:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->startAnimation(JLorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;)V

    .line 390
    :cond_7
    iput-boolean v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mIsDying:Z

    .line 391
    return-void
.end method

.method public undoClosure(JI)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1943
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->createStackTabs(Z)V

    .line 1944
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    if-nez v0, :cond_0

    .line 1958
    :goto_0
    return-void

    :cond_0
    move v0, v1

    .line 1946
    :goto_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1947
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    aget-object v2, v2, v0

    .line 1949
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getId()I

    move-result v3

    if-ne v3, p3, :cond_1

    .line 1950
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getDiscardRange()F

    move-result v3

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setDiscardAmount(F)V

    .line 1951
    invoke-virtual {v2, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->setDying(Z)V

    .line 1952
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getHeightMinusTopControls()F

    move-result v3

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setMaxContentHeight(F)V

    .line 1946
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1956
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mStackTabs:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v0, v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->computeSpacing(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->mSpacing:I

    .line 1957
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->UNDISCARD:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->startAnimation(JLorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;)V

    goto :goto_0
.end method
