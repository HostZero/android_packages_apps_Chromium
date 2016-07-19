.class Lorg/chromium/chrome/browser/toolbar/ToolbarLayout$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ToolbarLayout.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;)V
    .locals 0

    .prologue
    .line 677
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout$3;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 690
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout$3;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mIsMenuBadgeAnimationRunning:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->access$102(Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;Z)Z

    .line 691
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 685
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout$3;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mIsMenuBadgeAnimationRunning:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->access$102(Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;Z)Z

    .line 686
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 680
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout$3;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    const/4 v1, 0x1

    # setter for: Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->mIsMenuBadgeAnimationRunning:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->access$102(Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;Z)Z

    .line 681
    return-void
.end method
