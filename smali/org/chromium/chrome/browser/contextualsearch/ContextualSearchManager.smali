.class public Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;
.super Ljava/lang/Object;
.source "ContextualSearchManager.java"

# interfaces
.implements Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;
.implements Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchNetworkCommunicator;
.implements Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionHandler;
.implements Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateInterface;
.implements Lorg/chromium/content/browser/ContextualSearchClient;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

.field private mDidBasePageLoadJustStart:Z

.field private mDidLogPromoOutcome:Z

.field private mDidPromoteSearchNavigation:Z

.field private mDidStartLoadingResolvedSearchRequest:Z

.field private mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

.field private mFindToolbarObserver:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;

.field private mIsAccessibilityModeEnabled:Z

.field private mIsInitialized:Z

.field private mIsPromotingToTab:Z

.field private mIsShowingPeekPromo:Z

.field private mIsShowingPromo:Z

.field private mLastSearchRequestLoaded:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

.field private mLoadedSearchUrlTimeMs:J

.field private mNativeContextualSearchManagerPtr:J

.field private mNetworkCommunicator:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchNetworkCommunicator;

.field private final mObservers:Lorg/chromium/base/ObserverList;

.field private final mOnFocusChangeListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

.field private mParentView:Landroid/view/ViewGroup;

.field private mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

.field private mSearchContentViewDelegate:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContentViewDelegate;

.field private mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

.field private mSearchRequest:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

.field private mSelectionController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

.field private mShouldLoadDelayedSearch:Z

.field private final mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

.field private mTabModelSelectorTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

.field private final mTabPromotionDelegate:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$ContextualSearchTabPromotionDelegate;

.field private mTabRedirectHandler:Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

.field private final mTranslateController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;

.field private mWasActivatedByTap:Z

.field private mWereInfoBarsHidden:Z

.field private mWereSearchResultsSeen:Z

