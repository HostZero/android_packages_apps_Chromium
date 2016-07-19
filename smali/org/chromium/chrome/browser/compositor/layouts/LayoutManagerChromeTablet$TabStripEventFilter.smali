.class Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet$TabStripEventFilter;
.super Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/AreaGestureEventFilter;
.source "LayoutManagerChromeTablet.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;Landroid/graphics/RectF;ZZ)V
    .locals 7

    .prologue
    .line 264
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet$TabStripEventFilter;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    .line 265
    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/AreaGestureEventFilter;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/GestureHandler;Landroid/graphics/RectF;ZZ)V

    .line 266
    return-void
.end method


# virtual methods
.method public onInterceptTouchEventInternal(Landroid/view/MotionEvent;Z)Z
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet$TabStripEventFilter;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->isTabStripEventFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/AreaGestureEventFilter;->onInterceptTouchEventInternal(Landroid/view/MotionEvent;Z)Z

    move-result v0

    .line 274
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
