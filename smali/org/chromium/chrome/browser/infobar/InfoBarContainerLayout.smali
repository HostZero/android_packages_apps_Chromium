.class Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;
.super Landroid/widget/FrameLayout;
.source "InfoBarContainerLayout.java"


# instance fields
.field private mAnimation:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;

.field private mAnimationListener:Lorg/chromium/chrome/browser/infobar/InfoBarContainer$InfoBarAnimationListener;

.field private final mBackInfobarHeight:I

.field private mFloatingBehavior:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;

.field private final mInfoBarWrappers:Ljava/util/ArrayList;

.field private final mItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 577
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mItems:Ljava/util/ArrayList;

    .line 582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 100
    sget v1, Lorg/chromium/chrome/R$dimen;->infobar_peeking_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mBackInfobarHeight:I

    .line 101
    new-instance v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;-><init>(Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mFloatingBehavior:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;

    .line 102
    return-void
.end method

.method static synthetic access$002(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;)Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mAnimation:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;

    return-object p1
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;)Lorg/chromium/chrome/browser/infobar/InfoBarContainer$InfoBarAnimationListener;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mAnimationListener:Lorg/chromium/chrome/browser/infobar/InfoBarContainer$InfoBarAnimationListener;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->processPendingAnimations()V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;)Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mFloatingBehavior:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->addWrapper(Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;)V

    return-void
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mBackInfobarHeight:I

    return v0
.end method

.method static synthetic access$800(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->removeWrapper(Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;)V

    return-void
.end method

.method private addWrapper(Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;)V
    .locals 4

    .prologue
    .line 659
    const/4 v0, 0x0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 660
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    invoke-direct {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->updateLayoutParams()V

    .line 662
    return-void
.end method

.method private processPendingAnimations()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 597
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mAnimation:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;

    if-eqz v0, :cond_1

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_5

    .line 606
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;->getItem()Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;

    move-result-object v0

    .line 607
    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 608
    if-nez v1, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_2

    .line 610
    new-instance v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;

    invoke-direct {v0, p0, v4}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;-><init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$1;)V

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->runAnimation(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;)V

    goto :goto_0

    .line 615
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    .line 616
    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_3

    .line 617
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->removeWrapper(Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;)V

    .line 618
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->addWrapper(Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;)V

    .line 622
    :cond_3
    new-instance v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarDisappearingAnimation;

    invoke-direct {v0, p0, v4}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarDisappearingAnimation;-><init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$1;)V

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->runAnimation(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;)V

    goto :goto_0

    .line 605
    :cond_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 629
    :cond_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 630
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;->getItem()Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;

    move-result-object v1

    .line 631
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 632
    invoke-interface {v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;->getView()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_6

    .line 633
    new-instance v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;

    invoke-direct {v0, p0, v4}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;-><init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$1;)V

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->runAnimation(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;)V

    goto/16 :goto_0

    .line 639
    :cond_6
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 640
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 641
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;

    .line 642
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;

    invoke-direct {v1, p0, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;-><init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;)V

    move-object v0, v1

    :goto_2
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->runAnimation(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;)V

    goto/16 :goto_0

    :cond_7
    new-instance v1, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$BackInfoBarAppearingAnimation;

    invoke-direct {v1, p0, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$BackInfoBarAppearingAnimation;-><init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;)V

    move-object v0, v1

    goto :goto_2
.end method

.method private removeWrapper(Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;)V
    .locals 1

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->removeView(Landroid/view/View;)V

    .line 666
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 667
    invoke-direct {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->updateLayoutParams()V

    .line 668
    return-void
.end method

.method private runAnimation(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;)V
    .locals 1

    .prologue
    .line 649
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mAnimation:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;

    .line 650
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mAnimation:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;->prepareAnimation()V

    .line 651
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    .line 654
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mAnimation:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;->start()V

    .line 656
    :cond_0
    return-void
.end method

.method private updateLayoutParams()V
    .locals 6

    .prologue
    .line 672
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 673
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 674
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 675
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 676
    add-int/lit8 v4, v3, -0x1

    sub-int/2addr v4, v2

    iget v5, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mBackInfobarHeight:I

    mul-int/2addr v4, v5

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 677
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 673
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 679
    :cond_0
    return-void
.end method


# virtual methods
.method addInfoBar(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-direct {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->processPendingAnimations()V

    .line 111
    return-void
.end method

.method isAnimating()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mAnimation:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method notifyInfoBarViewChanged()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->processPendingAnimations()V

    .line 129
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 717
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 721
    const/4 v0, 0x1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 703
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mAnimation:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;->getItem()Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;->areControlsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 690
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 691
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mFloatingBehavior:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->updateShadowPosition()V

    .line 695
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mAnimation:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mAnimation:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 696
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mAnimation:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;->start()V

    .line 698
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 683
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mFloatingBehavior:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->beforeOnMeasure(I)I

    move-result v0

    .line 684
    invoke-super {p0, v0, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 685
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mFloatingBehavior:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->afterOnMeasure(I)V

    .line 686
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 710
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 712
    const/4 v0, 0x1

    return v0
.end method

.method removeInfoBar(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 119
    invoke-direct {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->processPendingAnimations()V

    .line 120
    return-void
.end method

.method setAnimationListener(Lorg/chromium/chrome/browser/infobar/InfoBarContainer$InfoBarAnimationListener;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mAnimationListener:Lorg/chromium/chrome/browser/infobar/InfoBarContainer$InfoBarAnimationListener;

    .line 143
    return-void
.end method
