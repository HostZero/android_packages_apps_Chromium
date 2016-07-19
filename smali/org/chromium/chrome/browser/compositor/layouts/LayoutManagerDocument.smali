.class public Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;
.super Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;
.source "LayoutManagerDocument.java"

# interfaces
.implements Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContentViewDelegate;
.implements Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter$ContextualSearchTapHandler;


# instance fields
.field protected mContextualSearchDelegate:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;

.field private final mContextualSearchEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;

.field protected final mContextualSearchLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;

.field private final mContextualSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

.field protected final mGestureHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;

.field private final mOverlayPanelEdgeSwipeHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;

.field private final mOverlayPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

.field private final mReaderModePanel:Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;

.field private final mStaticEdgeEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

.field protected final mStaticLayout:Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;

.field private final mTabCache:Landroid/util/SparseArray;

.field private mTabModelSelectorTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

.field private final mToolbarSwipeHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 92
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;)V

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mTabCache:Landroid/util/SparseArray;

    .line 93
    invoke-interface {p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 94
    invoke-interface {p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;->getLayoutRenderHost()Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;

    move-result-object v6

    .line 96
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mOverlayPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    .line 97
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mOverlayPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-direct {v0, v1, p0, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mContextualSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    .line 98
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mOverlayPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-direct {v0, v1, p0, v2, p0}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContentViewDelegate;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mReaderModePanel:Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;

    .line 101
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$OverlayPanelEdgeSwipeHandler;

    invoke-direct {v0, p0, p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$OverlayPanelEdgeSwipeHandler;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mOverlayPanelEdgeSwipeHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;

    .line 102
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/GestureHandlerLayoutDelegate;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/compositor/layouts/GestureHandlerLayoutDelegate;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mGestureHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;

    .line 103
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$ToolbarSwipeHandler;

    invoke-direct {v0, p0, p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$ToolbarSwipeHandler;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mToolbarSwipeHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;

    .line 106
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    new-instance v2, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$StaticEdgeSwipeHandler;

    invoke-direct {v2, p0, v8}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$StaticEdgeSwipeHandler;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$1;)V

    invoke-direct {v0, v1, p0, v2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mStaticEdgeEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    .line 108
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mGestureHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mOverlayPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-direct {v0, v1, p0, v2, v3}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mContextualSearchEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;

    .line 110
    new-instance v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mOverlayPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mOverlayPanelEdgeSwipeHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;

    move-object v2, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter$ContextualSearchTapHandler;)V

    .line 112
    new-instance v4, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/CascadeEventFilter;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mStaticEdgeEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    aput-object v0, v2, v7

    invoke-direct {v4, v1, p0, v2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/CascadeEventFilter;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;[Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;)V

    .line 116
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;

    iget-object v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mOverlayPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    move-object v2, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mStaticLayout:Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;

    .line 118
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;

    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mContextualSearchEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/ContextualSearchEventFilter;

    iget-object v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mOverlayPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    move-object v2, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mContextualSearchLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;

    .line 122
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mStaticLayout:Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;

    invoke-virtual {v0, v7}, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->setLayoutHandlesTabLifecycles(Z)V

    .line 124
    invoke-virtual {p0, v8}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->setNextLayout(Lorg/chromium/chrome/browser/compositor/layouts/Layout;)V

    .line 125
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mOverlayPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;Z)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->showContextualSearchLayout(Z)V

    return-void
.end method

.method private getCurrentTabContentViewCore()Lorg/chromium/content/browser/ContentViewCore;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 348
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v1

    if-nez v1, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-object v0

    .line 349
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    .line 350
    if-eqz v1, :cond_0

    .line 351
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    goto :goto_0
.end method

.method private showContextualSearchLayout(Z)V
    .locals 1

    .prologue
    .line 340
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->getCurrentTabContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    .line 341
    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->preserveSelectionOnNextLossOfFocus()V

    .line 344
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mContextualSearchLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;

    invoke-virtual {p0, v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->startShowing(Lorg/chromium/chrome/browser/compositor/layouts/Layout;Z)V

    .line 345
    return-void
.end method


# virtual methods
.method protected addGlobalSceneOverlay(Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;)V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mStaticLayout:Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->addSceneOverlay(Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;)V

    .line 228
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mContextualSearchLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->addSceneOverlay(Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;)V

    .line 229
    return-void
.end method

.method public createLayoutTab(IZZZFF)Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 271
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mTabCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 272
    if-nez v0, :cond_2

    .line 273
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mLastContentWidthDp:F

    iget v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mLastContentHeightDp:F

    move v1, p1

    move v2, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;-><init>(IZFFZZ)V

    .line 275
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mTabCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 279
    :goto_0
    cmpl-float v1, p5, v7

    if-lez v1, :cond_0

    invoke-virtual {v0, p5}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setMaxContentWidth(F)V

    .line 280
    :cond_0
    cmpl-float v1, p6, v7

    if-lez v1, :cond_1

    invoke-virtual {v0, p6}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setMaxContentHeight(F)V

    .line 282
    :cond_1
    return-object v0

    .line 277
    :cond_2
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mLastContentWidthDp:F

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mLastContentHeightDp:F

    invoke-virtual {v0, v1, v2, p3, p4}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->init(FFZZ)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->destroy()V

    .line 184
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mStaticLayout:Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mStaticLayout:Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->destroy()V

    .line 185
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mContextualSearchLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mContextualSearchLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->destroy()V

    .line 186
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mOverlayPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mOverlayPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->destroy()V

    .line 187
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mTabModelSelectorTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mTabModelSelectorTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;->destroy()V

    .line 188
    :cond_3
    return-void
.end method

.method protected emptyCachesExcept(I)V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mTabCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 218
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mTabCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 219
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mTabCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 220
    :cond_0
    return-void
.end method

.method protected getDefaultLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mStaticLayout:Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;

    return-object v0
.end method

.method protected getExistingLayoutTab(I)Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mTabCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    return-object v0
.end method

.method public getTopSwipeHandler()Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mToolbarSwipeHandler:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;

    return-object v0
.end method

.method public getVirtualViews(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public handleTapContextualSearchBar(JFF)V
    .locals 3

    .prologue
    .line 308
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mContextualSearchLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;

    if-ne v0, v1, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mOverlayPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->getActivePanel()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    move-result-object v0

    .line 311
    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->supportsContextualSearchLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 321
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->showContextualSearchLayout(Z)V

    .line 324
    :cond_2
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->handleClick(JFF)V

    goto :goto_0
.end method

.method public init(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Landroid/view/ViewGroup;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V
    .locals 1

    .prologue
    .line 134
    iput-object p5, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mContextualSearchDelegate:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;

    .line 137
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mStaticEdgeEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter;->setTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    .line 140
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mStaticLayout:Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;

    invoke-virtual {v0, p1, p3}, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->setTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)V

    .line 141
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mContextualSearchLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;

    invoke-virtual {v0, p1, p3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->setTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)V

    .line 144
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mContextualSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-virtual {v0, p5}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->setManagementDelegate(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;)V

    .line 147
    if-eqz p5, :cond_0

    .line 148
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mContextualSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    invoke-interface {p5, v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;->setContextualSearchPanel(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;)V

    .line 151
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mReaderModePanel:Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;

    invoke-virtual {v0, p6}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->setManagerDelegate(Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;)V

    .line 152
    if-eqz p6, :cond_1

    .line 153
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mReaderModePanel:Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;

    invoke-interface {p6, v0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;->setReaderModePanel(Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;)V

    .line 157
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mOverlayPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v0, p7}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->setDynamicResourceLoader(Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V

    .line 159
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$1;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mTabModelSelectorTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    .line 176
    invoke-super/range {p0 .. p7}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->init(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Landroid/view/ViewGroup;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V

    .line 178
    return-void
.end method

.method public initLayoutTabFromHost(I)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 246
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    .line 249
    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getTabById(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v6

    .line 250
    if-eqz v6, :cond_0

    .line 252
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mTabCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 253
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v6}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 256
    if-eqz v1, :cond_3

    const-string/jumbo v4, "chrome-native://"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    .line 257
    :goto_1
    invoke-virtual {v6}, Lorg/chromium/chrome/browser/tab/Tab;->getThemeColor()I

    move-result v4

    .line 258
    invoke-virtual {v6}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/tab/Tab;->isShowingSadTab()Z

    move-result v5

    if-nez v5, :cond_2

    if-nez v1, :cond_2

    move v3, v2

    .line 260
    :cond_2
    invoke-virtual {v6}, Lorg/chromium/chrome/browser/tab/Tab;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/tab/Tab;->shouldStall()Z

    move-result v2

    invoke-static {v4}, Lorg/chromium/chrome/browser/util/ColorUtils;->getTextBoxColorForToolbarBackground(I)I

    move-result v5

    invoke-static {v6}, Lorg/chromium/chrome/browser/util/ColorUtils;->getTextBoxAlphaForToolbarBackground(Lorg/chromium/chrome/browser/tab/Tab;)F

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->initFromHost(IZZIIF)V

    .line 265
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;->requestRender()V

    goto :goto_0

    :cond_3
    move v1, v3

    .line 256
    goto :goto_1
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 303
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 2

    .prologue
    .line 292
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->onInterceptTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v0

    .line 293
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->unstallImmediately()V

    .line 294
    :cond_0
    return v0
.end method

.method protected onViewportChanged(Landroid/graphics/RectF;)V
    .locals 4

    .prologue
    .line 197
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->onViewportChanged(Landroid/graphics/RectF;)V

    .line 198
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mTabCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 200
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mTabCache:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setContentSize(FF)V

    .line 198
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 202
    :cond_0
    return-void
.end method

.method public releaseOverlayPanelContentViewCore()V
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    if-nez v0, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 336
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->updateFullscreenEnabledState()V

    goto :goto_0
.end method

.method public releaseTabLayout(I)V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mTabCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 288
    return-void
.end method

.method public setOverlayPanelContentViewCore(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;->onContentViewCoreAdded(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 330
    return-void
.end method
