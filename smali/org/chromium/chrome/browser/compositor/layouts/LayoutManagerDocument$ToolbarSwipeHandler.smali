.class Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$ToolbarSwipeHandler;
.super Lorg/chromium/chrome/browser/compositor/layouts/EdgeSwipeHandlerLayoutDelegate;
.source "LayoutManagerDocument.java"


# instance fields
.field private mLastScroll:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$ToolbarSwipeHandler;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;

    .line 404
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/EdgeSwipeHandlerLayoutDelegate;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;)V

    .line 405
    return-void
.end method

.method private changeTabs()V
    .locals 4

    .prologue
    .line 427
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeApplication;->getDocumentTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->getCurrentModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    .line 430
    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->index()I

    move-result v1

    .line 431
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$ToolbarSwipeHandler;->mLastScroll:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->LEFT:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    if-ne v2, v3, :cond_1

    .line 432
    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 433
    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->setIndex(Lorg/chromium/chrome/browser/tabmodel/TabModel;I)V

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    if-lez v1, :cond_0

    .line 437
    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->setIndex(Lorg/chromium/chrome/browser/tabmodel/TabModel;I)V

    goto :goto_0
.end method


# virtual methods
.method public isSwipeEnabled(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 444
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$ToolbarSwipeHandler;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;

    iget-object v1, v1, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v1

    .line 445
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$ToolbarSwipeHandler;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$ToolbarSwipeHandler;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;

    iget-object v3, v3, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mStaticLayout:Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$ToolbarSwipeHandler;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;

    iget-object v2, v2, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;

    invoke-interface {v2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDocumentModeEligible(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$ToolbarSwipeHandler;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;

    iget-object v2, v2, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;

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

    .line 453
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->LEFT:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    if-eq p1, v1, :cond_2

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->RIGHT:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    if-ne p1, v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public swipeFinished()V
    .locals 0

    .prologue
    .line 415
    invoke-super {p0}, Lorg/chromium/chrome/browser/compositor/layouts/EdgeSwipeHandlerLayoutDelegate;->swipeFinished()V

    .line 416
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$ToolbarSwipeHandler;->changeTabs()V

    .line 417
    return-void
.end method

.method public swipeFlingOccurred(FFFFFF)V
    .locals 0

    .prologue
    .line 421
    invoke-super/range {p0 .. p6}, Lorg/chromium/chrome/browser/compositor/layouts/EdgeSwipeHandlerLayoutDelegate;->swipeFlingOccurred(FFFFFF)V

    .line 422
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$ToolbarSwipeHandler;->changeTabs()V

    .line 423
    return-void
.end method

.method public swipeStarted(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;FF)V
    .locals 0

    .prologue
    .line 409
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/compositor/layouts/EdgeSwipeHandlerLayoutDelegate;->swipeStarted(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;FF)V

    .line 410
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$ToolbarSwipeHandler;->mLastScroll:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    .line 411
    return-void
.end method
