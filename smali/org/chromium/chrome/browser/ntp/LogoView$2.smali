.class Lorg/chromium/chrome/browser/ntp/LogoView$2;
.super Ljava/lang/Object;
.source "LogoView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/LogoView;

.field final synthetic val$contentDescription:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/LogoView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/LogoView$2;->this$0:Lorg/chromium/chrome/browser/ntp/LogoView;

    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/LogoView$2;->val$contentDescription:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ntp/LogoView$2;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 212
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView$2;->this$0:Lorg/chromium/chrome/browser/ntp/LogoView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/LogoView;->invalidate()V

    .line 213
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 198
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView$2;->this$0:Lorg/chromium/chrome/browser/ntp/LogoView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/LogoView$2;->this$0:Lorg/chromium/chrome/browser/ntp/LogoView;

    # getter for: Lorg/chromium/chrome/browser/ntp/LogoView;->mNewLogo:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lorg/chromium/chrome/browser/ntp/LogoView;->access$200(Lorg/chromium/chrome/browser/ntp/LogoView;)Landroid/graphics/Bitmap;

    move-result-object v1

    # setter for: Lorg/chromium/chrome/browser/ntp/LogoView;->mLogo:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ntp/LogoView;->access$102(Lorg/chromium/chrome/browser/ntp/LogoView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 199
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView$2;->this$0:Lorg/chromium/chrome/browser/ntp/LogoView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/LogoView$2;->this$0:Lorg/chromium/chrome/browser/ntp/LogoView;

    # getter for: Lorg/chromium/chrome/browser/ntp/LogoView;->mNewLogoMatrix:Landroid/graphics/Matrix;
    invoke-static {v1}, Lorg/chromium/chrome/browser/ntp/LogoView;->access$400(Lorg/chromium/chrome/browser/ntp/LogoView;)Landroid/graphics/Matrix;

    move-result-object v1

    # setter for: Lorg/chromium/chrome/browser/ntp/LogoView;->mLogoMatrix:Landroid/graphics/Matrix;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ntp/LogoView;->access$302(Lorg/chromium/chrome/browser/ntp/LogoView;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 200
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView$2;->this$0:Lorg/chromium/chrome/browser/ntp/LogoView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/LogoView$2;->this$0:Lorg/chromium/chrome/browser/ntp/LogoView;

    # getter for: Lorg/chromium/chrome/browser/ntp/LogoView;->mNewLogoIsDefault:Z
    invoke-static {v1}, Lorg/chromium/chrome/browser/ntp/LogoView;->access$600(Lorg/chromium/chrome/browser/ntp/LogoView;)Z

    move-result v1

    # setter for: Lorg/chromium/chrome/browser/ntp/LogoView;->mLogoIsDefault:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ntp/LogoView;->access$502(Lorg/chromium/chrome/browser/ntp/LogoView;Z)Z

    .line 201
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView$2;->this$0:Lorg/chromium/chrome/browser/ntp/LogoView;

    # setter for: Lorg/chromium/chrome/browser/ntp/LogoView;->mNewLogo:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/ntp/LogoView;->access$202(Lorg/chromium/chrome/browser/ntp/LogoView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 202
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView$2;->this$0:Lorg/chromium/chrome/browser/ntp/LogoView;

    # setter for: Lorg/chromium/chrome/browser/ntp/LogoView;->mNewLogoMatrix:Landroid/graphics/Matrix;
    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/ntp/LogoView;->access$402(Lorg/chromium/chrome/browser/ntp/LogoView;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 203
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView$2;->this$0:Lorg/chromium/chrome/browser/ntp/LogoView;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/ntp/LogoView;->mTransitionAmount:F
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ntp/LogoView;->access$002(Lorg/chromium/chrome/browser/ntp/LogoView;F)F

    .line 204
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView$2;->this$0:Lorg/chromium/chrome/browser/ntp/LogoView;

    # setter for: Lorg/chromium/chrome/browser/ntp/LogoView;->mFadeAnimation:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/ntp/LogoView;->access$702(Lorg/chromium/chrome/browser/ntp/LogoView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 205
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView$2;->this$0:Lorg/chromium/chrome/browser/ntp/LogoView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/LogoView$2;->val$contentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ntp/LogoView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/LogoView$2;->this$0:Lorg/chromium/chrome/browser/ntp/LogoView;

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/LogoView$2;->this$0:Lorg/chromium/chrome/browser/ntp/LogoView;

    # getter for: Lorg/chromium/chrome/browser/ntp/LogoView;->mNewLogoIsDefault:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/LogoView;->access$600(Lorg/chromium/chrome/browser/ntp/LogoView;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/ntp/LogoView;->setClickable(Z)V

    .line 207
    return-void

    .line 206
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 190
    return-void
.end method
