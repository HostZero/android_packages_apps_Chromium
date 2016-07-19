.class public Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;
.super Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;
.source "FindToolbarTablet.java"


# instance fields
.field private mAnimationEnter:Landroid/animation/ObjectAnimator;

.field private mAnimationLeave:Landroid/animation/ObjectAnimator;

.field private mCurrentAnimation:Landroid/animation/ObjectAnimator;

.field private final mYInsetPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->mYInsetPx:I

    .line 45
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->superActivate()V

    return-void
.end method

.method static synthetic access$102(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private setMakeRoomForResults(Z)V
    .locals 4

    .prologue
    .line 136
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->getHeight()I

    move-result v0

    iget v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->mYInsetPx:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    int-to-float v0, v0

    .line 138
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->getTranslationY()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 139
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    .line 140
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 141
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->mAnimationLeave:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 142
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->mAnimationLeave:Landroid/animation/ObjectAnimator;

    new-instance v1, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet$3;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet$3;-><init>(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 153
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Lorg/chromium/ui/base/WindowAndroid;->startAnimationOverContent(Landroid/animation/Animator;)V

    .line 157
    :cond_0
    return-void

    .line 136
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setShowState(Z)V
    .locals 3

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 162
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->mAnimationEnter:Landroid/animation/ObjectAnimator;

    if-eq v1, v2, :cond_2

    .line 163
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$id;->toolbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 164
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 165
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->mYInsetPx:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 166
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->mAnimationEnter:Landroid/animation/ObjectAnimator;

    .line 173
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 174
    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    .line 175
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/ui/base/WindowAndroid;->startAnimationOverContent(Landroid/animation/Animator;)V

    .line 178
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->postInvalidateOnAnimation()V

    .line 180
    :cond_1
    return-void

    .line 168
    :cond_2
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->mAnimationLeave:Landroid/animation/ObjectAnimator;

    if-eq v1, v2, :cond_0

    .line 169
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->mAnimationLeave:Landroid/animation/ObjectAnimator;

    .line 170
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->onHideAnimationStart()V

    goto :goto_0
.end method

.method private superActivate()V
    .locals 0

    .prologue
    .line 186
    invoke-super {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->activate()V

    .line 187
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->mAnimationEnter:Landroid/animation/ObjectAnimator;

    if-ne v0, v1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->isViewAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->setShowState(Z)V

    goto :goto_0
.end method

.method protected clearResults()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->clearResults()V

    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->setMakeRoomForResults(Z)V

    .line 133
    return-void
.end method

.method public deactivate(Z)V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->deactivate(Z)V

    .line 104
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->mAnimationLeave:Landroid/animation/ObjectAnimator;

    if-ne v0, v1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->setShowState(Z)V

    goto :goto_0
.end method

.method public findResultSelected(Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->findResultSelected(Landroid/graphics/Rect;)V

    .line 119
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 121
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->getLeft()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v2, v2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->getRight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    float-to-int v3, v3

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v4, v1

    float-to-int v1, v1

    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    const/4 v0, 0x1

    .line 126
    :cond_0
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->setMakeRoomForResults(Z)V

    .line 127
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xc8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 49
    invoke-super {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->onFinishInflate()V

    .line 51
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->setVisibility(I)V

    .line 53
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 54
    sget v1, Lorg/chromium/chrome/R$dimen;->find_in_page_popup_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 55
    sget v2, Lorg/chromium/chrome/R$dimen;->find_in_page_popup_margin_end:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 56
    add-int/2addr v0, v1

    .line 58
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v2, v7, [F

    int-to-float v3, v0

    aput v3, v2, v5

    aput v4, v2, v6

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->mAnimationEnter:Landroid/animation/ObjectAnimator;

    .line 59
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->mAnimationEnter:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 60
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->mAnimationEnter:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 61
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->mAnimationEnter:Landroid/animation/ObjectAnimator;

    new-instance v2, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet$1;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet$1;-><init>(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 75
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v2, v7, [F

    aput v4, v2, v5

    int-to-float v0, v0

    aput v0, v2, v6

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->mAnimationLeave:Landroid/animation/ObjectAnimator;

    .line 76
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->mAnimationLeave:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 77
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->mAnimationLeave:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 78
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;->mAnimationLeave:Landroid/animation/ObjectAnimator;

    new-instance v1, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet$2;-><init>(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarTablet;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 91
    return-void
.end method
