.class public Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/CascadeEventFilter;
.super Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;
.source "CascadeEventFilter.java"


# instance fields
.field private mActiveDelegate:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;

.field private mDelegates:[Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;[Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;Z)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/CascadeEventFilter;->mActiveDelegate:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;

    .line 34
    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/CascadeEventFilter;->mDelegates:[Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;

    .line 35
    return-void
.end method


# virtual methods
.method public onInterceptTouchEventInternal(Landroid/view/MotionEvent;Z)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/CascadeEventFilter;->mActiveDelegate:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;

    .line 40
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 41
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/CascadeEventFilter;->mCurrentTouchOffsetX:F

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/CascadeEventFilter;->mCurrentTouchOffsetY:F

    invoke-virtual {v3, v0, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move v0, v1

    .line 42
    :goto_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/CascadeEventFilter;->mDelegates:[Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 43
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/CascadeEventFilter;->mDelegates:[Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;->autoOffsetEvents()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v3

    .line 44
    :goto_1
    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/CascadeEventFilter;->mDelegates:[Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;

    aget-object v4, v4, v0

    invoke-virtual {v4, v2, p2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;->onInterceptTouchEventInternal(Landroid/view/MotionEvent;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/CascadeEventFilter;->mDelegates:[Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;

    aget-object v0, v1, v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/CascadeEventFilter;->mActiveDelegate:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;

    .line 46
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 47
    const/4 v1, 0x1

    .line 51
    :goto_2
    return v1

    :cond_0
    move-object v2, p1

    .line 43
    goto :goto_1

    .line 42
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_2
.end method

.method public onTouchEventInternal(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/CascadeEventFilter;->mActiveDelegate:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/CascadeEventFilter;->mActiveDelegate:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;->autoOffsetEvents()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/CascadeEventFilter;->mCurrentTouchOffsetX:F

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/CascadeEventFilter;->mCurrentTouchOffsetY:F

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 60
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/CascadeEventFilter;->mActiveDelegate:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;->onTouchEventInternal(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 62
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
