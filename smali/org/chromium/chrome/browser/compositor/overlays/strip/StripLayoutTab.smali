.class public Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;
.super Ljava/lang/Object;
.source "StripLayoutTab.java"

# interfaces
.implements Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;
.implements Lorg/chromium/chrome/browser/compositor/layouts/components/VirtualView;


# instance fields
.field private mAccessibilityDescription:Ljava/lang/String;

.field private mCanShowCloseButton:Z

.field private final mCloseButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

.field private final mClosePlacement:Landroid/graphics/RectF;

.field private mContentAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

.field private mContentOffsetX:F

.field private mDrawX:F

.field private mDrawY:F

.field private mHeight:F

.field private mId:I

.field private mIdealX:F

.field private final mIncognito:Z

.field private mIsDying:Z

.field private final mLoadTracker:Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;

.field private mLoadingSpinnerRotationDegrees:F

.field private final mRenderHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;

.field private mShowingCloseButton:Z

.field private mTabOffsetX:F

.field private mTabOffsetY:F

.field private final mTouchTarget:Landroid/graphics/RectF;

.field private mVisible:Z

.field private mVisiblePercentage:F

.field private mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker$TabLoadTrackerCallback;Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;Z)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mId:I

    .line 60
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mVisible:Z

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mIsDying:Z

    .line 62
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mCanShowCloseButton:Z

    .line 65
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mVisiblePercentage:F

    .line 78
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mTouchTarget:Landroid/graphics/RectF;

    .line 80
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mShowingCloseButton:Z

    .line 90
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mClosePlacement:Landroid/graphics/RectF;

    .line 105
    iput p2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mId:I

    .line 106
    new-instance v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;

    invoke-direct {v0, p2, p3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;-><init>(ILorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker$TabLoadTrackerCallback;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mLoadTracker:Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;

    .line 107
    iput-object p4, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mRenderHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;

    .line 108
    iput-boolean p5, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mIncognito:Z

    .line 109
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-direct {v0, p1, v5, v5}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;-><init>(Landroid/content/Context;FF)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mCloseButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    .line 110
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mCloseButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    sget v1, Lorg/chromium/chrome/R$drawable;->btn_tab_close_normal:I

    sget v2, Lorg/chromium/chrome/R$drawable;->btn_tab_close_pressed:I

    sget v3, Lorg/chromium/chrome/R$drawable;->btn_tab_close_white_normal:I

    sget v4, Lorg/chromium/chrome/R$drawable;->btn_tab_close_white_pressed:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setResources(IIII)V

    .line 112
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mCloseButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mIncognito:Z

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setIncognito(Z)V

    .line 113
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mCloseButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getCloseRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setBounds(Landroid/graphics/RectF;)V

    .line 114
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mCloseButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-virtual {v0, v5}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setClickSlop(F)V

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->accessibility_tabstrip_btn_close_tab:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mCloseButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-virtual {v1, v0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setAccessibilityDescription(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method private buildCloseButtonOpacityAnimation(F)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;
    .locals 10

    .prologue
    .line 564
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mCloseButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$Property;->OPACITY:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$Property;

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mCloseButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->getOpacity()F

    move-result v2

    const-wide/16 v4, 0x96

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->getLinearInterpolator()Landroid/view/animation/LinearInterpolator;

    move-result-object v9

    move v3, p1

    invoke-static/range {v0 .. v9}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$AnimatableAnimation;->createAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJZLandroid/view/animation/Interpolator;)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;

    move-result-object v0

    return-object v0
.end method

.method private checkCloseButtonVisibility(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 548
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mCanShowCloseButton:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mVisiblePercentage:F

    const v3, 0x3f7d70a4    # 0.99f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    move v0, v1

    .line 551
    :goto_0
    iget-boolean v3, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mShowingCloseButton:Z

    if-eq v0, v3, :cond_0

    .line 552
    if-eqz v0, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 553
    :goto_1
    if-eqz p1, :cond_3

    .line 554
    invoke-direct {p0, v3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->buildCloseButtonOpacityAnimation(F)Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->startAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;Z)V

    .line 558
    :goto_2
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mShowingCloseButton:Z

    .line 559
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mShowingCloseButton:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mCloseButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setPressed(Z)V

    .line 561
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 548
    goto :goto_0

    .line 552
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 556
    :cond_3
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mCloseButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-virtual {v1, v3}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setOpacity(F)V

    goto :goto_2
.end method

.method private getCloseRect()Landroid/graphics/RectF;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x42100000    # 36.0f

    const/4 v0, 0x0

    .line 519
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v1

    if-nez v1, :cond_1

    .line 520
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mClosePlacement:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getWidth()F

    move-result v2

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 521
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mClosePlacement:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mClosePlacement:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 527
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mClosePlacement:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 528
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mClosePlacement:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getHeight()F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 531
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mRenderHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;->getResourceManager()Lorg/chromium/ui/resources/ResourceManager;

    move-result-object v1

    .line 532
    if-eqz v1, :cond_0

    .line 533
    invoke-virtual {p0, v4}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getResourceId(Z)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Lorg/chromium/ui/resources/ResourceManager;->getResource(II)Lorg/chromium/ui/resources/LayoutResource;

    move-result-object v1

    .line 535
    if-eqz v1, :cond_0

    .line 536
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lorg/chromium/ui/resources/LayoutResource;->getPadding()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 542
    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mClosePlacement:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getDrawX()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getDrawY()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 543
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mClosePlacement:Landroid/graphics/RectF;

    return-object v0

    .line 523
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mClosePlacement:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 524
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mClosePlacement:Landroid/graphics/RectF;

    iput v3, v1, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 536
    :cond_2
    invoke-virtual {v1}, Lorg/chromium/ui/resources/LayoutResource;->getBitmapSize()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v1}, Lorg/chromium/ui/resources/LayoutResource;->getPadding()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    neg-float v0, v0

    goto :goto_1
.end method

.method private resetCloseRect()V
    .locals 3

    .prologue
    .line 511
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getCloseRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 512
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mCloseButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setWidth(F)V

    .line 513
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mCloseButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setHeight(F)V

    .line 514
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mCloseButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setX(F)V

    .line 515
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mCloseButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setY(F)V

    .line 516
    return-void
.end method

.method private startAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;Z)V
    .locals 1

    .prologue
    .line 445
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->finishAnimation()V

    .line 447
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mContentAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    if-nez v0, :cond_1

    .line 448
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mContentAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    .line 451
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mContentAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->add(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animation;)V

    .line 452
    return-void
.end method


# virtual methods
.method public addLoadingSpinnerRotation(F)V
    .locals 2

    .prologue
    .line 220
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mLoadingSpinnerRotationDegrees:F

    add-float/2addr v0, p1

    const/high16 v1, 0x44870000    # 1080.0f

    rem-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mLoadingSpinnerRotationDegrees:F

    .line 221
    return-void
.end method

.method public checkClicked(FF)Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mTouchTarget:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    return v0
.end method

.method public checkCloseHitTest(FF)Z
    .locals 1

    .prologue
    .line 393
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mShowingCloseButton:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mCloseButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->checkClicked(FF)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finishAnimation()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mContentAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    if-nez v0, :cond_0

    .line 462
    :goto_0
    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mContentAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->updateAndFinish()V

    .line 461
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mContentAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    goto :goto_0
.end method

.method public getAccessibilityDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mAccessibilityDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getCloseButton()Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mCloseButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    return-object v0
.end method

.method public getClosePressed()Z
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mCloseButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->isPressed()Z

    move-result v0

    return v0
.end method

.method public getContentOffsetX()F
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mContentOffsetX:F

    return v0
.end method

.method public getDrawX()F
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mDrawX:F

    return v0
.end method

.method public getDrawY()F
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mDrawY:F

    return v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mHeight:F

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mId:I

    return v0
.end method

.method public getIdealX()F
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mIdealX:F

    return v0
.end method

.method public getLoadingSpinnerRotation()F
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mLoadingSpinnerRotationDegrees:F

    return v0
.end method

.method public getOffsetX()F
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mTabOffsetX:F

    return v0
.end method

.method public getOffsetY()F
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mTabOffsetY:F

    return v0
.end method

.method public getResourceId(Z)I
    .locals 1

    .prologue
    .line 164
    if-eqz p1, :cond_1

    .line 165
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mIncognito:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/chromium/chrome/R$drawable;->bg_tabstrip_incognito_tab:I

    .line 167
    :goto_0
    return v0

    .line 165
    :cond_0
    sget v0, Lorg/chromium/chrome/R$drawable;->bg_tabstrip_tab:I

    goto :goto_0

    .line 167
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mIncognito:Z

    if-eqz v0, :cond_2

    sget v0, Lorg/chromium/chrome/R$drawable;->bg_tabstrip_incognito_background_tab:I

    goto :goto_0

    :cond_2
    sget v0, Lorg/chromium/chrome/R$drawable;->bg_tabstrip_background_tab:I

    goto :goto_0
.end method

.method public getTouchTarget(Landroid/graphics/RectF;)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mTouchTarget:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 145
    return-void
.end method

.method public getVirtualViews(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mShowingCloseButton:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mCloseButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method public getVisiblePercentage()F
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mVisiblePercentage:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mWidth:F

    return v0
.end method

.method public getWidthWeight()F
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 383
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mDrawY:F

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mHeight:F

    div-float/2addr v0, v1

    sub-float v0, v2, v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mContentAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDying()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mIsDying:Z

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mLoadTracker:Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->isLoading()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mVisible:Z

    return v0
.end method

.method public loadingFinished()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mLoadTracker:Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->loadingFinished()V

    .line 249
    return-void
.end method

.method public loadingStarted()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mLoadTracker:Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->loadingStarted()V

    .line 242
    return-void
.end method

.method public bridge synthetic onPropertyAnimationFinished(Ljava/lang/Enum;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->onPropertyAnimationFinished(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;)V

    return-void
.end method

.method public onPropertyAnimationFinished(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;)V
    .locals 0

    .prologue
    .line 508
    return-void
.end method

.method public onUpdateAnimation(JZ)Z
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mContentAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 489
    :cond_0
    :goto_0
    return v0

    .line 481
    :cond_1
    if-eqz p3, :cond_3

    .line 482
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mContentAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->finished()Z

    move-result v0

    .line 487
    :goto_1
    if-nez p3, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->finishAnimation()V

    goto :goto_0

    .line 484
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mContentAnimations:Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation;->update(J)Z

    move-result v0

    goto :goto_1
.end method

.method public pageLoadingFinished()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mLoadTracker:Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->pageLoadingFinished()V

    .line 235
    return-void
.end method

.method public pageLoadingStarted()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mLoadTracker:Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->pageLoadingStarted()V

    .line 228
    return-void
.end method

.method public setAccessibilityDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mAccessibilityDescription:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setCanShowCloseButton(Z)V
    .locals 1

    .prologue
    .line 285
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mCanShowCloseButton:Z

    .line 286
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->checkCloseButtonVisibility(Z)V

    .line 287
    return-void
.end method

.method public setClosePressed(Z)V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mCloseButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setPressed(Z)V

    .line 360
    return-void
.end method

.method public setContentOffsetX(F)V
    .locals 2

    .prologue
    .line 255
    const/4 v0, 0x0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mWidth:F

    invoke-static {p1, v0, v1}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mContentOffsetX:F

    .line 256
    return-void
.end method

.method public setDrawX(F)V
    .locals 3

    .prologue
    .line 293
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mCloseButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mCloseButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->getX()F

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mDrawX:F

    sub-float v2, p1, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setX(F)V

    .line 294
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mDrawX:F

    .line 295
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mTouchTarget:Landroid/graphics/RectF;

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mDrawX:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 296
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mTouchTarget:Landroid/graphics/RectF;

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mDrawX:F

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mWidth:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 297
    return-void
.end method

.method public setDrawY(F)V
    .locals 3

    .prologue
    .line 310
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mCloseButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mCloseButton:Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->getY()F

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mDrawY:F

    sub-float v2, p1, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setY(F)V

    .line 311
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mDrawY:F

    .line 312
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mTouchTarget:Landroid/graphics/RectF;

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mDrawY:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 313
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mTouchTarget:Landroid/graphics/RectF;

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mDrawY:F

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mHeight:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 314
    return-void
.end method

.method public setHeight(F)V
    .locals 3

    .prologue
    .line 343
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mHeight:F

    .line 344
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->resetCloseRect()V

    .line 345
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mTouchTarget:Landroid/graphics/RectF;

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mDrawY:F

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mHeight:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 346
    return-void
.end method

.method public setIdealX(F)V
    .locals 0

    .prologue
    .line 417
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mIdealX:F

    .line 418
    return-void
.end method

.method public setIsDying(Z)V
    .locals 0

    .prologue
    .line 191
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mIsDying:Z

    .line 192
    return-void
.end method

.method public setOffsetX(F)V
    .locals 0

    .prologue
    .line 401
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mTabOffsetX:F

    .line 402
    return-void
.end method

.method public setOffsetY(F)V
    .locals 0

    .prologue
    .line 433
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mTabOffsetY:F

    .line 434
    return-void
.end method

.method public bridge synthetic setProperty(Ljava/lang/Enum;F)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->setProperty(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;F)V

    return-void
.end method

.method public setProperty(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;F)V
    .locals 2

    .prologue
    .line 494
    sget-object v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$1;->$SwitchMap$org$chromium$chrome$browser$compositor$overlays$strip$StripLayoutTab$Property:[I

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 505
    :goto_0
    return-void

    .line 496
    :pswitch_0
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->setOffsetX(F)V

    goto :goto_0

    .line 499
    :pswitch_1
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->setOffsetY(F)V

    goto :goto_0

    .line 502
    :pswitch_2
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->setWidth(F)V

    goto :goto_0

    .line 494
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setVisible(Z)V
    .locals 0

    .prologue
    .line 175
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mVisible:Z

    .line 176
    return-void
.end method

.method public setVisiblePercentage(F)V
    .locals 1

    .prologue
    .line 269
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mVisiblePercentage:F

    .line 270
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->checkCloseButtonVisibility(Z)V

    .line 271
    return-void
.end method

.method public setWidth(F)V
    .locals 3

    .prologue
    .line 327
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mWidth:F

    .line 328
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->resetCloseRect()V

    .line 329
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mTouchTarget:Landroid/graphics/RectF;

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mDrawX:F

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->mWidth:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 330
    return-void
.end method
