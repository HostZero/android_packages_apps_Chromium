.class Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarDisappearingAnimation;
.super Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;
.source "InfoBarContainerLayout.java"


# instance fields
.field private mDisappearingWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

.field final synthetic this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;)V
    .locals 1

    .prologue
    .line 373
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarDisappearingAnimation;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;-><init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$1;)V
    .locals 0

    .prologue
    .line 373
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarDisappearingAnimation;-><init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;)V

    return-void
.end method


# virtual methods
.method createAnimator()Landroid/animation/Animator;
    .locals 4

    .prologue
    .line 383
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarDisappearingAnimation;->mDisappearingWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarDisappearingAnimation;->mDisappearingWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarDisappearingAnimation;->createTranslationYAnimator(Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method getAnimationType()I
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x2

    return v0
.end method

.method onAnimationEnd()V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarDisappearingAnimation;->mDisappearingWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;->removeAllViews()V

    .line 391
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarDisappearingAnimation;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarDisappearingAnimation;->mDisappearingWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    # invokes: Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->removeWrapper(Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->access$800(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;)V

    .line 392
    return-void
.end method

.method prepareAnimation()V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarDisappearingAnimation;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    # getter for: Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->access$600(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarDisappearingAnimation;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    # getter for: Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mInfoBarWrappers:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->access$600(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarDisappearingAnimation;->mDisappearingWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    .line 379
    return-void
.end method
