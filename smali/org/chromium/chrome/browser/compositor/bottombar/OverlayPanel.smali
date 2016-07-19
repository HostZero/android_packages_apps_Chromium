.class public Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;
.super Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;
.source "OverlayPanel.java"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$ActivityStateListener;
.implements Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContentFactory;
.implements Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;
.implements Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

.field private mContent:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

.field private mContentFactory:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContentFactory;

.field private mHasDetectedTouchGesture:Z

.field private mInitialPanelHeight:F

.field private mInitialPanelTouchY:F

.field private mOverlayPanelHost:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelHost;

.field protected mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;)V
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;)V

    .line 130
    iput-object p0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mContentFactory:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContentFactory;

    .line 132
    iput-object p3, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    .line 133
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->registerPanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;)V

    .line 134
    return-void
.end method

.method private createNewOverlayPanelContentInternal()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mContentFactory:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContentFactory;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContentFactory;->createNewOverlayPanelContent()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    move-result-object v0

    .line 329
    new-instance v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$1;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->setContentViewClient(Lorg/chromium/content/browser/ContentViewClient;)V

    .line 374
    return-object v0
.end method

.method private isCoordinateInsideBasePage(FF)Z
    .locals 1

    .prologue
    .line 722
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->isCoordinateInsideOverlayPanel(FF)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCoordinateInsideOverlayPanel(FF)Z
    .locals 2

    .prologue
    .line 712
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getOffsetY()F

    move-result v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getOffsetY()F

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getHeight()F

    move-result v1

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getOffsetX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getOffsetX()F

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getWidth()F

    move-result v1

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldHideOverlayPanelLayout()Z
    .locals 2

    .prologue
    .line 474
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getPanelState()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-result-object v0

    .line 475
    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->CLOSED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getPanelHeightFromState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)F

    move-result v0

    cmpl-float v0, v1, v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canBeSuppressed()Z
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public click(FFZI)V
    .locals 2

    .prologue
    .line 758
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->handleClick(JFF)V

    .line 759
    return-void
.end method

.method public closePanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Z)V
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->closePanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Z)V

    .line 185
    if-nez p2, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mOverlayPanelHost:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelHost;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mOverlayPanelHost:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelHost;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelHost;->hideLayout(Z)V

    goto :goto_0
.end method

.method public createNewOverlayPanelContent()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;
    .locals 4

    .prologue
    .line 319
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    new-instance v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;-><init>()V

    new-instance v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentProgressObserver;

    invoke-direct {v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentProgressObserver;-><init>()V

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentProgressObserver;Lorg/chromium/chrome/browser/ChromeActivity;)V

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 140
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->closePanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Z)V

    .line 141
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->unregisterActivityStateListener(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;)V

    .line 142
    return-void
.end method

.method protected destroyComponents()V
    .locals 0

    .prologue
    .line 149
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->destroyOverlayPanelContent()V

    .line 150
    return-void
.end method

.method protected destroyOverlayPanelContent()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mContent:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mContent:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->destroy()V

    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mContent:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    .line 397
    :cond_0
    return-void
.end method

.method public drag(FFFFFF)V
    .locals 1

    .prologue
    .line 742
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mInitialPanelTouchY:F

    sub-float v0, p2, v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->handleSwipeMove(F)V

    .line 743
    return-void
.end method

.method public fling(FFFF)V
    .locals 0

    .prologue
    .line 752
    invoke-virtual {p0, p4}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->handleFling(F)V

    .line 753
    return-void
.end method

.method public getContentVerticalScroll()F
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mContent:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mContent:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->getContentVerticalScroll()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mContent:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mContent:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentX()F
    .locals 1

    .prologue
    .line 696
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getOffsetX()F

    move-result v0

    return v0
.end method

.method public getContentY()F
    .locals 2

    .prologue
    .line 703
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getOffsetY()F

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getBarContainerHeight()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getPromoHeight()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method protected getControlContainerHeightResource()I
    .locals 1

    .prologue
    .line 486
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 487
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getControlContainerHeightResource()I

    move-result v0

    return v0
.end method

.method protected getOverlayPanelContent()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mContent:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    if-nez v0, :cond_0

    .line 383
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->createNewOverlayPanelContentInternal()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mContent:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    .line 385
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mContent:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    return-object v0
.end method

