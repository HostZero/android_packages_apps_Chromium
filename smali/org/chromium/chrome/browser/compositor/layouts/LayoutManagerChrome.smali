.class public Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;
.super Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;
.source "LayoutManagerChrome.java"

# interfaces
.implements Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior;
.implements Lorg/chromium/chrome/browser/tabmodel/TabModelSelector$CloseAllTabsDelegate;


# instance fields
.field protected mBlackHoleEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;

.field private mCreatingNtp:Z

.field private mEnableAnimations:Z

.field private final mGestureEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

.field protected mOverviewLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

.field protected mOverviewListLayout:Lorg/chromium/chrome/browser/widget/OverviewListLayout;

.field private final mOverviewModeObservers:Lorg/chromium/base/ObserverList;

.field private mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

.field private mTabModelSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

.field private mTabSelectorTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

.field protected mTitleCache:Lorg/chromium/chrome/browser/compositor/TitleCache;

.field private final mToolbarSwipeHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;

.field protected mToolbarSwipeLayout:Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$OverviewLayoutFactoryDelegate;)V
    .locals 4

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;)V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mEnableAnimations:Z

    .line 168
    invoke-interface {p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 169
    invoke-interface {p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;->getLayoutRenderHost()Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;

    move-result-object v1

    .line 171
    new-instance v2, Lorg/chromium/base/ObserverList;

    invoke-direct {v2}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mOverviewModeObservers:Lorg/chromium/base/ObserverList;

    .line 174
    new-instance v2, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$ToolbarSwipeHandler;

    invoke-direct {v2, p0, p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$ToolbarSwipeHandler;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;)V

    iput-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mToolbarSwipeHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;

    .line 177
    new-instance v2, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/BlackHoleEventFilter;

    invoke-direct {v2, v0, p0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/BlackHoleEventFilter;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;)V

    iput-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mBlackHoleEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;

    .line 178
    new-instance v2, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mGestureHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;

    invoke-direct {v2, v0, p0, v3}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;)V

    iput-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mGestureEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    .line 181
    new-instance v2, Lorg/chromium/chrome/browser/widget/OverviewListLayout;

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mBlackHoleEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;

    invoke-direct {v2, v0, p0, v1, v3}, Lorg/chromium/chrome/browser/widget/OverviewListLayout;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;)V

    iput-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mOverviewListLayout:Lorg/chromium/chrome/browser/widget/OverviewListLayout;

    .line 183
    new-instance v2, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mBlackHoleEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;

    invoke-direct {v2, v0, p0, v1, v3}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;)V

    iput-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mToolbarSwipeLayout:Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;

    .line 185
    if-eqz p2, :cond_0

    .line 186
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mGestureEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    invoke-interface {p2, v0, p0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$OverviewLayoutFactoryDelegate;->createOverviewLayout(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;)Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mOverviewLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    .line 189
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->tabClosed(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;IZ)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->tabClosureCancelled(IZ)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;IIIZ)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->tabMoved(IIIZ)V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;IZ)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->tabLoadStarted(IZ)V

    return-void
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;IZ)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->tabLoadFinished(IZ)V

    return-void
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;IZ)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->tabPageLoadStarted(IZ)V

    return-void
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;IZ)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->tabPageLoadFinished(IZ)V

    return-void
.end method

