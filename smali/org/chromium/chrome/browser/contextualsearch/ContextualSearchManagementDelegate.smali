.class public interface abstract Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;
.super Ljava/lang/Object;
.source "ContextualSearchManagementDelegate.java"


# virtual methods
.method public abstract dismissContextualSearchBar()V
.end method

.method public abstract getChromeActivity()Lorg/chromium/chrome/browser/ChromeActivity;
.end method

.method public abstract getOverlayContentDelegate()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;
.end method

.method public abstract isRunningInCompatibilityMode()Z
.end method

.method public abstract logCurrentState()V
.end method

.method public abstract onCloseContextualSearch(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V
.end method

.method public abstract openResolvedSearchUrlInNewTab()V
.end method

.method public abstract promoteToTab()V
.end method

.method public abstract setContextualSearchPanel(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;)V
.end method
