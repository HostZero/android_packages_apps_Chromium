.class public interface abstract Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;
.super Ljava/lang/Object;
.source "LayoutManagerHost.java"


# static fields
.field public static final LOG_CHROME_VIEW_SHOW_TIME:Z


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getLayoutRenderHost()Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;
.end method

.method public abstract getTitleCache()Lorg/chromium/chrome/browser/compositor/TitleCache;
.end method

.method public abstract getWidth()I
.end method

.method public abstract hideKeyboard(Ljava/lang/Runnable;)V
.end method

.method public abstract onContentViewCoreAdded(Lorg/chromium/content/browser/ContentViewCore;)V
.end method

.method public abstract requestRender()V
.end method

.method public abstract setContentOverlayVisibility(Z)V
.end method
