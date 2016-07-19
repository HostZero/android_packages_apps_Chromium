.class Lorg/chromium/chrome/browser/ChromeActivity$4;
.super Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;
.source "ChromeActivity.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ChromeActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeActivity$4;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;-><init>(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    return-void
.end method


# virtual methods
.method public didFirstVisuallyNonEmptyPaint(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 498
    invoke-static {p1}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->checkAndResetDataUseTrackingStarted(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity$4;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    # getter for: Lorg/chromium/chrome/browser/ChromeActivity;->mDataUseSnackbarController:Lorg/chromium/chrome/browser/snackbar/DataUseSnackbarController;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->access$500(Lorg/chromium/chrome/browser/ChromeActivity;)Lorg/chromium/chrome/browser/snackbar/DataUseSnackbarController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/snackbar/DataUseSnackbarController;->showDataUseTrackingStartedBar()V

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity$4;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->shouldShowDataUseEndedSnackbar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->checkAndResetDataUseTrackingEnded(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity$4;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    # getter for: Lorg/chromium/chrome/browser/ChromeActivity;->mDataUseSnackbarController:Lorg/chromium/chrome/browser/snackbar/DataUseSnackbarController;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->access$500(Lorg/chromium/chrome/browser/ChromeActivity;)Lorg/chromium/chrome/browser/snackbar/DataUseSnackbarController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/snackbar/DataUseSnackbarController;->showDataUseTrackingEndedBar()V

    goto :goto_0
.end method

.method public onCrash(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity$4;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->postDeferredStartupIfNeeded()V

    .line 536
    return-void
.end method

.method public onDestroyed(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity$4;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    # getter for: Lorg/chromium/chrome/browser/ChromeActivity;->mDataUseSnackbarController:Lorg/chromium/chrome/browser/snackbar/DataUseSnackbarController;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->access$500(Lorg/chromium/chrome/browser/ChromeActivity;)Lorg/chromium/chrome/browser/snackbar/DataUseSnackbarController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/snackbar/DataUseSnackbarController;->dismissDataUseBar()V

    .line 520
    return-void
.end method

.method public onDidChangeThemeColor(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity$4;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity$4;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/ChromeActivity;->setStatusBarColor(Lorg/chromium/chrome/browser/tab/Tab;I)V

    .line 543
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity$4;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getToolbarManager()Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity$4;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getToolbarManager()Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updatePrimaryColor(I)V

    .line 546
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity$4;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    sget v1, Lorg/chromium/chrome/R$id;->control_container:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ChromeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/ControlContainer;

    .line 548
    invoke-interface {v0}, Lorg/chromium/chrome/browser/widget/ControlContainer;->getToolbarResourceAdapter()Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onHidden(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity$4;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    # getter for: Lorg/chromium/chrome/browser/ChromeActivity;->mDataUseSnackbarController:Lorg/chromium/chrome/browser/snackbar/DataUseSnackbarController;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->access$500(Lorg/chromium/chrome/browser/ChromeActivity;)Lorg/chromium/chrome/browser/snackbar/DataUseSnackbarController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/snackbar/DataUseSnackbarController;->dismissDataUseBar()V

    .line 515
    return-void
.end method

.method public onLoadStopped(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity$4;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->postDeferredStartupIfNeeded()V

    .line 525
    return-void
.end method

.method public onPageLoadFinished(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity$4;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->postDeferredStartupIfNeeded()V

    .line 530
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity$4;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->showOfflineSnackbarIfNecessary(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 531
    return-void
.end method

.method public onShown(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity$4;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getThemeColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/chromium/chrome/browser/ChromeActivity;->setStatusBarColor(Lorg/chromium/chrome/browser/tab/Tab;I)V

    .line 510
    return-void
.end method
