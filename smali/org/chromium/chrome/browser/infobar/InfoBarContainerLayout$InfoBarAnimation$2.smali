.class Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation$2;
.super Ljava/lang/Object;
.source "InfoBarContainerLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;

.field final synthetic val$wrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation$2;->this$1:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;

    iput-object p2, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation$2;->val$wrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 198
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation$2;->val$wrapper:Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarWrapper;->setTranslationY(F)V

    .line 199
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation$2;->this$1:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;

    iget-object v0, v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$InfoBarAnimation;->this$0:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;

    # getter for: Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->mFloatingBehavior:Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;
    invoke-static {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;->access$300(Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout;)Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainerLayout$FloatingBehavior;->updateShadowPosition()V

    .line 200
    return-void
.end method
