.class public interface abstract Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;
.super Ljava/lang/Object;
.source "LayoutProvider.java"


# virtual methods
.method public abstract getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;
.end method

.method public abstract getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;
.end method

.method public abstract getUpdatedActiveSceneLayer(Landroid/graphics/Rect;Landroid/graphics/Rect;Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/ui/resources/ResourceManager;Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;
.end method

.method public abstract getViewportPixel(Landroid/graphics/Rect;)Landroid/graphics/Rect;
.end method
