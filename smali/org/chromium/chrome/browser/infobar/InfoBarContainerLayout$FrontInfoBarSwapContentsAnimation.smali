.class Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;
.super Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;
.source "InfoBarContainerLayout.java"


# instance fields
.field private mFrontWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

.field private mNewContents:Landroid/view/View;

.field private mOldContents:Landroid/view/View;

.field final synthetic this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;)V
    .locals 1

    .prologue
    .line 404
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;-><init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$1;)V
    .locals 0

    .prologue
    .line 404
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;-><init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;)V

    return-void
.end method


# virtual methods
.method createAnimator()Landroid/animation/Animator;
    .locals 12

    .prologue
    const-wide/16 v10, 0xc8

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 419
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->mNewContents:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->mOldContents:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 420
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->setTranslationY(F)V

    .line 421
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->mNewContents:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    .line 423
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 424
    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    iget-object v3, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->mOldContents:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v6, [F

    aput v8, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v6, [F

    neg-int v0, v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    aput v0, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v2, v6

    const/4 v0, 0x2

    iget-object v3, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->mNewContents:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v6, [F

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 431
    return-object v1
.end method

.method getAnimationType()I
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x1

    return v0
.end method

.method onAnimationEnd()V
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->mFrontWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;->removeViewAt(I)V

    .line 437
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->setTranslationY(F)V

    .line 438
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->mFrontWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;->getItem()Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;->setControlsEnabled(Z)V

    .line 439
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->mFrontWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;->getItem()Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;->getAccessibilityText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 440
    return-void
.end method

.method prepareAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 411
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    # getter for: Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->access$600(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->mFrontWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    .line 412
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->mFrontWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->mOldContents:Landroid/view/View;

    .line 413
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->mFrontWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;->getItem()Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->mNewContents:Landroid/view/View;

    .line 414
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->mFrontWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->mNewContents:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;->addView(Landroid/view/View;)V

    .line 415
    return-void
.end method
