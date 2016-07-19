.class public Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;
.super Landroid/widget/FrameLayout;
.source "CompositorViewHolder.java"

# interfaces
.implements Lorg/chromium/chrome/browser/compositor/Invalidator$Host;
.implements Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;
.implements Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;
.implements Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$FullscreenListener;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sCachedCVCList:Ljava/util/List;

.field private static sCachedViewList:Ljava/util/List;


# instance fields
.field private mAccessibilityView:Landroid/view/View;

.field private final mCacheViewport:Landroid/graphics/Rect;

.field private final mCacheVisibleViewport:Landroid/graphics/Rect;

.field private mCompositorView:Lorg/chromium/chrome/browser/compositor/CompositorView;

.field private mContentOverlayVisiblity:Z

.field private mControlContainer:Lorg/chromium/chrome/browser/widget/ControlContainer;

.field private mEnableCompositorTabStrip:Z

.field private mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

.field private mFullscreenTouchEvent:Z

.field private mHasDrawnOnce:Z

.field private final mInvalidator:Lorg/chromium/chrome/browser/compositor/Invalidator;

.field private mIsKeyboardShowing:Z

.field private mLastContentOffset:F

.field private mLastVisibleContentOffset:F

.field private mLayerTitleCache:Lorg/chromium/chrome/browser/compositor/LayerTitleCache;

.field private mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

.field private mNodeProvider:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;

.field private final mPendingInvalidations:Ljava/util/ArrayList;

.field private mPendingSwapBuffersCount:I

.field private mPostHideKeyboardTask:Ljava/lang/Runnable;

.field private mProgressBarDrawingInfo:Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;

.field private mSkipInvalidation:Z

.field private mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

.field private mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

.field private mTabVisible:Lorg/chromium/chrome/browser/tab/Tab;

