.class public Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$ToolbarSwipeHandler;
.super Lorg/chromium/chrome/browser/compositor/layouts/EdgeSwipeHandlerLayoutDelegate;
.source "LayoutManagerChrome.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;)V
    .locals 0

    .prologue
    .line 664
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$ToolbarSwipeHandler;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    .line 665
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/EdgeSwipeHandlerLayoutDelegate;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;)V

    .line 666
    return-void
.end method


# virtual methods
.method public isSwipeEnabled(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 681
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$ToolbarSwipeHandler;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    iget-object v1, v1, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v1

    .line 682
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$ToolbarSwipeHandler;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$ToolbarSwipeHandler;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    iget-object v3, v3, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mStaticLayout:Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$ToolbarSwipeHandler;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    iget-object v2, v2, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;

    invoke-interface {v2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDocumentMode(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->enableToolbarSwipe(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->getPersistentFullscreenMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 691
    :cond_0
    :goto_0
    return v0

    .line 689
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$ToolbarSwipeHandler;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    iget-object v1, v1, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->isAccessibilityModeEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 691
    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->LEFT:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    if-eq p1, v2, :cond_2

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->RIGHT:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    if-eq p1, v2, :cond_2

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->DOWN:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$ToolbarSwipeHandler;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    iget-object v2, v2, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mOverviewLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public swipeStarted(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;FF)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 670
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->DOWN:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    if-ne p1, v0, :cond_1

    .line 671
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$ToolbarSwipeHandler;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$ToolbarSwipeHandler;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    iget-object v1, v1, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mOverviewLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->startShowing(Lorg/chromium/chrome/browser/compositor/layouts/Layout;Z)V

    .line 672
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/EdgeSwipeHandlerLayoutDelegate;->swipeStarted(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;FF)V

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->LEFT:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    if-eq p1, v0, :cond_2

    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->RIGHT:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    if-ne p1, v0, :cond_0

    .line 674
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$ToolbarSwipeHandler;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$ToolbarSwipeHandler;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    iget-object v1, v1, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->mToolbarSwipeLayout:Lorg/chromium/chrome/browser/compositor/layouts/ToolbarSwipeLayout;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->startShowing(Lorg/chromium/chrome/browser/compositor/layouts/Layout;Z)V

    .line 675
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/EdgeSwipeHandlerLayoutDelegate;->swipeStarted(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;FF)V

    goto :goto_0
.end method
