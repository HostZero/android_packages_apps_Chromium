.class public Lorg/chromium/chrome/browser/tab/EmptyTabObserver;
.super Ljava/lang/Object;
.source "EmptyTabObserver.java"

# interfaces
.implements Lorg/chromium/chrome/browser/tab/TabObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didFirstVisuallyNonEmptyPaint(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public onBackgroundColorChanged(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public onClosingStateChanged(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public onContentChanged(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public onContextMenuShown(Lorg/chromium/chrome/browser/tab/Tab;Landroid/view/ContextMenu;)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public onContextualActionBarVisibilityChanged(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public onCrash(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public onDestroyed(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public onDidAttachInterstitialPage(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public onDidChangeThemeColor(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public onDidCommitProvisionalLoadForFrame(Lorg/chromium/chrome/browser/tab/Tab;JZLjava/lang/String;I)V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public onDidDetachInterstitialPage(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public onDidFailLoad(Lorg/chromium/chrome/browser/tab/Tab;ZZILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public onDidNavigateMainFrame(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public onDidStartNavigationToPendingEntry(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public onDidStartProvisionalLoadForFrame(Lorg/chromium/chrome/browser/tab/Tab;JJZLjava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public onFaviconUpdated(Lorg/chromium/chrome/browser/tab/Tab;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public onHidden(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public onLoadProgressChanged(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public onLoadStarted(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public onLoadStopped(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public onLoadUrl(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/LoadUrlParams;I)V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public onPageLoadFailed(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onPageLoadFinished(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public onPageLoadStarted(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public onSSLStateUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public onShown(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method public onTitleUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public onToggleFullscreenMode(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public onUpdateUrl(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public onUrlUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public onWebContentsInstantSupportDisabled()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public onWebContentsSwapped(Lorg/chromium/chrome/browser/tab/Tab;ZZ)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public webContentsCreated(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/WebContents;JLjava/lang/String;Ljava/lang/String;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    .prologue
    .line 131
    return-void
.end method
