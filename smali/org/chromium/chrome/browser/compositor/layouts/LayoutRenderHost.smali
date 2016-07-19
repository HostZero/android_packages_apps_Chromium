.class public interface abstract Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;
.super Ljava/lang/Object;
.source "LayoutRenderHost.java"


# virtual methods
.method public abstract areTopControlsPermanentlyHidden()Z
.end method

.method public abstract getLayoutTabsDrawnCount()I
.end method

.method public abstract getResourceManager()Lorg/chromium/ui/resources/ResourceManager;
.end method

.method public abstract getTopControlsBackgroundColor()I
.end method

.method public abstract getTopControlsHeightPixels()I
.end method

.method public abstract getTopControlsUrlBarAlpha()F
.end method

.method public abstract getVisibleViewport(Landroid/graphics/Rect;)Landroid/graphics/Rect;
.end method

.method public abstract invalidateAccessibilityProvider()V
.end method

.method public abstract onCompositorLayout()V
.end method

.method public abstract onPhysicalBackingSizeChanged(II)V
.end method

.method public abstract onSurfaceCreated()V
.end method

.method public abstract onSwapBuffersCompleted(I)V
.end method

.method public abstract requestRender()V
.end method