.method private isOverviewLayout(Lorg/chromium/chrome/browser/compositor/layouts/Layout;)Z
    .locals 1

    .prologue
    .line 347
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mOverviewLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mOverviewListLayout:Lorg/chromium/chrome/browser/widget/OverviewListLayout;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tabClosed(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 3

    .prologue
    .line 473
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 475
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    .line 476
    :goto_1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->tabClosed(IIZ)V

    .line 477
    return-void

    .line 473
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 475
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private tabClosureCancelled(IZ)V
    .locals 4

    .prologue
    .line 530
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->time()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabClosureCancelled(JIZ)V

    .line 533
    :cond_0
    return-void
.end method

.method private tabLoadFinished(IZ)V
    .locals 1

    .prologue
    .line 526
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabLoadFinished(IZ)V

    .line 527
    :cond_0
    return-void
.end method

.method private tabLoadStarted(IZ)V
    .locals 1

    .prologue
    .line 522
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabLoadStarted(IZ)V

    .line 523
    :cond_0
    return-void
.end method

.method private tabMoved(IIIZ)V
    .locals 8

    .prologue
    .line 508
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v1

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->time()J

    move-result-wide v2

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabMoved(JIIIZ)V

    .line 511
    :cond_0
    return-void
.end method

.method private tabPageLoadFinished(IZ)V
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabPageLoadFinished(IZ)V

    .line 519
    :cond_0
    return-void
.end method

.method private tabPageLoadStarted(IZ)V
    .locals 1

    .prologue
    .line 514
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabPageLoadStarted(IZ)V

    .line 515
    :cond_0
    return-void
.end method


# virtual methods
.method protected addGlobalSceneOverlay(Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;)V
    .locals 1

    .prologue
    .line 302
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->addGlobalSceneOverlay(Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;)V

    .line 303
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mOverviewListLayout:Lorg/chromium/chrome/browser/widget/OverviewListLayout;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->addSceneOverlay(Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;)V

    .line 304
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mToolbarSwipeLayout:Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->addSceneOverlay(Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;)V

    .line 305
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mOverviewLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mOverviewLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->addSceneOverlay(Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;)V

    .line 306
    :cond_0
    return-void
.end method

.method public addOverviewModeObserver(Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior$OverviewModeObserver;)V
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mOverviewModeObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 649
    return-void
.end method

.method public animationsEnabled()Z
    .locals 1

    .prologue
    .line 637
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mEnableAnimations:Z

    return v0
.end method

.method public closeAllTabsRequest(Z)Z
    .locals 4

    .prologue
    .line 492
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->isOverviewLayout(Lorg/chromium/chrome/browser/compositor/layouts/Layout;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->handlesCloseAll()Z

    move-result v0

    if-nez v0, :cond_1

    .line 493
    :cond_0
    const/4 v0, 0x0

    .line 496
    :goto_0
    return v0

    .line 495
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->time()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabsAllClosing(JZ)V

    .line 496
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected createTabModelObserver()Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$LayoutManagerTabModelObserver;
    .locals 1

    .prologue
    .line 195
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$LayoutManagerTabModelObserver;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$LayoutManagerTabModelObserver;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;)V

    return-object v0
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 280
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->destroy()V

    .line 281
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mTabModelSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mTabModelSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->removeObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;)V

    .line 284
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

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

    .line 286
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->removeObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V

    goto :goto_0

    .line 289
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mTabSelectorTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mTabSelectorTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;->destroy()V

    .line 290
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mOverviewModeObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->clear()V

    .line 292
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mOverviewLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    if-eqz v0, :cond_3

    .line 293
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mOverviewLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->destroy()V

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mOverviewLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    .line 296
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mOverviewListLayout:Lorg/chromium/chrome/browser/widget/OverviewListLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->destroy()V

    .line 297
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mToolbarSwipeLayout:Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->destroy()V

    .line 298
    return-void
.end method

