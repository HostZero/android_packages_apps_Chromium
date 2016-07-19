.class public Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;
.super Lorg/chromium/chrome/browser/compositor/layouts/Layout;
.source "StackLayout.java"

# interfaces
.implements Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mCachedLandscapeViewport:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;

.field private mCachedPortraitViewport:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;

.field private mClicked:Z

.field private mDelayedLayoutTabInitRequired:Z

.field private mFlingFromModelChange:Z

.field private mFlingSpeed:F

.field private mInnerMarginPercent:F

.field private mInputMode:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;

.field private mLastOnDownTimeStamp:J

.field private mLastOnDownX:F

.field private mLastOnDownY:F

.field private final mMinDirectionThreshold:F

.field private final mMinMaxInnerMargin:I

.field private final mMinShortPressThresholdSqr:F

.field private final mOrderComparator:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$OrderComparator;

.field private mRenderedScrollOffset:F

.field private final mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;

.field private mScrollIndexOffset:F

.field private mSortedPriorityArray:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

.field private mSortingComparator:Ljava/util/Comparator;

.field private mStackAnimationCount:I

.field private mStackOffsetYPercent:F

.field private final mStackRects:[Landroid/graphics/RectF;

.field private final mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

.field private mTemporarySelectedStack:Ljava/lang/Boolean;

.field private final mViewContainer:Landroid/view/ViewGroup;

.field private final mVisibilityArray:Ljava/util/ArrayList;

.field private final mVisibilityComparator:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$VisibilityComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 144
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;)V

    .line 85
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mFlingSpeed:F

    .line 97
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mRenderedScrollOffset:F

    .line 98
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mScrollIndexOffset:F

    .line 104
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;->NONE:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mInputMode:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;

    .line 116
    iput-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mSortedPriorityArray:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mVisibilityArray:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$VisibilityComparator;

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$VisibilityComparator;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$1;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mVisibilityComparator:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$VisibilityComparator;

    .line 120
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$OrderComparator;

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$OrderComparator;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$1;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mOrderComparator:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$OrderComparator;

    .line 121
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mVisibilityComparator:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$VisibilityComparator;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mSortingComparator:Ljava/util/Comparator;

    .line 124
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mDelayedLayoutTabInitRequired:Z

    .line 129
    iput-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mCachedPortraitViewport:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;

    .line 130
    iput-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mCachedLandscapeViewport:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;

    .line 146
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mMinDirectionThreshold:F

    .line 148
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mMinShortPressThresholdSqr:F

    .line 151
    const/16 v0, 0x37

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mMinMaxInnerMargin:I

    .line 152
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mFlingSpeed:F

    .line 153
    new-array v0, v4, [Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    .line 154
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    new-instance v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    invoke-direct {v1, p1, p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;)V

    aput-object v1, v0, v2

    .line 155
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    new-instance v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    invoke-direct {v1, p1, p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;)V

    aput-object v1, v0, v3

    .line 156
    new-array v0, v4, [Landroid/graphics/RectF;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStackRects:[Landroid/graphics/RectF;

    .line 157
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStackRects:[Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    aput-object v1, v0, v2

    .line 158
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStackRects:[Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    aput-object v1, v0, v3

    .line 160
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mViewContainer:Landroid/view/ViewGroup;

    .line 161
    new-instance v0, Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;

    .line 162
    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;)[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mFlingFromModelChange:Z

    return v0
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;)F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mRenderedScrollOffset:F

    return v0
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;)F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mInnerMarginPercent:F

    return v0
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mMinMaxInnerMargin:I

    return v0
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;)F
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getFullScrollDistance()F

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;)F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStackOffsetYPercent:F

    return v0
.end method

.method private static addAllTabs(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;I)I
    .locals 4

    .prologue
    .line 1058
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getTabs()[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    move-result-object v2

    .line 1059
    if-eqz v2, :cond_0

    .line 1060
    const/4 v0, 0x0

    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_0

    .line 1061
    add-int/lit8 v1, p2, 0x1

    aget-object v3, v2, v0

    aput-object v3, p1, p2

    .line 1060
    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto :goto_0

    .line 1064
    :cond_0
    return p2
.end method

.method private appendVisibleLayoutTabs(JI[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;I)I
    .locals 5

    .prologue
    .line 992
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getTabs()[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    move-result-object v3

    .line 993
    if-eqz v3, :cond_0

    .line 994
    const/4 v0, 0x0

    move v1, p5

    move v2, v0

    :goto_0
    array-length v0, v3

    if-ge v2, v0, :cond_1

    .line 995
    aget-object v0, v3, v2

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v4

    .line 996
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    aput-object v4, p4, v1

    .line 994
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p5

    .line 999
    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private canScrollLinearly(I)Z
    .locals 3

    .prologue
    .line 1026
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    array-length v0, v0

    .line 1027
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mScrollIndexOffset:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mScrollIndexOffset:F

    neg-float v1, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-lez v0, :cond_1

    .line 1028
    :cond_0
    const/4 v0, 0x0

    .line 1032
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    xor-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->isDisplayable()Z

    move-result v0

    goto :goto_0
.end method

.method private computeInputMode(JFFFF)Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 604
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->isDisplayable()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;->SEND_TO_STACK:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;

    .line 640
    :goto_0
    return-object v0

    .line 605
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getTabStackIndex()I

    move-result v7

    .line 606
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getViewportParameters()Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->getStackIndexAt(FF)I

    move-result v0

    if-eq v7, v0, :cond_1

    .line 607
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;->SWITCH_STACK:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;

    goto :goto_0

    .line 609
    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mLastOnDownX:F

    add-float v1, p3, p5

    sub-float v1, v0, v1

    .line 610
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mLastOnDownY:F

    add-float v2, p4, p6

    sub-float v2, v0, v2

    .line 611
    mul-float v0, p5, p5

    mul-float v5, p6, p6

    add-float v8, v0, v5

    .line 612
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getOrientation()I

    move-result v0

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 613
    :goto_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getOrientation()I

    move-result v5

    if-ne v5, v3, :cond_3

    .line 616
    :goto_2
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mMinDirectionThreshold:F

    iget v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mMinDirectionThreshold:F

    mul-float/2addr v1, v5

    cmpl-float v1, v8, v1

    if-lez v1, :cond_4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 618
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;->SEND_TO_STACK:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;

    goto :goto_0

    :cond_2
    move v0, v2

    .line 612
    goto :goto_1

    :cond_3
    move v2, v1

    .line 613
    goto :goto_2

    .line 621
    :cond_4
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mMinDirectionThreshold:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    .line 622
    if-nez v7, :cond_5

    move v1, v3

    :goto_3
    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    move v0, v3

    :goto_4
    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getOrientation()I

    move-result v1

    if-ne v1, v3, :cond_7

    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_5
    xor-int/2addr v0, v3

    if-eqz v0, :cond_8

    .line 625
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;->SEND_TO_STACK:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;

    goto :goto_0

    :cond_5
    move v1, v4

    .line 622
    goto :goto_3

    :cond_6
    move v0, v4

    goto :goto_4

    :cond_7
    move v3, v4

    goto :goto_5

    .line 628
    :cond_8
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mLastOnDownX:F

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mLastOnDownY:F

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getOrientation()I

    move-result v6

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-static/range {v0 .. v7}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->isDraggingStackInWrongDirection(FFFFFFII)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 630
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;->SWITCH_STACK:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;

    goto/16 :goto_0

    .line 633
    :cond_9
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mLastOnDownTimeStamp:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    const/high16 v1, 0x43480000    # 200.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    .line 634
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;->SEND_TO_STACK:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;

    goto/16 :goto_0

    .line 637
    :cond_a
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mMinShortPressThresholdSqr:F

    cmpl-float v0, v8, v0

    if-lez v0, :cond_b

    .line 638
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;->SWITCH_STACK:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;

    goto/16 :goto_0

    .line 640
    :cond_b
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;->NONE:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;

    goto/16 :goto_0
.end method

.method private finishScrollStacks()V
    .locals 10

    .prologue
    .line 863
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$Property;->STACK_SNAP:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$Property;

    invoke-virtual {p0, p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->cancelAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;)V

    .line 864
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getTabStackIndex()I

    move-result v0

    .line 865
    int-to-float v1, v0

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mRenderedScrollOffset:F

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 866
    neg-int v0, v0

    int-to-float v5, v0

    .line 867
    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_1

    .line 868
    const-wide/16 v2, 0x64

    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getFullScrollDistance()F

    move-result v0

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mFlingSpeed:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-long v0, v0

    add-long v6, v2, v0

    .line 870
    sget-object v3, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$Property;->STACK_SNAP:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$Property;

    iget v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mRenderedScrollOffset:F

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-object v2, p0

    invoke-virtual/range {v1 .. v9}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 878
    :cond_0
    :goto_0
    return-void

    .line 872
    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$Property;->STACK_SNAP:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$Property;

    invoke-virtual {p0, v0, v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->setProperty(Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$Property;F)V

    .line 873
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mTemporarySelectedStack:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mTemporarySelectedStack:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->selectModel(Z)V

    .line 875
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mTemporarySelectedStack:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private flingStacks(Z)V
    .locals 1

    .prologue
    .line 849
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->canScrollLinearly(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 853
    :goto_1
    return-void

    .line 849
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 850
    :cond_1
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->setActiveStackState(Z)Z

    .line 851
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->finishScrollStacks()V

    .line 852
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->requestStackUpdate()V

    goto :goto_1
.end method

.method private getFullScrollDistance()F
    .locals 3

    .prologue
    .line 1036
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getWidth()F

    move-result v0

    .line 1038
    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getViewportParameters()Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->getInnerMargin()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0

    .line 1036
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getHeightMinusTopControls()F

    move-result v0

    goto :goto_0
.end method

.method private getTabStackIndex()I
    .locals 1

    .prologue
    .line 193
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getTabStackIndex(I)I

    move-result v0

    return v0
.end method

.method private getViewportParameters()Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;
    .locals 2

    .prologue
    .line 781
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 782
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mCachedPortraitViewport:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;

    if-nez v0, :cond_0

    .line 783
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mCachedPortraitViewport:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;

    .line 785
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mCachedPortraitViewport:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;

    .line 790
    :goto_0
    return-object v0

    .line 787
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mCachedLandscapeViewport:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;

    if-nez v0, :cond_2

    .line 788
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$LandscapeViewport;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$LandscapeViewport;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mCachedLandscapeViewport:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;

    .line 790
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mCachedLandscapeViewport:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;

    goto :goto_0
.end method

.method public static isDraggingStackInWrongDirection(FFFFFFII)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 824
    if-ne p6, v2, :cond_0

    sub-float v0, p2, p0

    .line 827
    :goto_0
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    move v0, v1

    .line 830
    :goto_1
    return v0

    .line 824
    :cond_0
    sub-float v0, p3, p1

    goto :goto_0

    .line 830
    :cond_1
    if-nez p7, :cond_2

    cmpg-float v3, v0, v5

    if-ltz v3, :cond_3

    :cond_2
    if-ne p7, v2, :cond_4

    cmpl-float v0, v0, v5

    if-lez v0, :cond_4

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private requestStackUpdate()V
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->requestUpdate()V

    .line 553
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->requestUpdate()V

    .line 554
    return-void
.end method

.method private resetScrollData()V
    .locals 1

    .prologue
    .line 1015
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getTabStackIndex()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mScrollIndexOffset:F

    .line 1016
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mScrollIndexOffset:F

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mRenderedScrollOffset:F

    .line 1017
    return-void
.end method

.method private scrollStacks(F)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 834
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$Property;->STACK_SNAP:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$Property;

    invoke-virtual {p0, p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->cancelAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;)V

    .line 835
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getFullScrollDistance()F

    move-result v0

    .line 836
    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mScrollIndexOffset:F

    div-float v4, p1, v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getOrientation()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v4, v0}, Lorg/chromium/chrome/browser/util/MathUtils;->flipSignIf(FZ)F

    move-result v0

    add-float/2addr v0, v3

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mScrollIndexOffset:F

    .line 838
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getTabStackIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->canScrollLinearly(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 839
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mScrollIndexOffset:F

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mRenderedScrollOffset:F

    .line 844
    :goto_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->requestStackUpdate()V

    .line 845
    return-void

    .line 836
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 841
    :cond_1
    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mScrollIndexOffset:F

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->isDisplayable()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, -0x40800000    # -1.0f

    :goto_2
    invoke-static {v3, v2, v0}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mRenderedScrollOffset:F

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2
.end method

.method private startMarginAnimation(Z)V
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->isDisplayable()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->startMarginAnimation(ZZ)V

    .line 465
    return-void
.end method

.method private startMarginAnimation(ZZ)V
    .locals 10

    .prologue
    .line 468
    iget v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mInnerMarginPercent:F

    .line 469
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 470
    :goto_0
    cmpl-float v0, v4, v5

    if-eqz v0, :cond_0

    .line 471
    sget-object v3, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$Property;->INNER_MARGIN_PERCENT:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$Property;

    const-wide/16 v6, 0xc8

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-object v2, p0

    invoke-virtual/range {v1 .. v9}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 473
    :cond_0
    return-void

    .line 469
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private startYOffsetAnimation(Z)V
    .locals 10

    .prologue
    .line 476
    iget v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStackOffsetYPercent:F

    .line 477
    if-eqz p1, :cond_1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 478
    :goto_0
    cmpl-float v0, v4, v5

    if-eqz v0, :cond_0

    .line 479
    sget-object v3, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$Property;->STACK_OFFSET_Y_PERCENT:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$Property;

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-object v2, p0

    invoke-virtual/range {v1 .. v9}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 481
    :cond_0
    return-void

    .line 477
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private uiPreemptivelySelectTabModel(Z)V
    .locals 0

    .prologue
    .line 453
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->onTabModelSwitched(Z)V

    .line 454
    return-void
.end method

.method private updateDelayedLayoutTabInit([Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1140
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mDelayedLayoutTabInitRequired:Z

    if-nez v0, :cond_1

    .line 1154
    :cond_0
    :goto_0
    return-void

    .line 1143
    :cond_1
    array-length v3, p1

    move v1, v2

    move v0, v2

    .line 1144
    :goto_1
    if-ge v1, v3, :cond_3

    .line 1145
    const/4 v4, 0x4

    if-ge v0, v4, :cond_0

    .line 1147
    aget-object v4, p1, v1

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getLayoutTab()Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v4

    .line 1149
    invoke-super {p0, v4}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->initLayoutTabFromHost(Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1150
    add-int/lit8 v0, v0, 0x1

    .line 1144
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1153
    :cond_3
    if-nez v0, :cond_0

    iput-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mDelayedLayoutTabInitRequired:Z

    goto :goto_0
.end method

.method private updateSortedPriorityArray(Ljava/util/Comparator;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1088
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getCount()I

    move-result v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 1089
    if-nez v2, :cond_0

    .line 1098
    :goto_0
    return v0

    .line 1090
    :cond_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mSortedPriorityArray:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mSortedPriorityArray:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v3, v3

    if-eq v3, v2, :cond_2

    .line 1091
    :cond_1
    new-array v2, v2, [Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    iput-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mSortedPriorityArray:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    .line 1094
    :cond_2
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mSortedPriorityArray:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    invoke-static {v2, v3, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->addAllTabs(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;I)I

    move-result v0

    .line 1095
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mSortedPriorityArray:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    invoke-static {v2, v3, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->addAllTabs(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;I)I

    move-result v0

    .line 1096
    sget-boolean v2, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mSortedPriorityArray:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    array-length v2, v2

    if-eq v0, v2, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1097
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mSortedPriorityArray:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    invoke-static {v0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    move v0, v1

    .line 1098
    goto :goto_0
.end method

.method private updateTabPriority()V
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mSortingComparator:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->updateSortedPriorityArray(Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1113
    :goto_0
    return-void

    .line 1111
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mSortedPriorityArray:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->updateTabsVisibility([Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;)V

    .line 1112
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mSortedPriorityArray:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->updateDelayedLayoutTabInit([Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;)V

    goto :goto_0
.end method

.method private updateTabsVisibility([Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;)V
    .locals 3

    .prologue
    .line 1123
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mVisibilityArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1124
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1125
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mVisibilityArray:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1127
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mVisibilityArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->updateCacheVisibleIds(Ljava/util/List;)V

    .line 1128
    return-void
.end method


# virtual methods
.method public attachViews(Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 294
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mViewContainer:Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    return-void
.end method

.method public click(JFF)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 797
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mClicked:Z

    .line 798
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getViewportParameters()Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;

    move-result-object v1

    .line 799
    invoke-virtual {v1, p3, p4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->getStackIndexAt(FF)I

    move-result v1

    .line 800
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getTabStackIndex()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 801
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getTabStackIndex()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->click(JFF)V

    .line 805
    :goto_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->requestStackUpdate()V

    .line 806
    return-void

    .line 803
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getTabStackIndex()I

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->flingStacks(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public commitOutstandingModelState(J)V
    .locals 3

    .prologue
    .line 231
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->ensureCleaningUpDyingTabs(J)V

    .line 232
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->ensureCleaningUpDyingTabs(J)V

    .line 233
    return-void
.end method

.method public contextChanged(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 568
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->contextChanged(Landroid/content/Context;)V

    .line 569
    invoke-static {p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->resetDimensionConstants(Landroid/content/Context;)V

    .line 570
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->contextChanged(Landroid/content/Context;)V

    .line 571
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->contextChanged(Landroid/content/Context;)V

    .line 572
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->requestStackUpdate()V

    .line 573
    return-void
.end method

.method public detachViews()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 304
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 305
    return-void
.end method

.method public doneHiding()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1043
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->doneHiding()V

    .line 1045
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mInnerMarginPercent:F

    .line 1046
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStackOffsetYPercent:F

    .line 1047
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->commitAllTabClosures()V

    .line 1048
    return-void
.end method

.method public drag(JFFFF)V
    .locals 9

    .prologue
    .line 577
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mInputMode:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;

    .line 578
    invoke-direct/range {p0 .. p6}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->computeInputMode(JFFFF)Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mInputMode:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;

    .line 580
    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;->SEND_TO_STACK:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mInputMode:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;->SWITCH_STACK:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;

    if-ne v1, v2, :cond_2

    .line 581
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getTabStackIndex()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->onUpOrCancel(J)V

    .line 587
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mInputMode:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;->SEND_TO_STACK:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;

    if-ne v0, v1, :cond_3

    .line 588
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getTabStackIndex()I

    move-result v1

    aget-object v1, v0, v1

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->drag(JFFFF)V

    .line 592
    :cond_1
    :goto_1
    return-void

    .line 582
    :cond_2
    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;->SWITCH_STACK:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mInputMode:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;->SEND_TO_STACK:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;

    if-ne v0, v1, :cond_0

    .line 584
    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->onUpOrCancel(J)V

    goto :goto_0

    .line 589
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mInputMode:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;->SWITCH_STACK:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;

    if-ne v0, v1, :cond_1

    .line 590
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    :goto_2
    invoke-direct {p0, p5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->scrollStacks(F)V

    goto :goto_1

    :cond_4
    move p5, p6

    goto :goto_2
.end method

.method public fling(JFFFF)V
    .locals 9

    .prologue
    .line 645
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mInputMode:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;->NONE:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;

    if-ne v0, v1, :cond_0

    .line 646
    const v0, 0x3d088889

    mul-float v6, p5, v0

    const v0, 0x3d088889

    mul-float v7, p6, v0

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v7}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->computeInputMode(JFFFF)Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mInputMode:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;

    .line 650
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mInputMode:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;->SEND_TO_STACK:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;

    if-ne v0, v1, :cond_2

    .line 651
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getTabStackIndex()I

    move-result v1

    aget-object v1, v0, v1

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->fling(JFFFF)V

    .line 660
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->requestStackUpdate()V

    .line 661
    return-void

    .line 652
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mInputMode:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;->SWITCH_STACK:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;

    if-ne v0, v1, :cond_1

    .line 653
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 654
    :goto_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 655
    :goto_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getWidth()F

    move-result v0

    .line 656
    :goto_3
    const v1, 0x3d088889

    mul-float/2addr v1, p5

    add-float/2addr v1, p3

    .line 657
    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v0

    sub-float/2addr v0, p3

    .line 658
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->scrollStacks(F)V

    goto :goto_0

    :cond_3
    move p5, p6

    .line 653
    goto :goto_1

    :cond_4
    move p3, p4

    .line 654
    goto :goto_2

    .line 655
    :cond_5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getHeight()F

    move-result v0

    goto :goto_3
.end method

.method protected getSceneLayer()Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;
    .locals 1

    .prologue
    .line 1204
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;

    return-object v0
.end method

.method public getSizingFlags()I
    .locals 1

    .prologue
    .line 166
    const/16 v0, 0x1010

    return v0
.end method

.method protected getTabStack(I)Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getTabStackIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTabStack(Z)Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;
    .locals 2

    .prologue
    .line 185
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    aget-object v0, v1, v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTabStackIndex(I)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 204
    const/4 v2, -0x1

    if-ne p1, v2, :cond_3

    .line 205
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mTemporarySelectedStack:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mTemporarySelectedStack:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 208
    :goto_0
    if-eqz v2, :cond_2

    .line 210
    :cond_0
    :goto_1
    return v0

    .line 205
    :cond_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v2}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->isIncognitoSelected()Z

    move-result v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 208
    goto :goto_1

    .line 210
    :cond_3
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v2, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_1
.end method

.method public getViewContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mViewContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public handlesCloseAll()Z
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x1

    return v0
.end method

.method public handlesTabClosing()Z
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x1

    return v0
.end method

.method public handlesTabCreating()Z
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x1

    return v0
.end method

.method protected initLayoutTabFromHost(Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;)Z
    .locals 1

    .prologue
    .line 1158
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->isInitFromHostNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mDelayedLayoutTabInitRequired:Z

    .line 1159
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifySizeChanged(FFI)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 558
    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mCachedLandscapeViewport:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;

    .line 559
    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mCachedPortraitViewport:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;

    .line 560
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->notifySizeChanged(FFI)V

    .line 561
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->notifySizeChanged(FFI)V

    .line 562
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->resetScrollData()V

    .line 563
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->requestStackUpdate()V

    .line 564
    return-void
.end method

.method protected onAnimationFinished()V
    .locals 2

    .prologue
    .line 378
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mFlingFromModelChange:Z

    .line 379
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mTemporarySelectedStack:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mTemporarySelectedStack:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->selectModel(Z)V

    .line 381
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mTemporarySelectedStack:Ljava/lang/Boolean;

    .line 383
    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStackAnimationCount:I

    if-nez v0, :cond_1

    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onAnimationFinished()V

    .line 384
    :cond_1
    return-void
.end method

.method protected onAnimationStarted()V
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStackAnimationCount:I

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onAnimationStarted()V

    .line 374
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    .line 322
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->onUpdateAnimation(JZ)Z

    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(JFF)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 882
    iput p3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mLastOnDownX:F

    .line 883
    iput p4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mLastOnDownY:F

    .line 884
    iput-wide p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mLastOnDownTimeStamp:J

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v7, v6

    .line 885
    invoke-direct/range {v1 .. v7}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->computeInputMode(JFFFF)Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mInputMode:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;

    .line 886
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getTabStackIndex()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->onDown(J)V

    .line 887
    return-void
.end method

.method public onLongPress(JFF)V
    .locals 3

    .prologue
    .line 891
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getTabStackIndex()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->onLongPress(JFF)V

    .line 892
    return-void
.end method

.method public onPinch(JFFFFZ)V
    .locals 9

    .prologue
    .line 930
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getTabStackIndex()I

    move-result v1

    aget-object v1, v0, v1

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->onPinch(JFFFFZ)V

    .line 931
    return-void
.end method

.method public bridge synthetic onPropertyAnimationFinished(Ljava/lang/Enum;)V
    .locals 0

    .prologue
    .line 50
    check-cast p1, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$Property;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->onPropertyAnimationFinished(Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$Property;)V

    return-void
.end method

.method public onPropertyAnimationFinished(Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$Property;)V
    .locals 0

    .prologue
    .line 1184
    return-void
.end method

.method public onStackAnimationFinished()V
    .locals 1

    .prologue
    .line 1198
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStackAnimationCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStackAnimationCount:I

    .line 1199
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStackAnimationCount:I

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onAnimationFinished()V

    .line 1200
    :cond_0
    return-void
.end method

.method public onStackAnimationStarted()V
    .locals 1

    .prologue
    .line 1190
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStackAnimationCount:I

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onAnimationStarted()V

    .line 1191
    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStackAnimationCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStackAnimationCount:I

    .line 1192
    return-void
.end method

.method public onTabClosing(JI)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 248
    invoke-virtual {p0, p3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getTabStack(I)Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    move-result-object v0

    .line 249
    if-nez v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->tabClosingEffect(JI)V

    .line 253
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->startMarginAnimation(Z)V

    .line 256
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->isDisplayable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->uiPreemptivelySelectTabModel(Z)V

    goto :goto_0
.end method

.method public onTabClosureCancelled(JIZ)V
    .locals 1

    .prologue
    .line 271
    invoke-super {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabClosureCancelled(JIZ)V

    .line 272
    invoke-virtual {p0, p4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getTabStack(Z)Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->undoClosure(JI)V

    .line 273
    return-void
.end method

.method public onTabCreated(JIIIZZFF)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 338
    invoke-super/range {p0 .. p9}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabCreated(JIIIZZFF)V

    .line 340
    invoke-virtual {p0, p3, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->startHiding(IZ)V

    .line 341
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    invoke-virtual {p0, p3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getTabStackIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->tabCreated(JI)V

    .line 342
    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->startMarginAnimation(Z)V

    .line 343
    invoke-direct {p0, p6}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->uiPreemptivelySelectTabModel(Z)V

    .line 344
    return-void
.end method

.method public onTabCreating(I)V
    .locals 3

    .prologue
    .line 332
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->onUpdateAnimation(JZ)Z

    .line 333
    return-void
.end method

.method public onTabModelSwitched(Z)V
    .locals 1

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->flingStacks(Z)V

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mFlingFromModelChange:Z

    .line 350
    return-void
.end method

.method public onTabSelecting(JI)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 237
    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->commitOutstandingModelState(J)V

    .line 238
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTabId()I

    move-result p3

    .line 239
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabSelecting(JI)V

    .line 240
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getTabStackIndex()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->tabSelectingEffect(JI)V

    .line 241
    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->startMarginAnimation(Z)V

    .line 242
    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->startYOffsetAnimation(Z)V

    .line 243
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->finishScrollStacks()V

    .line 244
    return-void
.end method

.method public onTabsAllClosing(JZ)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 261
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabsAllClosing(JZ)V

    .line 262
    invoke-virtual {p0, p3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getTabStack(Z)Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->tabsAllClosingEffect(J)V

    .line 264
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->startMarginAnimation(Z)V

    .line 266
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->isDisplayable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->uiPreemptivelySelectTabModel(Z)V

    .line 267
    :cond_0
    return-void
.end method

.method public onUpOrCancel(J)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 896
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getTabStackIndex()I

    move-result v2

    .line 897
    rsub-int/lit8 v3, v2, 0x1

    .line 898
    iget-boolean v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mClicked:Z

    if-nez v4, :cond_0

    int-to-float v2, v2

    iget v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mRenderedScrollOffset:F

    add-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v4, 0x3ecccccd    # 0.4f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->isDisplayable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 900
    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->setActiveStackState(Z)Z

    .line 902
    :cond_0
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mClicked:Z

    .line 903
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->finishScrollStacks()V

    .line 904
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getTabStackIndex()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->onUpOrCancel(J)V

    .line 905
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;->NONE:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mInputMode:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$SwipeMode;

    .line 906
    return-void

    :cond_1
    move v0, v1

    .line 900
    goto :goto_0
.end method

.method public onUpdateAnimation(JZ)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 354
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onUpdateAnimation(JZ)Z

    move-result v2

    .line 355
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->onUpdateViewAnimation(JZ)Z

    move-result v3

    .line 356
    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->onUpdateViewAnimation(JZ)Z

    move-result v4

    .line 357
    iget-object v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    aget-object v5, v5, v1

    invoke-virtual {v5, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->onUpdateCompositorAnimations(JZ)Z

    move-result v5

    .line 358
    iget-object v6, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    aget-object v6, v6, v0

    invoke-virtual {v6, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->onUpdateCompositorAnimations(JZ)Z

    move-result v6

    .line 359
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    .line 367
    :goto_0
    return v0

    .line 363
    :cond_0
    if-eqz v2, :cond_1

    if-eqz v5, :cond_1

    if-nez v6, :cond_2

    .line 364
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->requestStackUpdate()V

    :cond_2
    move v0, v1

    .line 367
    goto :goto_0
.end method

.method public setActiveStackState(Z)Z
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->isIncognitoSelected()Z

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 1011
    :goto_0
    return v0

    .line 1010
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mTemporarySelectedStack:Ljava/lang/Boolean;

    .line 1011
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic setProperty(Ljava/lang/Enum;F)V
    .locals 0

    .prologue
    .line 50
    check-cast p1, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$Property;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->setProperty(Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$Property;F)V

    return-void
.end method

.method public setProperty(Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$Property;F)V
    .locals 2

    .prologue
    .line 1169
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$1;->$SwitchMap$org$chromium$chrome$browser$compositor$layouts$phone$StackLayout$Property:[I

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$Property;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1181
    :goto_0
    return-void

    .line 1171
    :pswitch_0
    iput p2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mRenderedScrollOffset:F

    .line 1172
    iput p2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mScrollIndexOffset:F

    goto :goto_0

    .line 1175
    :pswitch_1
    iput p2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mInnerMarginPercent:F

    goto :goto_0

    .line 1178
    :pswitch_2
    iput p2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStackOffsetYPercent:F

    goto :goto_0

    .line 1169
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 171
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->setTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)V

    .line 172
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    aget-object v0, v0, v1

    invoke-interface {p1, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->setTabModel(Lorg/chromium/chrome/browser/tabmodel/TabModel;)V

    .line 173
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    aget-object v0, v0, v2

    invoke-interface {p1, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->setTabModel(Lorg/chromium/chrome/browser/tabmodel/TabModel;)V

    .line 174
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->resetScrollData()V

    .line 175
    return-void
.end method

.method public show(JZ)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 485
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->show(JZ)V

    .line 487
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 488
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isNativePage()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    invoke-virtual {v3, v0}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->cacheTabThumbnail(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 492
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 493
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->isIncognitoSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 495
    :goto_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    move v4, v3

    :goto_1
    if-ltz v4, :cond_4

    .line 496
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->reset()V

    .line 497
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->isDisplayable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 498
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    aget-object v5, v3, v4

    if-ne v4, v0, :cond_2

    move v3, v1

    :goto_2
    invoke-virtual {v5, v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->show(Z)V

    .line 495
    :goto_3
    add-int/lit8 v3, v4, -0x1

    move v4, v3

    goto :goto_1

    :cond_1
    move v0, v2

    .line 493
    goto :goto_0

    :cond_2
    move v3, v2

    .line 498
    goto :goto_2

    .line 500
    :cond_3
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->cleanupTabs()V

    goto :goto_3

    .line 504
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mOrderComparator:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$OrderComparator;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mSortingComparator:Ljava/util/Comparator;

    .line 505
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->resetScrollData()V

    .line 506
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_4
    if-ltz v3, :cond_8

    .line 507
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->isDisplayable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 508
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getTabStackIndex()I

    move-result v0

    if-eq v3, v0, :cond_6

    move v0, v1

    .line 509
    :goto_5
    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    aget-object v4, v4, v3

    if-nez v0, :cond_7

    move v0, v1

    :goto_6
    invoke-virtual {v4, p1, p2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->stackEntered(JZ)V

    .line 506
    :cond_5
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_4

    :cond_6
    move v0, v2

    .line 508
    goto :goto_5

    :cond_7
    move v0, v2

    .line 509
    goto :goto_6

    .line 512
    :cond_8
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->startMarginAnimation(Z)V

    .line 513
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->startYOffsetAnimation(Z)V

    .line 514
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getTabStackIndex()I

    move-result v0

    if-ne v0, v1, :cond_9

    move v2, v1

    :cond_9
    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->flingStacks(Z)V

    .line 516
    if-nez p3, :cond_a

    invoke-virtual {p0, p1, p2, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->onUpdateAnimation(JZ)Z

    .line 520
    :cond_a
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->updateLayout(JJ)V

    .line 521
    return-void
.end method

.method public swipeFinished(J)V
    .locals 3

    .prologue
    .line 535
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getTabStackIndex()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->swipeFinished(J)V

    .line 536
    return-void
.end method

.method public swipeFlingOccurred(JFFFFFF)V
    .locals 11

    .prologue
    .line 546
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getTabStackIndex()I

    move-result v1

    aget-object v1, v0, v1

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->swipeFlingOccurred(JFFFFFF)V

    .line 547
    return-void
.end method

.method public swipeStarted(JLorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;FF)V
    .locals 7

    .prologue
    .line 525
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getTabStackIndex()I

    move-result v1

    aget-object v1, v0, v1

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->swipeStarted(JLorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;FF)V

    .line 526
    return-void
.end method

.method public swipeUpdated(JFFFFFF)V
    .locals 11

    .prologue
    .line 530
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getTabStackIndex()I

    move-result v1

    aget-object v1, v0, v1

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->swipeUpdated(JFFFFFF)V

    .line 531
    return-void
.end method

.method public uiDoneClosingAllTabs(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 441
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->closeAllTabs(ZZ)V

    .line 442
    return-void
.end method

.method public uiDoneClosingTab(JIZZ)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 430
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->isHomepageEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v2, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v2

    invoke-interface {v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v3, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v3

    invoke-interface {v3}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    and-int/2addr v0, p4

    .line 436
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v1, p5}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v1

    invoke-static {v1, p3, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->closeTabById(Lorg/chromium/chrome/browser/tabmodel/TabModel;IZ)Z

    .line 437
    return-void
.end method

.method public uiDoneEnteringStack()V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mVisibilityComparator:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$VisibilityComparator;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mSortingComparator:Ljava/util/Comparator;

    .line 449
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->doneShowing()V

    .line 450
    return-void
.end method

.method public uiRequestingCloseTab(JI)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 407
    invoke-virtual {p0, p3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getTabStack(I)Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->tabClosingEffect(JI)V

    .line 409
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v0

    .line 410
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v3, p3}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModelForTabId(I)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v3

    .line 411
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->isIncognito()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 412
    :cond_0
    if-lez v0, :cond_2

    move v0, v1

    .line 415
    :goto_0
    invoke-direct {p0, v1, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->startMarginAnimation(ZZ)V

    .line 416
    if-nez v0, :cond_1

    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->uiPreemptivelySelectTabModel(Z)V

    .line 417
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 412
    goto :goto_0
.end method

.method public uiSelectingTab(JI)V
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->onTabSelecting(JI)V

    .line 395
    return-void
.end method

.method protected updateLayout(JJ)V
    .locals 9

    .prologue
    .line 935
    invoke-super {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->updateLayout(JJ)V

    .line 936
    const/4 v7, 0x0

    .line 938
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getViewportParameters()Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;

    move-result-object v0

    .line 939
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStackRects:[Landroid/graphics/RectF;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->getStack0Left()F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 940
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStackRects:[Landroid/graphics/RectF;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStackRects:[Landroid/graphics/RectF;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 941
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStackRects:[Landroid/graphics/RectF;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->getStack0Top()F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 942
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStackRects:[Landroid/graphics/RectF;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStackRects:[Landroid/graphics/RectF;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 943
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStackRects:[Landroid/graphics/RectF;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStackRects:[Landroid/graphics/RectF;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->getStack0ToStack1TranslationX()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 944
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStackRects:[Landroid/graphics/RectF;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStackRects:[Landroid/graphics/RectF;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 945
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStackRects:[Landroid/graphics/RectF;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStackRects:[Landroid/graphics/RectF;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->getStack0ToStack1TranslationY()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 946
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStackRects:[Landroid/graphics/RectF;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStackRects:[Landroid/graphics/RectF;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$PortraitViewport;->getHeight()F

    move-result v0

    add-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 948
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/high16 v0, 0x3f800000    # 1.0f

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mRenderedScrollOffset:F

    add-float/2addr v2, v0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mSortingComparator:Ljava/util/Comparator;

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mOrderComparator:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$OrderComparator;

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->index()I

    move-result v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->setStackFocusInfo(FI)V

    .line 951
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mRenderedScrollOffset:F

    neg-float v2, v0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mSortingComparator:Ljava/util/Comparator;

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mOrderComparator:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$OrderComparator;

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->index()I

    move-result v0

    :goto_1
    invoke-virtual {v1, v2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->setStackFocusInfo(FI)V

    .line 956
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStackRects:[Landroid/graphics/RectF;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p1, p2, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->computeTabPosition(JLandroid/graphics/RectF;)V

    .line 957
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStackRects:[Landroid/graphics/RectF;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p1, p2, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->computeTabPosition(JLandroid/graphics/RectF;)V

    .line 961
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getVisibleCount()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mStacks:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack;->getVisibleCount()I

    move-result v1

    add-int v8, v0, v1

    .line 963
    if-nez v8, :cond_3

    .line 964
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 970
    :cond_0
    :goto_2
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getTabStackIndex()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 971
    const/4 v4, 0x0

    iget-object v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->appendVisibleLayoutTabs(JI[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;I)I

    move-result v6

    .line 972
    const/4 v4, 0x1

    iget-object v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->appendVisibleLayoutTabs(JI[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;I)I

    move-result v0

    .line 977
    :goto_3
    sget-boolean v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->$assertionsDisabled:Z

    if-nez v1, :cond_6

    if-eq v0, v8, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "index should be incremented up to tabVisibleCount"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 948
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 951
    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    .line 965
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    array-length v0, v0

    if-eq v0, v8, :cond_0

    .line 966
    :cond_4
    new-array v0, v8, [Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    goto :goto_2

    .line 974
    :cond_5
    const/4 v4, 0x1

    iget-object v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->appendVisibleLayoutTabs(JI[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;I)I

    move-result v6

    .line 975
    const/4 v4, 0x0

    iget-object v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->appendVisibleLayoutTabs(JI[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;I)I

    move-result v0

    goto :goto_3

    .line 980
    :cond_6
    const/4 v0, 0x0

    move v1, v0

    move v0, v7

    :goto_4
    if-ge v1, v8, :cond_8

    .line 981
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    aget-object v2, v2, v1

    invoke-virtual {v2, p3, p4}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->updateSnap(J)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v0, 0x1

    .line 980
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 984
    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->requestUpdate()V

    .line 988
    :cond_9
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->updateTabPriority()V

    .line 989
    return-void
.end method

.method protected updateSceneLayer(Landroid/graphics/Rect;Landroid/graphics/Rect;Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/ui/resources/ResourceManager;Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)V
    .locals 8

    .prologue
    .line 1211
    invoke-super/range {p0 .. p6}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->updateSceneLayer(Landroid/graphics/Rect;Landroid/graphics/Rect;Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/ui/resources/ResourceManager;Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)V

    .line 1213
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1214
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;->pushLayers(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/Rect;Lorg/chromium/chrome/browser/compositor/layouts/Layout;Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/ui/resources/ResourceManager;)V

    .line 1216
    return-void
.end method
