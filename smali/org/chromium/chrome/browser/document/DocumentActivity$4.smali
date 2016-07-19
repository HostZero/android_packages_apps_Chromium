.class Lorg/chromium/chrome/browser/document/DocumentActivity$4;
.super Ljava/lang/Object;
.source "DocumentActivity.java"

# interfaces
.implements Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior$OverviewModeObserver;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/document/DocumentActivity;)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$4;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOverviewModeFinishedHiding()V
    .locals 3

    .prologue
    .line 665
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$4;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    # invokes: Lorg/chromium/chrome/browser/document/DocumentActivity;->getAssistStatusHandler()Lorg/chromium/chrome/browser/AssistStatusHandler;
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->access$1000(Lorg/chromium/chrome/browser/document/DocumentActivity;)Lorg/chromium/chrome/browser/AssistStatusHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$4;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    # invokes: Lorg/chromium/chrome/browser/document/DocumentActivity;->getAssistStatusHandler()Lorg/chromium/chrome/browser/AssistStatusHandler;
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->access$1100(Lorg/chromium/chrome/browser/document/DocumentActivity;)Lorg/chromium/chrome/browser/AssistStatusHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/AssistStatusHandler;->updateAssistState()V

    .line 668
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$4;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 669
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$4;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getCompositorViewHolder()Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->getLayoutManager()Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;

    .line 672
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->overviewVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 673
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$4;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    iget-object v2, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$4;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    if-eqz v0, :cond_3

    const/high16 v0, -0x1000000

    :goto_1
    # invokes: Lorg/chromium/chrome/browser/document/DocumentActivity;->setStatusBarColor(Lorg/chromium/chrome/browser/tab/Tab;I)V
    invoke-static {v1, v2, v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->access$1200(Lorg/chromium/chrome/browser/document/DocumentActivity;Lorg/chromium/chrome/browser/tab/Tab;I)V

    .line 676
    :cond_1
    return-void

    .line 672
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 673
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$4;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getThemeColor()I

    move-result v0

    goto :goto_1
.end method

.method public onOverviewModeFinishedShowing()V
    .locals 0

    .prologue
    .line 657
    return-void
.end method

.method public onOverviewModeStartedHiding(ZZ)V
    .locals 0

    .prologue
    .line 661
    return-void
.end method

.method public onOverviewModeStartedShowing(Z)V
    .locals 2

    .prologue
    .line 648
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$4;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    # getter for: Lorg/chromium/chrome/browser/document/DocumentActivity;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->access$700(Lorg/chromium/chrome/browser/document/DocumentActivity;)Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$4;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    # getter for: Lorg/chromium/chrome/browser/document/DocumentActivity;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->access$700(Lorg/chromium/chrome/browser/document/DocumentActivity;)Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->hideToolbar()V

    .line 649
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$4;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    # invokes: Lorg/chromium/chrome/browser/document/DocumentActivity;->getAssistStatusHandler()Lorg/chromium/chrome/browser/AssistStatusHandler;
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->access$800(Lorg/chromium/chrome/browser/document/DocumentActivity;)Lorg/chromium/chrome/browser/AssistStatusHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 650
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$4;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    # invokes: Lorg/chromium/chrome/browser/document/DocumentActivity;->getAssistStatusHandler()Lorg/chromium/chrome/browser/AssistStatusHandler;
    invoke-static {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->access$900(Lorg/chromium/chrome/browser/document/DocumentActivity;)Lorg/chromium/chrome/browser/AssistStatusHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/AssistStatusHandler;->updateAssistState()V

    .line 652
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$4;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/document/DocumentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->setStatusBarColor(Landroid/view/Window;I)V

    .line 653
    invoke-static {}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->getInstance()Lorg/chromium/chrome/browser/metrics/StartupMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->recordOpenedTabSwitcher()V

    .line 654
    return-void
.end method
