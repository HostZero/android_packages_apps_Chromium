.class Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ToolbarPhone.java"


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

.field final synthetic val$hasFocus:Z


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;Z)V
    .locals 0

    .prologue
    .line 1728
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$9;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    iput-boolean p2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$9;->val$hasFocus:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 1743
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$9;->mCanceled:Z

    .line 1744
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1748
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$9;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 1757
    :goto_0
    return-void

    .line 1750
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$9;->val$hasFocus:Z

    if-nez v0, :cond_1

    .line 1751
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$9;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    # setter for: Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mDisableLocationBarRelayout:Z
    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->access$902(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;Z)Z

    .line 1752
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$9;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    # setter for: Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLayoutLocationBarInFocusedMode:Z
    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->access$1002(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;Z)Z

    .line 1753
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$9;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->requestLayout()V

    .line 1755
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$9;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mPhoneLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->access$1100(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;)Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    move-result-object v0

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$9;->val$hasFocus:Z

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->finishUrlFocusChange(Z)V

    .line 1756
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$9;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    # setter for: Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mUrlFocusChangeInProgress:Z
    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->access$1202(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;Z)Z

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1733
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$9;->val$hasFocus:Z

    if-nez v0, :cond_0

    .line 1734
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$9;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    # setter for: Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mDisableLocationBarRelayout:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->access$902(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;Z)Z

    .line 1739
    :goto_0
    return-void

    .line 1736
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$9;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    # setter for: Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mLayoutLocationBarInFocusedMode:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->access$1002(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;Z)Z

    .line 1737
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$9;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->requestLayout()V

    goto :goto_0
.end method
