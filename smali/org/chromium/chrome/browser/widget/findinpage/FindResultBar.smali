.class Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;
.super Landroid/view/View;
.source "FindResultBar.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sComparator:Ljava/util/Comparator;


# instance fields
.field private final mActiveBorderColor:I

.field private final mActiveColor:I

.field private mActiveMatch:Landroid/graphics/RectF;

.field private final mActiveMinHeight:I

.field private final mBackgroundBorderColor:I

.field private final mBackgroundColor:I

.field private final mBarDrawWidth:I

.field private mBarHeightForWhichTickmarksWereCached:I

.field private final mBarTouchWidth:I

.field private final mBarVerticalPadding:I

.field private mDismissing:Z

.field private final mFillPaint:Landroid/graphics/Paint;

.field private mFindInPageBridge:Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;

.field private mMatches:[Landroid/graphics/RectF;

.field private final mMinGapBetweenStacks:I

.field mRectsVersion:I

.field private final mResultBorderColor:I

.field private final mResultColor:I

.field private final mResultMinHeight:I

.field private final mStackedResultHeight:I

.field private final mStrokePaint:Landroid/graphics/Paint;

.field private final mTab:Lorg/chromium/chrome/browser/tab/Tab;

.field private mTickmarks:Ljava/util/ArrayList;

.field private mVisibilityAnimation:Landroid/animation/Animator;

.field mWaitingForActivateAck:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->$assertionsDisabled:Z

    .line 78
    new-instance v0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$1;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$1;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->sComparator:Ljava/util/Comparator;

    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 93
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 63
    iput v5, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mRectsVersion:I

    .line 64
    new-array v0, v4, [Landroid/graphics/RectF;

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mMatches:[Landroid/graphics/RectF;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mTickmarks:Ljava/util/ArrayList;

    .line 68
    iput v5, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mBarHeightForWhichTickmarksWereCached:I

    .line 76
    iput-boolean v4, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mWaitingForActivateAck:Z

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 96
    sget v1, Lorg/chromium/chrome/R$color;->find_result_bar_background_color:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mBackgroundColor:I

    .line 98
    sget v1, Lorg/chromium/chrome/R$color;->find_result_bar_background_border_color:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mBackgroundBorderColor:I

    .line 100
    sget v1, Lorg/chromium/chrome/R$color;->find_result_bar_result_color:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mResultColor:I

    .line 102
    sget v1, Lorg/chromium/chrome/R$color;->find_result_bar_result_border_color:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mResultBorderColor:I

    .line 104
    sget v1, Lorg/chromium/chrome/R$color;->find_result_bar_active_color:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mActiveColor:I

    .line 106
    sget v1, Lorg/chromium/chrome/R$color;->find_result_bar_active_border_color:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mActiveBorderColor:I

    .line 108
    sget v1, Lorg/chromium/chrome/R$dimen;->find_result_bar_touch_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mBarTouchWidth:I

    .line 110
    sget v1, Lorg/chromium/chrome/R$dimen;->find_result_bar_draw_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lorg/chromium/chrome/R$dimen;->find_in_page_separator_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mBarDrawWidth:I

    .line 112
    sget v1, Lorg/chromium/chrome/R$dimen;->find_result_bar_result_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mResultMinHeight:I

    .line 113
    sget v1, Lorg/chromium/chrome/R$dimen;->find_result_bar_active_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mActiveMinHeight:I

    .line 115
    sget v1, Lorg/chromium/chrome/R$dimen;->find_result_bar_vertical_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mBarVerticalPadding:I

    .line 117
    sget v1, Lorg/chromium/chrome/R$dimen;->find_result_bar_min_gap_between_stacks:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mMinGapBetweenStacks:I

    .line 119
    sget v1, Lorg/chromium/chrome/R$dimen;->find_result_bar_stacked_result_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mStackedResultHeight:I

    .line 122
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mFillPaint:Landroid/graphics/Paint;

    .line 123
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mStrokePaint:Landroid/graphics/Paint;

    .line 124
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 125
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 126
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mFillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 127
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 128
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mStrokePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 130
    iput-object p3, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mFindInPageBridge:Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;

    .line 131
    iput-object p2, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 132
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mBarTouchWidth:I

    const v3, 0x800005

    invoke-direct {v1, v2, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mBarTouchWidth:I

    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/util/MathUtils;->flipSignIf(IZ)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->setTranslationX(F)V

    .line 138
    sget-object v0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->TRANSLATION_X:Landroid/util/Property;

    new-array v1, v6, [F

    const/4 v2, 0x0

    aput v2, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mVisibilityAnimation:Landroid/animation/Animator;

    .line 139
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mVisibilityAnimation:Landroid/animation/Animator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 140
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mVisibilityAnimation:Landroid/animation/Animator;

    sget-object v1, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->FADE_IN_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 141
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mVisibilityAnimation:Landroid/animation/Animator;

    invoke-virtual {v0, v1}, Lorg/chromium/ui/base/WindowAndroid;->startAnimationOverContent(Landroid/animation/Animator;)V

    .line 142
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;)I
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->getLeftMargin()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mBarDrawWidth:I

    return v0
.end method

.method private calculateTickmarks()V
    .locals 14

    .prologue
    const/4 v3, 0x0

    .line 306
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mBarHeightForWhichTickmarksWereCached:I

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mMatches:[Landroid/graphics/RectF;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mTickmarks:Ljava/util/ArrayList;

    .line 311
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mMatches:[Landroid/graphics/RectF;

    aget-object v0, v0, v3

    invoke-direct {p0, v0, v3}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->tickmarkForRect(Landroid/graphics/RectF;Z)Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;

    move-result-object v1

    .line 312
    iget v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mMinGapBetweenStacks:I

    neg-int v0, v0

    int-to-float v0, v0

    move v2, v3

    move-object v13, v1

    move v1, v0

    move-object v0, v13

    .line 313
    :goto_0
    iget-object v4, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mMatches:[Landroid/graphics/RectF;

    array-length v4, v4

    if-ge v2, v4, :cond_6

    .line 315
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 316
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    add-int/lit8 v4, v2, 0x1

    .line 318
    :goto_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mMatches:[Landroid/graphics/RectF;

    array-length v2, v2

    if-ge v4, v2, :cond_0

    .line 319
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mMatches:[Landroid/graphics/RectF;

    aget-object v0, v0, v4

    invoke-direct {p0, v0, v3}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->tickmarkForRect(Landroid/graphics/RectF;Z)Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;

    move-result-object v2

    .line 320
    iget v5, v2, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;->mTop:F

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;

    iget v0, v0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;->mBottom:F

    iget v6, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mMinGapBetweenStacks:I

    int-to-float v6, v6

    add-float/2addr v0, v6

    cmpg-float v0, v5, v0

    if-gtz v0, :cond_1

    .line 322
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    add-int/lit8 v4, v4, 0x1

    move-object v0, v2

    goto :goto_1

    :cond_0
    move-object v2, v0

    .line 330
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 331
    iget v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mMinGapBetweenStacks:I

    int-to-float v0, v0

    add-float v5, v1, v0

    .line 332
    add-int/lit8 v0, v9, -0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;

    iget v1, v0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;->mBottom:F

    .line 333
    add-int/lit8 v0, v9, -0x1

    iget v6, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mStackedResultHeight:I

    mul-int/2addr v0, v6

    int-to-float v0, v0

    sub-float v0, v1, v0

    iget v6, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mResultMinHeight:I

    int-to-float v6, v6

    sub-float v6, v0, v6

    .line 336
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;

    iget v0, v0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;->mTop:F

    .line 337
    invoke-static {v6, v5, v0}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v10, v0

    .line 338
    cmpl-float v0, v10, v6

    if-ltz v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    move v7, v0

    .line 340
    :goto_2
    const/4 v0, 0x1

    if-ne v9, v0, :cond_4

    const/4 v0, 0x0

    move v5, v0

    :goto_3
    move v6, v3

    .line 342
    :goto_4
    if-ge v6, v9, :cond_5

    .line 343
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;

    .line 344
    int-to-float v11, v6

    mul-float/2addr v11, v5

    add-float/2addr v11, v10

    iput v11, v0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;->mTop:F

    .line 345
    add-int/lit8 v11, v9, -0x1

    if-eq v6, v11, :cond_2

    .line 346
    iget v11, v0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;->mTop:F

    iget v12, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mResultMinHeight:I

    int-to-float v12, v12

    mul-float/2addr v12, v7

    add-float/2addr v11, v12

    iput v11, v0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;->mBottom:F

    .line 348
    :cond_2
    iget-object v11, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mTickmarks:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_4

    .line 338
    :cond_3
    sub-float v0, v1, v10

    sub-float v5, v1, v6

    div-float/2addr v0, v5

    move v7, v0

    goto :goto_2

    .line 340
    :cond_4
    sub-float v0, v1, v10

    iget v5, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mResultMinHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v7

    sub-float/2addr v0, v5

    add-int/lit8 v5, v9, -0x1

    int-to-float v5, v5

    div-float/2addr v0, v5

    move v5, v0

    goto :goto_3

    :cond_5
    move-object v0, v2

    move v2, v4

    .line 350
    goto/16 :goto_0

    .line 351
    :cond_6
    return-void
.end method

.method private expandTickmarkToMinHeight(Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;Z)Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 364
    if-eqz p2, :cond_1

    iget v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mActiveMinHeight:I

    .line 365
    :goto_0
    int-to-float v0, v0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;->height()F

    move-result v1

    sub-float v1, v0, v1

    .line 366
    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    .line 367
    new-instance v0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;

    iget v2, p1, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;->mTop:F

    div-float v3, v1, v4

    sub-float/2addr v2, v3

    iget v3, p1, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;->mBottom:F

    div-float/2addr v1, v4

    add-float/2addr v1, v3

    invoke-direct {v0, p0, v2, v1}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;-><init>(Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;FF)V

    move-object p1, v0

    .line 370
    :cond_0
    return-object p1

    .line 364
    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mResultMinHeight:I

    goto :goto_0
.end method

.method private getLeftMargin()I
    .locals 2

    .prologue
    .line 295
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->getWidth()I

    move-result v0

    iget v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mBarDrawWidth:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private tickmarkForRect(Landroid/graphics/RectF;Z)Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;
    .locals 4

    .prologue
    .line 355
    iget v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mBarHeightForWhichTickmarksWereCached:I

    iget v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mBarVerticalPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 356
    new-instance v1, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;

    iget v2, p1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v2, v0

    iget v3, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mBarVerticalPadding:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v0, v3

    iget v3, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mBarVerticalPadding:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-direct {v1, p0, v2, v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;-><init>(Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;FF)V

    .line 359
    invoke-direct {p0, v1, p2}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->expandTickmarkToMinHeight(Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;Z)Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearMatchRects()V
    .locals 3

    .prologue
    .line 183
    const/4 v0, -0x1

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->setMatchRects(I[Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 184
    return-void
.end method

.method public dismiss()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 146
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mDismissing:Z

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mFindInPageBridge:Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;

    .line 148
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mVisibilityAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mVisibilityAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mVisibilityAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 152
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->TRANSLATION_X:Landroid/util/Property;

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mBarTouchWidth:I

    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v4

    invoke-static {v3, v4}, Lorg/chromium/chrome/browser/util/MathUtils;->flipSignIf(IZ)I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mVisibilityAnimation:Landroid/animation/Animator;

    .line 154
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mVisibilityAnimation:Landroid/animation/Animator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 155
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mVisibilityAnimation:Landroid/animation/Animator;

    sget-object v1, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->FADE_OUT_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 156
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mVisibilityAnimation:Landroid/animation/Animator;

    invoke-virtual {v0, v1}, Lorg/chromium/ui/base/WindowAndroid;->startAnimationOverContent(Landroid/animation/Animator;)V

    .line 157
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mVisibilityAnimation:Landroid/animation/Animator;

    new-instance v1, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$2;-><init>(Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 165
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    .line 240
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 242
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->getLeftMargin()I

    move-result v6

    .line 243
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mFillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mBackgroundBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    int-to-float v1, v6

    iget v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mBarDrawWidth:I

    add-int/2addr v0, v6

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mFillPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 247
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mBarDrawWidth:I

    add-int/2addr v0, v6

    int-to-float v0, v0

    sub-float v1, v0, v8

    .line 250
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mStrokePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 252
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mMatches:[Landroid/graphics/RectF;

    array-length v0, v0

    if-nez v0, :cond_2

    .line 292
    :cond_0
    :goto_1
    return-void

    .line 247
    :cond_1
    int-to-float v0, v6

    add-float v1, v0, v8

    goto :goto_0

    .line 256
    :cond_2
    iget v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mBarHeightForWhichTickmarksWereCached:I

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 257
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->calculateTickmarks()V

    .line 262
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mFillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mResultColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 263
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mResultBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mTickmarks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;

    .line 265
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;->toRectF()Landroid/graphics/RectF;

    move-result-object v0

    .line 266
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v7, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 267
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v7, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 272
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mActiveMatch:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mMatches:[Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mActiveMatch:Landroid/graphics/RectF;

    sget-object v2, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->sComparator:Ljava/util/Comparator;

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 275
    if-ltz v0, :cond_5

    .line 280
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mTickmarks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;

    invoke-direct {p0, v0, v9}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->expandTickmarkToMinHeight(Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;Z)Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;

    move-result-object v0

    .line 286
    :goto_3
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;->toRectF()Landroid/graphics/RectF;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mFillPaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mActiveColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 288
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mStrokePaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mActiveBorderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 289
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v7, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 290
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v7, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 284
    :cond_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mActiveMatch:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v9}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->tickmarkForRect(Landroid/graphics/RectF;Z)Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;

    move-result-object v0

    goto :goto_3
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 231
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 233
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mDismissing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mMatches:[Landroid/graphics/RectF;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 234
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mFindInPageBridge:Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;

    iget v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mRectsVersion:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->requestFindMatchRects(I)V

    .line 236
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 189
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mDismissing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mTickmarks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mTickmarks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mMatches:[Landroid/graphics/RectF;

    array-length v3, v3

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mWaitingForActivateAck:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 194
    invoke-static {p0}, Lorg/chromium/ui/UiUtils;->hideKeyboard(Landroid/view/View;)Z

    .line 197
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mTickmarks:Ljava/util/ArrayList;

    new-instance v3, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v3, p0, v4, v5}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;-><init>(Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;FF)V

    invoke-static {v0, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 199
    if-gez v0, :cond_4

    .line 201
    rsub-int/lit8 v3, v0, -0x1

    .line 202
    if-nez v3, :cond_1

    .line 221
    :goto_0
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mWaitingForActivateAck:Z

    .line 222
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mFindInPageBridge:Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;

    iget-object v3, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mMatches:[Landroid/graphics/RectF;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mMatches:[Landroid/graphics/RectF;

    aget-object v2, v4, v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0, v3, v2}, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->activateNearestFindResult(FF)V

    .line 226
    :cond_0
    return v1

    .line 204
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mTickmarks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v3, v0, :cond_2

    .line 205
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mTickmarks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v0

    move v0, v1

    .line 211
    :goto_1
    sub-int/2addr v2, v0

    goto :goto_0

    .line 207
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mTickmarks:Ljava/util/ArrayList;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;->centerY()F

    move-result v0

    sub-float v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mTickmarks:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;->centerY()F

    move-result v0

    sub-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 211
    cmpg-float v0, v4, v0

    if-gtz v0, :cond_3

    move v0, v1

    move v2, v3

    goto :goto_1

    :cond_3
    move v0, v2

    move v2, v3

    goto :goto_1

    :cond_4
    move v2, v0

    goto :goto_0
.end method

.method public setMatchRects(I[Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 2

    .prologue
    .line 169
    iget v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mRectsVersion:I

    if-eq v0, p1, :cond_1

    .line 170
    iput p1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mRectsVersion:I

    .line 171
    sget-boolean v0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 172
    :cond_0
    iput-object p2, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mMatches:[Landroid/graphics/RectF;

    .line 173
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mTickmarks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 174
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mMatches:[Landroid/graphics/RectF;

    sget-object v1, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->sComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 175
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mBarHeightForWhichTickmarksWereCached:I

    .line 177
    :cond_1
    iput-object p3, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mActiveMatch:Landroid/graphics/RectF;

    .line 178
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->invalidate()V

    .line 179
    return-void
.end method
