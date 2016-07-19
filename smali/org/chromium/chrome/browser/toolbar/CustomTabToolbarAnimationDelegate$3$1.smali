.class Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CustomTabToolbarAnimationDelegate.java"


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$3;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$3;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$3$1;->this$1:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 148
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$3$1;->this$1:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$3;

    iget-object v0, v0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$3;->this$0:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;

    # getter for: Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mTitleBar:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->access$200(Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->FADE_IN_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 151
    return-void
.end method
