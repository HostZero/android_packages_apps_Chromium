.class public Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/BlackHoleEventFilter;
.super Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;
.source "BlackHoleEventFilter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;)V

    .line 21
    return-void
.end method


# virtual methods
.method public onInterceptTouchEventInternal(Landroid/view/MotionEvent;Z)Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEventInternal(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method
