.class Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;
.super Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;
.source "InfoBarContainerLayout.java"


# instance fields
.field private mFrontContents:Landroid/view/View;

.field private mFrontItem:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;

.field private mFrontWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

.field final synthetic this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;)V
    .locals 1

    .prologue
    .line 239
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;-><init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$1;)V

    .line 240
    iput-object p2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;->mFrontItem:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;

    .line 241
    return-void
.end method


# virtual methods
.method createAnimator()Landroid/animation/Animator;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 253
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;->mFrontWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;->mFrontWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;->setTranslationY(F)V

    .line 254
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;->mFrontContents:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 256
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 257
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;->mFrontWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    invoke-virtual {p0, v2, v3}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;->createTranslationYAnimator(Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;->mFrontContents:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v7, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 262
    return-object v0
.end method

.method getAnimationType()I
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method onAnimationEnd()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;->mFrontItem:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;->getAccessibilityText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 268
    return-void
.end method

.method prepareAnimation()V
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;->mFrontItem:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;->mFrontContents:Landroid/view/View;

    .line 246
    new-instance v0, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;->mFrontItem:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;->mFrontWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    .line 247
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;->mFrontWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;->mFrontContents:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;->addView(Landroid/view/View;)V

    .line 248
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;->mFrontWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    # invokes: Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->addWrapper(Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->access$500(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;)V

    .line 249
    return-void
.end method
