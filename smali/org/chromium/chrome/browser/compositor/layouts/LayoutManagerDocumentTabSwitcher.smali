.class public Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;
.super Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;
.source "LayoutManagerDocumentTabSwitcher.java"

# interfaces
.implements Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior;


# instance fields
.field private final mBlackHoleEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/BlackHoleEventFilter;

.field private final mGestureEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

.field private final mOverviewLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

.field private final mOverviewListLayout:Lorg/chromium/chrome/browser/widget/OverviewListLayout;

.field private final mOverviewModeObservers:Lorg/chromium/base/ObserverList;

.field private mTitleCache:Lorg/chromium/chrome/browser/compositor/TitleCache;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;)V
    .locals 4

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;)V

    .line 50
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mOverviewModeObservers:Lorg/chromium/base/ObserverList;

    .line 59
    invoke-interface {p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 60
    invoke-interface {p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;->getLayoutRenderHost()Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;

    move-result-object v1

    .line 62
    new-instance v2, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/BlackHoleEventFilter;

    invoke-direct {v2, v0, p0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/BlackHoleEventFilter;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;)V

    iput-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mBlackHoleEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/BlackHoleEventFilter;

    .line 63
    new-instance v2, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mGestureHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;

    invoke-direct {v2, v0, p0, v3}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;)V

    iput-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mGestureEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    .line 64
    new-instance v2, Lorg/chromium/chrome/browser/widget/OverviewListLayout;

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mBlackHoleEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/BlackHoleEventFilter;

    invoke-direct {v2, v0, p0, v1, v3}, Lorg/chromium/chrome/browser/widget/OverviewListLayout;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;)V

    iput-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mOverviewListLayout:Lorg/chromium/chrome/browser/widget/OverviewListLayout;

    .line 66
    new-instance v2, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mGestureEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureEventFilter;

    invoke-direct {v2, v0, p0, v1, v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;)V

    iput-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mOverviewLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;Z)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->showOverview(Z)V

    return-void
.end method

.method private hideOverview(Z)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 269
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->isHiding()Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    if-eqz p1, :cond_1

    .line 272
    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->time()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v4}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabSelecting(JI)V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->startHiding(IZ)V

    .line 275
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->doneHiding()V

    goto :goto_0
.end method

