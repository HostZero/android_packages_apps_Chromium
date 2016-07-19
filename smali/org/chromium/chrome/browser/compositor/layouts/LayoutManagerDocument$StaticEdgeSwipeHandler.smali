.class Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$StaticEdgeSwipeHandler;
.super Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EmptyEdgeSwipeHandler;
.source "LayoutManagerDocument.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$StaticEdgeSwipeHandler;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EmptyEdgeSwipeHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$1;)V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$StaticEdgeSwipeHandler;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;)V

    return-void
.end method


# virtual methods
.method public isSwipeEnabled(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;)Z
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument$StaticEdgeSwipeHandler;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;

    iget-object v0, v0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v0

    .line 363
    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;->DOWN:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->getPersistentFullscreenMode()Z

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
    .locals 0

    .prologue
    .line 358
    return-void
.end method
