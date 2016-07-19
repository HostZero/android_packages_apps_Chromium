.class public Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;
.super Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;
.source "ContextualSearchPanel.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mContextualSearchBarControl:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchBarControl;

.field private mHasContentBeenTouched:Z

.field private mIconSpriteControl:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl;

.field private mIsAnimatingMandatoryPromoAcceptance:Z

.field private mIsPromoMandatory:Z

.field private mIsPromoVisible:Z

.field private mManagementDelegate:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;

.field private final mPanelMetrics:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;

.field private mPeekPromoControl:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;

.field private mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/ContextualSearchSceneLayer;

.field private mSearchBarContextOpacity:F

.field private mSearchBarTermOpacity:F

.field private mShouldPromoteToTabAfterMaximizing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;)V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;)V

    .line 542
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mSearchBarContextOpacity:F

    .line 543
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mSearchBarTermOpacity:F

    .line 72
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->createNewContextualSearchSceneLayer()Lorg/chromium/chrome/browser/compositor/scene_layer/ContextualSearchSceneLayer;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/ContextualSearchSceneLayer;

    .line 73
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mPanelMetrics:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;I)V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->setProgressBarCompletion(I)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;Z)V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->setProgressBarVisible(Z)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;)V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->requestUpdate()V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;I)V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->setProgressBarCompletion(I)V

    return-void
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;)V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->requestUpdate()V

    return-void
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;Z)V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->setProgressBarVisible(Z)V

    return-void
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;)V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->requestUpdate()V

    return-void
.end method

.method private destroyPeekPromoControl()V
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mPeekPromoControl:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mPeekPromoControl:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->destroy()V

    .line 701
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mPeekPromoControl:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;

    .line 703
    :cond_0
    return-void
.end method

.method private getPeekPromoControl()Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;
    .locals 4

    .prologue
    .line 683
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mContainerView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 684
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mResourceLoader:Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 686
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mPeekPromoControl:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;

    if-nez v0, :cond_2

    .line 687
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mContainerView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mResourceLoader:Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;Landroid/content/Context;Landroid/view/ViewGroup;Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mPeekPromoControl:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;

    .line 692
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mPeekPromoControl:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;

    return-object v0
.end method

.method private onInterceptOpeningPanel()Z
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mManagementDelegate:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;->isRunningInCompatibilityMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mManagementDelegate:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;->openResolvedSearchUrlInNewTab()V

    .line 281
    const/4 v0, 0x1

    .line 283
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetSearchBarContextOpacity()V
    .locals 1

    .prologue
    .line 623
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mSearchBarContextOpacity:F

    .line 624
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mSearchBarTermOpacity:F

    .line 625
    return-void
.end method

.method private resetSearchBarTermOpacity()V
    .locals 1

    .prologue
    .line 632
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mSearchBarContextOpacity:F

    .line 633
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mSearchBarTermOpacity:F

    .line 634
    return-void
.end method

.method private setPromoVisibility(Z)V
    .locals 1

    .prologue
    .line 756
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mIsPromoVisible:Z

    .line 758
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mIsPromoVisible:Z

    if-eqz v0, :cond_0

    .line 759
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->createPromoView()V

    .line 761
    :cond_0
    return-void
.end method


# virtual methods
.method protected animatePromoAcceptance()V
    .locals 1

    .prologue
    .line 733
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mIsPromoMandatory:Z

    if-eqz v0, :cond_0

    .line 734
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mIsAnimatingMandatoryPromoAcceptance:Z

    .line 735
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getOverlayPanelContent()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->showContent()V

    .line 736
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->PROMO_ACCEPTED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->expandPanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 739
    :cond_0
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->animatePromoAcceptance()V

    .line 740
    return-void
.end method

.method public canBeSuppressed()Z
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public canDisplayContentInPanel()Z
    .locals 1

    .prologue
    .line 772
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mIsPromoMandatory:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mIsAnimatingMandatoryPromoAcceptance:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closePanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Z)V
    .locals 1

    .prologue
    .line 437
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->closePanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Z)V

    .line 438
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mHasContentBeenTouched:Z

    .line 439
    return-void
