.class Lorg/chromium/chrome/browser/toolbar/ActionModeController$3;
.super Ljava/lang/Object;
.source "ActionModeController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/ActionModeController;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/ActionModeController;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController$3;->this$0:Lorg/chromium/chrome/browser/toolbar/ActionModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .prologue
    .line 160
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController$3;->this$0:Lorg/chromium/chrome/browser/toolbar/ActionModeController;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mActionBarDelegate:Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->access$100(Lorg/chromium/chrome/browser/toolbar/ActionModeController;)Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController$3;->this$0:Lorg/chromium/chrome/browser/toolbar/ActionModeController;

    # invokes: Lorg/chromium/chrome/browser/toolbar/ActionModeController;->queryCurrentActionBarHeight()I
    invoke-static {v3}, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->access$200(Lorg/chromium/chrome/browser/toolbar/ActionModeController;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/chromium/chrome/browser/toolbar/ActionModeController$3;->this$0:Lorg/chromium/chrome/browser/toolbar/ActionModeController;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ActionModeController;->mTabStripHeight:F
    invoke-static {v4}, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->access$300(Lorg/chromium/chrome/browser/toolbar/ActionModeController;)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 165
    :cond_0
    return-void
.end method
