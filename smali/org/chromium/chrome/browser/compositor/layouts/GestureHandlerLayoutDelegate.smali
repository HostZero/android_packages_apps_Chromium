.class Lorg/chromium/chrome/browser/compositor/layouts/GestureHandlerLayoutDelegate;
.super Ljava/lang/Object;
.source "GestureHandlerLayoutDelegate.java"

# interfaces
.implements Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;


# instance fields
.field private final mLayoutProvider:Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/GestureHandlerLayoutDelegate;->mLayoutProvider:Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;

    .line 22
    return-void
.end method


# virtual methods
.method public click(FFZI)V
    .locals 4

    .prologue
    .line 44
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/GestureHandlerLayoutDelegate;->mLayoutProvider:Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/GestureHandlerLayoutDelegate;->mLayoutProvider:Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->time()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->click(JFF)V

    goto :goto_0
.end method

.method public drag(FFFFFF)V
    .locals 8

    .prologue
    .line 38
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/GestureHandlerLayoutDelegate;->mLayoutProvider:Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/GestureHandlerLayoutDelegate;->mLayoutProvider:Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v1

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->time()J

    move-result-wide v2

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->drag(JFFFF)V

    goto :goto_0
.end method

.method public fling(FFFF)V
    .locals 8

    .prologue
    .line 50
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/GestureHandlerLayoutDelegate;->mLayoutProvider:Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/GestureHandlerLayoutDelegate;->mLayoutProvider:Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v1

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->time()J

    move-result-wide v2

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->fling(JFFFF)V

    goto :goto_0
.end method

.method public onDown(FFZI)V
    .locals 4

    .prologue
    .line 26
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/GestureHandlerLayoutDelegate;->mLayoutProvider:Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 28
    :goto_0
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/GestureHandlerLayoutDelegate;->mLayoutProvider:Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->time()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onDown(JFF)V

    goto :goto_0
.end method

.method public onLongPress(FF)V
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/GestureHandlerLayoutDelegate;->mLayoutProvider:Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/GestureHandlerLayoutDelegate;->mLayoutProvider:Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->time()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onLongPress(JFF)V

    goto :goto_0
.end method

.method public onPinch(FFFFZ)V
    .locals 9

    .prologue
    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/GestureHandlerLayoutDelegate;->mLayoutProvider:Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/GestureHandlerLayoutDelegate;->mLayoutProvider:Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v1

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->time()J

    move-result-wide v2

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v1 .. v8}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onPinch(JFFFFZ)V

    goto :goto_0
.end method

.method public onUpOrCancel()V
    .locals 4

    .prologue
    .line 32
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/GestureHandlerLayoutDelegate;->mLayoutProvider:Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 34
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/GestureHandlerLayoutDelegate;->mLayoutProvider:Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->time()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onUpOrCancel(J)V

    goto :goto_0
.end method