.method public doneHiding()V
    .locals 3

    .prologue
    .line 407
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v1

    .line 409
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getNextLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getDefaultLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 410
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 411
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    :goto_1
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->emptyCachesExcept(I)V

    .line 414
    :cond_0
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->doneHiding()V

    .line 416
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->isOverviewLayout(Lorg/chromium/chrome/browser/compositor/layouts/Layout;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 417
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mOverviewModeObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior$OverviewModeObserver;

    .line 418
    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior$OverviewModeObserver;->onOverviewModeFinishedHiding()V

    goto :goto_2

    .line 410
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 411
    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    .line 421
    :cond_3
    return-void
.end method

.method public doneShowing()V
    .locals 2

    .prologue
    .line 396
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->doneShowing()V

    .line 398
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->isOverviewLayout(Lorg/chromium/chrome/browser/compositor/layouts/Layout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mOverviewModeObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior$OverviewModeObserver;

    .line 400
    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior$OverviewModeObserver;->onOverviewModeFinishedShowing()V

    goto :goto_0

    .line 403
    :cond_0
    return-void
.end method

.method public getOverviewLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mOverviewLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    return-object v0
.end method

.method public getOverviewListLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mOverviewListLayout:Lorg/chromium/chrome/browser/widget/OverviewListLayout;

    return-object v0
.end method

.method public getStripLayoutHelperManager()Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;
    .locals 1

    .prologue
    .line 574
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTabById(I)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .prologue
    .line 702
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    .line 703
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getTabById(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    goto :goto_0
.end method

.method public getTopSwipeHandler()Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mToolbarSwipeHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;

    return-object v0
.end method

.method public getVirtualViews(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->getVirtualViews(Ljava/util/List;)V

    .line 206
    :cond_0
    return-void
.end method

.method public hideOverview(Z)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 613
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    .line 614
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->isHiding()Z

    move-result v1

    if-nez v1, :cond_0

    .line 615
    if-eqz p1, :cond_1

    .line 616
    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->time()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v4}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabSelecting(JI)V

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->startHiding(IZ)V

    .line 619
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->doneHiding()V

    goto :goto_0
.end method

.method public init(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Landroid/view/ViewGroup;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;->getTitleCache()Lorg/chromium/chrome/browser/compositor/TitleCache;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mTitleCache:Lorg/chromium/chrome/browser/compositor/TitleCache;

    .line 226
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mToolbarSwipeLayout:Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;

    invoke-virtual {v0, p1, p3}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->setTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)V

    .line 227
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mOverviewListLayout:Lorg/chromium/chrome/browser/widget/OverviewListLayout;

    invoke-virtual {v0, p1, p3}, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->setTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)V

    .line 228
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mOverviewLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mOverviewLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    invoke-virtual {v0, p1, p3}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->setTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)V

    .line 230
    :cond_0
    invoke-super/range {p0 .. p7}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->init(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Landroid/view/ViewGroup;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V

    .line 233
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$1;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mTabModelSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    .line 239
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mTabModelSelectorObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;

    invoke-interface {p1, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;)V

    .line 240
    invoke-interface {p1, p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->setCloseAllTabsDelegate(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector$CloseAllTabsDelegate;)V

    .line 242
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->createTabModelObserver()Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$LayoutManagerTabModelObserver;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    .line 243
    invoke-interface {p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModels()Ljava/util/List;

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

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V

    goto :goto_0

    .line 245
    :cond_1
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$2;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$2;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mTabSelectorTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    .line 276
    return-void
.end method

.method public initLayoutTabFromHost(I)V
    .locals 3

    .prologue
    .line 537
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->initLayoutTabFromHost(I)V

    .line 539
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    .line 542
    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getTabById(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 543
    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getExistingLayoutTab(I)Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v1

    .line 546
    if-eqz v1, :cond_0

    .line 548
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mTitleCache:Lorg/chromium/chrome/browser/compositor/TitleCache;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->isTitleNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mTitleCache:Lorg/chromium/chrome/browser/compositor/TitleCache;

    const-string/jumbo v2, ""

    invoke-interface {v1, v0, v2}, Lorg/chromium/chrome/browser/compositor/TitleCache;->getUpdatedTitle(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public overviewVisible()Z
    .locals 2

    .prologue
    .line 642
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    .line 643
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->isOverviewLayout(Lorg/chromium/chrome/browser/compositor/layouts/Layout;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->isHiding()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeOverviewModeObserver(Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior$OverviewModeObserver;)V
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mOverviewModeObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 654
    return-void
.end method

.method public setEnableAnimations(Z)V
    .locals 0

    .prologue
    .line 629
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mEnableAnimations:Z

    .line 630
    return-void
.end method

.method public showOverview(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 591
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->useAccessibilityLayout()Z

    move-result v3

    .line 593
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mOverviewListLayout:Lorg/chromium/chrome/browser/widget/OverviewListLayout;

    if-ne v0, v4, :cond_2

    move v0, v1

    .line 595
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v4

    iget-object v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mOverviewLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mOverviewLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    if-eqz v4, :cond_3

    .line 601
    :goto_1
    if-nez v0, :cond_0

    if-eqz v3, :cond_4

    :cond_0
    if-nez v1, :cond_4

    .line 602
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mOverviewListLayout:Lorg/chromium/chrome/browser/widget/OverviewListLayout;

    invoke-virtual {p0, v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->startShowing(Lorg/chromium/chrome/browser/compositor/layouts/Layout;Z)V

    .line 606
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 593
    goto :goto_0

    :cond_3
    move v1, v2

    .line 595
    goto :goto_1

    .line 603
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mOverviewLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    if-eqz v0, :cond_1

    .line 604
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mOverviewLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    invoke-virtual {p0, v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->startShowing(Lorg/chromium/chrome/browser/compositor/layouts/Layout;Z)V

    goto :goto_2
.end method

.method public simulateClick(FF)V
    .locals 4

    .prologue
    .line 327
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->time()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->click(JFF)V

    .line 328
    :cond_0
    return-void
.end method

.method public simulateDrag(FFFF)V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 339
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-virtual {v0, v2, v3, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onDown(JFF)V

    .line 341
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v1

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->drag(JFFFF)V

    .line 342
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->time()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onUpOrCancel(J)V

    .line 344
    :cond_0
    return-void
.end method

.method public startHiding(IZ)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 376
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->startHiding(IZ)V

    .line 378
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v4

    .line 379
    invoke-direct {p0, v4}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->isOverviewLayout(Lorg/chromium/chrome/browser/compositor/layouts/Layout;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 381
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mEnableAnimations:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mOverviewLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    if-ne v4, v0, :cond_3

    .line 382
    invoke-virtual {v4, p1}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->getLayoutTab(I)Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v0

    .line 383
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->showToolbar()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    move v3, v0

    .line 386
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mOverviewLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    if-ne v4, v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mCreatingNtp:Z

    if-eqz v0, :cond_1

    .line 388
    :goto_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mOverviewModeObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior$OverviewModeObserver;

    .line 389
    invoke-interface {v0, v3, v2}, Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior$OverviewModeObserver;->onOverviewModeStartedHiding(ZZ)V

    goto :goto_3

    :cond_0
    move v0, v2

    .line 383
    goto :goto_0

    :cond_1
    move v2, v1

    .line 386
    goto :goto_2

    .line 392
    :cond_2
    return-void

    :cond_3
    move v3, v2

    goto :goto_1
.end method

.method protected startShowing(Lorg/chromium/chrome/browser/compositor/layouts/Layout;Z)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 352
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mCreatingNtp:Z

    .line 353
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->startShowing(Lorg/chromium/chrome/browser/compositor/layouts/Layout;Z)V

    .line 355
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v1

    .line 358
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mContextualSearchDelegate:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->isOverviewLayout(Lorg/chromium/chrome/browser/compositor/layouts/Layout;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mToolbarSwipeLayout:Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;

    if-ne v1, v2, :cond_1

    .line 361
    :cond_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mContextualSearchDelegate:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;

    invoke-interface {v2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;->dismissContextualSearchBar()V

    .line 365
    :cond_1
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->isOverviewLayout(Lorg/chromium/chrome/browser/compositor/layouts/Layout;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 366
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mEnableAnimations:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v1

    if-gtz v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    move v1, v0

    .line 368
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mOverviewModeObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior$OverviewModeObserver;

    .line 369
    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior$OverviewModeObserver;->onOverviewModeStartedShowing(Z)V

    goto :goto_1

    :cond_3
    move v1, v0

    .line 366
    goto :goto_0

    .line 372
    :cond_4
    return-void
.end method

.method protected tabClosed(IIZ)V
    .locals 7

    .prologue
    .line 469
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v1

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->time()J

    move-result-wide v2

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabClosed(JIIZ)V

    .line 470
    :cond_0
    return-void
.end method

.method protected tabClosureCommitted(IZ)V
    .locals 4

    .prologue
    .line 485
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->time()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabClosureCommitted(JIZ)V

    .line 488
    :cond_0
    return-void
.end method

.method protected tabCreated(IILorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;ZZFF)V
    .locals 11

    .prologue
    .line 443
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    invoke-interface {v0, p4}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 444
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isNativePage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mCreatingNtp:Z

    .line 446
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    invoke-interface {v0, p4}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabIndexById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)I

    move-result v5

    .line 447
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v1

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->time()J

    move-result-wide v2

    if-nez p5, :cond_1

    const/4 v8, 0x1

    :goto_1
    move v4, p1

    move v6, p2

    move v7, p4

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabCreated(JIIIZZFF)V

    .line 449
    return-void

    .line 444
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 447
    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method protected tabCreating(ILjava/lang/String;Z)V
    .locals 1

    .prologue
    .line 459
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabCreating(I)V

    .line 460
    :cond_0
    return-void
.end method

.method protected tabModelSwitched(Z)V
    .locals 1

    .prologue
    .line 504
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabModelSwitched(Z)V

    .line 505
    :cond_0
    return-void
.end method

.method public tabSelected(IIZ)V
    .locals 7

    .prologue
    .line 426
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v1

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->time()J

    move-result-wide v2

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabSelected(JIIZ)V

    .line 429
    :cond_0
    return-void
.end method

.method protected useAccessibilityLayout()Z
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->isAccessibilityModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->enableAccessibilityLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
