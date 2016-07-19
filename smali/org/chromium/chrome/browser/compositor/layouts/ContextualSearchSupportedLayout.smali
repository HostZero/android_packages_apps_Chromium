.class public abstract Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;
.super Lorg/chromium/chrome/browser/compositor/layouts/Layout;
.source "ContextualSearchSupportedLayout.java"


# instance fields
.field protected final mOverlayPanelHost:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelHost;

.field protected final mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;)V

    .line 54
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout$1;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;->mOverlayPanelHost:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelHost;

    .line 61
    iput-object p5, p0, Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    .line 62
    return-void
.end method


# virtual methods
.method public attachViews(Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->setContainerView(Landroid/view/ViewGroup;)V

    .line 67
    return-void
.end method

.method public getAllContentViewCores(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->getActivePanel()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_0
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->getAllContentViewCores(Ljava/util/List;)V

    .line 91
    return-void
.end method

.method public getAllViews(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->getActivePanel()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_0
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->getAllViews(Ljava/util/List;)V

    .line 79
    return-void
.end method

.method protected getSceneLayer()Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->getActivePanel()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    move-result-object v0

    .line 134
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 135
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getSceneLayer()Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;

    move-result-object v0

    goto :goto_0
.end method

.method protected hideContextualSearch(Z)V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method protected notifySizeChanged(FFI)V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->notifySizeChanged(FFI)V

    .line 110
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->onSizeChanged(FF)V

    .line 111
    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;->onSizeChanged(FF)V

    .line 112
    return-void
.end method

.method protected onSizeChanged(FF)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method protected onUpdateAnimation(JZ)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 125
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onUpdateAnimation(JZ)Z

    move-result v3

    .line 126
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->getActivePanel()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    move-result-object v2

    .line 127
    if-eqz v2, :cond_2

    invoke-virtual {v2, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->onUpdateAnimation(JZ)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    .line 128
    :goto_0
    if-nez v2, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    .line 127
    goto :goto_0
.end method

.method public show(JZ)V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;->mOverlayPanelHost:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelHost;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->setPanelHost(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelHost;)V

    .line 96
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->show(JZ)V

    .line 97
    return-void
.end method

.method protected updateSceneLayer(Landroid/graphics/Rect;Landroid/graphics/Rect;Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/ui/resources/ResourceManager;Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)V
    .locals 2

    .prologue
    .line 142
    invoke-super/range {p0 .. p6}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->updateSceneLayer(Landroid/graphics/Rect;Landroid/graphics/Rect;Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/ui/resources/ResourceManager;Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)V

    .line 144
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/ContextualSearchSupportedLayout;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->getActivePanel()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-virtual {v0, p5}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->updateSceneLayer(Lorg/chromium/ui/resources/ResourceManager;)V

    goto :goto_0
.end method
