.class public Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;
.super Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;
.source "ContextualSearchManager.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)V
    .locals 0

    .prologue
    .line 810
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayContentDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentLoadFinished()V
    .locals 2

    .prologue
    .line 842
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchRequest:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$400(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    move-result-object v0

    if-nez v0, :cond_1

    .line 858
    :cond_0
    :goto_0
    return-void

    .line 844
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$200(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchRequest:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;
    invoke-static {v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$400(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->wasPrefetch()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->onSearchResultsLoaded(Z)V

    .line 853
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchRequest:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$400(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->getHasFailed()Z

    move-result v0

    .line 854
    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$200(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$200(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->clearHistory()V

    goto :goto_0
.end method

.method public onContentLoadStarted(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 837
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mDidPromoteSearchNavigation:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$602(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;Z)Z

    .line 838
    return-void
.end method

.method public onContentViewCreated(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 4

    .prologue
    .line 888
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$500(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->isContextualSearchJsApiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mNativeContextualSearchManagerPtr:J
    invoke-static {v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$1200(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)J

    move-result-wide v2

    # invokes: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->nativeEnableContextualSearchJsApiForOverlay(JLorg/chromium/content/browser/ContentViewCore;)V
    invoke-static {v0, v2, v3, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$1300(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;JLorg/chromium/content/browser/ContentViewCore;)V

    .line 895
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchContentViewDelegate:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContentViewDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$1400(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContentViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContentViewDelegate;->setOverlayPanelContentViewCore(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 896
    return-void
.end method

.method public onContentViewDestroyed()V
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchContentViewDelegate:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContentViewDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$1400(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContentViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchContentViewDelegate:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContentViewDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$1400(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContentViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContentViewDelegate;->releaseOverlayPanelContentViewCore()V

    .line 903
    :cond_0
    return-void
.end method

.method public onContentViewSeen()V
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$200(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->setWasSearchContentViewSeen()V

    .line 908
    return-void
.end method

.method public onMainFrameLoadStarted(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$200(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->updateTopControlsState()V

    .line 816
    if-eqz p2, :cond_0

    .line 817
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->onExternalNavigation(Ljava/lang/String;)V

    .line 819
    :cond_0
    return-void
.end method

.method public onMainFrameNavigation(Ljava/lang/String;ZZ)V
    .locals 2

    .prologue
    .line 823
    if-nez p2, :cond_0

    .line 825
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    invoke-virtual {v0, p3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->onContextualSearchRequestNavigation(Z)V

    .line 828
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchRequest:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$400(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchRequest:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$400(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->wasPrefetch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$500(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->shouldPreviousTapResolve()Z

    move-result v0

    .line 830
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;
    invoke-static {v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$200(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->onPanelNavigatedToPrefetchedSearch(Z)V

    .line 833
    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 862
    if-eqz p1, :cond_3

    .line 863
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    # setter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mWereSearchResultsSeen:Z
    invoke-static {v0, v5}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$702(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;Z)Z

    .line 866
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchRequest:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$400(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$500(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->shouldCreateVerbatimRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    iget-object v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSelectionController:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;
    invoke-static {v2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$800(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchSelectionController;->getSelectedText()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->createContextualSearchRequest(Ljava/lang/String;Ljava/lang/String;Z)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    move-result-object v1

    # setter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchRequest:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$402(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    .line 869
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    # setter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mDidStartLoadingResolvedSearchRequest:Z
    invoke-static {v0, v4}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$902(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;Z)Z

    .line 871
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchRequest:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$400(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mDidStartLoadingResolvedSearchRequest:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$900(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mShouldLoadDelayedSearch:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$1000(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 877
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchRequest:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$400(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchRequest;->setNormalPriority()V

    .line 878
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    # invokes: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->loadSearchUrl()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$1100(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)V

    .line 880
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    # setter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mShouldLoadDelayedSearch:Z
    invoke-static {v0, v5}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$1002(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;Z)Z

    .line 881
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mPolicy:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$500(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchPolicy;->updateCountersForOpen()V

    .line 883
    :cond_3
    return-void
.end method

.method public shouldInterceptNavigation(Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;Lorg/chromium/components/navigation_interception/NavigationParams;)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 913
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mTabRedirectHandler:Lorg/chromium/chrome/browser/tab/TabRedirectHandler;
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$1500(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    move-result-object v0

    iget v1, p2, Lorg/chromium/components/navigation_interception/NavigationParams;->pageTransitionType:I

    iget-boolean v2, p2, Lorg/chromium/components/navigation_interception/NavigationParams;->isRedirect:Z

    iget-boolean v3, p2, Lorg/chromium/components/navigation_interception/NavigationParams;->hasUserGesture:Z

    if-nez v3, :cond_0

    iget-boolean v3, p2, Lorg/chromium/components/navigation_interception/NavigationParams;->hasUserGestureCarryover:Z

    if-eqz v3, :cond_2

    :cond_0
    move v3, v8

    :goto_0
    iget-object v4, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mActivity:Lorg/chromium/chrome/browser/ChromeActivity;
    invoke-static {v4}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$100(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/ChromeActivity;->getLastUserInteractionTime()J

    move-result-wide v4

    const/4 v6, -0x1

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->updateNewUrlLoading(IZZJI)V

    .line 917
    new-instance v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;

    iget-object v1, p2, Lorg/chromium/components/navigation_interception/NavigationParams;->url:Ljava/lang/String;

    iget-object v3, p2, Lorg/chromium/components/navigation_interception/NavigationParams;->referrer:Ljava/lang/String;

    iget v4, p2, Lorg/chromium/components/navigation_interception/NavigationParams;->pageTransitionType:I

    iget-boolean v5, p2, Lorg/chromium/components/navigation_interception/NavigationParams;->isRedirect:Z

    move v2, v7

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;-><init>(Ljava/lang/String;ZLjava/lang/String;IZ)V

    invoke-virtual {v0, v8}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->setApplicationMustBeInForeground(Z)Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mTabRedirectHandler:Lorg/chromium/chrome/browser/tab/TabRedirectHandler;
    invoke-static {v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$1500(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->setRedirectHandler(Lorg/chromium/chrome/browser/tab/TabRedirectHandler;)Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;

    move-result-object v0

    iget-boolean v1, p2, Lorg/chromium/components/navigation_interception/NavigationParams;->isMainFrame:Z

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->setIsMainFrame(Z)Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams$Builder;->build()Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;

    move-result-object v0

    .line 924
    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler;->shouldOverrideUrlLoading(Lorg/chromium/chrome/browser/externalnav/ExternalNavigationParams;)Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    sget-object v1, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->NO_OVERRIDE:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    if-eq v0, v1, :cond_3

    .line 926
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$SearchOverlayContentDelegate;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    # getter for: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->mSearchPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->access$200(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    move-result-object v0

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->TAB_PROMOTION:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->maximizePanelThenPromoteToTab(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;J)V

    .line 933
    :cond_1
    :goto_1
    return v7

    :cond_2
    move v3, v7

    .line 913
    goto :goto_0

    .line 930
    :cond_3
    iget-boolean v0, p2, Lorg/chromium/components/navigation_interception/NavigationParams;->isExternalProtocol:Z

    if-nez v0, :cond_1

    move v7, v8

    .line 933
    goto :goto_1
.end method
