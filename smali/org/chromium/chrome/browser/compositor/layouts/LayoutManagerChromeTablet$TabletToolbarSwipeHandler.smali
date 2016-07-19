.class Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet$TabletToolbarSwipeHandler;
.super Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$ToolbarSwipeHandler;
.source "LayoutManagerChromeTablet.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;


# virtual methods
.method public isSwipeEnabled(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;)Z
    .locals 2

    .prologue
    .line 215
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->LEFT:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->RIGHT:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet$TabletToolbarSwipeHandler;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet$TabletToolbarSwipeHandler;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    .line 218
    :cond_1
    const/4 v0, 0x0

    .line 221
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$ToolbarSwipeHandler;->isSwipeEnabled(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;)Z

    move-result v0

    goto :goto_0
.end method