.field private mUrlBar:Landroid/view/View;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-class v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->$assertionsDisabled:Z

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->sCachedViewList:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->sCachedCVCList:Ljava/util/List;

    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 176
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 78
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mIsKeyboardShowing:Z

    .line 80
    new-instance v0, Lorg/chromium/chrome/browser/compositor/Invalidator;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/compositor/Invalidator;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mInvalidator:Lorg/chromium/chrome/browser/compositor/Invalidator;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mContentOverlayVisiblity:Z

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mPendingInvalidations:Ljava/util/ArrayList;

    .line 91
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mSkipInvalidation:Z

    .line 102
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mFullscreenTouchEvent:Z

    .line 103
    iput v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLastContentOffset:F

    .line 104
    iput v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLastVisibleContentOffset:F

    .line 119
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mCacheViewport:Landroid/graphics/Rect;

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mCacheVisibleViewport:Landroid/graphics/Rect;

    .line 124
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mHasDrawnOnce:Z

    .line 178
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->internalInit()V

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 187
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mIsKeyboardShowing:Z

    .line 80
    new-instance v0, Lorg/chromium/chrome/browser/compositor/Invalidator;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/compositor/Invalidator;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mInvalidator:Lorg/chromium/chrome/browser/compositor/Invalidator;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mContentOverlayVisiblity:Z

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mPendingInvalidations:Ljava/util/ArrayList;

    .line 91
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mSkipInvalidation:Z

    .line 102
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mFullscreenTouchEvent:Z

    .line 103
    iput v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLastContentOffset:F

    .line 104
    iput v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLastVisibleContentOffset:F

    .line 119
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mCacheViewport:Landroid/graphics/Rect;

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mCacheVisibleViewport:Landroid/graphics/Rect;

    .line 124
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mHasDrawnOnce:Z

    .line 189
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->internalInit()V

    .line 190
    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;II)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->propagateViewportToLayouts(II)V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mPostHideKeyboardTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$302(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mPostHideKeyboardTask:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->initializeTab(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;)Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    return-object v0
.end method

.method private adjustPhysicalBackingSize(Lorg/chromium/content/browser/ContentViewCore;II)V
    .locals 3

    .prologue
    .line 921
    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    .line 923
    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewClient;->getDesiredWidthMeasureSpec()I

    move-result v1

    .line 924
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 925
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 928
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewClient;->getDesiredHeightMeasureSpec()I

    move-result v0

    .line 929
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 930
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    .line 933
    :cond_1
    invoke-virtual {p1, p2, p3}, Lorg/chromium/content/browser/ContentViewCore;->onPhysicalBackingSizeChanged(II)V

    .line 934
    return-void
.end method

.method private flushInvalidation()V
    .locals 2

    .prologue
    .line 972
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mPendingInvalidations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    :goto_0
    return-void

    .line 973
    :cond_0
    const-string/jumbo v0, "CompositorViewHolder.flushInvalidation"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->instant(Ljava/lang/String;)V

    .line 974
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mPendingInvalidations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 975
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mPendingInvalidations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/Invalidator$Client;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/Invalidator$Client;->doInvalidate()V

    .line 974
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 977
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mPendingInvalidations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private initializeContentViewCore(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 900
    invoke-virtual {p1, v0, v0}, Lorg/chromium/content/browser/ContentViewCore;->setCurrentMotionEventOffsets(FF)V

    .line 901
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->getTopControlsHeightPixels()I

    move-result v0

    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->doTopControlsShrinkBlinkSize()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->setTopControlsHeight(IZ)V

    .line 904
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mCompositorView:Lorg/chromium/chrome/browser/compositor/CompositorView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mCompositorView:Lorg/chromium/chrome/browser/compositor/CompositorView;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/CompositorView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->adjustPhysicalBackingSize(Lorg/chromium/content/browser/ContentViewCore;II)V

    .line 906
    return-void
.end method

.method private initializeTab(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 869
    sget-object v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->sCachedCVCList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 870
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    sget-object v1, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->sCachedCVCList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->getAllContentViewCores(Ljava/util/List;)V

    :cond_0
    move v1, v2

    .line 874
    :goto_0
    sget-object v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->sCachedCVCList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 875
    sget-object v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->sCachedCVCList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ContentViewCore;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->initializeContentViewCore(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 874
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 877
    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->sCachedCVCList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 879
    sget-object v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->sCachedViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 880
    sget-object v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->sCachedViewList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/tab/Tab;->getAllContentViews(Ljava/util/List;)V

    .line 882
    :goto_1
    sget-object v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->sCachedViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 883
    sget-object v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->sCachedViewList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 888
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isNativePage()Z

    move-result v1

    if-nez v1, :cond_3

    .line 889
    :cond_2
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->setSizeOfUnattachedView(Landroid/view/View;)Z

    .line 882
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 891
    :cond_4
    sget-object v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->sCachedViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 892
    return-void
.end method

.method private internalInit()V
    .locals 4

    .prologue
    .line 193
    new-instance v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$1;-><init>(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

    .line 206
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mEnableCompositorTabStrip:Z

    .line 208
    new-instance v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$2;-><init>(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;)V

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 226
    new-instance v0, Lorg/chromium/chrome/browser/compositor/CompositorView;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/chromium/chrome/browser/compositor/CompositorView;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mCompositorView:Lorg/chromium/chrome/browser/compositor/CompositorView;

    .line 227
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mCompositorView:Lorg/chromium/chrome/browser/compositor/CompositorView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    return-void
.end method

.method private propagateViewportToLayouts(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 488
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->getTopControlsHeightPixels()I

    move-result v0

    sub-int v0, p2, v0

    .line 489
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mCacheViewport:Landroid/graphics/Rect;

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLastContentOffset:F

    float-to-int v2, v2

    invoke-virtual {v1, v3, v2, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 490
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mCacheVisibleViewport:Landroid/graphics/Rect;

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLastVisibleContentOffset:F

    float-to-int v2, v2

    invoke-virtual {v1, v3, v2, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 492
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mTabVisible:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mTabVisible:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 493
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mTabVisible:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mCacheViewport:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mCacheViewport:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Lorg/chromium/content/browser/ContentViewCore;->setSmartClipOffsets(II)V

    .line 496
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    if-eqz v1, :cond_1

    .line 497
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mCacheViewport:Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mCacheVisibleViewport:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->pushNewViewport(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 500
    :cond_1
    return-void
.end method

.method private setContentViewMotionEventOffsets(Landroid/view/MotionEvent;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 465
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mTabVisible:Lorg/chromium/chrome/browser/tab/Tab;

    if-nez v0, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mTabVisible:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    .line 468
    if-eqz v1, :cond_0

    .line 470
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 472
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/content/browser/SPenSupport;->isSPenSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 473
    invoke-static {v0}, Lorg/chromium/content/browser/SPenSupport;->convertSPenEventAction(I)I

    move-result v0

    .line 476
    :cond_2
    if-eqz v0, :cond_3

    const/16 v2, 0x9

    if-ne v0, v2, :cond_5

    .line 478
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mCacheViewport:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->getViewportPixel(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 479
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mCacheViewport:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mCacheViewport:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/chromium/content/browser/ContentViewCore;->setCurrentMotionEventOffsets(FF)V

    goto :goto_0

    .line 480
    :cond_5
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    .line 483
    :cond_6
    invoke-virtual {v1, v3, v3}, Lorg/chromium/content/browser/ContentViewCore;->setCurrentMotionEventOffsets(FF)V

    goto :goto_0
.end method

.method private setSizeOfUnattachedView(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 948
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 954
    :cond_0
    :goto_0
    return v0

    .line 949
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->getWidth()I

    move-result v1

    .line 950
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->getHeight()I

    move-result v2

    .line 951
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 953
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 954
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setTab(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 3

    .prologue
    .line 841
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->loadIfNeeded()Z

    .line 843
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getView()Landroid/view/View;

    move-result-object v0

    .line 844
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mView:Landroid/view/View;

    if-ne v1, v0, :cond_3

    .line 861
    :cond_1
    :goto_1
    return-void

    .line 843
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 848
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->updateContentOverlayVisibility(Z)V

    .line 850
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mTabVisible:Lorg/chromium/chrome/browser/tab/Tab;

    if-eq v1, p1, :cond_5

    .line 851
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mTabVisible:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mTabVisible:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/tab/Tab;->removeObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 852
    :cond_4
    if-eqz p1, :cond_5

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-virtual {p1, v1}, Lorg/chromium/chrome/browser/tab/Tab;->addObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 855
    :cond_5
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mTabVisible:Lorg/chromium/chrome/browser/tab/Tab;

    .line 856
    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mView:Landroid/view/View;

    .line 858
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mContentOverlayVisiblity:Z

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->updateContentOverlayVisibility(Z)V

    .line 860
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mTabVisible:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mTabVisible:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->initializeTab(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_1
.end method

.method private updateContentOverlayVisibility(Z)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 759
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 820
    :goto_0
    return-void

    .line 761
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->sCachedCVCList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 762
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    if-eqz v0, :cond_1

    .line 763
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    sget-object v1, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->sCachedCVCList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->getAllContentViewCores(Ljava/util/List;)V

    .line 765
    :cond_1
    if-eqz p1, :cond_9

    .line 766
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_8

    .line 768
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 769
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    move v1, v2

    .line 772
    :goto_1
    sget-object v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->sCachedCVCList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 773
    sget-object v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->sCachedCVCList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ContentViewCore;

    .line 774
    sget-boolean v3, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->isAlive()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 775
    :cond_3
    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 776
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    if-eqz v3, :cond_4

    .line 777
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    invoke-virtual {v3, v0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->updateContentViewViewportSize(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 772
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 781
    :cond_5
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 783
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_6

    .line 784
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 786
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 787
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 788
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 789
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 791
    :cond_6
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mView:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 793
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->setFocusable(Z)V

    .line 794
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->setFocusableInTouchMode(Z)V

    .line 797
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mUrlBar:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mUrlBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 819
    :cond_8
    :goto_2
    sget-object v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->sCachedCVCList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 800
    :cond_9
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_8

    .line 801
    invoke-virtual {p0, v3}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->setFocusable(Z)V

    .line 802
    invoke-virtual {p0, v3}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->setFocusableInTouchMode(Z)V

    move v1, v2

    .line 804
    :goto_3
    sget-object v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->sCachedCVCList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_b

    .line 805
    sget-object v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->sCachedCVCList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ContentViewCore;

    .line 806
    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 804
    :cond_a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 809
    :cond_b
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 810
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 812
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 813
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    .line 816
    :cond_c
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->removeView(Landroid/view/View;)V

    goto :goto_2
.end method


# virtual methods
.method public areTopControlsPermanentlyHidden()Z
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->areTopControlsPermanentlyHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 611
    return-void
.end method

.method public deferInvalidate(Lorg/chromium/chrome/browser/compositor/Invalidator$Client;)V
    .locals 1

    .prologue
    .line 964
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mPendingSwapBuffersCount:I

    if-gtz v0, :cond_1

    .line 965
    invoke-interface {p1}, Lorg/chromium/chrome/browser/compositor/Invalidator$Client;->doInvalidate()V

    .line 969
    :cond_0
    :goto_0
    return-void

    .line 966
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mPendingInvalidations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 967
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mPendingInvalidations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mNodeProvider:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mNodeProvider:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    const/4 v0, 0x1

    .line 377
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getContentOffsetProvider()Lorg/chromium/chrome/browser/compositor/layouts/content/ContentOffsetProvider;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mCompositorView:Lorg/chromium/chrome/browser/compositor/CompositorView;

    return-object v0
.end method

.method public getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    return-object v0
.end method

.method public getInvalidator()Lorg/chromium/chrome/browser/compositor/Invalidator;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mInvalidator:Lorg/chromium/chrome/browser/compositor/Invalidator;

    return-object v0
.end method

.method public getLayoutManager()Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    return-object v0
.end method

.method public getLayoutRenderHost()Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;
    .locals 0

    .prologue
    .line 570
    return-object p0
.end method

.method public getLayoutTabsDrawnCount()I
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mCompositorView:Lorg/chromium/chrome/browser/compositor/CompositorView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->getLastLayerCount()I

    move-result v0

    return v0
.end method

.method public getResourceManager()Lorg/chromium/ui/resources/ResourceManager;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mCompositorView:Lorg/chromium/chrome/browser/compositor/CompositorView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->getResourceManager()Lorg/chromium/ui/resources/ResourceManager;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mCompositorView:Lorg/chromium/chrome/browser/compositor/CompositorView;

    return-object v0
.end method

.method public getTitleCache()Lorg/chromium/chrome/browser/compositor/TitleCache;
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayerTitleCache:Lorg/chromium/chrome/browser/compositor/LayerTitleCache;

    return-object v0
.end method

.method public getTopControlsBackgroundColor()I
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mTabVisible:Lorg/chromium/chrome/browser/tab/Tab;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mTabVisible:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getThemeColor()I

    move-result v0

    goto :goto_0
.end method

.method public getTopControlsHeightPixels()I
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->getTopControlsHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTopControlsUrlBarAlpha()F
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mTabVisible:Lorg/chromium/chrome/browser/tab/Tab;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mTabVisible:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-static {v0}, Lorg/chromium/chrome/browser/util/ColorUtils;->getTextBoxAlphaForToolbarBackground(Lorg/chromium/chrome/browser/tab/Tab;)F

    move-result v0

    goto :goto_0
.end method

.method public getVisibleViewport(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 637
    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 638
    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLastVisibleContentOffset:F

    float-to-int v1, v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->getHeight()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 639
    return-object p1
.end method

.method public hideKeyboard(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 710
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mUrlBar:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mUrlBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 711
    :cond_0
    const/4 v0, 0x0

    .line 712
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 713
    invoke-static {p0}, Lorg/chromium/ui/UiUtils;->hideKeyboard(Landroid/view/View;)Z

    move-result v0

    .line 715
    :cond_1
    if-eqz v0, :cond_2

    .line 716
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mPostHideKeyboardTask:Ljava/lang/Runnable;

    .line 720
    :goto_0
    return-void

    .line 718
    :cond_2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public invalidateAccessibilityProvider()V
    .locals 3

    .prologue
    .line 982
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mNodeProvider:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mNodeProvider:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mNodeProvider:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->getFocusedVirtualView()I

    move-result v1

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->sendEventForVirtualView(II)Z

    .line 985
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mNodeProvider:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->invalidateRoot()V

    .line 987
    :cond_0
    return-void
.end method

.method public isTabInteractive()Z
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->isTabInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mContentOverlayVisiblity:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAccessibilityStatusChanged(Z)V
    .locals 2

    .prologue
    .line 997
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mNodeProvider:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;

    if-nez v0, :cond_0

    .line 998
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mAccessibilityView:Landroid/view/View;

    .line 999
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mAccessibilityView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->addView(Landroid/view/View;)V

    .line 1000
    new-instance v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mAccessibilityView:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;-><init>(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;Landroid/view/View;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mNodeProvider:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;

    .line 1001
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mAccessibilityView:Landroid/view/View;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mNodeProvider:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 1003
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mInvalidator:Lorg/chromium/chrome/browser/compositor/Invalidator;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/compositor/Invalidator;->set(Lorg/chromium/chrome/browser/compositor/Invalidator$Host;)V

    .line 675
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 676
    return-void
.end method

.method public onCompositorLayout()V
    .locals 4

    .prologue
    .line 507
    const-string/jumbo v0, "CompositorViewHolder:layout"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    if-eqz v0, :cond_2

    .line 509
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->onUpdate()V

    .line 511
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mControlContainer:Lorg/chromium/chrome/browser/widget/ControlContainer;

    if-eqz v0, :cond_3

    .line 512
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mProgressBarDrawingInfo:Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mProgressBarDrawingInfo:Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;

    .line 513
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mControlContainer:Lorg/chromium/chrome/browser/widget/ControlContainer;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mProgressBarDrawingInfo:Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/widget/ControlContainer;->getProgressBarDrawingInfo(Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;)V

    .line 518
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mCompositorView:Lorg/chromium/chrome/browser/compositor/CompositorView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mProgressBarDrawingInfo:Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/compositor/CompositorView;->finalizeLayers(Lorg/chromium/chrome/browser/compositor/layouts/LayoutProvider;ZLorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;)V

    .line 522
    :cond_2
    const-string/jumbo v0, "CompositorViewHolder:layout"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 523
    return-void

    .line 515
    :cond_3
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mProgressBarDrawingInfo:Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    if-nez v0, :cond_0

    .line 831
    :goto_0
    return-void

    .line 829
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 830
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->setTab(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0
.end method

.method public onContentOffsetChanged(F)V
    .locals 2

    .prologue
    .line 445
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLastContentOffset:F

    .line 446
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->propagateViewportToLayouts(II)V

    .line 447
    return-void
.end method

.method public onContentViewCoreAdded(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 1

    .prologue
    .line 836
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->initializeContentViewCore(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 837
    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->setSizeOfUnattachedView(Landroid/view/View;)Z

    .line 838
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 680
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->destroy()V

    .line 681
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->flushInvalidation()V

    .line 682
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mInvalidator:Lorg/chromium/chrome/browser/compositor/Invalidator;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/Invalidator;->set(Lorg/chromium/chrome/browser/compositor/Invalidator$Host;)V

    .line 683
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 686
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mNodeProvider:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;

    if-eqz v0, :cond_1

    .line 687
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mAccessibilityView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 688
    iput-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mNodeProvider:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;

    .line 689
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mAccessibilityView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->removeView(Landroid/view/View;)V

    .line 690
    iput-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mAccessibilityView:Landroid/view/View;

    .line 692
    :cond_1
    return-void
.end method

.method public onFinishNativeInitialization(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Landroid/view/ViewGroup;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;)V
    .locals 8

    .prologue
    .line 738
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 739
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mCompositorView:Lorg/chromium/chrome/browser/compositor/CompositorView;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/CompositorView;->getResourceManager()Lorg/chromium/ui/resources/ResourceManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/ui/resources/ResourceManager;->getDynamicResourceLoader()Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->init(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Landroid/view/ViewGroup;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V

    .line 742
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    .line 743
    new-instance v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$4;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$4;-><init>(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;)V

    invoke-interface {p1, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;)V

    .line 755
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->onContentChanged()V

    .line 756
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->setContentViewMotionEventOffsets(Landroid/view/MotionEvent;Z)V

    .line 367
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 339
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 341
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    if-nez v2, :cond_0

    .line 352
    :goto_0
    return v0

    .line 343
    :cond_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mFullscreenTouchEvent:Z

    .line 344
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    invoke-virtual {v2, p1}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->onInterceptMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mEnableCompositorTabStrip:Z

    if-nez v2, :cond_1

    .line 347
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mFullscreenTouchEvent:Z

    move v0, v1

    .line 348
    goto :goto_0

    .line 351
    :cond_1
    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->setContentViewMotionEventOffsets(Landroid/view/MotionEvent;Z)V

    .line 352
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mIsKeyboardShowing:Z

    invoke-virtual {v0, p1, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->onInterceptTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 598
    if-eqz p1, :cond_0

    .line 599
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->propagateViewportToLayouts(II)V

    .line 601
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 603
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->invalidateAccessibilityProvider()V

    .line 604
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    .line 592
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 593
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/chromium/ui/UiUtils;->isKeyboardShowing(Landroid/content/Context;Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mIsKeyboardShowing:Z

    .line 594
    return-void
.end method

.method public onNativeLibraryReady(Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)V
    .locals 3

    .prologue
    .line 286
    sget-boolean v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayerTitleCache:Lorg/chromium/chrome/browser/compositor/LayerTitleCache;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Should be called once"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 288
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->enableLayerDecorationCache()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    new-instance v0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayerTitleCache:Lorg/chromium/chrome/browser/compositor/LayerTitleCache;

    .line 292
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mCompositorView:Lorg/chromium/chrome/browser/compositor/CompositorView;

    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayerTitleCache:Lorg/chromium/chrome/browser/compositor/LayerTitleCache;

    invoke-virtual {v0, v1, p1, v2, p2}, Lorg/chromium/chrome/browser/compositor/CompositorView;->initNativeCompositor(ZLorg/chromium/ui/base/WindowAndroid;Lorg/chromium/chrome/browser/compositor/LayerTitleCache;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)V

    .line 295
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayerTitleCache:Lorg/chromium/chrome/browser/compositor/LayerTitleCache;

    if-eqz v0, :cond_2

    .line 296
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayerTitleCache:Lorg/chromium/chrome/browser/compositor/LayerTitleCache;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->getResourceManager()Lorg/chromium/ui/resources/ResourceManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->setResourceManager(Lorg/chromium/ui/resources/ResourceManager;)V

    .line 299
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mControlContainer:Lorg/chromium/chrome/browser/widget/ControlContainer;

    if-eqz v0, :cond_3

    .line 300
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mCompositorView:Lorg/chromium/chrome/browser/compositor/CompositorView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->getResourceManager()Lorg/chromium/ui/resources/ResourceManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/resources/ResourceManager;->getDynamicResourceLoader()Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$id;->control_container:I

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mControlContainer:Lorg/chromium/chrome/browser/widget/ControlContainer;

    invoke-interface {v2}, Lorg/chromium/chrome/browser/widget/ControlContainer;->getToolbarResourceAdapter()Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;->registerResource(ILorg/chromium/ui/resources/dynamics/DynamicResource;)V

    .line 303
    :cond_3
    return-void
.end method

.method public onPhysicalBackingSizeChanged(II)V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    if-nez v0, :cond_0

    .line 422
    :goto_0
    return-void

    .line 415
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->sCachedCVCList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 416
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    sget-object v1, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->sCachedCVCList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->getAllContentViewCores(Ljava/util/List;)V

    .line 418
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    sget-object v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->sCachedCVCList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 419
    sget-object v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->sCachedCVCList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ContentViewCore;

    invoke-direct {p0, v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->adjustPhysicalBackingSize(Lorg/chromium/content/browser/ContentViewCore;II)V

    .line 418
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 421
    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->sCachedCVCList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 396
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 397
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    if-nez v1, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    sget-object v1, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->sCachedViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 400
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v1

    sget-object v2, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->sCachedViewList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->getAllViews(Ljava/util/List;)V

    move v1, v0

    move v2, v0

    .line 403
    :goto_1
    sget-object v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->sCachedViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 404
    sget-object v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->sCachedViewList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->setSizeOfUnattachedView(Landroid/view/View;)Z

    move-result v0

    or-int/2addr v2, v0

    .line 403
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 406
    :cond_2
    sget-object v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->sCachedViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 408
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->requestRender()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->getContentOffset()F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLastContentOffset:F

    .line 430
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->getVisibleContentOffset()F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLastVisibleContentOffset:F

    .line 431
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->addListener(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$FullscreenListener;)V

    .line 433
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->requestRender()V

    .line 434
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->removeListener(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$FullscreenListener;)V

    .line 441
    :cond_0
    return-void
.end method

.method public onSurfaceCreated()V
    .locals 1

    .prologue
    .line 532
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mPendingSwapBuffersCount:I

    .line 533
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->flushInvalidation()V

    .line 534
    return-void
.end method

.method public onSwapBuffersCompleted(I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 538
    const-string/jumbo v0, "onSwapBuffersCompleted"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->instant(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mControlContainer:Lorg/chromium/chrome/browser/widget/ControlContainer;

    check-cast v0, Landroid/view/ViewGroup;

    .line 543
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mHasDrawnOnce:Z

    if-eqz v2, :cond_0

    .line 544
    new-instance v2, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$3;

    invoke-direct {v2, p0, v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$3;-><init>(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->post(Ljava/lang/Runnable;)Z

    .line 552
    :cond_0
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mHasDrawnOnce:Z

    .line 554
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mPendingSwapBuffersCount:I

    .line 556
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mSkipInvalidation:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->flushInvalidation()V

    .line 557
    :cond_2
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mSkipInvalidation:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mSkipInvalidation:Z

    .line 558
    return-void

    .line 557
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onToggleOverlayVideoMode(Z)V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mCompositorView:Lorg/chromium/chrome/browser/compositor/CompositorView;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mCompositorView:Lorg/chromium/chrome/browser/compositor/CompositorView;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/CompositorView;->setOverlayVideoMode(Z)V

    .line 461
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 357
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 358
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mFullscreenTouchEvent:Z

    if-eqz v0, :cond_1

    .line 361
    :goto_0
    return v1

    .line 359
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 360
    :goto_1
    invoke-direct {p0, p1, v1}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->setContentViewMotionEventOffsets(Landroid/view/MotionEvent;Z)V

    move v1, v0

    .line 361
    goto :goto_0

    .line 359
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onVisibleContentOffsetChanged(F)V
    .locals 2

    .prologue
    .line 451
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLastVisibleContentOffset:F

    .line 452
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->propagateViewportToLayouts(II)V

    .line 453
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->requestRender()V

    .line 454
    return-void
.end method

.method public prepareForTabReparenting()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mCompositorView:Lorg/chromium/chrome/browser/compositor/CompositorView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/CompositorView;->setBackgroundColor(I)V

    .line 312
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mCompositorView:Lorg/chromium/chrome/browser/compositor/CompositorView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->requestRender()V

    .line 528
    return-void
.end method

.method public resetFlags()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mCompositorView:Lorg/chromium/chrome/browser/compositor/CompositorView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->resetFlags()V

    .line 270
    return-void
.end method

.method public setContentOverlayVisibility(Z)V
    .locals 1

    .prologue
    .line 562
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mContentOverlayVisiblity:Z

    if-eq p1, v0, :cond_0

    .line 563
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mContentOverlayVisiblity:Z

    .line 564
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mContentOverlayVisiblity:Z

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->updateContentOverlayVisibility(Z)V

    .line 566
    :cond_0
    return-void
.end method

.method public setControlContainer(Lorg/chromium/chrome/browser/widget/ControlContainer;)V
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mCompositorView:Lorg/chromium/chrome/browser/compositor/CompositorView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->getResourceManager()Lorg/chromium/ui/resources/ResourceManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mCompositorView:Lorg/chromium/chrome/browser/compositor/CompositorView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->getResourceManager()Lorg/chromium/ui/resources/ResourceManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/resources/ResourceManager;->getDynamicResourceLoader()Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    move-result-object v0

    .line 254
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mControlContainer:Lorg/chromium/chrome/browser/widget/ControlContainer;

    if-eqz v1, :cond_0

    .line 255
    sget v1, Lorg/chromium/chrome/R$id;->control_container:I

    invoke-virtual {v0, v1}, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;->unregisterResource(I)V

    .line 257
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mControlContainer:Lorg/chromium/chrome/browser/widget/ControlContainer;

    .line 258
    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mControlContainer:Lorg/chromium/chrome/browser/widget/ControlContainer;

    if-eqz v1, :cond_1

    .line 259
    sget v1, Lorg/chromium/chrome/R$id;->control_container:I

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mControlContainer:Lorg/chromium/chrome/browser/widget/ControlContainer;

    invoke-interface {v2}, Lorg/chromium/chrome/browser/widget/ControlContainer;->getToolbarResourceAdapter()Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;->registerResource(ILorg/chromium/ui/resources/dynamics/DynamicResource;)V

    .line 262
    :cond_1
    return-void

    .line 251
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFullscreenHandler(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)V
    .locals 2

    .prologue
    .line 623
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    .line 624
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->getContentOffset()F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLastContentOffset:F

    .line 626
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->getVisibleContentOffset()F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLastVisibleContentOffset:F

    .line 627
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->addListener(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$FullscreenListener;)V

    .line 629
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->propagateViewportToLayouts(II)V

    .line 630
    return-void
.end method

.method public setLayoutManager(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;)V
    .locals 2

    .prologue
    .line 236
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    .line 237
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->propagateViewportToLayouts(II)V

    .line 238
    return-void
.end method

.method public setRootView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mCompositorView:Lorg/chromium/chrome/browser/compositor/CompositorView;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/CompositorView;->setRootView(Landroid/view/View;)V

    .line 245
    return-void
.end method

.method public setUrlBar(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 669
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mUrlBar:Landroid/view/View;

    .line 670
    return-void
.end method

.method public shutDown()V
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->setTab(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 277
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayerTitleCache:Lorg/chromium/chrome/browser/compositor/LayerTitleCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayerTitleCache:Lorg/chromium/chrome/browser/compositor/LayerTitleCache;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->shutDown()V

    .line 278
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mCompositorView:Lorg/chromium/chrome/browser/compositor/CompositorView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->shutDown()V

    .line 279
    return-void
.end method
