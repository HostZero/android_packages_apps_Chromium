.class public Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;
.super Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;
.source "ContextualSearchStaticEventFilter.java"


# instance fields
.field private final mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

.field private final mSwipeRecognizer:Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;

.field private final mTapHandler:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter$ContextualSearchTapHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter$ContextualSearchTapHandler;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;)V

    .line 59
    iput-object p3, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    .line 60
    new-instance v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter$SwipeRecognizerImpl;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter$SwipeRecognizerImpl;-><init>(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;->mSwipeRecognizer:Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;

    .line 61
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;->mSwipeRecognizer:Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;

    invoke-virtual {v0, p4}, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->setSwipeHandler(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;)V

    .line 62
    iput-object p5, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;->mTapHandler:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter$ContextualSearchTapHandler;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;)Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter$ContextualSearchTapHandler;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;->mTapHandler:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter$ContextualSearchTapHandler;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;)F
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;->mPxToDp:F

    return v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;)F
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;->mPxToDp:F

    return v0
.end method


# virtual methods
.method protected onInterceptTouchEventInternal(Landroid/view/MotionEvent;Z)Z
    .locals 4

    .prologue
    .line 72
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->getActivePanel()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->isPeeking()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;->mPxToDp:F

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getFullscreenY(F)F

    move-result v2

    iget v3, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;->mPxToDp:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->isCoordinateInsideBar(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onTouchEventInternal(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;->mPanelManager:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->getActivePanel()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    move-result-object v0

    .line 81
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    .line 83
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_1

    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;->mPxToDp:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->notifyBarTouched(F)V

    .line 92
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchStaticEventFilter;->mSwipeRecognizer:Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/contextualsearch/SwipeRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 93
    const/4 v0, 0x1

    goto :goto_0
.end method
