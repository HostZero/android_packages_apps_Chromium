.class Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$OverlayPanelEdgeSwipeHandler;
.super Lorg/chromium/chrome/browser/compositor/layouts/EdgeSwipeHandlerLayoutDelegate;
.source "LayoutManagerDocument.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$OverlayPanelEdgeSwipeHandler;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;

    .line 370
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/EdgeSwipeHandlerLayoutDelegate;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;)V

    .line 371
    return-void
.end method


# virtual methods
.method public isSwipeEnabled(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;)Z
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$OverlayPanelEdgeSwipeHandler;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mOverlayPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->access$100(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->getActivePanel()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    move-result-object v0

    .line 389
    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->UP:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public swipeStarted(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;FF)V
    .locals 3

    .prologue
    .line 375
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$OverlayPanelEdgeSwipeHandler;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;

    # getter for: Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mOverlayPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->access$100(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->getActivePanel()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    move-result-object v0

    .line 376
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$OverlayPanelEdgeSwipeHandler;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$OverlayPanelEdgeSwipeHandler;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;

    iget-object v2, v2, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mContextualSearchLayout:Lorg/chromium/chrome/browser/compositor/layouts/phone/ContextualSearchLayout;

    if-eq v1, v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->supportsContextualSearchLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$OverlayPanelEdgeSwipeHandler;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;

    const/4 v2, 0x0

    # invokes: Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->showContextualSearchLayout(Z)V
    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->access$200(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;Z)V

    .line 381
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->onInterceptBarSwipe()Z

    move-result v0

    if-nez v0, :cond_1

    .line 382
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/EdgeSwipeHandlerLayoutDelegate;->swipeStarted(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;FF)V

    .line 384
    :cond_1
    return-void
.end method