.end method

.method protected createNewContextualSearchSceneLayer()Lorg/chromium/chrome/browser/compositor/scene_layer/ContextualSearchSceneLayer;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Lorg/chromium/chrome/browser/compositor/scene_layer/ContextualSearchSceneLayer;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/compositor/scene_layer/ContextualSearchSceneLayer;-><init>(F)V

    return-object v0
.end method

.method public createNewOverlayPanelContent()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;
    .locals 4

    .prologue
    .line 78
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mManagementDelegate:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;->getOverlayContentDelegate()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;

    move-result-object v1

    new-instance v2, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel$PanelProgressObserver;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel$PanelProgressObserver;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentProgressObserver;Lorg/chromium/chrome/browser/ChromeActivity;)V

    return-object v0
.end method

.method protected destroyComponents()V
    .locals 0

    .prologue
    .line 292
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->destroyComponents()V

    .line 293
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->destroyPromoView()V

    .line 294
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->destroyPeekPromoControl()V

    .line 295
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->destroySearchBarControl()V

    .line 296
    return-void
.end method

.method public destroyContent()V
    .locals 0

    .prologue
    .line 786
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->destroyOverlayPanelContent()V

    .line 787
    return-void
.end method

.method protected destroySearchBarControl()V
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mContextualSearchBarControl:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchBarControl;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mContextualSearchBarControl:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchBarControl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchBarControl;->destroy()V

    .line 596
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mContextualSearchBarControl:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchBarControl;

    .line 598
    :cond_0
    return-void
.end method

.method public didTouchContent()Z
    .locals 1

    .prologue
    .line 457
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mHasContentBeenTouched:Z

    return v0
.end method

.method public displaySearchContext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 478
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->cancelSearchTermResolutionAnimation()V

    .line 479
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getSearchBarControl()Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchBarControl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchBarControl;->setSearchContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->resetSearchBarContextOpacity()V

    .line 481
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mPanelMetrics:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->onSearchRequestStarted()V

    .line 482
    return-void
.end method

