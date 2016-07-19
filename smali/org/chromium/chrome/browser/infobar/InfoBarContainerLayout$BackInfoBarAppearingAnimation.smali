.class Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$BackInfoBarAppearingAnimation;
.super Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;
.source "InfoBarContainerLayout.java"


# instance fields
.field private mAppearingWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

.field final synthetic this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;)V
    .locals 2

    .prologue
    .line 283
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$BackInfoBarAppearingAnimation;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;-><init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$1;)V

    .line 284
    new-instance v0, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$Item;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$BackInfoBarAppearingAnimation;->mAppearingWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    .line 285
    return-void
.end method


# virtual methods
.method createAnimator()Landroid/animation/Animator;
    .locals 4

    .prologue
    .line 294
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$BackInfoBarAppearingAnimation;->mAppearingWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$BackInfoBarAppearingAnimation;->mAppearingWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;->setTranslationY(F)V

    .line 295
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$BackInfoBarAppearingAnimation;->mAppearingWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$BackInfoBarAppearingAnimation;->createTranslationYAnimator(Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method getAnimationType()I
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method prepareAnimation()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$BackInfoBarAppearingAnimation;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$BackInfoBarAppearingAnimation;->mAppearingWrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    # invokes: Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->addWrapper(Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->access$500(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;)V

    .line 290
    return-void
.end method
