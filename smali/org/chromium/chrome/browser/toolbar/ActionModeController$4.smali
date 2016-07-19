.class Lorg/chromium/chrome/browser/toolbar/ActionModeController$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActionModeController.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/ActionModeController;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/ActionModeController;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController$4;->this$0:Lorg/chromium/chrome/browser/toolbar/ActionModeController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController$4;->this$0:Lorg/chromium/chrome/browser/toolbar/ActionModeController;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mCurrentAnimation:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->access$002(Lorg/chromium/chrome/browser/toolbar/ActionModeController;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 186
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController$4;->this$0:Lorg/chromium/chrome/browser/toolbar/ActionModeController;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mActionBarDelegate:Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->access$100(Lorg/chromium/chrome/browser/toolbar/ActionModeController;)Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;->setActionBarBackgroundVisibility(Z)V

    .line 187
    return-void
.end method
