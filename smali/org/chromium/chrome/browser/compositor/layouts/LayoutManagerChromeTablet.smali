.class public Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;
.super Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;
.source "LayoutManagerChromeTablet.java"


# instance fields
.field private final mDefaultTitle:Ljava/lang/String;

.field private mTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

.field private final mTabStripFilter:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet$TabStripEventFilter;

.field private mTabStripLayoutHelperManager:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$OverviewLayoutFactoryDelegate;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$OverviewLayoutFactoryDelegate;)V

    .line 59
    invoke-interface {p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 62
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet$TabStripEventFilter;

    new-instance v4, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet$TabStripEventHandler;

    invoke-direct {v4, p0, v5}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet$TabStripEventHandler;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet$1;)V

    move-object v1, p0

    move-object v3, p0

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet$TabStripEventFilter;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;Landroid/graphics/RectF;ZZ)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->mTabStripFilter:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet$TabStripEventFilter;

    .line 65
    new-instance v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;->getLayoutRenderHost()Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;

    move-result-object v1

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->mTabStripFilter:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet$TabStripEventFilter;

    invoke-direct {v0, v2, p0, v1, v3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/AreaGestureEventFilter;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->mTabStripLayoutHelperManager:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;

    .line 69
    sget v0, Lorg/chromium/chrome/R$string;->tab_loading_default_title:I

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->mDefaultTitle:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->mTabStripLayoutHelperManager:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->addGlobalSceneOverlay(Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;)V

    .line 73
    invoke-virtual {p0, v5}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->setNextLayout(Lorg/chromium/chrome/browser/compositor/layouts/Layout;)V

    .line 74
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->updateTitle(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->mTabStripLayoutHelperManager:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;

    return-object v0
.end method

.method private updateTitle(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 3

    .prologue
    .line 201
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->mTitleCache:Lorg/chromium/chrome/browser/compositor/TitleCache;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->mTitleCache:Lorg/chromium/chrome/browser/compositor/TitleCache;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->mDefaultTitle:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lorg/chromium/chrome/browser/compositor/TitleCache;->getUpdatedTitle(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->tabTitleChanged(ILjava/lang/String;)V

    .line 205
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->requestUpdate()V

    .line 206
    return-void
.end method


# virtual methods
.method protected createTabModelObserver()Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$LayoutManagerTabModelObserver;
    .locals 1

    .prologue
    .line 177
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet$2;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;)V

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->destroy()V

    .line 80
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->mTabStripLayoutHelperManager:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->mTabStripLayoutHelperManager:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->destroy()V

    .line 82
    iput-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->mTabStripLayoutHelperManager:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->mTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->mTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;->destroy()V

    .line 87
    iput-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->mTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    .line 89
    :cond_1
    return-void
.end method

.method public getStripLayoutHelperManager()Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->mTabStripLayoutHelperManager:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;

    return-object v0
.end method

.method public getUpdatedActiveSceneLayer(Landroid/graphics/Rect;Landroid/graphics/Rect;Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/ui/resources/ResourceManager;Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->mTabStripLayoutHelperManager:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->getToolbarBrightness()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->setBrightness(F)V

    .line 196
    invoke-super/range {p0 .. p6}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getUpdatedActiveSceneLayer(Landroid/graphics/Rect;Landroid/graphics/Rect;Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/ui/resources/ResourceManager;Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Landroid/view/ViewGroup;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 143
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->mTabStripLayoutHelperManager:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->mTabStripLayoutHelperManager:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelperManager;->setTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)V

    .line 147
    :cond_0
    invoke-super/range {p0 .. p7}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->init(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Landroid/view/ViewGroup;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V

    .line 150
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet$1;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->mTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    .line 163
    invoke-interface {p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModels()Ljava/util/List;

    move-result-object v4

    move v3, v2

    .line 164
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 165
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move v1, v2

    .line 166
    :goto_1
    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 167
    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v5

    .line 168
    if-eqz v5, :cond_1

    iget-object v6, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->mTitleCache:Lorg/chromium/chrome/browser/compositor/TitleCache;

    if-eqz v6, :cond_1

    .line 169
    iget-object v6, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->mTitleCache:Lorg/chromium/chrome/browser/compositor/TitleCache;

    iget-object v7, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->mDefaultTitle:Ljava/lang/String;

    invoke-interface {v6, v5, v7}, Lorg/chromium/chrome/browser/compositor/TitleCache;->getUpdatedTitle(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 164
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 173
    :cond_3
    return-void
.end method

.method protected tabClosed(IIZ)V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->tabClosed(IIZ)V

    .line 123
    return-void
.end method

.method protected tabClosureCommitted(IZ)V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->tabClosureCommitted(IZ)V

    .line 128
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->mTitleCache:Lorg/chromium/chrome/browser/compositor/TitleCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->mTitleCache:Lorg/chromium/chrome/browser/compositor/TitleCache;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/compositor/TitleCache;->remove(I)V

    .line 129
    :cond_0
    return-void
.end method

.method protected tabCreated(IILorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;ZZFF)V
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->showControlsTransient()V

    .line 117
    :cond_0
    invoke-super/range {p0 .. p7}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->tabCreated(IILorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;ZZFF)V

    .line 118
    return-void
.end method

.method protected tabModelSwitched(Z)V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->tabModelSwitched(Z)V

    .line 134
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->commitAllTabClosures()V

    .line 135
    return-void
.end method

.method public tabSelected(IIZ)V
    .locals 7

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->mStaticLayout:Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->mOverviewListLayout:Lorg/chromium/chrome/browser/widget/OverviewListLayout;

    if-ne v0, v1, :cond_2

    .line 99
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->tabSelected(IIZ)V

    .line 111
    :cond_1
    :goto_0
    return-void

    .line 101
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->mStaticLayout:Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->startShowing(Lorg/chromium/chrome/browser/compositor/layouts/Layout;Z)V

    .line 106
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 107
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v1

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->time()J

    move-result-wide v2

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabSelected(JIIZ)V

    .line 109
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->time()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabSelecting(JI)V

    goto :goto_0
.end method
