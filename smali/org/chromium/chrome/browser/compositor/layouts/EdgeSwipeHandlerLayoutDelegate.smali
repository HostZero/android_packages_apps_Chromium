.class public Lorg/chromium/chrome/browser/compositor/layouts/EdgeSwipeHandlerLayoutDelegate;
.super Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EmptyEdgeSwipeHandler;
.source "EdgeSwipeHandlerLayoutDelegate.java"


# instance fields
.field private final mLayoutProvider:Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EmptyEdgeSwipeHandler;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/EdgeSwipeHandlerLayoutDelegate;->mLayoutProvider:Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;

    .line 24
    return-void
.end method


# virtual methods
.method public swipeFinished()V
    .locals 4

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/EdgeSwipeHandlerLayoutDelegate;->mLayoutProvider:Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/EdgeSwipeHandlerLayoutDelegate;->mLayoutProvider:Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->time()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->swipeFinished(J)V

    goto :goto_0
.end method

.method public swipeFlingOccurred(FFFFFF)V
    .locals 10

    .prologue
    .line 46
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/EdgeSwipeHandlerLayoutDelegate;->mLayoutProvider:Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/EdgeSwipeHandlerLayoutDelegate;->mLayoutProvider:Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v1

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->time()J

    move-result-wide v2

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->swipeFlingOccurred(JFFFFFF)V

    goto :goto_0
.end method

.method public swipeStarted(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;FF)V
    .locals 7

    .prologue
    .line 28
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/EdgeSwipeHandlerLayoutDelegate;->mLayoutProvider:Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 30
    :goto_0
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/EdgeSwipeHandlerLayoutDelegate;->mLayoutProvider:Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v1

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->time()J

    move-result-wide v2

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->swipeStarted(JLorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;FF)V

    goto :goto_0
.end method

.method public swipeUpdated(FFFFFF)V
    .locals 10

    .prologue
    .line 34
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/EdgeSwipeHandlerLayoutDelegate;->mLayoutProvider:Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/EdgeSwipeHandlerLayoutDelegate;->mLayoutProvider:Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v1

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->time()J

    move-result-wide v2

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->swipeUpdated(JFFFFFF)V

    goto :goto_0
.end method
