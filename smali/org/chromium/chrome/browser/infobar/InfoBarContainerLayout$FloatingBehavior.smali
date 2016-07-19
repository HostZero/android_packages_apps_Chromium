.class Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;
.super Ljava/lang/Object;
.source "InfoBarContainerLayout.java"


# instance fields
.field private mIsFloating:Z

.field private mLayout:Landroid/widget/FrameLayout;

.field private mLeftShadowView:Landroid/view/View;

.field private final mMaxWidth:I

.field private mRightShadowView:Landroid/view/View;

.field private final mShadowWidth:I


# direct methods
.method constructor <init>(Landroid/widget/FrameLayout;)V
    .locals 2

    .prologue
    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mLayout:Landroid/widget/FrameLayout;

    .line 479
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 480
    sget v1, Lorg/chromium/chrome/R$dimen;->infobar_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mMaxWidth:I

    .line 481
    sget v1, Lorg/chromium/chrome/R$dimen;->infobar_shadow_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mShadowWidth:I

    .line 482
    return-void
.end method

.method private initShadowViews()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 549
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mLeftShadowView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 563
    :goto_0
    return-void

    .line 551
    :cond_0
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mLeftShadowView:Landroid/view/View;

    .line 552
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mLeftShadowView:Landroid/view/View;

    sget v1, Lorg/chromium/chrome/R$drawable;->infobar_shadow_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 553
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 554
    iget v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mShadowWidth:I

    neg-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 555
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mLeftShadowView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 557
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mRightShadowView:Landroid/view/View;

    .line 558
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mRightShadowView:Landroid/view/View;

    sget v1, Lorg/chromium/chrome/R$drawable;->infobar_shadow_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 559
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x5

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 560
    iget v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mShadowWidth:I

    neg-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 561
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mRightShadowView:Landroid/view/View;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 562
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mRightShadowView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private onIsFloatingChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 534
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mIsFloating:Z

    if-eqz v0, :cond_0

    .line 535
    invoke-direct {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->initShadowViews()V

    .line 536
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mLayout:Landroid/widget/FrameLayout;

    iget v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mShadowWidth:I

    iget v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mShadowWidth:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 537
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 538
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mLeftShadowView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 539
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mRightShadowView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 545
    :goto_0
    return-void

    .line 541
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 542
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mLeftShadowView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 543
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mRightShadowView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method afterOnMeasure(I)V
    .locals 3

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 508
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mIsFloating:Z

    if-nez v0, :cond_0

    .line 514
    :goto_0
    return-void

    .line 510
    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mShadowWidth:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 511
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 512
    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mLeftShadowView:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 513
    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mRightShadowView:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method beforeOnMeasure(I)I
    .locals 4

    .prologue
    .line 489
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 490
    iget v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mMaxWidth:I

    if-le v1, v0, :cond_2

    const/4 v0, 0x1

    .line 491
    :goto_0
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mIsFloating:Z

    if-eq v0, v2, :cond_0

    .line 492
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mIsFloating:Z

    .line 493
    invoke-direct {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->onIsFloatingChanged()V

    .line 496
    :cond_0
    if-eqz v0, :cond_1

    .line 497
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 498
    iget v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mMaxWidth:I

    iget v3, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mShadowWidth:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 499
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 501
    :cond_1
    return p1

    .line 490
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateShadowPosition()V
    .locals 6

    .prologue
    .line 520
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mIsFloating:Z

    if-nez v0, :cond_0

    .line 531
    :goto_0
    return-void

    .line 521
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v1, v0

    .line 522
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    .line 523
    const/4 v0, 0x0

    move v5, v0

    move v0, v1

    move v1, v5

    :goto_1
    if-ge v1, v2, :cond_2

    .line 524
    iget-object v3, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 525
    iget-object v4, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mLeftShadowView:Landroid/view/View;

    if-eq v3, v4, :cond_1

    iget-object v4, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mRightShadowView:Landroid/view/View;

    if-eq v3, v4, :cond_1

    .line 526
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 523
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 529
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mLeftShadowView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setY(F)V

    .line 530
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->mRightShadowView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setY(F)V

    goto :goto_0
.end method
