.class public interface abstract Lorg/chromium/chrome/browser/compositor/overlays/SceneOverlay;
.super Ljava/lang/Object;
.source "SceneOverlay.java"


# virtual methods
.method public abstract getEventFilter()Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;
.end method

.method public abstract getUpdatedSceneOverlayTree(Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/ui/resources/ResourceManager;F)Lorg/chromium/chrome/browser/compositor/scene_layer/SceneOverlayLayer;
.end method

.method public abstract getVirtualViews(Ljava/util/List;)V
.end method

.method public abstract onSizeChanged(FFFI)V
.end method

.method public abstract shouldHideAndroidTopControls()Z
.end method

.method public abstract tabClosed(JZI)V
.end method

.method public abstract tabClosureCancelled(JZI)V
.end method

.method public abstract tabCreated(JZIIZ)V
.end method

.method public abstract tabLoadFinished(IZ)V
.end method

.method public abstract tabLoadStarted(IZ)V
.end method

.method public abstract tabModelSwitched(Z)V
.end method

.method public abstract tabMoved(JZIII)V
.end method

.method public abstract tabPageLoadFinished(IZ)V
.end method

.method public abstract tabPageLoadStarted(IZ)V
.end method

.method public abstract tabSelected(JZII)V
.end method

.method public abstract tabStateInitialized()V
.end method

.method public abstract tabTitleChanged(ILjava/lang/String;)V
.end method

.method public abstract updateOverlay(JJ)Z
.end method
