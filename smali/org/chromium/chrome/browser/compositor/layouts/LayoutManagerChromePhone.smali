.class public Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;
.super Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;
.source "LayoutManagerChromePhone.java"


# instance fields
.field private final mSimpleAnimationLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$OverviewLayoutFactoryDelegate;)V
    .locals 4

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$OverviewLayoutFactoryDelegate;)V

    .line 38
    invoke-interface {p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 39
    invoke-interface {p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;->getLayoutRenderHost()Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;

    move-result-object v1

    .line 42
    new-instance v2, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->mBlackHoleEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;

    invoke-direct {v2, v0, p0, v1, v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/SimpleAnimationLayout;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;)V

    iput-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->mSimpleAnimationLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    .line 46
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->mStaticLayout:Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->setLayoutHandlesTabLifecycles(Z)V

    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->mToolbarSwipeLayout:Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;->setMovesToolbar(Z)V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->tabClosing(I)V

    return-void
.end method

.method private tabClosing(I)V
    .locals 4

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->getTabById(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 88
    if-nez v0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->handlesTabClosing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->time()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabClosing(JI)V

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->animationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->mSimpleAnimationLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->startShowing(Lorg/chromium/chrome/browser/compositor/layouts/Layout;Z)V

    .line 96
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->time()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabClosing(JI)V

    goto :goto_0
.end method


# virtual methods
.method protected addGlobalSceneOverlay(Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;)V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->addGlobalSceneOverlay(Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;)V

    .line 77
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->mSimpleAnimationLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->addSceneOverlay(Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;)V

    .line 78
    return-void
.end method

.method protected createTabModelObserver()Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$LayoutManagerTabModelObserver;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone$1;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;)V

    return-object v0
.end method

.method protected emptyCachesExcept(I)V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->emptyCachesExcept(I)V

    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->mTitleCache:Lorg/chromium/chrome/browser/compositor/TitleCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->mTitleCache:Lorg/chromium/chrome/browser/compositor/TitleCache;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/compositor/TitleCache;->clearExcept(I)V

    .line 84
    :cond_0
    return-void
.end method

.method public init(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Landroid/view/ViewGroup;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->mSimpleAnimationLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    invoke-virtual {v0, p1, p3}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->setTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)V

    .line 59
    invoke-super/range {p0 .. p7}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->init(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Landroid/view/ViewGroup;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V

    .line 61
    return-void
.end method

.method public releaseTabLayout(I)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->mTitleCache:Lorg/chromium/chrome/browser/compositor/TitleCache;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/compositor/TitleCache;->remove(I)V

    .line 150
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->releaseTabLayout(I)V

    .line 151
    return-void
.end method

.method protected tabClosed(IIZ)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 102
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    const/4 v0, 0x1

    .line 103
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->useAccessibilityLayout()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->mOverviewListLayout:Lorg/chromium/chrome/browser/widget/OverviewListLayout;

    move-object v8, v1

    .line 104
    :goto_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v1

    if-eq v1, v8, :cond_0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0, v8}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->setNextLayout(Lorg/chromium/chrome/browser/compositor/layouts/Layout;)V

    .line 109
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v1

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->time()J

    move-result-wide v2

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabClosed(JIIZ)V

    .line 110
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->getTabById(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    .line 111
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->requestFocus()V

    .line 112
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v1

    if-eq v1, v8, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->animationsEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 113
    invoke-virtual {p0, v8, v7}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->startShowing(Lorg/chromium/chrome/browser/compositor/layouts/Layout;Z)V

    .line 115
    :cond_2
    return-void

    :cond_3
    move v0, v7

    .line 102
    goto :goto_0

    .line 103
    :cond_4
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->mOverviewLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-object v8, v1

    goto :goto_1
.end method

.method protected tabCreated(IILorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;ZZFF)V
    .locals 1

    .prologue
    .line 139
    invoke-super/range {p0 .. p7}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->tabCreated(IILorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;ZZFF)V

    .line 141
    if-eqz p5, :cond_0

    .line 142
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    invoke-interface {v0, p4}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getTabById(Lorg/chromium/chrome/browser/tabmodel/TabList;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->requestFocus()V

    .line 145
    :cond_0
    return-void
.end method

.method protected tabCreating(ILjava/lang/String;Z)V
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->isHiding()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->handlesTabCreating()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->animationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->isHiding()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->mSimpleAnimationLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->setNextLayout(Lorg/chromium/chrome/browser/compositor/layouts/Layout;)V

    .line 128
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->doneHiding()V

    .line 132
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabCreating(I)V

    .line 134
    :cond_2
    return-void

    .line 130
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->mSimpleAnimationLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;->startShowing(Lorg/chromium/chrome/browser/compositor/layouts/Layout;Z)V

    goto :goto_0
.end method
