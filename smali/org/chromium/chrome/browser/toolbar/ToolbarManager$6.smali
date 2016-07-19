.class Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;
.super Lorg/chromium/chrome/browser/tab/EmptyTabObserver;
.source "ToolbarManager.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mIsLoadingNativePage:Z

.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

.field final synthetic val$activity:Lorg/chromium/chrome/browser/ChromeActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 291
    const-class v0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    iput-object p2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->val$activity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/EmptyTabObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$200(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onTabContentViewChanged()V

    .line 408
    return-void
.end method

.method public onContextualActionBarVisibilityChanged(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 1

    .prologue
    .line 459
    if-eqz p2, :cond_0

    const-string/jumbo v0, "MobileActionBarShown"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 460
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mActionBarDelegate:Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$1500(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 461
    if-nez p2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->c()V

    .line 462
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->val$activity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-static {v0}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 463
    if-eqz p2, :cond_3

    .line 464
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mActionModeController:Lorg/chromium/chrome/browser/toolbar/ActionModeController;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$1600(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ActionModeController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->startShowAnimation()V

    .line 469
    :cond_2
    :goto_0
    return-void

    .line 466
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mActionModeController:Lorg/chromium/chrome/browser/toolbar/ActionModeController;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$1600(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ActionModeController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->startHideAnimation()V

    goto :goto_0
.end method

.method public onCrash(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 352
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateTabLoadingState(Z)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$1200(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;Z)V

    .line 353
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateButtonStatus()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$1300(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V

    .line 354
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->finishLoadProgress(Z)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$1000(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;Z)V

    .line 355
    return-void
.end method

.method public onDidFailLoad(Lorg/chromium/chrome/browser/tab/Tab;ZZILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbarModel:Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$800(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->getNewTabPageForCurrentTab()Lorg/chromium/chrome/browser/ntp/NewTabPage;

    move-result-object v0

    .line 450
    if-nez v0, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 452
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->setUrlFocusAnimationsDisabled(Z)V

    .line 453
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$200(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onTabOrModelChanged()V

    goto :goto_0
.end method

.method public onDidNavigateMainFrame(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 1

    .prologue
    .line 310
    if-eqz p4, :cond_0

    .line 311
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$200(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onNavigatedToDifferentPage()V

    .line 313
    :cond_0
    return-void
.end method

.method public onDidStartNavigationToPendingEntry(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 426
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    .line 427
    if-nez v0, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    .line 429
    if-eqz v0, :cond_0

    .line 430
    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->isInitialNavigation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$900(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/omnibox/LocationBar;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->setUrlToPageUrl()V

    goto :goto_0
.end method

.method public onLoadProgressChanged(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 1

    .prologue
    .line 399
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->mIsLoadingNativePage:Z

    if-eqz v0, :cond_0

    .line 403
    :goto_0
    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateLoadProgress(I)V
    invoke-static {v0, p2}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$1100(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;I)V

    goto :goto_0
.end method

.method public onLoadStarted(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 359
    if-nez p2, :cond_0

    .line 382
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateButtonStatus()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$1300(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V

    .line 361
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    const/4 v1, 0x1

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateTabLoadingState(Z)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$1200(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;Z)V

    .line 362
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mLoadProgressSimulator:Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$1400(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;->cancel()V

    .line 364
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->mIsLoadingNativePage:Z

    .line 366
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->getPendingEntry()Lorg/chromium/content_public/browser/NavigationEntry;

    move-result-object v0

    .line 371
    if-eqz v0, :cond_1

    .line 372
    invoke-virtual {v0}, Lorg/chromium/content_public/browser/NavigationEntry;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ntp/NativePageFactory;->isNativePageUrl(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->mIsLoadingNativePage:Z

    .line 376
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->mIsLoadingNativePage:Z

    if-eqz v0, :cond_2

    .line 377
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->finishLoadProgress(Z)V
    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$1000(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;Z)V

    goto :goto_0

    .line 379
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$200(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->startLoadProgress()V

    .line 380
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateLoadProgress(I)V
    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$1100(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;I)V

    goto :goto_0
.end method

.method public onLoadStopped(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 4

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x1

    .line 386
    if-nez p2, :cond_0

    .line 395
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateTabLoadingState(Z)V
    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$1200(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;Z)V

    .line 391
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getProgress()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getProgress()I

    move-result v0

    if-ge v0, v3, :cond_1

    .line 392
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateLoadProgress(I)V
    invoke-static {v0, v3}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$1100(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;I)V

    .line 394
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->finishLoadProgress(Z)V
    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$1000(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;Z)V

    goto :goto_0
.end method

.method public onLoadUrl(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/LoadUrlParams;I)V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbarModel:Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$800(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->getNewTabPageForCurrentTab()Lorg/chromium/chrome/browser/ntp/NewTabPage;

    move-result-object v0

    .line 438
    if-nez v0, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    invoke-virtual {p2}, Lorg/chromium/content_public/browser/LoadUrlParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->isNTPUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    .line 441
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPage;->setUrlFocusAnimationsDisabled(Z)V

    .line 442
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$200(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onTabOrModelChanged()V

    goto :goto_0
.end method

.method public onPageLoadStarted(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 321
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v0

    invoke-static {p2, v0}, Lorg/chromium/chrome/browser/ntp/NativePageFactory;->isNativePageUrl(Ljava/lang/String;Z)Z

    move-result v0

    .line 323
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->mIsLoadingNativePage:Z

    if-ne v0, v1, :cond_0

    .line 332
    :goto_0
    return-void

    .line 324
    :cond_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->mIsLoadingNativePage:Z

    .line 326
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->mIsLoadingNativePage:Z

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    const/4 v1, 0x0

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->finishLoadProgress(Z)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$1000(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;Z)V

    goto :goto_0

    .line 329
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$200(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->startLoadProgress()V

    .line 330
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getProgress()I

    move-result v1

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateLoadProgress(I)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$1100(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;I)V

    goto :goto_0
.end method

.method public onSSLStateUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 296
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/tab/EmptyTabObserver;->onSSLStateUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 297
    sget-boolean v0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbarModel:Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$800(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarModelImpl;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 298
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$900(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/omnibox/LocationBar;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getSecurityLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->updateSecurityIcon(I)V

    .line 299
    return-void
.end method

.method public onTitleUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$900(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/omnibox/LocationBar;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->setTitleToPageTitle()V

    .line 337
    return-void
.end method

.method public onUrlUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 343
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->updateTabLoadingState(Z)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$1200(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;Z)V

    .line 347
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mControlContainer:Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$000(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;->setReadyForBitmapCapture(Z)V

    .line 348
    return-void
.end method

.method public onWebContentsInstantSupportDisabled()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$900(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/omnibox/LocationBar;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->setUrlToPageUrl()V

    .line 304
    return-void
.end method

.method public onWebContentsSwapped(Lorg/chromium/chrome/browser/tab/Tab;ZZ)V
    .locals 2

    .prologue
    .line 412
    if-nez p2, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$900(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/omnibox/LocationBar;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->setUrlToPageUrl()V

    .line 414
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$900(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/omnibox/LocationBar;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getSecurityLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->updateSecurityIcon(I)V

    .line 415
    if-eqz p3, :cond_0

    .line 416
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$6;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mLoadProgressSimulator:Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$1400(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$LoadProgressSimulator;->start()V

    goto :goto_0
.end method
