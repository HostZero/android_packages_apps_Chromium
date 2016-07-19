.class Lorg/chromium/chrome/browser/widget/LoadingView$2;
.super Ljava/lang/Object;
.source "LoadingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/LoadingView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/LoadingView;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/LoadingView$2;->this$0:Lorg/chromium/chrome/browser/widget/LoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/LoadingView$2;->this$0:Lorg/chromium/chrome/browser/widget/LoadingView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/LoadingView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->TRANSFORM_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/widget/LoadingView$2$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/widget/LoadingView$2$1;-><init>(Lorg/chromium/chrome/browser/widget/LoadingView$2;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 47
    return-void
.end method
