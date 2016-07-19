.class Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel$1;
.super Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;
.source "ReaderModePanel.java"


# instance fields
.field private mIsInitialLoad:Z

.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;)V
    .locals 1

    .prologue
    .line 70
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel$1;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;-><init>()V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel$1;->mIsInitialLoad:Z

    return-void
.end method


# virtual methods
.method public onContentViewCreated(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel$1;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;

    # getter for: Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mContentViewDelegate:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContentViewDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->access$000(Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContentViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContentViewDelegate;->setOverlayPanelContentViewCore(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 80
    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    .line 81
    if-nez v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel$1;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;

    # getter for: Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mManagerDelegate:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;
    invoke-static {v1}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->access$100(Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;)Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;->getBasePageWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    .line 84
    if-eqz v1, :cond_0

    .line 86
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerTabUtils;->distillAndView(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/content_public/browser/WebContents;)V

    goto :goto_0
.end method

.method public onContentViewDestroyed()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel$1;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;

    # getter for: Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mContentViewDelegate:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContentViewDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->access$000(Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContentViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContentViewDelegate;->releaseOverlayPanelContentViewCore()V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel$1;->mIsInitialLoad:Z

    .line 93
    return-void
.end method

.method public shouldInterceptNavigation(Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;Lorg/chromium/components/navigation_interception/NavigationParams;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 101
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel$1;->mIsInitialLoad:Z

    if-eqz v2, :cond_1

    .line 102
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel$1;->mIsInitialLoad:Z

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    iget-boolean v2, p2, Lorg/chromium/components/navigation_interception/NavigationParams;->isExternalProtocol:Z

    if-nez v2, :cond_0

    .line 106
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel$1;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;

    # getter for: Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->mManagerDelegate:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;->access$100(Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;)Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;

    move-result-object v0

    iget-object v2, p2, Lorg/chromium/components/navigation_interception/NavigationParams;->url:Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;->createNewTab(Ljava/lang/String;)V

    move v0, v1

    .line 107
    goto :goto_0
.end method
