.class Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChromeFullscreenManager.java"


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;Z)V
    .locals 1

    .prologue
    .line 704
    iput-object p1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$3;->this$0:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    iput-boolean p2, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$3;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 705
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$3;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 709
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$3;->mCanceled:Z

    .line 710
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 714
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$3;->val$show:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$3;->mCanceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$3;->this$0:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    const/high16 v1, 0x7fc00000    # NaNf

    # setter for: Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mBrowserControlOffset:F
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->access$102(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;F)F

    .line 715
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$3;->this$0:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlAnimation:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->access$1002(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 716
    return-void
.end method
