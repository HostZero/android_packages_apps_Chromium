.class abstract Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;
.super Ljava/lang/Object;
.source "InfoBarContainerLayout.java"


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field final synthetic this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$1;)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;-><init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;)V

    return-void
.end method


# virtual methods
.method abstract createAnimator()Landroid/animation/Animator;
.end method

.method createTranslationYAnimator(Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;F)Landroid/animation/ValueAnimator;
    .locals 3

    .prologue
    .line 194
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;->getTranslationY()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 195
    new-instance v1, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation$2;

    invoke-direct {v1, p0, p1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation$2;-><init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 202
    return-object v0
.end method

.method abstract getAnimationType()I
.end method

.method final isStarted()Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onAnimationEnd()V
    .locals 0

    .prologue
    .line 221
    return-void
.end method

.method prepareAnimation()V
    .locals 0

    .prologue
    .line 209
    return-void
.end method

.method final start()V
    .locals 2

    .prologue
    .line 172
    new-instance v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation$1;-><init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;)V

    .line 184
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;->createAnimator()Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;->mAnimator:Landroid/animation/Animator;

    .line 185
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 186
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 187
    return-void
.end method
