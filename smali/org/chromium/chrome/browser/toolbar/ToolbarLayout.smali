.class abstract Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;
.super Landroid/widget/FrameLayout;
.source "ToolbarLayout.java"

# interfaces
.implements Lorg/chromium/chrome/browser/toolbar/Toolbar;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static final BACKGROUND_TRANSITION_DURATION_MS:I = 0x190


# instance fields
.field private mAppMenuButtonHelper:Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;

.field protected final mDarkModeTint:Landroid/content/res/ColorStateList;

.field private mFindInPageToolbarShowing:Z

.field private mFirstDrawTimeMs:J

.field private mInvalidator:Lorg/chromium/chrome/browser/compositor/Invalidator;

.field private mIsMenuBadgeAnimationRunning:Z

.field protected final mLightModeTint:Landroid/content/res/ColorStateList;

.field protected mMenuBadge:Landroid/widget/ImageView;

.field private mMenuBadgeAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

.field protected mMenuButtonWrapper:Landroid/view/View;

.field private mNativeLibraryReady:Z

.field private mProgressBar:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

.field protected mShowMenuBadge:Z

.field private final mTempPosition:[I

.field private mToolbarDataProvider:Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

.field protected final mToolbarHeightWithoutShadow:I

.field private mToolbarTabController:Lorg/chromium/chrome/browser/toolbar/ToolbarTabController;

.field private mUrlHasFocus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mTempPosition:[I

    .line 86
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getToolbarHeightWithoutShadowResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mToolbarHeightWithoutShadow:I

    .line 88
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$color;->dark_mode_tint:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColorStateList(Landroid/content/res/Resources;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mDarkModeTint:Landroid/content/res/ColorStateList;

    .line 90
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$color;->light_mode_tint:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColorStateList(Landroid/content/res/Resources;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mLightModeTint:Landroid/content/res/ColorStateList;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;)Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mAppMenuButtonHelper:Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;

    return-object v0
.end method

.method static synthetic access$102(Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mIsMenuBadgeAnimationRunning:Z

    return p1
.end method

.method private recordFirstDrawTime()V
    .locals 4

    .prologue
    .line 535
    iget-wide v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mFirstDrawTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mFirstDrawTimeMs:J

    .line 536
    :cond_0
    return-void
.end method


# virtual methods
.method protected back()Z
    .locals 1

    .prologue
    .line 614
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getLocationBar()Lorg/chromium/chrome/browser/omnibox/LocationBar;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->hideSuggestions()V

    .line 615
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mToolbarTabController:Lorg/chromium/chrome/browser/toolbar/ToolbarTabController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mToolbarTabController:Lorg/chromium/chrome/browser/toolbar/ToolbarTabController;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTabController;->back()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected cancelAppMenuUpdateBadgeAnimation()V
    .locals 1

    .prologue
    .line 736
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mIsMenuBadgeAnimationRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mMenuBadgeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mMenuBadgeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 739
    :cond_0
    return-void
.end method

.method public finishAnimations()V
    .locals 0

    .prologue
    .line 584
    return-void
.end method

.method protected finishLoadProgress(Z)V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mProgressBar:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mProgressBar:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->finish(Z)V

    .line 579
    :cond_0
    return-void
.end method

.method protected forward()Z
    .locals 1

    .prologue
    .line 623
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getLocationBar()Lorg/chromium/chrome/browser/omnibox/LocationBar;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->hideSuggestions()V

    .line 624
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mToolbarTabController:Lorg/chromium/chrome/browser/toolbar/ToolbarTabController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mToolbarTabController:Lorg/chromium/chrome/browser/toolbar/ToolbarTabController;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTabController;->forward()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getCurrentTabView()Landroid/view/View;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mToolbarDataProvider:Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 591
    if-eqz v0, :cond_0

    .line 592
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getView()Landroid/view/View;

    move-result-object v0

    .line 594
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFirstDrawTime()J
    .locals 2

    .prologue
    .line 542
    iget-wide v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mFirstDrawTimeMs:J

    return-wide v0
.end method

.method protected getFrameLayoutParams(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    return-object v0
.end method

.method public abstract getLocationBar()Lorg/chromium/chrome/browser/omnibox/LocationBar;
.end method

.method public getLocationBarContentRect(Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    .line 493
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getLocationBar()Lorg/chromium/chrome/browser/omnibox/LocationBar;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->getContainerView()Landroid/view/View;

    move-result-object v0

    .line 494
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int v0, v4, v0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 497
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getLocationBar()Lorg/chromium/chrome/browser/omnibox/LocationBar;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->getContainerView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mTempPosition:[I

    invoke-static {p0, v0, v1}, Lorg/chromium/chrome/browser/util/ViewUtils;->getRelativeDrawPosition(Landroid/view/View;Landroid/view/View;[I)V

    .line 499
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mTempPosition:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mTempPosition:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 500
    return-void
.end method

.method protected getMenuButtonHelper()Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mAppMenuButtonHelper:Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;

    return-object v0
.end method

.method protected getMenuButtonWrapper()Landroid/view/View;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mMenuButtonWrapper:Landroid/view/View;

    return-object v0
.end method

.method public getPositionRelativeToContainer(Landroid/view/View;[I)V
    .locals 0

    .prologue
    .line 215
    invoke-static {p1, p0, p2}, Lorg/chromium/chrome/browser/util/ViewUtils;->getRelativeDrawPosition(Landroid/view/View;Landroid/view/View;[I)V

    .line 216
    return-void
.end method

.method getProgressBar()Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mProgressBar:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    return-object v0
.end method

.method public getTabStripHeight()I
    .locals 2

    .prologue
    .line 432
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->tab_strip_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mToolbarDataProvider:Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    return-object v0
.end method

.method protected getToolbarHeightWithoutShadowResId()I
    .locals 1

    .prologue
    .line 167
    sget v0, Lorg/chromium/chrome/R$dimen;->toolbar_height_no_shadow:I

    return v0
.end method

.method protected handleFindToolbarStateChange(Z)V
    .locals 0

    .prologue
    .line 309
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mFindInPageToolbarShowing:Z

    .line 310
    return-void
.end method

.method public initialize(Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;Lorg/chromium/chrome/browser/toolbar/ToolbarTabController;Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;)V
    .locals 2

    .prologue
    .line 178
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mToolbarDataProvider:Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    .line 179
    iput-object p2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mToolbarTabController:Lorg/chromium/chrome/browser/toolbar/ToolbarTabController;

    .line 181
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    new-instance v1, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout$2;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 188
    iput-object p3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mAppMenuButtonHelper:Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;

    .line 189
    return-void
.end method

.method protected isIncognito()Z
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mToolbarDataProvider:Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->isIncognito()Z

    move-result v0

    return v0
.end method

.method protected isNativeLibraryReady()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mNativeLibraryReady:Z

    return v0
.end method

.method public isReadyForTextureCapture()Z
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x1

    return v0
.end method

.method public isShowingAppMenuUpdateBadge()Z
    .locals 1

    .prologue
    .line 653
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mShowMenuBadge:Z

    return v0
.end method

.method protected onAccessibilityStatusChanged(Z)V
    .locals 0

    .prologue
    .line 379
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 240
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 241
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mProgressBar:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$id;->control_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 244
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mProgressBar:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v2, v1}, Lorg/chromium/ui/UiUtils;->insertAfter(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)I

    move-result v0

    .line 246
    sget-boolean v1, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 248
    :cond_0
    return-void
.end method

.method protected onDefaultSearchEngineChanged()V
    .locals 0

    .prologue
    .line 489
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 234
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 235
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->recordFirstDrawTime()V

    .line 236
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 96
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 98
    sget v0, Lorg/chromium/chrome/R$id;->progress:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mProgressBar:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    .line 99
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mProgressBar:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mProgressBar:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->removeView(Landroid/view/View;)V

    .line 101
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mProgressBar:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getFrameLayoutParams(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    iget v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mToolbarHeightWithoutShadow:I

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mProgressBar:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getFrameLayoutParams(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 103
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->isNativeLibraryReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mProgressBar:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->initializeAnimation()V

    .line 106
    :cond_0
    sget v0, Lorg/chromium/chrome/R$id;->menu_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/TintedImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    .line 107
    sget v0, Lorg/chromium/chrome/R$id;->menu_badge:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mMenuBadge:Landroid/widget/ImageView;

    .line 108
    sget v0, Lorg/chromium/chrome/R$id;->menu_button_wrapper:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mMenuButtonWrapper:Landroid/view/View;

    .line 111
    new-instance v0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout$1;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mToolbarDataProvider:Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    .line 152
    return-void
.end method

.method protected onHomeButtonUpdate(Z)V
    .locals 0

    .prologue
    .line 392
    return-void
.end method

.method public onNativeLibraryReady()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mNativeLibraryReady:Z

    .line 196
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mProgressBar:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mProgressBar:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->initializeAnimation()V

    .line 197
    :cond_0
    return-void
.end method

.method protected onNavigatedToDifferentPage()V
    .locals 0

    .prologue
    .line 549
    return-void
.end method

.method protected onPrimaryColorChanged(Z)V
    .locals 0

    .prologue
    .line 412
    return-void
.end method

.method protected onStateRestored()V
    .locals 0

    .prologue
    .line 385
    return-void
.end method

.method protected onTabContentViewChanged()V
    .locals 2

    .prologue
    .line 439
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->getNewTabPageForCurrentTab()Lorg/chromium/chrome/browser/ntp/NewTabPage;

    move-result-object v0

    .line 440
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getLocationBar()Lorg/chromium/chrome/browser/omnibox/LocationBar;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->onTabLoadingNTP(Lorg/chromium/chrome/browser/ntp/NewTabPage;)V

    .line 441
    :cond_0
    return-void
.end method

.method protected onTabOrModelChanged()V
    .locals 2

    .prologue
    .line 402
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getToolbarDataProvider()Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;->getNewTabPageForCurrentTab()Lorg/chromium/chrome/browser/ntp/NewTabPage;

    move-result-object v0

    .line 403
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getLocationBar()Lorg/chromium/chrome/browser/omnibox/LocationBar;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->onTabLoadingNTP(Lorg/chromium/chrome/browser/ntp/NewTabPage;)V

    .line 405
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getLocationBar()Lorg/chromium/chrome/browser/omnibox/LocationBar;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->updateMicButtonState()V

    .line 406
    return-void
.end method

.method protected onTabSwitcherTransitionFinished()V
    .locals 0

    .prologue
    .line 476
    return-void
.end method

.method protected onUrlFocusChange(Z)V
    .locals 0

    .prologue
    .line 524
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mUrlHasFocus:Z

    .line 525
    return-void
.end method

.method protected openHomepage()V
    .locals 1

    .prologue
    .line 642
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getLocationBar()Lorg/chromium/chrome/browser/omnibox/LocationBar;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->hideSuggestions()V

    .line 643
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mToolbarTabController:Lorg/chromium/chrome/browser/toolbar/ToolbarTabController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mToolbarTabController:Lorg/chromium/chrome/browser/toolbar/ToolbarTabController;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTabController;->openHomepage()V

    .line 644
    :cond_0
    return-void
.end method

.method public removeAppMenuUpdateBadge(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 658
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mShowMenuBadge:Z

    .line 659
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mShowMenuBadge:Z

    .line 660
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setMenuButtonContentDescription(Z)V

    .line 662
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 663
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mMenuBadge:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 695
    :goto_0
    return-void

    .line 667
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mIsMenuBadgeAnimationRunning:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mMenuBadgeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 668
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mMenuBadgeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 672
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setAlpha(F)V

    .line 674
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mMenuBadge:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->createHideUpdateBadgeAnimation(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mMenuBadgeAnimatorSet:Landroid/animation/AnimatorSet;

    .line 677
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mMenuBadgeAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout$3;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout$3;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 694
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mMenuBadgeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method protected setAppMenuUpdateBadgeDrawable(Z)V
    .locals 2

    .prologue
    .line 746
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mMenuBadge:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    sget v0, Lorg/chromium/chrome/R$drawable;->badge_update_light:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 748
    return-void

    .line 746
    :cond_0
    sget v0, Lorg/chromium/chrome/R$drawable;->badge_update_dark:I

    goto :goto_0
.end method

.method protected setAppMenuUpdateBadgeToVisible(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 702
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setMenuButtonContentDescription(Z)V

    .line 703
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mIsMenuBadgeAnimationRunning:Z

    if-eqz v0, :cond_1

    .line 704
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mMenuBadge:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 733
    :goto_0
    return-void

    .line 709
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mMenuBadge:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 710
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mMenuBadge:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 712
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mMenuBadge:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->createShowUpdateBadgeAnimation(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mMenuBadgeAnimatorSet:Landroid/animation/AnimatorSet;

    .line 715
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mMenuBadgeAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout$4;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout$4;-><init>(Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 732
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mMenuBadgeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public setBookmarkClickHandler(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 328
    return-void
.end method

.method public setCloseButtonImageResource(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 417
    return-void
.end method

.method protected setContentAttached(Z)V
    .locals 0

    .prologue
    .line 459
    return-void
.end method

.method public setCustomActionButton(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 426
    return-void
.end method

.method public setCustomTabCloseClickHandler(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 334
    return-void
.end method

.method public setForceTextureCapture(Z)Z
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x0

    return v0
.end method

.method public setLayoutUpdateHost(Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;)V
    .locals 0

    .prologue
    .line 454
    return-void
.end method

.method protected setLoadProgress(F)V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mProgressBar:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mProgressBar:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->setProgress(F)V

    .line 568
    :cond_0
    return-void
.end method

.method protected setMenuButtonContentDescription(Z)V
    .locals 3

    .prologue
    .line 755
    if-eqz p1, :cond_0

    .line 756
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->accessibility_toolbar_btn_menu_update:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 762
    :goto_0
    return-void

    .line 759
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->accessibility_toolbar_btn_menu:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setOnNewTabClickHandler(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 322
    return-void
.end method

.method public setOnTabSwitcherClickHandler(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 316
    return-void
.end method

.method public setPaintInvalidator(Lorg/chromium/chrome/browser/compositor/Invalidator;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mInvalidator:Lorg/chromium/chrome/browser/compositor/Invalidator;

    .line 288
    return-void
.end method

.method public setReturnButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 766
    return-void
.end method

.method protected setTabSwitcherMode(ZZZ)V
    .locals 0

    .prologue
    .line 470
    return-void
.end method

.method public setTextureCaptureMode(Z)V
    .locals 0

    .prologue
    .line 503
    return-void
.end method

.method public setUrlBarHidden(Z)V
    .locals 0

    .prologue
    .line 339
    return-void
.end method

.method public shouldIgnoreSwipeGesture()Z
    .locals 1

    .prologue
    .line 507
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mUrlHasFocus:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mAppMenuButtonHelper:Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mAppMenuButtonHelper:Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;->isAppMenuActive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mFindInPageToolbarShowing:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldShowMenuButton()Z
    .locals 1

    .prologue
    .line 528
    const/4 v0, 0x1

    return v0
.end method

.method protected showAccessibilityToast(Landroid/view/View;Ljava/lang/CharSequence;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 257
    if-nez p2, :cond_0

    .line 270
    :goto_0
    return v0

    .line 259
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 260
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 261
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 262
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 264
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p2, v0}, Lorg/chromium/ui/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lorg/chromium/ui/widget/Toast;

    move-result-object v5

    .line 265
    const v6, 0x800035

    aget v0, v3, v0

    sub-int v0, v2, v0

    div-int/lit8 v2, v4, 0x2

    sub-int/2addr v0, v2

    aget v2, v3, v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v5, v6, v0, v2}, Lorg/chromium/ui/widget/Toast;->setGravity(III)V

    .line 269
    invoke-virtual {v5}, Lorg/chromium/ui/widget/Toast;->show()V

    move v0, v1

    .line 270
    goto :goto_0
.end method

.method public showAppMenuUpdateBadge()V
    .locals 1

    .prologue
    .line 648
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mShowMenuBadge:Z

    .line 649
    return-void
.end method

.method protected startLoadProgress()V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mProgressBar:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mProgressBar:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->start()V

    .line 558
    :cond_0
    return-void
.end method

.method protected stopOrReloadCurrentTab()V
    .locals 1

    .prologue
    .line 634
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->getLocationBar()Lorg/chromium/chrome/browser/omnibox/LocationBar;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->hideSuggestions()V

    .line 635
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mToolbarTabController:Lorg/chromium/chrome/browser/toolbar/ToolbarTabController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mToolbarTabController:Lorg/chromium/chrome/browser/toolbar/ToolbarTabController;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTabController;->stopOrReloadCurrentTab()V

    .line 636
    :cond_0
    return-void
.end method

.method protected triggerPaintInvalidate(Lorg/chromium/chrome/browser/compositor/Invalidator$Client;)V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mInvalidator:Lorg/chromium/chrome/browser/compositor/Invalidator;

    if-nez v0, :cond_0

    .line 297
    invoke-interface {p1}, Lorg/chromium/chrome/browser/compositor/Invalidator$Client;->doInvalidate()V

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mInvalidator:Lorg/chromium/chrome/browser/compositor/Invalidator;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/Invalidator;->invalidate(Lorg/chromium/chrome/browser/compositor/Invalidator$Client;)V

    goto :goto_0
.end method

.method protected updateBackButtonVisibility(Z)V
    .locals 0

    .prologue
    .line 351
    return-void
.end method

.method protected updateBookmarkButton(ZZ)V
    .locals 0

    .prologue
    .line 373
    return-void
.end method

.method public updateButtonVisibility()V
    .locals 0

    .prologue
    .line 344
    return-void
.end method

.method protected updateForwardButtonVisibility(Z)V
    .locals 0

    .prologue
    .line 358
    return-void
.end method

.method protected updateReloadButtonVisibility(Z)V
    .locals 0

    .prologue
    .line 365
    return-void
.end method

.method protected updateTabCountVisuals(I)V
    .locals 0

    .prologue
    .line 483
    return-void
.end method

.method protected urlHasFocus()Z
    .locals 1

    .prologue
    .line 516
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mUrlHasFocus:Z

    return v0
.end method