.method public displaySearchTerm(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->cancelSearchTermResolutionAnimation()V

    .line 467
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getSearchBarControl()Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchBarControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchBarControl;->setSearchTerm(Ljava/lang/String;)V

    .line 468
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->resetSearchBarTermOpacity()V

    .line 469
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mPanelMetrics:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->onSearchRequestStarted()V

    .line 470
    return-void
.end method

.method protected getExpandedHeight()F
    .locals 2

    .prologue
    .line 204
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->canDisplayContentInPanel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getExpandedHeight()F

    move-result v0

    .line 207
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getBarHeightPeeking()F

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getPromoContentHeight()F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public getIconSpriteControl()Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl;
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mIconSpriteControl:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl;

    if-nez v0, :cond_0

    .line 647
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mIconSpriteControl:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl;

    .line 649
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mIconSpriteControl:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl;

    return-object v0
.end method

.method public getPanelState()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;
    .locals 1

    .prologue
    .line 450
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getPanelState()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-result-object v0

    return-object v0
.end method

.method protected getPeekPromoHeight()F
    .locals 1

    .prologue
    .line 676
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getPeekPromoControl()Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->getHeightPx()F

    move-result v0

    return v0
.end method

.method protected getPeekPromoHeightPeekingPx()F
    .locals 1

    .prologue
    .line 671
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getPeekPromoControl()Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->getHeightPeekingPx()F

    move-result v0

    return v0
.end method

.method public getPriority()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager$PanelPriority;
    .locals 1

    .prologue
    .line 308
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager$PanelPriority;->HIGH:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager$PanelPriority;

    return-object v0
.end method

.method public getSceneLayer()Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/ContextualSearchSceneLayer;

    return-object v0
.end method

.method public getSearchBarContextOpacity()F
    .locals 1

    .prologue
    .line 549
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mSearchBarContextOpacity:F

    return v0
.end method

.method protected getSearchBarControl()Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchBarControl;
    .locals 4

    .prologue
    .line 578
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mContainerView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 579
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mResourceLoader:Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 581
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mContextualSearchBarControl:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchBarControl;

    if-nez v0, :cond_2

    .line 582
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchBarControl;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mContainerView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mResourceLoader:Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchBarControl;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;Landroid/content/Context;Landroid/view/ViewGroup;Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mContextualSearchBarControl:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchBarControl;

    .line 586
    :cond_2
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mContextualSearchBarControl:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchBarControl;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 587
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mContextualSearchBarControl:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchBarControl;

    return-object v0
.end method

.method public getSearchBarTermOpacity()F
    .locals 1

    .prologue
    .line 556
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mSearchBarTermOpacity:F

    return v0
.end method

.method public getSearchContextViewId()I
    .locals 1

    .prologue
    .line 563
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getSearchBarControl()Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchBarControl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchBarControl;->getSearchContextViewId()I

    move-result v0

    return v0
.end method

.method public getSearchTermViewId()I
    .locals 1

    .prologue
    .line 570
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getSearchBarControl()Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchBarControl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchBarControl;->getSearchTermViewId()I

    move-result v0

    return v0
.end method

.method public handleBarClick(JFF)V
    .locals 3

    .prologue
    .line 255
    invoke-super {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->handleBarClick(JFF)V

    .line 256
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->isMaximized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    :cond_0
    invoke-virtual {p0, p3}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->isCoordinateInsideCloseButton(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->CLOSE_BUTTON:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->closePanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Z)V

    .line 263
    :cond_1
    :goto_0
    return-void

    .line 259
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->isCustomTab()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->canDisplayContentInPanel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mManagementDelegate:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;->promoteToTab()V

    goto :goto_0
.end method

.method public isPeekPromoVisible()Z
    .locals 1

    .prologue
    .line 384
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getPeekPromoControl()Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->isVisible()Z

    move-result v0

    return v0
.end method

.method protected isPromoVisible()Z
    .locals 1

    .prologue
    .line 728
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mIsPromoVisible:Z

    return v0
.end method

.method protected isSupportedState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;)Z
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->canDisplayContentInPanel()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->MAXIMIZED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-eq p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maximizePanelThenPromoteToTab(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mShouldPromoteToTabAfterMaximizing:Z

    .line 413
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->maximizePanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 414
    return-void
.end method

.method public maximizePanelThenPromoteToTab(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;J)V
    .locals 2

    .prologue
    .line 422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mShouldPromoteToTabAfterMaximizing:Z

    .line 423
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->MAXIMIZED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->animatePanelToState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;J)V

    .line 424
    return-void
.end method

.method public notifyBarTouched(F)V
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->canDisplayContentInPanel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getOverlayPanelContent()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->showContent()V

    .line 328
    :cond_0
    return-void
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 300
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->onActivityStateChange(Landroid/app/Activity;I)V

    .line 301
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 302
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mManagementDelegate:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;->logCurrentState()V

    .line 304
    :cond_0
    return-void
.end method

.method protected onAnimationFinished()V
    .locals 2

    .prologue
    .line 336
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->onAnimationFinished()V

    .line 338
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mShouldPromoteToTabAfterMaximizing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getPanelState()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-result-object v0

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->MAXIMIZED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-ne v0, v1, :cond_0

    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mShouldPromoteToTabAfterMaximizing:Z

    .line 340
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mManagementDelegate:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;->promoteToTab()V

    .line 342
    :cond_0
    return-void
.end method

.method protected onClosed(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 241
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mManagementDelegate:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;->onCloseContextualSearch(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 243
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->setProgressBarCompletion(I)V

    .line 244
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->setProgressBarVisible(Z)V

    .line 246
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->onClosed(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 247
    return-void
.end method

.method public onInterceptBarClick()Z
    .locals 1

    .prologue
    .line 267
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->onInterceptOpeningPanel()Z

    move-result v0

    return v0
.end method

.method public onInterceptBarSwipe()Z
    .locals 1

    .prologue
    .line 272
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->onInterceptOpeningPanel()Z

    move-result v0

    return v0
.end method

.method public onPanelNavigatedToPrefetchedSearch(Z)V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mPanelMetrics:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->onPanelNavigatedToPrefetchedSearch(Z)V

    .line 405
    return-void
.end method

.method protected onPromoAcceptanceAnimationFinished()V
    .locals 1

    .prologue
    .line 744
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mIsAnimatingMandatoryPromoAcceptance:Z

    .line 749
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->setPreferenceState(Z)V

    .line 750
    return-void
.end method

.method public onPromoButtonClick(Z)V
    .locals 0

    .prologue
    .line 222
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->onPromoButtonClick(Z)V

    .line 223
    return-void
.end method

.method public onPromoPreferenceClick()V
    .locals 0

    .prologue
    .line 217
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->onPromoPreferenceClick()V

    .line 218
    return-void
.end method

.method public onSearchResultsLoaded(Z)V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mPanelMetrics:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->onSearchResultsLoaded(Z)V

    .line 394
    return-void
.end method

.method public onSearchTermResolved(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mPanelMetrics:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->onSearchTermResolved()V

    .line 490
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getSearchBarControl()Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchBarControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchBarControl;->setSearchTerm(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->animateSearchTermResolution()V

    .line 492
    return-void
.end method

.method public onTouchSearchContentViewAck()V
    .locals 1

    .prologue
    .line 777
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mHasContentBeenTouched:Z

    .line 778
    return-void
.end method

.method public peekPanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V
    .locals 2

    .prologue
    .line 428
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->peekPanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 430
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getPanelState()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-result-object v0

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->CLOSED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getPanelState()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-result-object v0

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-ne v0, v1, :cond_1

    .line 431
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mHasContentBeenTouched:Z

    .line 433
    :cond_1
    return-void
.end method

.method public setDidSearchInvolvePromo()V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mPanelMetrics:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->setDidSearchInvolvePromo()V

    .line 499
    return-void
.end method

.method public setIsPromoActive(ZZ)V
    .locals 1

    .prologue
    .line 367
    iput-boolean p2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mIsPromoMandatory:Z

    .line 368
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->setPromoVisibility(Z)V

    .line 369
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mPanelMetrics:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->setIsPromoActive(Z)V

    .line 370
    return-void
.end method

.method public setManagementDelegate(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;)V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mManagementDelegate:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;

    if-eq v0, p1, :cond_0

    .line 153
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mManagementDelegate:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;

    .line 154
    if-eqz p1, :cond_0

    .line 155
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mManagementDelegate:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;->getChromeActivity()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->setChromeActivity(Lorg/chromium/chrome/browser/ChromeActivity;)V

    .line 156
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->initializeUiState()V

    .line 159
    :cond_0
    return-void
.end method

.method public setPanelState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V
    .locals 3

    .prologue
    .line 170
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getPanelState()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-result-object v0

    .line 171
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->setPanelState(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 173
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mPanelMetrics:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;

    invoke-virtual {v1, v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->onPanelStateChanged(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 175
    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-ne p1, v1, :cond_2

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->CLOSED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->UNDEFINED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-ne v0, v1, :cond_2

    .line 178
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getPeekPromoControl()Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getPeekPromoControl()Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->animateAppearance()V

    .line 181
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getIconSpriteControl()Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl;->shouldAnimateAppearance()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 182
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mPanelMetrics:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->setWasIconSpriteAnimated(Z)V

    .line 183
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getIconSpriteControl()Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl;->animateApperance()V

    .line 189
    :cond_2
    :goto_0
    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->PEEKED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-ne v0, v1, :cond_4

    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->EXPANDED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-eq p1, v0, :cond_3

    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->MAXIMIZED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-ne p1, v0, :cond_4

    .line 193
    :cond_3
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getPeekPromoControl()Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->hide()V

    .line 195
    :cond_4
    return-void

    .line 185
    :cond_5
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mPanelMetrics:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->setWasIconSpriteAnimated(Z)V

    goto :goto_0
.end method

.method public setPreferenceState(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 231
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mManagementDelegate:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;

    if-eqz v0, :cond_0

    .line 232
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setContextualSearchState(Z)V

    .line 233
    invoke-virtual {p0, v1, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->setIsPromoActive(ZZ)V

    .line 235
    :cond_0
    return-void
.end method

.method public bridge synthetic setProperty(Ljava/lang/Enum;F)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->setProperty(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;F)V

    return-void
.end method

.method public setProperty(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;F)V
    .locals 1

    .prologue
    .line 346
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->setProperty(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;F)V

    .line 347
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;->BOTTOM_BAR_TEXT_VISIBILITY:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelAnimation$Property;

    if-ne p1, v0, :cond_0

    .line 348
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->updateSearchBarTextOpacity(F)V

    .line 350
    :cond_0
    return-void
.end method

.method public setShouldAnimateIconSprite(ZZ)V
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getIconSpriteControl()Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl;->setShouldAnimateAppearance(ZZ)V

    .line 661
    return-void
.end method

.method public setWasSearchContentViewSeen()V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mPanelMetrics:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanelMetrics;->setWasSearchContentViewSeen()V

    .line 361
    return-void
.end method

.method public showPeekPromo()V
    .locals 1

    .prologue
    .line 376
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getPeekPromoControl()Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->show()V

    .line 377
    return-void
.end method

.method public supportsContextualSearchLayout()Z
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mManagementDelegate:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mManagementDelegate:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;->isRunningInCompatibilityMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateBasePageSelectionYPx(F)V
    .locals 0

    .prologue
    .line 444
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->updateBasePageSelectionYPx(F)V

    .line 445
    return-void
.end method

.method protected updatePanelForCloseOrPeek(F)V
    .locals 1

    .prologue
    .line 509
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->updatePanelForCloseOrPeek(F)V

    .line 511
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getPeekPromoControl()Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->onUpdateFromCloseToPeek(F)V

    .line 512
    return-void
.end method

.method protected updatePanelForExpansion(F)V
    .locals 1

    .prologue
    .line 516
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->updatePanelForExpansion(F)V

    .line 518
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getPeekPromoControl()Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->onUpdateFromPeekToExpand(F)V

    .line 519
    return-void
.end method

.method protected updatePanelForMaximization(F)V
    .locals 1

    .prologue
    .line 523
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->updatePanelForMaximization(F)V

    .line 525
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getPeekPromoControl()Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;->onUpdateFromExpandToMaximize(F)V

    .line 526
    return-void
.end method

.method protected updatePanelForOrientationChange()V
    .locals 1

    .prologue
    .line 530
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->isPromoVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->updatePromoLayout()V

    .line 534
    :cond_0
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->updatePanelForOrientationChange()V

    .line 535
    return-void
.end method

.method public updateSceneLayer(Lorg/chromium/ui/resources/ResourceManager;)V
    .locals 9

    .prologue
    .line 125
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/ContextualSearchSceneLayer;

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/ContextualSearchSceneLayer;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getSearchContextViewId()I

    move-result v3

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getSearchTermViewId()I

    move-result v4

    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getPeekPromoControl()Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;

    move-result-object v5

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getSearchBarContextOpacity()F

    move-result v6

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getSearchBarTermOpacity()F

    move-result v7

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getIconSpriteControl()Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl;

    move-result-object v8

    move-object v1, p1

    move-object v2, p0

    invoke-virtual/range {v0 .. v8}, Lorg/chromium/chrome/browser/compositor/scene_layer/ContextualSearchSceneLayer;->update(Lorg/chromium/ui/resources/ResourceManager;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;IILorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPeekPromoControl;FFLorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl;)V

    goto :goto_0
.end method

.method protected updateSearchBarTextOpacity(F)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v2, 0x0

    .line 610
    const/high16 v0, 0x3f800000    # 1.0f

    div-float v1, p1, v3

    sub-float/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 611
    const/high16 v1, 0x3e800000    # 0.25f

    sub-float v1, p1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v1, v3

    .line 614
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mSearchBarContextOpacity:F

    .line 615
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->mSearchBarTermOpacity:F

    .line 616
    return-void
.end method
