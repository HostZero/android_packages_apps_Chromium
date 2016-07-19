.class Lorg/chromium/chrome/browser/toolbar/ToolbarManager$9;
.super Lorg/chromium/chrome/browser/compositor/layouts/EmptyOverviewModeObserver;
.source "ToolbarManager.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V
    .locals 0

    .prologue
    .line 502
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$9;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/EmptyOverviewModeObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onOverviewModeFinishedHiding()V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$9;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$200(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onTabSwitcherTransitionFinished()V

    .line 518
    return-void
.end method

.method public onOverviewModeStartedHiding(ZZ)V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$9;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$200(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setTabSwitcherMode(ZZZ)V

    .line 512
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$9;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateButtonStatus()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$1300(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V

    .line 513
    return-void
.end method

.method public onOverviewModeStartedShowing(Z)V
    .locals 3

    .prologue
    .line 505
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$9;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$200(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->setTabSwitcherMode(ZZZ)V

    .line 506
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$9;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateButtonStatus()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$1300(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V

    .line 507
    return-void
.end method
