.class public abstract Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;
.super Ljava/lang/Object;
.source "LayoutManager.java"

# interfaces
.implements Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;
.implements Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;
.implements Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilterHost;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mActiveEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;

.field private mActiveLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

.field private final mCachedPoint:Landroid/graphics/Point;

.field private final mCachedRect:Landroid/graphics/Rect;

.field private final mCachedRectF:Landroid/graphics/RectF;

.field private mContentContainer:Landroid/view/ViewGroup;

.field private mFullscreenToken:I

.field protected final mHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;

.field protected mLastContentHeightDp:F

.field protected mLastContentWidthDp:F

.field protected final mLastFullscreenViewportDp:Landroid/graphics/RectF;

.field private final mLastFullscreenViewportPx:Landroid/graphics/Rect;

.field protected mLastHeightMinusTopControlsDp:F

.field protected mLastTapX:I

.field protected mLastTapY:I

.field protected final mLastViewportDp:Landroid/graphics/RectF;

.field private final mLastViewportPx:Landroid/graphics/Rect;

.field protected final mLastVisibleViewportDp:Landroid/graphics/RectF;

.field private final mLastVisibleViewportPx:Landroid/graphics/Rect;

.field private mNextActiveLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

.field protected final mPxToDp:F

.field private final mSceneChangeObservers:Lorg/chromium/base/ObserverList;

.field private mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

