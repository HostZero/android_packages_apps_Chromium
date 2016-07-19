.class public interface abstract Lorg/chromium/chrome/browser/tab/TabObserver;
.super Ljava/lang/Object;
.source "TabObserver.java"


# virtual methods
.method public abstract didFirstVisuallyNonEmptyPaint(Lorg/chromium/chrome/browser/tab/Tab;)V
.end method

.method public abstract onBackgroundColorChanged(Lorg/chromium/chrome/browser/tab/Tab;I)V
.end method

.method public abstract onClosingStateChanged(Lorg/chromium/chrome/browser/tab/Tab;Z)V
.end method

.method public abstract onContentChanged(Lorg/chromium/chrome/browser/tab/Tab;)V
.end method

.method public abstract onContextMenuShown(Lorg/chromium/chrome/browser/tab/Tab;Landroid/view/ContextMenu;)V
.end method

.method public abstract onContextualActionBarVisibilityChanged(Lorg/chromium/chrome/browser/tab/Tab;Z)V
.end method

.method public abstract onCrash(Lorg/chromium/chrome/browser/tab/Tab;Z)V
.end method

.method public abstract onDestroyed(Lorg/chromium/chrome/browser/tab/Tab;)V
.end method

.method public abstract onDidAttachInterstitialPage(Lorg/chromium/chrome/browser/tab/Tab;)V
.end method

.method public abstract onDidChangeThemeColor(Lorg/chromium/chrome/browser/tab/Tab;I)V
.end method

.method public abstract onDidCommitProvisionalLoadForFrame(Lorg/chromium/chrome/browser/tab/Tab;JZLjava/lang/String;I)V
.end method

.method public abstract onDidDetachInterstitialPage(Lorg/chromium/chrome/browser/tab/Tab;)V
.end method

.method public abstract onDidFailLoad(Lorg/chromium/chrome/browser/tab/Tab;ZZILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDidNavigateMainFrame(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;Ljava/lang/String;ZZI)V
.end method

.method public abstract onDidStartNavigationToPendingEntry(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
.end method

.method public abstract onDidStartProvisionalLoadForFrame(Lorg/chromium/chrome/browser/tab/Tab;JJZLjava/lang/String;ZZ)V
.end method

.method public abstract onFaviconUpdated(Lorg/chromium/chrome/browser/tab/Tab;Landroid/graphics/Bitmap;)V
.end method

.method public abstract onHidden(Lorg/chromium/chrome/browser/tab/Tab;)V
.end method

.method public abstract onLoadProgressChanged(Lorg/chromium/chrome/browser/tab/Tab;I)V
.end method

.method public abstract onLoadStarted(Lorg/chromium/chrome/browser/tab/Tab;Z)V
.end method

.method public abstract onLoadStopped(Lorg/chromium/chrome/browser/tab/Tab;Z)V
.end method

.method public abstract onLoadUrl(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/LoadUrlParams;I)V
.end method

.method public abstract onPageLoadFailed(Lorg/chromium/chrome/browser/tab/Tab;I)V
.end method

.method public abstract onPageLoadFinished(Lorg/chromium/chrome/browser/tab/Tab;)V
.end method

.method public abstract onPageLoadStarted(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
.end method

.method public abstract onSSLStateUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
.end method

.method public abstract onShown(Lorg/chromium/chrome/browser/tab/Tab;)V
.end method

.method public abstract onTitleUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
.end method

.method public abstract onToggleFullscreenMode(Lorg/chromium/chrome/browser/tab/Tab;Z)V
.end method

.method public abstract onUpdateUrl(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
.end method

.method public abstract onUrlUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
.end method

.method public abstract onWebContentsInstantSupportDisabled()V
.end method

.method public abstract onWebContentsSwapped(Lorg/chromium/chrome/browser/tab/Tab;ZZ)V
.end method

.method public abstract webContentsCreated(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/WebContents;JLjava/lang/String;Ljava/lang/String;Lorg/chromium/content_public/browser/WebContents;)V
.end method
