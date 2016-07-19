.class Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$3;
.super Ljava/lang/Object;
.source "CustomTabToolbarAnimationDelegate.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;

.field final synthetic val$oldLoc:[I

.field final synthetic val$scale:F


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;F[I)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$3;->this$0:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;

    iput p2, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$3;->val$scale:F

    iput-object p3, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$3;->val$oldLoc:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4

    .prologue
    .line 132
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$3;->this$0:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;

    # getter for: Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mUrlBar:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->access$100(Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 134
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 135
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$3;->this$0:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;

    # getter for: Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mUrlBar:Landroid/widget/TextView;
    invoke-static {v1}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->access$100(Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 137
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$3;->this$0:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;

    # getter for: Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mUrlBar:Landroid/widget/TextView;
    invoke-static {v1}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->access$100(Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$3;->val$scale:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setScaleX(F)V

    .line 138
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$3;->this$0:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;

    # getter for: Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mUrlBar:Landroid/widget/TextView;
    invoke-static {v1}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->access$100(Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$3;->val$scale:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setScaleY(F)V

    .line 139
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$3;->this$0:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;

    # getter for: Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mUrlBar:Landroid/widget/TextView;
    invoke-static {v1}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->access$100(Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$3;->val$oldLoc:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x0

    aget v3, v0, v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 140
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$3;->this$0:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;

    # getter for: Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mUrlBar:Landroid/widget/TextView;
    invoke-static {v1}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->access$100(Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$3;->val$oldLoc:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    const/4 v3, 0x1

    aget v0, v0, v3

    sub-int v0, v2, v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 142
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$3;->this$0:Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;

    # getter for: Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->mUrlBar:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;->access$100(Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/chromium/ui/interpolators/BakedBezierInterpolator;->TRANSFORM_CURVE:Lorg/chromium/ui/interpolators/BakedBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$3$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$3$1;-><init>(Lorg/chromium/chrome/browser/toolbar/CustomTabToolbarAnimationDelegate$3;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 153
    return-void
.end method