.field private mWouldShowPeekPromo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$ContextualSearchTabPromotionDelegate;)V
    .locals 4

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mObservers:Lorg/chromium/base/ObserverList;

    .line 165
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 166
    iput-object p3, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mTabPromotionDelegate:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$ContextualSearchTabPromotionDelegate;

    .line 168
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    sget v1, Lorg/chromium/chrome/R$id;->control_container:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ChromeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 169
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$1;

    invoke-direct {v1, p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$1;-><init>(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;Landroid/view/View;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mOnFocusChangeListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .line 178
    new-instance v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$2;-><init>(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    .line 196
    new-instance v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    invoke-direct {v0, p1, p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionHandler;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSelectionController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    .line 198
    iput-object p0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mNetworkCommunicator:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchNetworkCommunicator;

    .line 200
    new-instance v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    iget-object v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSelectionController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    iget-object v3, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mNetworkCommunicator:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchNetworkCommunicator;

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchNetworkCommunicator;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    .line 202
    new-instance v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;

    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    invoke-direct {v0, p1, v1, p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateInterface;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mTranslateController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;

    .line 203
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mIsPromotingToTab:Z

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/chrome/browser/ChromeActivity;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mShouldLoadDelayedSearch:Z

    return v0
.end method

.method static synthetic access$1002(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;Z)Z
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mShouldLoadDelayedSearch:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->loadSearchUrl()V

    return-void
.end method

.method static synthetic access$1200(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mNativeContextualSearchManagerPtr:J

    return-wide v0
.end method

.method static synthetic access$1300(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;JLorg/chromium/content/browser/ContentViewCore;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->nativeEnableContextualSearchJsApiForOverlay(JLorg/chromium/content/browser/ContentViewCore;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContentViewDelegate;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchContentViewDelegate:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContentViewDelegate;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/chrome/browser/tab/TabRedirectHandler;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mTabRedirectHandler:Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    return-object v0
.end method

.method static synthetic access$302(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;Z)Z
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mDidBasePageLoadJustStart:Z

    return p1
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchRequest:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    return-object v0
.end method

.method static synthetic access$402(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchRequest:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    return-object p1
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    return-object v0
.end method

.method static synthetic access$602(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;Z)Z
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mDidPromoteSearchNavigation:Z

    return p1
.end method

.method static synthetic access$702(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;Z)Z
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mWereSearchResultsSeen:Z

    return p1
.end method

.method static synthetic access$800(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSelectionController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    return-object v0
.end method

.method static synthetic access$900(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mDidStartLoadingResolvedSearchRequest:Z

    return v0
.end method

.method static synthetic access$902(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;Z)Z
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mDidStartLoadingResolvedSearchRequest:Z

    return p1
.end method

.method private getBaseContentView()Lorg/chromium/content/browser/ContentViewCore;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSelectionController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->getBaseContentView()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    return-object v0
.end method

.method private getContentViewUrl(Lorg/chromium/content/browser/ContentViewCore;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1102
    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->getPendingEntry()Lorg/chromium/content_public/browser/NavigationEntry;

    move-result-object v0

    .line 1104
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/NavigationEntry;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 1106
    :goto_0
    return-object v0

    .line 1104
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getInfoBarContainer()Lorg/chromium/chrome/browser/infobar/InfoBarContainer;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 517
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getInfoBarContainer()Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    move-result-object v0

    goto :goto_0
.end method

.method private isHttpFailureCode(I)Z
    .locals 1

    .prologue
    .line 1014
    if-lez p1, :cond_0

    const/16 v0, 0x190

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTapSupported()Z
    .locals 1

    .prologue
    .line 715
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mDidBasePageLoadJustStart:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 717
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->isTapSupported()Z

    move-result v0

    goto :goto_0
.end method

.method private listenForTabModelSelectorNotifications()V
    .locals 3

    .prologue
    .line 524
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    .line 526
    new-instance v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$4;

    invoke-direct {v1, p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$4;-><init>(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mTabModelSelectorTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    .line 547
    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 548
    iget-object v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V

    goto :goto_0

    .line 550
    :cond_0
    return-void
.end method

.method private loadSearchUrl()V
    .locals 2

    .prologue
    .line 693
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mLoadedSearchUrlTimeMs:J

    .line 694
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchRequest:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mLastSearchRequestLoaded:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    .line 695
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchRequest:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->getSearchUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->loadUrlInPanel(Ljava/lang/String;)V

    .line 696
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mDidStartLoadingResolvedSearchRequest:Z

    .line 704
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->isContentShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->onShow()V

    .line 708
    :cond_0
    return-void
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeEnableContextualSearchJsApiForOverlay(JLorg/chromium/content/browser/ContentViewCore;)V
.end method

.method private native nativeGetAcceptLanguages(J)Ljava/lang/String;
.end method

.method private native nativeGetTargetLanguage(J)Ljava/lang/String;
.end method

.method private native nativeInit()J
.end method

.method private native nativeStartSearchTermResolutionRequest(JLjava/lang/String;ZLorg/chromium/content/browser/ContentViewCore;Z)V
.end method

.method private notifyHideContextualSearch()V
    .locals 2

    .prologue
    .line 777
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchObserver;

    .line 778
    invoke-interface {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchObserver;->onHideContextualSearch()V

    goto :goto_0

    .line 780
    :cond_0
    return-void
.end method

.method private notifyShowContextualSearch(Lorg/chromium/chrome/browser/gsa/GSAContextDisplaySelection;)V
    .locals 2

    .prologue
    .line 766
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->canSendSurroundings()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 768
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchObserver;

    .line 769
    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchObserver;->onShowContextualSearch(Lorg/chromium/chrome/browser/gsa/GSAContextDisplaySelection;)V

    goto :goto_0

    .line 771
    :cond_1
    return-void
.end method

.method private onIcingSelectionAvailable(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 604
    new-instance v0, Lorg/chromium/chrome/browser/gsa/GSAContextDisplaySelection;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/gsa/GSAContextDisplaySelection;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 606
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->notifyShowContextualSearch(Lorg/chromium/chrome/browser/gsa/GSAContextDisplaySelection;)V

    .line 607
    return-void
.end method

.method private onSetCaption(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 731
    const-string/jumbo v0, "ContextualSearch"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ctxs setCaption: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 732
    return-void
.end method

.method private onSurroundingTextAvailable(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSelectionController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->getSelectedText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->displaySearchContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    :cond_0
    return-void
.end method

.method private removeLastSearchVisit()V
    .locals 4

    .prologue
    .line 953
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mLastSearchRequestLoaded:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mLastSearchRequestLoaded:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->getSearchUrl()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mLoadedSearchUrlTimeMs:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->removeLastHistoryEntry(Ljava/lang/String;J)V

    .line 958
    :cond_0
    return-void
.end method

.method private shouldPromoteSearchNavigation()Z
    .locals 1

    .prologue
    .line 1024
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->didTouchContent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->isProcessingPendingNavigation()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showContextualSearch(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 380
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    invoke-virtual {v1, v5}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->hideToolbar(Z)V

    .line 385
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->commitAllTabClosures()V

    .line 387
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 389
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->getInfoBarContainer()Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    move-result-object v1

    .line 390
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 391
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mWereInfoBarsHidden:Z

    .line 392
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->setIsObscuredByOtherView(Z)V

    .line 398
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getPanelState()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    move-result-object v1

    .line 399
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mWereSearchResultsSeen:Z

    if-nez v2, :cond_2

    iget-wide v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mLoadedSearchUrlTimeMs:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->UNDEFINED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-eq v1, v2, :cond_2

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;->CLOSED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$PanelState;

    if-eq v1, v2, :cond_2

    .line 401
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->removeLastSearchVisit()V

    .line 405
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->destroyContent()V

    .line 407
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSelectionController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->getSelectionType()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    move-result-object v1

    sget-object v2, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;->TAP:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    if-ne v1, v2, :cond_7

    move v1, v0

    .line 410
    :goto_0
    if-eqz v1, :cond_3

    .line 412
    iput-boolean v5, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mShouldLoadDelayedSearch:Z

    .line 414
    :cond_3
    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->shouldPreviousTapResolve()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 415
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mNetworkCommunicator:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchNetworkCommunicator;

    iget-object v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSelectionController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->getSelectedText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchNetworkCommunicator;->startSearchTermResolutionRequest(Ljava/lang/String;)V

    .line 419
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mTranslateController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->cacheNativeTranslateData()V

    move v1, v0

    .line 430
    :goto_1
    if-nez v1, :cond_4

    .line 436
    iget-wide v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mNativeContextualSearchManagerPtr:J

    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSelectionController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->getSelectedText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->getBaseContentView()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v6

    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->maySendBasePageUrl()Z

    move-result v7

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->nativeGatherSurroundingText(JLjava/lang/String;ZLorg/chromium/content/browser/ContentViewCore;Z)V

    .line 441
    :cond_4
    iput-boolean v5, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mWereSearchResultsSeen:Z

    .line 445
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->isShowing()Z

    move-result v1

    if-nez v1, :cond_5

    .line 446
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->isPeekPromoConditionSatisfied()Z

    move-result v1

    iput-boolean v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mWouldShowPeekPromo:Z

    .line 447
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->isPeekPromoAvailable()Z

    move-result v1

    iput-boolean v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mIsShowingPeekPromo:Z

    .line 448
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mIsShowingPeekPromo:Z

    if-eqz v1, :cond_5

    .line 449
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->showPeekPromo()V

    .line 450
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->registerPeekPromoSeen()V

    .line 457
    :cond_5
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    iget-object v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->shouldAnimateSearchProviderIcon()Z

    move-result v2

    invoke-static {}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->areExtraSearchBarAnimationsDisabled()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->setShouldAnimateIconSprite(ZZ)V

    .line 461
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->isPromoAvailable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 462
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mIsShowingPromo:Z

    .line 463
    iput-boolean v5, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mDidLogPromoOutcome:Z

    .line 464
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    iget-object v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->isMandatoryPromoAvailable()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->setIsPromoActive(ZZ)V

    .line 465
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->setDidSearchInvolvePromo()V

    .line 472
    :cond_6
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-virtual {v1, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->requestPanelShow(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 474
    sget-boolean v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->$assertionsDisabled:Z

    if-nez v1, :cond_a

    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSelectionController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->getSelectionType()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    move-result-object v1

    sget-object v2, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;->UNDETERMINED:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    if-ne v1, v2, :cond_a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    move v1, v5

    .line 407
    goto/16 :goto_0

    .line 421
    :cond_8
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->shouldPrefetchSearchResult()Z

    move-result v1

    .line 422
    iget-object v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSelectionController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->getSelectedText()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->createContextualSearchRequest(Ljava/lang/String;Ljava/lang/String;Z)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchRequest:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    .line 424
    iget-object v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mTranslateController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;

    iget-object v3, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchRequest:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->forceAutoDetectTranslateUnlessDisabled(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;)V

    .line 425
    iput-boolean v5, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mDidStartLoadingResolvedSearchRequest:Z

    .line 426
    iget-object v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    iget-object v3, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSelectionController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->getSelectedText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->displaySearchTerm(Ljava/lang/String;)V

    .line 427
    if-eqz v1, :cond_9

    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->loadSearchUrl()V

    :cond_9
    move v1, v5

    goto/16 :goto_1

    .line 475
    :cond_a
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSelectionController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->getSelectionType()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    move-result-object v1

    sget-object v2, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;->TAP:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    if-ne v1, v2, :cond_b

    move v5, v0

    :cond_b
    iput-boolean v5, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mWasActivatedByTap:Z

    .line 476
    return-void
.end method

.method private stopListeningForHideNotifications()V
    .locals 3

    .prologue
    .line 556
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mTabModelSelectorTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mTabModelSelectorTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;->destroy()V

    .line 558
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    .line 559
    if-eqz v0, :cond_1

    .line 560
    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 561
    iget-object v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->removeObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V

    goto :goto_0

    .line 564
    :cond_1
    return-void
.end method


# virtual methods
.method public addObserver(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchObserver;)V
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 752
    return-void
.end method

.method public clearNativeManager()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 571
    sget-boolean v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mNativeContextualSearchManagerPtr:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 572
    :cond_0
    iput-wide v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mNativeContextualSearchManagerPtr:J

    .line 573
    return-void
.end method

.method protected createContextualSearchRequest(Ljava/lang/String;Ljava/lang/String;Z)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;
    .locals 1

    .prologue
    .line 509
    new-instance v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    invoke-direct {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 255
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mIsInitialized:Z

    if-nez v0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->hideContextualSearch(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 258
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mOnFocusChangeListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 259
    iget-wide v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mNativeContextualSearchManagerPtr:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->nativeDestroy(J)V

    .line 260
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->stopListeningForHideNotifications()V

    .line 261
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mTabRedirectHandler:Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->clear()V

    .line 262
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mFindToolbarObserver:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->removeObserver(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;)V

    .line 264
    iput-object v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    .line 265
    iput-object v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mFindToolbarObserver:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;

    goto :goto_0
.end method

.method public dismissContextualSearchBar()V
    .locals 1

    .prologue
    .line 1111
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->hideContextualSearch(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 1112
    return-void
.end method

.method public getAcceptLanguages()Ljava/lang/String;
    .locals 2

    .prologue
    .line 788
    iget-wide v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mNativeContextualSearchManagerPtr:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->nativeGetAcceptLanguages(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBasePageUrl()Ljava/net/URL;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 490
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->getBaseContentView()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v2

    .line 491
    if-nez v2, :cond_0

    .line 496
    :goto_0
    return-object v0

    .line 494
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v2

    invoke-interface {v2}, Lorg/chromium/content_public/browser/WebContents;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 496
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getChromeActivity()Lorg/chromium/chrome/browser/ChromeActivity;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    return-object v0
.end method

.method getContextualSearchPanel()Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    return-object v0
.end method

.method getContextualSearchPolicy()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;
    .locals 1

    .prologue
    .line 1253
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    return-object v0
.end method

.method public getGestureStateListener()Lorg/chromium/content_public/browser/GestureStateListener;
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSelectionController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->getGestureStateListener()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$ContextualSearchGestureStateListener;

    move-result-object v0

    return-object v0
.end method

.method public getOverlayContentDelegate()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;
    .locals 1

    .prologue
    .line 802
    new-instance v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;-><init>(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)V

    return-object v0
.end method

.method getRequest()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;
    .locals 1

    .prologue
    .line 1293
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchRequest:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    return-object v0
.end method

.method getSelectionController()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;
    .locals 1

    .prologue
    .line 1277
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSelectionController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    return-object v0
.end method

.method public getTranslateServiceTargetLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 793
    iget-wide v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mNativeContextualSearchManagerPtr:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->nativeGetTargetLanguage(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleInvalidTap()V
    .locals 1

    .prologue
    .line 1163
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mIsAccessibilityModeEnabled:Z

    if-eqz v0, :cond_0

    .line 1166
    :goto_0
    return-void

    .line 1165
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->BASE_PAGE_TAP:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->hideContextualSearch(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    goto :goto_0
.end method

.method public handleScroll()V
    .locals 1

    .prologue
    .line 1156
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mIsAccessibilityModeEnabled:Z

    if-eqz v0, :cond_0

    .line 1159
    :goto_0
    return-void

    .line 1158
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->BASE_PAGE_SCROLL:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->hideContextualSearch(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    goto :goto_0
.end method

.method public handleSearchTermResolutionResponse(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 642
    .line 643
    if-eqz p1, :cond_7

    .line 645
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lorg/chromium/chrome/R$string;->contextual_search_network_unavailable:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    move v0, v1

    .line 657
    :goto_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-virtual {v3, p4}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->onSearchTermResolved(Ljava/lang/String;)V

    .line 661
    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSelectionController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->getSelectedText()Ljava/lang/String;

    move-result-object p3

    .line 663
    const/4 p5, 0x0

    move p6, v2

    .line 666
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 669
    if-nez p6, :cond_a

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->shouldPrefetchSearchResult()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 670
    :goto_1
    invoke-virtual {p0, p3, p5, v2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->createContextualSearchRequest(Ljava/lang/String;Ljava/lang/String;Z)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchRequest:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    .line 673
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mTranslateController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;

    iget-object v3, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchRequest:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    invoke-virtual {v0, v3, p9}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTranslateController;->forceTranslateIfNeeded(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;Ljava/lang/String;)V

    .line 674
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mDidStartLoadingResolvedSearchRequest:Z

    .line 675
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->isContentShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchRequest:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->setNormalPriority()V

    .line 678
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->isContentShowing()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v2, :cond_3

    .line 679
    :cond_2
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->loadSearchUrl()V

    .line 681
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    invoke-virtual {v0, p3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->logSearchTermResolutionDetails(Ljava/lang/String;)V

    .line 684
    :cond_4
    if-nez p7, :cond_5

    if-eqz p8, :cond_6

    .line 685
    :cond_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSelectionController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    invoke-virtual {v0, p7, p8}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->adjustSelection(II)V

    .line 687
    :cond_6
    return-void

    .line 647
    :cond_7
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->isHttpFailureCode(I)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    .line 648
    goto :goto_0

    .line 649
    :cond_8
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->shouldShowErrorCodeInBar()Z

    move-result v0

    if-nez v0, :cond_9

    .line 650
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSelectionController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->getSelectedText()Ljava/lang/String;

    move-result-object p4

    move v0, v2

    .line 651
    goto :goto_0

    .line 653
    :cond_9
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lorg/chromium/chrome/R$string;->contextual_search_error:I

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    move v0, v2

    .line 655
    goto/16 :goto_0

    :cond_a
    move v2, v1

    .line 669
    goto :goto_1
.end method

.method public handleSelection(Ljava/lang/String;ZLorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;FF)V
    .locals 2

    .prologue
    .line 1189
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mIsAccessibilityModeEnabled:Z

    if-eqz v0, :cond_1

    .line 1202
    :cond_0
    :goto_0
    return-void

    .line 1191
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1192
    sget-object v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;->TAP:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    if-ne p3, v0, :cond_2

    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->TEXT_SELECT_TAP:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    .line 1194
    :goto_1
    invoke-static {p2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->logSelectionIsValid(Z)V

    .line 1195
    if-eqz p2, :cond_3

    .line 1196
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-virtual {v1, p5}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->updateBasePageSelectionYPx(F)V

    .line 1197
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->showContextualSearch(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    goto :goto_0

    .line 1192
    :cond_2
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->TEXT_SELECT_LONG_PRESS:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    goto :goto_1

    .line 1199
    :cond_3
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->hideContextualSearch(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    goto :goto_0
.end method

.method public handleSelectionDismissal()V
    .locals 1

    .prologue
    .line 1206
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mIsAccessibilityModeEnabled:Z

    if-eqz v0, :cond_1

    .line 1218
    :cond_0
    :goto_0
    return-void

    .line 1208
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mIsPromotingToTab:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->isPeeking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1216
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->CLEARED_SELECTION:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->hideContextualSearch(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    goto :goto_0
.end method

.method public handleSelectionModification(Ljava/lang/String;ZFF)V
    .locals 1

    .prologue
    .line 1223
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mIsAccessibilityModeEnabled:Z

    if-eqz v0, :cond_1

    .line 1232
    :cond_0
    :goto_0
    return-void

    .line 1225
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1226
    if-eqz p2, :cond_2

    .line 1227
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->displaySearchTerm(Ljava/lang/String;)V

    goto :goto_0

    .line 1229
    :cond_2
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->INVALID_SELECTION:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->hideContextualSearch(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    goto :goto_0
.end method

.method public handleValidTap()V
    .locals 1

    .prologue
    .line 1170
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mIsAccessibilityModeEnabled:Z

    if-eqz v0, :cond_1

    .line 1184
    :cond_0
    :goto_0
    return-void

    .line 1172
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->isTapSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1176
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchRequest:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    .line 1179
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->registerTap()V

    .line 1181
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->getBaseContentView()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    .line 1182
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->selectWordAroundCaret()V

    goto :goto_0
.end method

.method public hideContextualSearch(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    if-nez v0, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 309
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->closePanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Z)V

    goto :goto_0

    .line 311
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSelectionController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->getSelectionType()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    move-result-object v0

    sget-object v1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;->TAP:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController$SelectionType;

    if-ne v0, v1, :cond_0

    .line 312
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSelectionController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->clearSelection()V

    goto :goto_0
.end method

.method public initialize(Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 210
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mNativeContextualSearchManagerPtr:J

    .line 212
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mParentView:Landroid/view/ViewGroup;

    .line 213
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mOnFocusChangeListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 215
    new-instance v0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mTabRedirectHandler:Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    .line 217
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mIsShowingPromo:Z

    .line 218
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mDidLogPromoOutcome:Z

    .line 219
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mDidStartLoadingResolvedSearchRequest:Z

    .line 220
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mWereSearchResultsSeen:Z

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mIsInitialized:Z

    .line 223
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->listenForTabModelSelectorNotifications()V

    .line 224
    return-void
.end method

.method public isRunningInCompatibilityMode()Z
    .locals 1

    .prologue
    .line 1062
    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v0

    return v0
.end method

.method public isSearchPanelOpened()Z
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->isPanelOpened()Z

    move-result v0

    return v0
.end method

.method public logCurrentState()V
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->logCurrentState()V

    .line 1002
    :cond_0
    return-void
.end method

.method public logPromoOutcome()V
    .locals 1

    .prologue
    .line 1006
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mWasActivatedByTap:Z

    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->logPromoOutcome(Z)V

    .line 1007
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mDidLogPromoOutcome:Z

    .line 1008
    return-void
.end method

.method protected native nativeGatherSurroundingText(JLjava/lang/String;ZLorg/chromium/content/browser/ContentViewCore;Z)V
.end method

.method public onAccessibilityModeChanged(Z)V
    .locals 0

    .prologue
    .line 740
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mIsAccessibilityModeEnabled:Z

    .line 741
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mIsInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 363
    :goto_0
    return v0

    .line 362
    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->BACK_PRESS:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->hideContextualSearch(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 363
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBasePageLoadStarted()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSelectionController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->onBasePageLoadStarted()V

    .line 299
    return-void
.end method

.method public onCloseContextualSearch(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 319
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    if-nez v0, :cond_0

    .line 355
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSelectionController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->onSearchEnded(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 324
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mWereInfoBarsHidden:Z

    if-eqz v0, :cond_1

    .line 325
    iput-boolean v3, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mWereInfoBarsHidden:Z

    .line 326
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->getInfoBarContainer()Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    move-result-object v0

    .line 327
    if-eqz v0, :cond_1

    .line 328
    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->setIsObscuredByOtherView(Z)V

    .line 332
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mWereSearchResultsSeen:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mLoadedSearchUrlTimeMs:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 333
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->removeLastSearchVisit()V

    .line 338
    :cond_2
    iput-wide v4, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mLoadedSearchUrlTimeMs:J

    .line 339
    iput-boolean v3, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mWereSearchResultsSeen:Z

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchRequest:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    .line 343
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mIsShowingPeekPromo:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mWouldShowPeekPromo:Z

    if-eqz v0, :cond_4

    .line 344
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mIsShowingPeekPromo:Z

    iget-boolean v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mWouldShowPeekPromo:Z

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->logPeekPromoMetrics(ZZ)V

    .line 347
    :cond_4
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mIsShowingPromo:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mDidLogPromoOutcome:Z

    if-nez v0, :cond_5

    .line 349
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->logPromoOutcome()V

    .line 352
    :cond_5
    iput-boolean v3, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mIsShowingPromo:Z

    .line 353
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-virtual {v0, v3, v3}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->setIsPromoActive(ZZ)V

    .line 354
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->notifyHideContextualSearch()V

    goto :goto_0
.end method

.method public onContextualSearchRequestNavigation(Z)V
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchRequest:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    if-nez v0, :cond_1

    .line 995
    :cond_0
    :goto_0
    return-void

    .line 970
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchRequest:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->isUsingLowPriority()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 971
    invoke-static {p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->logLowPrioritySearchRequestOutcome(Z)V

    .line 979
    :cond_2
    :goto_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchRequest:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->isUsingLowPriority()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 984
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->stop()V

    .line 986
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchRequest:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->setHasFailed()V

    .line 987
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchRequest:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->setNormalPriority()V

    .line 989
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->isContentShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 990
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->loadSearchUrl()V

    goto :goto_0

    .line 973
    :cond_4
    invoke-static {p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->logNormalPrioritySearchRequestOutcome(Z)V

    .line 974
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchRequest:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->getHasFailed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 975
    invoke-static {p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->logFallbackSearchRequestOutcome(Z)V

    goto :goto_1

    .line 992
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mDidStartLoadingResolvedSearchRequest:Z

    goto :goto_0
.end method

.method public onExternalNavigation(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1034
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mDidPromoteSearchNavigation:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "about:blank"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "intent:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->shouldPromoteSearchNavigation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1043
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mDidPromoteSearchNavigation:Z

    .line 1044
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SERP_NAVIGATION:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->maximizePanelThenPromoteToTab(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 1046
    :cond_0
    return-void
.end method

.method public onOrientationChange()V
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 372
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->onOrientationChanged()V

    goto :goto_0
.end method

.method public onSearchTermResolutionResponse(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;)V
    .locals 10

    .prologue
    .line 630
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mNetworkCommunicator:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchNetworkCommunicator;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchNetworkCommunicator;->handleSearchTermResolutionResponse(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;)V

    .line 633
    return-void
.end method

.method public onSelectionChanged(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1120
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->isOverlayVideoMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1121
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSelectionController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->handleSelectionChanged(Ljava/lang/String;)V

    .line 1122
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->updateTopControlsState(IZ)V

    .line 1124
    :cond_0
    return-void
.end method

.method public onSelectionEvent(IFF)V
    .locals 1

    .prologue
    .line 1128
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->isOverlayVideoMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1129
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSelectionController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->handleSelectionEvent(IFF)V

    .line 1131
    :cond_0
    return-void
.end method

.method public openResolvedSearchUrlInNewTab()V
    .locals 5

    .prologue
    .line 1050
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchRequest:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchRequest:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->getSearchUrlForPromotion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1051
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    .line 1052
    new-instance v1, Lorg/chromium/content_public/browser/LoadUrlParams;

    iget-object v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchRequest:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->getSearchUrlForPromotion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LINK:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->isIncognitoSelected()Z

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->openNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/Tab;Z)Lorg/chromium/chrome/browser/tab/Tab;

    .line 1058
    :cond_0
    return-void
.end method

.method public promoteToTab()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1068
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mIsPromotingToTab:Z

    .line 1075
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchRequest:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1078
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->getContentViewUrl(Lorg/chromium/content/browser/ContentViewCore;)Ljava/lang/String;

    move-result-object v0

    .line 1081
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchRequest:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->isContextualSearchUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1082
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchRequest:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->getSearchUrlForPromotion()Ljava/lang/String;

    move-result-object v0

    .line 1085
    :cond_0
    if-eqz v0, :cond_1

    .line 1086
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mTabPromotionDelegate:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$ContextualSearchTabPromotionDelegate;

    invoke-interface {v1, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$ContextualSearchTabPromotionDelegate;->createContextualSearchTab(Ljava/lang/String;)V

    .line 1087
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->TAB_PROMOTION:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->closePanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Z)V

    .line 1090
    :cond_1
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mIsPromotingToTab:Z

    .line 1091
    return-void
.end method

.method public removeObserver(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchObserver;)V
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 759
    return-void
.end method

.method public setContextualSearchPanel(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;)V
    .locals 1

    .prologue
    .line 271
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    .line 272
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->setContextualSearchPanel(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;)V

    .line 273
    return-void
.end method

.method setContextualSearchPolicy(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;)V
    .locals 0

    .prologue
    .line 1261
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    .line 1262
    return-void
.end method

.method public setFindToolbarManager(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;)V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mFindToolbarObserver:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->removeObserver(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;)V

    .line 237
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    .line 239
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mFindToolbarObserver:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;

    if-nez v0, :cond_1

    .line 240
    new-instance v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$3;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$3;-><init>(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mFindToolbarObserver:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;

    .line 247
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mFindToolbarObserver:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->addObserver(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;)V

    .line 248
    return-void
.end method

.method public setNativeManager(J)V
    .locals 5

    .prologue
    .line 581
    sget-boolean v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mNativeContextualSearchManagerPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 582
    :cond_0
    iput-wide p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mNativeContextualSearchManagerPtr:J

    .line 583
    return-void
.end method

.method setNetworkCommunicator(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchNetworkCommunicator;)V
    .locals 2

    .prologue
    .line 1244
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mNetworkCommunicator:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchNetworkCommunicator;

    .line 1245
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mNetworkCommunicator:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchNetworkCommunicator;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->setNetworkCommunicator(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchNetworkCommunicator;)V

    .line 1246
    return-void
.end method

.method public setSearchContentViewDelegate(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContentViewDelegate;)V
    .locals 0

    .prologue
    .line 946
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchContentViewDelegate:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContentViewDelegate;

    .line 947
    return-void
.end method

.method setSelectionController(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;)V
    .locals 0

    .prologue
    .line 1285
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSelectionController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    .line 1286
    return-void
.end method

.method public showUnhandledTapUIIfNeeded(II)V
    .locals 1

    .prologue
    .line 1135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mDidBasePageLoadJustStart:Z

    .line 1136
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->isOverlayVideoMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1137
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSelectionController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->handleShowUnhandledTapUIIfNeeded(II)V

    .line 1139
    :cond_0
    return-void
.end method

.method public startSearchTermResolutionRequest(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 480
    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->getBaseContentView()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    .line 481
    if-eqz v0, :cond_0

    .line 482
    iget-wide v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mNativeContextualSearchManagerPtr:J

    const/4 v5, 0x1

    invoke-direct {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->getBaseContentView()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v6

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->maySendBasePageUrl()Z

    move-result v7

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->nativeStartSearchTermResolutionRequest(JLjava/lang/String;ZLorg/chromium/content/browser/ContentViewCore;Z)V

    .line 486
    :cond_0
    return-void
.end method