.method private isOverviewLayout(Lorg/chromium/chrome/browser/compositor/layouts/Layout;)Z
    .locals 1

    .prologue
    .line 180
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mOverviewLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mOverviewListLayout:Lorg/chromium/chrome/browser/widget/OverviewListLayout;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showOverview(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 247
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->useAccessibilityLayout()Z

    move-result v3

    .line 249
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mOverviewListLayout:Lorg/chromium/chrome/browser/widget/OverviewListLayout;

    if-ne v0, v4, :cond_2

    move v0, v1

    .line 251
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v4

    iget-object v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mOverviewLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mOverviewLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    if-eqz v4, :cond_3

    .line 257
    :goto_1
    if-nez v0, :cond_0

    if-eqz v3, :cond_4

    :cond_0
    if-nez v1, :cond_4

    .line 258
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mOverviewListLayout:Lorg/chromium/chrome/browser/widget/OverviewListLayout;

    invoke-virtual {p0, v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->startShowing(Lorg/chromium/chrome/browser/compositor/layouts/Layout;Z)V

    .line 262
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 249
    goto :goto_0

    :cond_3
    move v1, v2

    .line 251
    goto :goto_1

    .line 259
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mOverviewLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mOverviewLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {p0, v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->startShowing(Lorg/chromium/chrome/browser/compositor/layouts/Layout;Z)V

    goto :goto_2
.end method

.method private useAccessibilityLayout()Z
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;

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


# virtual methods
.method protected addGlobalSceneOverlay(Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;)V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->addGlobalSceneOverlay(Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;)V

    .line 102
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mOverviewListLayout:Lorg/chromium/chrome/browser/widget/OverviewListLayout;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mOverviewListLayout:Lorg/chromium/chrome/browser/widget/OverviewListLayout;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->addSceneOverlay(Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mOverviewLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mOverviewLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->addSceneOverlay(Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;)V

    .line 108
    :cond_1
    return-void
.end method

.method public addOverviewModeObserver(Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior$OverviewModeObserver;)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mOverviewModeObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 186
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->destroy()V

    .line 91
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mOverviewListLayout:Lorg/chromium/chrome/browser/widget/OverviewListLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mOverviewListLayout:Lorg/chromium/chrome/browser/widget/OverviewListLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->destroy()V

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mOverviewLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mOverviewLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->destroy()V

    .line 93
    :cond_1
    return-void
.end method

.method public doneHiding()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->doneHiding()V

    .line 138
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 139
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 142
    :cond_0
    return-void
.end method

.method public init(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Landroid/view/ViewGroup;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V
    .locals 2

    .prologue
    .line 75
    invoke-super/range {p0 .. p7}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->init(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Landroid/view/ViewGroup;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V

    .line 78
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;->getTitleCache()Lorg/chromium/chrome/browser/compositor/TitleCache;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mTitleCache:Lorg/chromium/chrome/browser/compositor/TitleCache;

    .line 79
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeApplication;->getDocumentTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mOverviewListLayout:Lorg/chromium/chrome/browser/widget/OverviewListLayout;

    invoke-virtual {v1, v0, p3}, Lorg/chromium/chrome/browser/widget/OverviewListLayout;->setTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)V

    .line 81
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mOverviewLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-virtual {v1, v0, p3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->setTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)V

    .line 84
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->getDefaultLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->startShowing(Lorg/chromium/chrome/browser/compositor/layouts/Layout;Z)V

    .line 85
    return-void
.end method

.method public initLayoutTabFromHost(I)V
    .locals 3

    .prologue
    .line 112
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeApplication;->getDocumentTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    move-result-object v0

    .line 115
    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getTabById(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->getExistingLayoutTab(I)Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v1

    .line 119
    if-eqz v1, :cond_0

    .line 121
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mTitleCache:Lorg/chromium/chrome/browser/compositor/TitleCache;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->isTitleNeeded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mTitleCache:Lorg/chromium/chrome/browser/compositor/TitleCache;

    const-string/jumbo v2, ""

    invoke-interface {v1, v0, v2}, Lorg/chromium/chrome/browser/compositor/TitleCache;->getUpdatedTitle(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    :cond_2
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->initLayoutTabFromHost(I)V

    goto :goto_0
.end method

.method public overviewVisible()Z
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    .line 196
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->isOverviewLayout(Lorg/chromium/chrome/browser/compositor/layouts/Layout;)Z

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

.method public releaseTabLayout(I)V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->releaseTabLayout(I)V

    .line 130
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mTitleCache:Lorg/chromium/chrome/browser/compositor/TitleCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mTitleCache:Lorg/chromium/chrome/browser/compositor/TitleCache;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/compositor/TitleCache;->remove(I)V

    .line 131
    :cond_0
    return-void
.end method

.method public removeOverviewModeObserver(Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior$OverviewModeObserver;)V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mOverviewModeObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 191
    return-void
.end method

.method public startHiding(IZ)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 161
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->startHiding(IZ)V

    .line 163
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v1

    .line 164
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->isOverviewLayout(Lorg/chromium/chrome/browser/compositor/layouts/Layout;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mOverviewLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    if-ne v1, v2, :cond_2

    .line 167
    invoke-virtual {v1, p1}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->getLayoutTab(I)Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v1

    .line 169
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->showToolbar()Z

    move-result v0

    :cond_0
    move v1, v0

    .line 173
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mOverviewModeObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior$OverviewModeObserver;

    .line 174
    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior$OverviewModeObserver;->onOverviewModeStartedHiding(ZZ)V

    goto :goto_1

    .line 177
    :cond_1
    return-void

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method protected startShowing(Lorg/chromium/chrome/browser/compositor/layouts/Layout;Z)V
    .locals 3

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->startShowing(Lorg/chromium/chrome/browser/compositor/layouts/Layout;Z)V

    .line 148
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    .line 151
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->isOverviewLayout(Lorg/chromium/chrome/browser/compositor/layouts/Layout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mOverviewModeObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior$OverviewModeObserver;

    .line 154
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior$OverviewModeObserver;->onOverviewModeStartedShowing(Z)V

    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method

.method public toggleOverview()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 200
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    .line 203
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->overviewVisible()Z

    move-result v2

    if-nez v2, :cond_2

    .line 204
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;

    new-instance v2, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher$1;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher$1;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;)V

    invoke-interface {v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;->hideKeyboard(Ljava/lang/Runnable;)V

    .line 210
    if-eqz v0, :cond_0

    .line 211
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->setAccessibilityState(Z)V

    .line 231
    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object v0, v1

    .line 201
    goto :goto_0

    .line 214
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    .line 215
    instance-of v2, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    if-eqz v2, :cond_3

    .line 216
    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->time()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->commitOutstandingModelState(J)V

    .line 218
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-direct {p0, v4}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->hideOverview(Z)V

    .line 223
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocumentTabSwitcher;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    .line 226
    :cond_4
    if-eqz v1, :cond_0

    .line 227
    invoke-virtual {v1, v4}, Lorg/chromium/content/browser/ContentViewCore;->setAccessibilityState(Z)V

    goto :goto_1
.end method
