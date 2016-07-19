.class Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ToolbarPhone.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;)V
    .locals 0

    .prologue
    .line 1377
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$7;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 1390
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$7;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mDelayedTabSwitcherModeAnimation:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->access$602(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 1391
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$7;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$7;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mIsInTabSwitcherMode:Z
    invoke-static {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->access$400(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;)Z

    move-result v1

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateShadowVisibility(Z)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->access$700(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;Z)V

    .line 1392
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$7;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$7;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mIsInTabSwitcherMode:Z
    invoke-static {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->access$400(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;)Z

    move-result v1

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateViewsForTabSwitcherMode(Z)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->access$500(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;Z)V

    .line 1393
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 1380
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$7;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$7;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mIsInTabSwitcherMode:Z
    invoke-static {v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->access$400(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;)Z

    move-result v1

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->updateViewsForTabSwitcherMode(Z)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->access$500(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;Z)V

    .line 1383
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 1384
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$7;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->requestLayout()V

    .line 1386
    :cond_0
    return-void
.end method
