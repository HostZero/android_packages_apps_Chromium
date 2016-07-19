.class public Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;
.super Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;
.source "ContextualSearchLayout.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBaseTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

.field private mInitialPanelTouchY:F

.field private final mTabListSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct/range {p0 .. p5}, Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;)V

    .line 60
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout$1;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mTabListSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    return-object v0
.end method

.method private createBaseLayoutTab(Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 170
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    if-nez v0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTabId()I

    move-result v0

    .line 173
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 175
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->isIncognitoSelected()Z

    move-result v1

    invoke-virtual {p0, v0, v1, v2, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->createLayoutTab(IZZZ)Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mBaseTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 178
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mBaseTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 179
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mBaseTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setScale(F)V

    .line 180
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mBaseTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setBorderScale(F)V

    .line 181
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mBaseTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setBorderAlpha(F)V

    .line 183
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mBaseTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    goto :goto_0
.end method

.method private resetLayout()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 161
    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mBaseTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    .line 162
    return-void
.end method


# virtual methods
.method public click(JFF)V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->getActivePanel()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->handleClick(JFF)V

    .line 228
    return-void
.end method

.method public drag(JFFFF)V
    .locals 2

    .prologue
    .line 210
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mInitialPanelTouchY:F

    sub-float v0, p4, v0

    .line 212
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->getActivePanel()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->handleSwipeMove(F)V

    .line 213
    return-void
.end method

.method public fling(JFFFF)V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->getActivePanel()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    move-result-object v0

    invoke-virtual {v0, p6}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->handleFling(F)V

    .line 223
    return-void
.end method

.method public forceHideTopControlsAndroidView()Z
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x1

    return v0
.end method

.method protected getSceneLayer()Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mTabListSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;

    return-object v0
.end method

.method public getSizingFlags()I
    .locals 1

    .prologue
    .line 106
    const/16 v0, 0x111

    return v0
.end method

.method public getToolbarBrightness()F
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->getActivePanel()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getBasePageBrightness()F

    move-result v0

    return v0
.end method

.method public getTopControlsOffset(F)F
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mBaseTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->getActivePanel()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getToolbarHeight()F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method public getViewForInteraction()Landroid/view/View;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->getActivePanel()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;->getViewForInteraction()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public handlesTabCreating()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 133
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mBaseTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getId()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->startHiding(IZ)V

    .line 134
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->doneHiding()V

    .line 140
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->getActivePanel()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->updateTopControlsState(IZ)V

    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method protected hideContextualSearch(Z)V
    .locals 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->startHiding(IZ)V

    .line 194
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->doneHiding()V

    .line 196
    :cond_0
    return-void
.end method

.method public isTabStripEventFilterEnabled()Z
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 262
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->getActivePanel()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    move-result-object v0

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->BACK_PRESS:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->closePanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Z)V

    .line 263
    return v2
.end method

.method public onDown(JFF)V
    .locals 1

    .prologue
    .line 204
    iput p4, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mInitialPanelTouchY:F

    .line 205
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->getActivePanel()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->handleSwipeStart()V

    .line 206
    return-void
.end method

.method protected onSizeChanged(FF)V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mBaseTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->getActivePanel()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_0

    .line 86
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mBaseTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    invoke-virtual {v1, p1}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setMaxContentWidth(F)V

    .line 87
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mBaseTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getTabHeight()F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setMaxContentHeight(F)V

    .line 88
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mBaseTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getTabHeight()F

    move-result v0

    invoke-virtual {v1, p1, v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setContentSize(FF)V

    .line 91
    :cond_0
    return-void
.end method

.method public onUpOrCancel(J)V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->getActivePanel()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->handleSwipeEnd()V

    .line 218
    return-void
.end method

.method public show(JZ)V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mTabListSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;

    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;->getSceneLayer()Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;->setContentTree(Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;)V

    .line 150
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;->show(JZ)V

    .line 152
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->resetLayout()V

    .line 153
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mBaseTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->createBaseLayoutTab(Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;)V

    .line 154
    return-void
.end method

.method public swipeFinished(J)V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->getActivePanel()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->handleSwipeEnd()V

    .line 253
    return-void
.end method

.method public swipeFlingOccurred(JFFFFFF)V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->getActivePanel()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    move-result-object v0

    invoke-virtual {v0, p8}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->handleFling(F)V

    .line 248
    return-void
.end method

.method public swipeStarted(JLorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;FF)V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->getActivePanel()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->handleSwipeStart()V

    .line 237
    return-void
.end method

.method public swipeUpdated(JFFFFFF)V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->getActivePanel()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    move-result-object v0

    invoke-virtual {v0, p8}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->handleSwipeMove(F)V

    .line 242
    return-void
.end method

.method protected updateLayout(JJ)V
    .locals 3

    .prologue
    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;->updateLayout(JJ)V

    .line 118
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mBaseTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-nez v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->getActivePanel()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_2

    .line 122
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mBaseTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getBasePageY()F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setY(F)V

    .line 123
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mBaseTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getBasePageBrightness()F

    move-result v0

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setBrightness(F)V

    .line 126
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mBaseTab:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    invoke-virtual {v0, p3, p4}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->updateSnap(J)Z

    move-result v0

    .line 127
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->requestUpdate()V

    goto :goto_0
.end method

.method protected updateSceneLayer(Landroid/graphics/Rect;Landroid/graphics/Rect;Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/ui/resources/ResourceManager;Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)V
    .locals 8

    .prologue
    .line 275
    invoke-super/range {p0 .. p6}, Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;->updateSceneLayer(Landroid/graphics/Rect;Landroid/graphics/Rect;Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/ui/resources/ResourceManager;Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)V

    .line 277
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mTabListSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 278
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->mTabListSceneLayer:Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lorg/chromium/chrome/browser/compositor/scene_layer/TabListSceneLayer;->pushLayers(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/Rect;Lorg/chromium/chrome/browser/compositor/layouts/Layout;Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/ui/resources/ResourceManager;)V

    .line 280
    return-void
.end method
