.class Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;
.super Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;
.source "InfoBarContainerLayout.java"


# instance fields
.field private mNewFrontContents:Landroid/view/View;

.field private mNewFrontWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

.field private mOldFrontWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

.field final synthetic this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;)V
    .locals 1

    .prologue
    .line 310
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;-><init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$1;)V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;-><init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;)V

    return-void
.end method


# virtual methods
.method createAnimator()Landroid/animation/Animator;
    .locals 10

    .prologue
    const/4 v2, 0x1

    const-wide/16 v8, 0xfa

    const/4 v7, 0x0

    .line 326
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->mNewFrontWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;->getHeight()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    # getter for: Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mBackInfobarHeight:I
    invoke-static {v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->access$700(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->mOldFrontWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 328
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 329
    neg-int v0, v0

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 332
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 333
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->mOldFrontWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    int-to-float v1, v3

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;->setTranslationY(F)V

    .line 334
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->mOldFrontWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->mOldFrontWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;->getHeight()I

    move-result v1

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->createTranslationYAnimator(Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move v1, v2

    .line 340
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    # getter for: Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->access$600(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 341
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    # getter for: Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->access$600(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    int-to-float v6, v3

    invoke-virtual {v0, v6}, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;->setTranslationY(F)V

    .line 342
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    # getter for: Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->access$600(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    int-to-float v6, v4

    invoke-virtual {p0, v0, v6}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->createTranslationYAnimator(Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 340
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 346
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->mNewFrontContents:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 347
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->mNewFrontContents:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v7

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 350
    return-object v5
.end method

.method getAnimationType()I
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x2

    return v0
.end method

.method onAnimationEnd()V
    .locals 3

    .prologue
    .line 355
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->mOldFrontWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;->removeAllViews()V

    .line 356
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->mOldFrontWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    # invokes: Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->removeWrapper(Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->access$800(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;)V

    .line 357
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    # getter for: Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->access$600(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 358
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    # getter for: Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->access$600(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;->setTranslationY(F)V

    .line 357
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 360
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->mNewFrontWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;->getItem()Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;->getAccessibilityText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 361
    return-void
.end method

.method prepareAnimation()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    # getter for: Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->access$600(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->mOldFrontWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    .line 318
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    # getter for: Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->access$600(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->mNewFrontWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    .line 319
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->mNewFrontWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;->getItem()Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->mNewFrontContents:Landroid/view/View;

    .line 320
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->mNewFrontWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->mNewFrontContents:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;->addView(Landroid/view/View;)V

    .line 321
    return-void
.end method