.method public getPriority()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager$PanelPriority;
    .locals 1

    .prologue
    .line 266
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager$PanelPriority;->MEDIUM:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager$PanelPriority;

    return-object v0
.end method

.method public getSceneLayer()Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;
    .locals 1

    .prologue
    .line 506
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTopControlsOffsetDp()F
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 279
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->getControlOffset()F

    move-result v0

    neg-float v0, v0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mPxToDp:F

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method protected handleBarClick(JFF)V
    .locals 1

    .prologue
    .line 646
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->isPeeking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SEARCH_BAR_TAP:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->expandPanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 649
    :cond_0
    return-void
.end method

.method public handleClick(JFF)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 630
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mHasDetectedTouchGesture:Z

    .line 631
    invoke-direct {p0, p3, p4}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->isCoordinateInsideBasePage(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 632
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->BASE_PAGE_TAP:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->closePanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Z)V

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    invoke-virtual {p0, p3, p4}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->isCoordinateInsideBar(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->onInterceptBarClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 634
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->handleBarClick(JFF)V

    goto :goto_0
.end method

.method public handleFling(F)V
    .locals 1

    .prologue
    .line 606
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mHasDetectedTouchGesture:Z

    .line 607
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->animateToProjectedState(F)V

    .line 608
    return-void
.end method

.method public handleSwipeEnd()V
    .locals 1

    .prologue
    .line 594
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mHasDetectedTouchGesture:Z

    if-nez v0, :cond_0

    .line 595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mHasDetectedTouchGesture:Z

    .line 596
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->animateToNearestState()V

    .line 598
    :cond_0
    return-void
.end method

.method public handleSwipeMove(F)V
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mContent:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getPanelState()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-result-object v0

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->MAXIMIZED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-ne v0, v1, :cond_0

    .line 577
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mContent:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->resetContentViewScroll()V

    .line 581
    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mInitialPanelHeight:F

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->setClampedPanelHeight(F)V

    .line 582
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->requestUpdate()V

    .line 583
    return-void
.end method

.method public handleSwipeStart()V
    .locals 1

    .prologue
    .line 560
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->animationIsRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->cancelHeightAnimation()V

    .line 564
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mHasDetectedTouchGesture:Z

    .line 565
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getHeight()F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mInitialPanelHeight:F

    .line 566
    return-void
.end method

.method public isContentShowing()Z
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mContent:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mContent:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->isContentShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCoordinateInsideBar(FF)Z
    .locals 2

    .prologue
    .line 678
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->isCoordinateInsideOverlayPanel(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getOffsetY()F

    move-result v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getOffsetY()F

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getBarContainerHeight()F

    move-result v1

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isCoordinateInsideCloseButton(F)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v4, 0x40a00000    # 5.0f

    .line 615
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 616
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getCloseIconX()F

    move-result v2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getCloseIconDimension()F

    move-result v3

    add-float/2addr v2, v3

    add-float/2addr v2, v4

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    .line 618
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 616
    goto :goto_0

    .line 618
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getCloseIconX()F

    move-result v2

    sub-float/2addr v2, v4

    cmpl-float v2, p1, v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isCoordinateInsideContent(FF)Z
    .locals 1

    .prologue
    .line 688
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->isCoordinateInsideOverlayPanel(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getContentY()F

    move-result v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->doesPanelHeightMatchState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)Z

    move-result v0

    return v0
.end method

.method public isPeeking()Z
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->doesPanelHeightMatchState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)Z

    move-result v0

    return v0
.end method

.method public isProcessingPendingNavigation()Z
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mContent:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mContent:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->isProcessingPendingNavigation()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwipeEnabled(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;)Z
    .locals 1

    .prologue
    .line 791
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->UP:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadUrlInPanel(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 213
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getOverlayPanelContent()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->loadUrl(Ljava/lang/String;Z)V

    .line 214
    return-void
.end method

.method public notifyBarTouched(F)V
    .locals 1

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->isCoordinateInsideCloseButton(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getOverlayPanelContent()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->showContent()V

    .line 250
    :cond_0
    return-void
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 2

    .prologue
    .line 288
    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 290
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->closePanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Z)V

    .line 292
    :cond_1
    return-void
.end method

.method protected onAnimationFinished()V
    .locals 2

    .prologue
    .line 459
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->onAnimationFinished()V

    .line 461
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->shouldHideOverlayPanelLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mOverlayPanelHost:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelHost;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mOverlayPanelHost:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelHost;->hideLayout(Z)V

    .line 466
    :cond_0
    return-void
.end method

.method protected onClosed(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->destroyComponents()V

    .line 155
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v0, p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->notifyPanelClosed(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 156
    return-void
.end method

.method public onDown(FFZI)V
    .locals 0

    .prologue
    .line 736
    iput p2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mInitialPanelTouchY:F

    .line 737
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->handleSwipeStart()V

    .line 738
    return-void
.end method

.method protected onInterceptBarClick()Z
    .locals 1

    .prologue
    .line 656
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptBarSwipe()Z
    .locals 1

    .prologue
    .line 665
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(FF)V
    .locals 0

    .prologue
    .line 762
    return-void
.end method

.method public onOrientationChanged()V
    .locals 2

    .prologue
    .line 530
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->isNarrowSizePanelSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->closePanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Z)V

    .line 538
    :goto_0
    return-void

    .line 536
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->updatePanelForOrientationChange()V

    goto :goto_0
.end method

.method public onPinch(FFFFZ)V
    .locals 0

    .prologue
    .line 765
    return-void
.end method

.method public onTouchSearchContentViewAck()V
    .locals 0

    .prologue
    .line 258
    return-void
.end method

.method public onUpOrCancel()V
    .locals 0

    .prologue
    .line 747
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->handleSwipeEnd()V

    .line 748
    return-void
.end method

.method public peekPanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V
    .locals 0

    .prologue
    .line 206
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation;->peekPanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 207
    return-void
.end method

.method public removeLastHistoryEntry(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mContent:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    if-nez v0, :cond_0

    .line 444
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mContent:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->removeLastHistoryEntry(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public requestPanelShow(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v0, p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->requestPanelShow(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    goto :goto_0
.end method

.method public setChromeActivity(Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 1

    .prologue
    .line 236
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 237
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-static {p0, v0}, Lorg/chromium/base/ApplicationStatus;->registerStateListenerForActivity(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;Landroid/app/Activity;)V

    .line 240
    :cond_0
    return-void
.end method

.method public setHost(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelHost;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mOverlayPanelHost:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelHost;

    .line 500
    return-void
.end method

.method public setOverlayPanelContentFactory(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContentFactory;)V
    .locals 0

    .prologue
    .line 727
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mContentFactory:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContentFactory;

    .line 728
    return-void
.end method

.method public supportsContextualSearchLayout()Z
    .locals 1

    .prologue
    .line 523
    const/4 v0, 0x1

    return v0
.end method

.method public swipeFinished()V
    .locals 0

    .prologue
    .line 781
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->handleSwipeEnd()V

    .line 782
    return-void
.end method

.method public swipeFlingOccurred(FFFFFF)V
    .locals 0

    .prologue
    .line 786
    invoke-virtual {p0, p6}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->handleFling(F)V

    .line 787
    return-void
.end method

.method public swipeStarted(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;FF)V
    .locals 0

    .prologue
    .line 771
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->handleSwipeStart()V

    .line 772
    return-void
.end method

.method public swipeUpdated(FFFFFF)V
    .locals 0

    .prologue
    .line 776
    invoke-virtual {p0, p6}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->handleSwipeMove(F)V

    .line 777
    return-void
.end method

.method protected updatePanelForOrientationChange()V
    .locals 2

    .prologue
    .line 548
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->updateBasePageSelectionYPx(F)V

    .line 549
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getPanelState()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-result-object v0

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->resizePanelToState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 550
    return-void
.end method

.method public updateSceneLayer(Lorg/chromium/ui/resources/ResourceManager;)V
    .locals 0

    .prologue
    .line 514
    return-void
.end method

.method public updateTopControlsState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 419
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mContent:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    if-nez v0, :cond_0

    .line 433
    :goto_0
    return-void

    .line 421
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->isFullWidthSizePanel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mContent:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    invoke-virtual {v0, v1, v2, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->updateTopControlsState(ZZZ)V

    goto :goto_0

    .line 431
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mContent:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    invoke-virtual {v0, v2, v1, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->updateTopControlsState(ZZZ)V

    goto :goto_0
.end method

.method public updateTopControlsState(IZ)V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 410
    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/tab/Tab;->updateTopControlsState(IZ)V

    .line 413
    :cond_0
    return-void
.end method