.field private mUpdateRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mFullscreenToken:I

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastViewportPx:Landroid/graphics/Rect;

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastVisibleViewportPx:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastFullscreenViewportPx:Landroid/graphics/Rect;

    .line 85
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastViewportDp:Landroid/graphics/RectF;

    .line 86
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastVisibleViewportDp:Landroid/graphics/RectF;

    .line 87
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastFullscreenViewportDp:Landroid/graphics/RectF;

    .line 93
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mCachedRectF:Landroid/graphics/RectF;

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mCachedRect:Landroid/graphics/Rect;

    .line 95
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mCachedPoint:Landroid/graphics/Point;

    .line 102
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;

    .line 103
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mPxToDp:F

    .line 104
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mSceneChangeObservers:Lorg/chromium/base/ObserverList;

    .line 106
    invoke-interface {p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;->getWidth()I

    move-result v0

    .line 107
    invoke-interface {p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;->getHeight()I

    move-result v1

    .line 108
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastViewportPx:Landroid/graphics/Rect;

    invoke-virtual {v2, v4, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 109
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastVisibleViewportPx:Landroid/graphics/Rect;

    invoke-virtual {v2, v4, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 110
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastFullscreenViewportPx:Landroid/graphics/Rect;

    invoke-virtual {v2, v4, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 112
    int-to-float v0, v0

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mPxToDp:F

    mul-float/2addr v0, v2

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastContentWidthDp:F

    .line 113
    int-to-float v0, v1

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mPxToDp:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastContentHeightDp:F

    .line 114
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastViewportDp:Landroid/graphics/RectF;

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastContentWidthDp:F

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastContentHeightDp:F

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 115
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastVisibleViewportDp:Landroid/graphics/RectF;

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastContentWidthDp:F

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastContentHeightDp:F

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 116
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastFullscreenViewportDp:Landroid/graphics/RectF;

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastContentWidthDp:F

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastContentHeightDp:F

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 118
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastContentHeightDp:F

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastHeightMinusTopControlsDp:F

    .line 119
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    return-object v0
.end method

.method private getMotionOffsets(Landroid/view/MotionEvent;)Landroid/graphics/Point;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 184
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/content/browser/SPenSupport;->isSPenSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    invoke-static {v0}, Lorg/chromium/content/browser/SPenSupport;->convertSPenEventAction(I)I

    move-result v0

    .line 188
    :cond_0
    if-eqz v0, :cond_1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 190
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mCachedRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->getViewportPixel(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 192
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mCachedPoint:Landroid/graphics/Point;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mCachedRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mCachedRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 193
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mCachedPoint:Landroid/graphics/Point;

    .line 201
    :goto_0
    return-object v0

    .line 194
    :cond_2
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 197
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mCachedPoint:Landroid/graphics/Point;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Point;->set(II)V

    .line 198
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mCachedPoint:Landroid/graphics/Point;

    goto :goto_0

    .line 201
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOrientation()I
    .locals 2

    .prologue
    .line 526
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastContentWidthDp:F

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastContentHeightDp:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 527
    const/4 v0, 0x2

    .line 529
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private propagateViewportToActiveLayout()V
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mCachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->getViewportDp(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 518
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mCachedRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 519
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mCachedRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 520
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastContentWidthDp:F

    .line 521
    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastContentHeightDp:F

    .line 522
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mCachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->onViewportChanged(Landroid/graphics/RectF;)V

    .line 523
    return-void
.end method

.method public static time()J
    .locals 2

    .prologue
    .line 125
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private updateLayoutForTabModelSelector()V
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->isTabStateInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onTabStateInitialized()V

    .line 557
    :goto_0
    return-void

    .line 542
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    new-instance v1, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager$1;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;)V

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;)V

    goto :goto_0
.end method


# virtual methods
.method public addSceneChangeObserver(Lorg/chromium/chrome/browser/compositor/layouts/SceneChangeObserver;)V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mSceneChangeObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 266
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mSceneChangeObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->clear()V

    .line 259
    return-void
.end method

.method public doneHiding()V
    .locals 2

    .prologue
    .line 421
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mNextActiveLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Need to have a next active layout."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 422
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mNextActiveLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mNextActiveLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->startShowing(Lorg/chromium/chrome/browser/compositor/layouts/Layout;Z)V

    .line 425
    :cond_1
    return-void
.end method

.method public doneShowing()V
    .locals 0

    .prologue
    .line 428
    return-void
.end method

.method public getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mActiveLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    return-object v0
.end method

.method protected abstract getDefaultLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;
.end method

.method public getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getNextLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mNextActiveLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mNextActiveLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->getDefaultLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    goto :goto_0
.end method

.method protected getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    return-object v0
.end method

.method public abstract getTopSwipeHandler()Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;
.end method

.method public getUpdatedActiveSceneLayer(Landroid/graphics/Rect;Landroid/graphics/Rect;Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/ui/resources/ResourceManager;Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;
    .locals 7

    .prologue
    .line 279
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mActiveLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->getUpdatedSceneLayer(Landroid/graphics/Rect;Landroid/graphics/Rect;Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/ui/resources/ResourceManager;Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)Lorg/chromium/chrome/browser/compositor/scene_layer/SceneLayer;

    move-result-object v0

    return-object v0
.end method

.method public getViewportDp(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 356
    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 358
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 359
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastViewportDp:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 372
    :goto_0
    return-object p1

    .line 363
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->getSizingFlags()I

    move-result v0

    .line 364
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_2

    .line 365
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastFullscreenViewportDp:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 366
    :cond_2
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 367
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastViewportDp:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 369
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastVisibleViewportDp:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public getViewportPixel(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 377
    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 379
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 380
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastViewportPx:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 392
    :goto_0
    return-object p1

    .line 384
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->getSizingFlags()I

    move-result v0

    .line 385
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_2

    .line 386
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastFullscreenViewportPx:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 387
    :cond_2
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 388
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastViewportPx:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 390
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastVisibleViewportPx:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getViewportWidth()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;->getWidth()I

    move-result v0

    return v0
.end method

.method public abstract getVirtualViews(Ljava/util/List;)V
.end method

.method public init(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Landroid/view/ViewGroup;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V
    .locals 2

    .prologue
    .line 246
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    .line 247
    iput-object p4, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mContentContainer:Landroid/view/ViewGroup;

    .line 249
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mNextActiveLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mNextActiveLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->startShowing(Lorg/chromium/chrome/browser/compositor/layouts/Layout;Z)V

    .line 251
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->updateLayoutForTabModelSelector()V

    .line 252
    return-void
.end method

.method public isActiveLayout(Lorg/chromium/chrome/browser/compositor/layouts/Layout;)Z
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mActiveLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onBackPressed()Z
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 137
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mActiveLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    if-nez v1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v0

    .line 139
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastTapX:I

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastTapY:I

    .line 144
    :cond_2
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->getMotionOffsets(Landroid/view/MotionEvent;)Landroid/graphics/Point;

    move-result-object v1

    .line 145
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mActiveLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    invoke-virtual {v2, p1, v1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->findInterceptingEventFilter(Landroid/view/MotionEvent;Landroid/graphics/Point;Z)Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mActiveEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;

    .line 147
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mActiveEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mActiveLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->unstallImmediately()V

    .line 148
    :cond_3
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mActiveEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 158
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mActiveEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 163
    :cond_0
    :goto_0
    return v0

    .line 160
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mActiveEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 161
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->getMotionOffsets(Landroid/view/MotionEvent;)Landroid/graphics/Point;

    move-result-object v1

    .line 162
    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mActiveEventFilter:Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;

    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v2, v3, v1}, Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;->setCurrentMotionEventOffsets(FF)V

    goto :goto_0
.end method

.method public onUpdate()V
    .locals 4

    .prologue
    .line 209
    const-string/jumbo v0, "LayoutDriver:onUpdate"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->time()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->onUpdate(JJ)Z

    .line 211
    const-string/jumbo v0, "LayoutDriver:onUpdate"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public onUpdate(JJ)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 222
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mUpdateRequested:Z

    if-nez v1, :cond_0

    .line 228
    :goto_0
    return v0

    .line 223
    :cond_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mUpdateRequested:Z

    .line 224
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->onUpdate(JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->isHiding()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->doneHiding()V

    .line 228
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mUpdateRequested:Z

    goto :goto_0
.end method

.method protected onViewportChanged(Landroid/graphics/RectF;)V
    .locals 6

    .prologue
    .line 289
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastVisibleViewportDp:Landroid/graphics/RectF;

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastFullscreenViewportDp:Landroid/graphics/RectF;

    iget v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastHeightMinusTopControlsDp:F

    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->getOrientation()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->sizeChanged(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;FI)V

    .line 293
    :cond_0
    return-void
.end method

.method public propagateEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 168
    if-nez p1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v0

    .line 170
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->getViewForInteraction()Landroid/view/View;

    move-result-object v1

    .line 171
    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 174
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final pushNewViewport(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 305
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastViewportPx:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 306
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastVisibleViewportPx:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 308
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastViewportDp:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mPxToDp:F

    mul-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mPxToDp:F

    mul-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mPxToDp:F

    mul-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mPxToDp:F

    mul-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 310
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastVisibleViewportDp:Landroid/graphics/RectF;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mPxToDp:F

    mul-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mPxToDp:F

    mul-float/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mPxToDp:F

    mul-float/2addr v3, v4

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget v5, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mPxToDp:F

    mul-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 312
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastFullscreenViewportDp:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mPxToDp:F

    mul-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mPxToDp:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 313
    int-to-float v0, p3

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mPxToDp:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mLastHeightMinusTopControlsDp:F

    .line 315
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->propagateViewportToActiveLayout()V

    .line 316
    return-void
.end method

.method public removeSceneChangeObserver(Lorg/chromium/chrome/browser/compositor/layouts/SceneChangeObserver;)V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mSceneChangeObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 273
    return-void
.end method

.method public requestUpdate()V
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mUpdateRequested:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;->requestRender()V

    .line 403
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mUpdateRequested:Z

    .line 404
    return-void
.end method

.method public setNextLayout(Lorg/chromium/chrome/browser/compositor/layouts/Layout;)V
    .locals 0

    .prologue
    .line 489
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->getDefaultLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mNextActiveLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    .line 490
    return-void
.end method

.method public startHiding(IZ)V
    .locals 2

    .prologue
    .line 408
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->requestUpdate()V

    .line 409
    if-eqz p2, :cond_0

    .line 410
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mSceneChangeObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/SceneChangeObserver;

    .line 411
    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/SceneChangeObserver;->onTabSelectionHinted(I)V

    goto :goto_0

    .line 414
    :cond_0
    return-void
.end method

.method protected startShowing(Lorg/chromium/chrome/browser/compositor/layouts/Layout;Z)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 440
    sget-boolean v1, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "init() must be called first."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 441
    :cond_0
    sget-boolean v1, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Can\'t show a null layout."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 444
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->setNextLayout(Lorg/chromium/chrome/browser/compositor/layouts/Layout;)V

    .line 445
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v1

    .line 446
    if-eq v1, p1, :cond_3

    .line 447
    if-eqz v1, :cond_2

    .line 448
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->detachViews()V

    .line 450
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->contextChanged(Landroid/content/Context;)V

    .line 451
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->attachViews(Landroid/view/ViewGroup;)V

    .line 452
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mActiveLayout:Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    .line 455
    :cond_3
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v1

    .line 456
    if-eqz v1, :cond_5

    .line 458
    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mFullscreenToken:I

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->hideControlsPersistent(I)V

    .line 459
    const/4 v2, -0x1

    iput v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mFullscreenToken:I

    .line 462
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->getSizingFlags()I

    move-result v2

    .line 463
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_4

    .line 464
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->showControlsPersistent()I

    move-result v3

    iput v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mFullscreenToken:I

    .line 468
    :cond_4
    if-ne v2, v0, :cond_6

    :goto_0
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->setTopControlsPermamentlyHidden(Z)V

    .line 472
    :cond_5
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->propagateViewportToActiveLayout()V

    .line 473
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->time()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p2}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->show(JZ)V

    .line 474
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->shouldDisplayContentOverlay()Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;->setContentOverlayVisibility(Z)V

    .line 475
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mHost:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;->requestRender()V

    .line 478
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->mSceneChangeObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/SceneChangeObserver;

    .line 479
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/compositor/layouts/SceneChangeObserver;->onSceneChange(Lorg/chromium/chrome/browser/compositor/layouts/Layout;)V

    goto :goto_1

    .line 468
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 481
    :cond_7
    return-void
.end method
