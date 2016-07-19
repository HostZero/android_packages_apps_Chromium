.class public Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EmptyEdgeSwipeHandler;
.super Ljava/lang/Object;
.source "EmptyEdgeSwipeHandler.java"

# interfaces
.implements Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSwipeEnabled(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;)Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public swipeFinished()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public swipeFlingOccurred(FFFFFF)V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public swipeStarted(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeEventFilter$ScrollDirection;FF)V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method public swipeUpdated(FFFFFF)V
    .locals 0

    .prologue
    .line 19
    return-void
.end method
