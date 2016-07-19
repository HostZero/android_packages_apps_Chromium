.class public Lorg/chromium/content/browser/ContentViewCore;
.super Ljava/lang/Object;
.source "ContentViewCore.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
.implements Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationObserver;
.implements Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final INVALID_RENDER_PROCESS_PID:I

.field private static final NO_OP_ZOOM_CONTROLS_DELEGATE:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

.field private mActionMode:Lorg/chromium/content/browser/WebActionMode;

.field private mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

.field private mContainerView:Landroid/view/ViewGroup;

.field private mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

.field private final mContainerViewObservers:Lorg/chromium/base/ObserverList;

.field private mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

.field private final mContext:Landroid/content/Context;

.field private mContextualSearchClient:Lorg/chromium/content/browser/ContextualSearchClient;

.field private mCurrentTouchOffsetX:F

.field private mCurrentTouchOffsetY:F

.field private mDownloadDelegate:Lorg/chromium/content/browser/ContentViewDownloadDelegate;

.field private mDraggingSelection:Z

.field private mEnableTouchHover:Ljava/lang/Boolean;

.field private mFakeMouseMoveRunnable:Ljava/lang/Runnable;

.field private mFloatingActionModeCreationFailed:Z

.field private final mFocusPreOSKViewportRect:Landroid/graphics/Rect;

.field private mFocusedNodeEditable:Z

.field private mFocusedNodeIsPassword:Z

.field private mFullscreenRequiredForOrientationLock:Z

.field private final mGestureStateListeners:Lorg/chromium/base/ObserverList;

.field private final mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

.field private mHasInsertion:Z

.field private mHasSelection:Z

.field private mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

.field private mIsMobileOptimizedHint:Z

.field private final mJavaScriptInterfaces:Ljava/util/Map;

.field private final mJoystickScrollProvider:Lorg/chromium/content/browser/input/JoystickScrollProvider;

.field private mJoystickZoomProvider:Lorg/chromium/content/browser/input/JoystickZoomProvider;

.field private mLastFocalEventX:F

.field private mLastFocalEventY:F

.field private mLastSelectedText:Ljava/lang/String;

.field private mNativeAccessibilityAllowed:Z

.field private mNativeAccessibilityEnabled:Z

.field private mNativeContentViewCore:J

.field private mNativeSelectPopupSourceFrame:J

.field private mOverscrollRefreshHandler:Lorg/chromium/content/browser/OverscrollRefreshHandler;

.field private mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

.field private mPhysicalBackingHeightPix:I

.field private mPhysicalBackingWidthPix:I

.field private mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

.field private mPotentiallyActiveFlingCount:I

.field private mPreserveSelectionOnNextLossOfFocus:Z

.field private final mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

.field private final mRetainedJavaScriptObjects:Ljava/util/HashSet;

.field private mSelectPopup:Lorg/chromium/content/browser/input/SelectPopup;

.field private final mSelectionRect:Landroid/graphics/Rect;

.field private mShouldSetAccessibilityFocusOnPageLoad:Z

.field private mShowKeyboardResultReceiver:Lorg/chromium/content/browser/ContentViewCore$ShowKeyboardResultReceiver;

.field private mSmartClipDataListener:Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;

.field private mSmartClipOffsetX:I

.field private mSmartClipOffsetY:I

.field private final mSystemCaptioningBridge:Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge;

.field private mTopControlsHeightPix:I

.field private mTopControlsShrinkBlinkSize:Z

.field private mTouchExplorationEnabled:Z

.field private mTouchScrollInProgress:Z

.field private mUnselectAllOnActionModeDismiss:Z

.field private mViewAndroidDelegate:Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;

.field private mViewportHeightPix:I

.field private mViewportWidthPix:I

.field private mWasPastePopupShowingOnInsertionDragStart:Z

.field private mWebContents:Lorg/chromium/content_public/browser/WebContents;

.field private mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

.field private mWheelScrollFactorInPixels:F

.field private mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const-class v0, Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    .line 112
    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$1;

    invoke-direct {v0}, Lorg/chromium/content/browser/ContentViewCore$1;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/ContentViewCore;->NO_OP_ZOOM_CONTROLS_DELEGATE:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    return-void

    .line 103
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mJavaScriptInterfaces:Ljava/util/Map;

    .line 143
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRetainedJavaScriptObjects:Ljava/util/HashSet;

    .line 475
    iput-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    .line 483
    iput-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeSelectPopupSourceFrame:J

    .line 487
    iput-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFakeMouseMoveRunnable:Ljava/lang/Runnable;

    .line 529
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionRect:Landroid/graphics/Rect;

    .line 561
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;

    .line 580
    iput-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipDataListener:Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;

    .line 600
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFullscreenRequiredForOrientationLock:Z

    .line 631
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    .line 632
    new-instance v0, Lorg/chromium/content/browser/RenderCoordinates;

    invoke-direct {v0}, Lorg/chromium/content/browser/RenderCoordinates;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    .line 633
    new-instance v0, Lorg/chromium/content/browser/input/JoystickScrollProvider;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/JoystickScrollProvider;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mJoystickScrollProvider:Lorg/chromium/content/browser/input/JoystickScrollProvider;

    .line 634
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 635
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v1

    const-string/jumbo v2, "force-device-scale-factor"

    invoke-virtual {v1, v2}, Lorg/chromium/base/CommandLine;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 637
    if-eqz v1, :cond_0

    .line 638
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 640
    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/RenderCoordinates;->setDeviceScaleFactor(F)V

    .line 641
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 643
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningBridgeFactory;->getSystemCaptioningBridge(Landroid/content/Context;)Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSystemCaptioningBridge:Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge;

    .line 644
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListeners:Lorg/chromium/base/ObserverList;

    .line 645
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->rewindableIterator()Lorg/chromium/base/ObserverList$RewindableIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    .line 647
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewObservers:Lorg/chromium/base/ObserverList;

    .line 648
    return-void
.end method

.method static synthetic access$1000(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->dismissTextHandles()V

    return-void
.end method

.method static synthetic access$1100(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content_public/browser/WebContents;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/chromium/content/browser/ContentViewCore;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/chromium/content/browser/ContentViewCore;)J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    return-wide v0
.end method

.method static synthetic access$1500(Lorg/chromium/content/browser/ContentViewCore;JJFF)V
    .locals 1

    .prologue
    .line 104
    invoke-direct/range {p0 .. p6}, Lorg/chromium/content/browser/ContentViewCore;->nativeSingleTap(JJFF)V

    return-void
.end method

.method static synthetic access$1600(Lorg/chromium/content/browser/ContentViewCore;JJFF)V
    .locals 1

    .prologue
    .line 104
    invoke-direct/range {p0 .. p6}, Lorg/chromium/content/browser/ContentViewCore;->nativeLongPress(JJFF)V

    return-void
.end method

.method static synthetic access$1800(Lorg/chromium/content/browser/ContentViewCore;)Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeIsPassword:Z

    return v0
.end method

.method static synthetic access$1900(Lorg/chromium/content/browser/ContentViewCore;)Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasInsertion:Z

    return v0
.end method

.method static synthetic access$2002(Lorg/chromium/content/browser/ContentViewCore;Lorg/chromium/content/browser/WebActionMode;)Lorg/chromium/content/browser/WebActionMode;
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/chromium/content/browser/ContentViewCore;)Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mUnselectAllOnActionModeDismiss:Z

    return v0
.end method

.method static synthetic access$2200(Lorg/chromium/content/browser/ContentViewCore;)Z
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->supportsFloatingActionMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lorg/chromium/content/browser/ContentViewCore;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/RenderCoordinates;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/chromium/content/browser/ContentViewCore;Landroid/view/ViewStructure;Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;II)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/content/browser/ContentViewCore;->createVirtualStructure(Landroid/view/ViewStructure;Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;II)V

    return-void
.end method

.method static synthetic access$402(Lorg/chromium/content/browser/ContentViewCore;Z)Z
    .locals 0

    .prologue
    .line 104
    iput-boolean p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mIsMobileOptimizedHint:Z

    return p1
.end method

.method static synthetic access$500(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopupsAndClearSelection()V

    return-void
.end method

.method static synthetic access$600(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->resetScrollInProgress()V

    return-void
.end method

.method static synthetic access$700(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/input/ImeAdapter;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/PopupZoomer;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    return-object v0
.end method

.method static synthetic access$900(Lorg/chromium/content/browser/ContentViewCore;)Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeEditable:Z

    return v0
.end method

.method private canPaste()Z
    .locals 2

    .prologue
    .line 2668
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    return v0
.end method

.method private cancelRequestToScrollFocusedEditableNodeIntoView()V
    .locals 1

    .prologue
    .line 1621
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1622
    return-void
.end method

.method private createImeAdapter()Lorg/chromium/content/browser/input/ImeAdapter;
    .locals 3

    .prologue
    .line 726
    new-instance v0, Lorg/chromium/content/browser/input/ImeAdapter;

    new-instance v1, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;-><init>(Landroid/content/Context;)V

    new-instance v2, Lorg/chromium/content/browser/ContentViewCore$2;

    invoke-direct {v2, p0}, Lorg/chromium/content/browser/ContentViewCore$2;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    invoke-direct {v0, v1, v2}, Lorg/chromium/content/browser/input/ImeAdapter;-><init>(Lorg/chromium/content/browser/input/InputMethodManagerWrapper;Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;)V

    return-object v0
.end method

.method private createMotionEventSynthesizer()Lorg/chromium/content/browser/MotionEventSynthesizer;
    .locals 1

    .prologue
    .line 2563
    new-instance v0, Lorg/chromium/content/browser/MotionEventSynthesizer;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/MotionEventSynthesizer;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    return-object v0
.end method

.method private createOffsetMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 3

    .prologue
    .line 1792
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1793
    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mCurrentTouchOffsetX:F

    iget v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mCurrentTouchOffsetY:F

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1794
    return-object v0
.end method

.method private static createRect(IIII)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 3168
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private createVirtualStructure(Landroid/view/ViewStructure;Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;II)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 3055
    iget-object v0, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->className:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    .line 3056
    iget-boolean v0, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->hasSelection:Z

    if-eqz v0, :cond_1

    .line 3057
    iget-object v0, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->text:Ljava/lang/String;

    iget v1, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->startSelection:I

    iget v2, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->endSelection:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;II)V

    .line 3061
    :goto_0
    iget v0, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->x:I

    sub-int/2addr v0, p3

    iget v1, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->scrollX:I

    sub-int v1, v0, v1

    iget v0, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->y:I

    sub-int v2, v0, p4

    iget v4, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->scrollY:I

    iget v5, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->width:I

    iget v6, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->height:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/view/ViewStructure;->setDimens(IIIIII)V

    .line 3063
    iget-object v0, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setChildCount(I)V

    .line 3064
    iget-boolean v0, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->hasStyle:Z

    if-eqz v0, :cond_0

    .line 3065
    iget-boolean v0, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->bold:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget-boolean v1, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->italic:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    :goto_2
    or-int/2addr v1, v0

    iget-boolean v0, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->underline:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    :goto_3
    or-int/2addr v1, v0

    iget-boolean v0, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->lineThrough:Z

    if-eqz v0, :cond_5

    const/16 v0, 0x8

    :goto_4
    or-int/2addr v0, v1

    .line 3069
    iget v1, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->textSize:F

    iget v2, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->color:I

    iget v4, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->bgcolor:I

    invoke-virtual {p1, v1, v2, v4, v0}, Landroid/view/ViewStructure;->setTextStyle(FIII)V

    .line 3071
    :cond_0
    :goto_5
    iget-object v0, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    .line 3072
    invoke-virtual {p1, v3}, Landroid/view/ViewStructure;->asyncNewChild(I)Landroid/view/ViewStructure;

    move-result-object v1

    iget-object v0, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;

    iget v2, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->x:I

    iget v4, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->y:I

    invoke-direct {p0, v1, v0, v2, v4}, Lorg/chromium/content/browser/ContentViewCore;->createVirtualStructure(Landroid/view/ViewStructure;Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;II)V

    .line 3071
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 3059
    :cond_1
    iget-object v0, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move v0, v3

    .line 3065
    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    move v0, v3

    goto :goto_3

    :cond_5
    move v0, v3

    goto :goto_4

    .line 3075
    :cond_6
    invoke-virtual {p1}, Landroid/view/ViewStructure;->asyncCommit()V

    .line 3076
    return-void
.end method

.method private dismissTextHandles()V
    .locals 4

    .prologue
    .line 2357
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeDismissTextHandles(J)V

    .line 2358
    :cond_0
    return-void
.end method

.method private filterTapOrPressEvent(III)Z
    .locals 2

    .prologue
    .line 1344
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->offerLongPressToEmbedder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1345
    const/4 v0, 0x1

    .line 1348
    :goto_0
    return v0

    .line 1347
    :cond_0
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-direct {p0, p1, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->updateForTapOrPress(IFF)V

    .line 1348
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private forceUpdateImeAdapter(J)V
    .locals 1

    .prologue
    .line 2488
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->attach(J)V

    .line 2489
    return-void
.end method

.method public static fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/ContentViewCore;
    .locals 1

    .prologue
    .line 621
    invoke-static {p0}, Lorg/chromium/content/browser/ContentViewCore;->nativeFromWebContentsAndroid(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    return-object v0
.end method

.method private getPastePopup()Lorg/chromium/content/browser/input/PastePopupMenu;
    .locals 3

    .prologue
    .line 2645
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    if-nez v0, :cond_0

    .line 2646
    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$7;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/ContentViewCore$7;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 2658
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->supportsFloatingActionMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2659
    new-instance v1, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;-><init>(Landroid/view/View;Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;)V

    iput-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    .line 2664
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    return-object v0

    .line 2661
    :cond_1
    new-instance v1, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;-><init>(Landroid/view/View;Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;)V

    iput-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    goto :goto_0
.end method

.method private getPhysicalBackingHeightPix()I
    .locals 1

    .prologue
    .line 1076
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPhysicalBackingHeightPix:I

    return v0
.end method

.method private getPhysicalBackingWidthPix()I
    .locals 1

    .prologue
    .line 1068
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPhysicalBackingWidthPix:I

    return v0
.end method

.method private getWheelScrollFactorInPixels()F
    .locals 4

    .prologue
    .line 3249
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWheelScrollFactorInPixels:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 3250
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 3253
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3255
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWheelScrollFactorInPixels:F

    .line 3262
    :cond_0
    :goto_0
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWheelScrollFactorInPixels:F

    return v0

    .line 3259
    :cond_1
    const/high16 v0, 0x42800000    # 64.0f

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getDeviceScaleFactor()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWheelScrollFactorInPixels:F

    goto :goto_0
.end method

.method private hasFocus()Z
    .locals 1

    .prologue
    .line 2696
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2697
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    goto :goto_0
.end method

.method private hidePastePopup()V
    .locals 1

    .prologue
    .line 2641
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/PastePopupMenu;->hide()V

    .line 2642
    :cond_0
    return-void
.end method

.method private hidePopups()V
    .locals 2

    .prologue
    .line 1465
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->hideSelectActionMode()V

    .line 1466
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePastePopup()V

    .line 1467
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hideSelectPopup()V

    .line 1468
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/PopupZoomer;->hide(Z)V

    .line 1469
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mUnselectAllOnActionModeDismiss:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->dismissTextHandles()V

    .line 1470
    :cond_0
    return-void
.end method

.method private hidePopupsAndClearSelection()V
    .locals 1

    .prologue
    .line 1455
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mUnselectAllOnActionModeDismiss:Z

    .line 1456
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopups()V

    .line 1457
    return-void
.end method

.method private hidePopupsAndPreserveSelection()V
    .locals 1

    .prologue
    .line 1460
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mUnselectAllOnActionModeDismiss:Z

    .line 1461
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopups()V

    .line 1462
    return-void
.end method

.method private hideSelectPopup()V
    .locals 1

    .prologue
    .line 2542
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectPopup:Lorg/chromium/content/browser/input/SelectPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectPopup:Lorg/chromium/content/browser/input/SelectPopup;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/SelectPopup;->hide()V

    .line 2543
    :cond_0
    return-void
.end method

.method private invalidateActionModeContentRect()V
    .locals 1

    .prologue
    .line 2216
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    invoke-virtual {v0}, Lorg/chromium/content/browser/WebActionMode;->invalidateContentRect()V

    .line 2217
    :cond_0
    return-void
.end method

.method private isFullscreenRequiredForOrientationLock()Z
    .locals 1

    .prologue
    .line 3307
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFullscreenRequiredForOrientationLock:Z

    return v0
.end method

.method private static isValidTouchEventActionForNative(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1243
    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 v1, 0x6

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeAddJavascriptInterface(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V
.end method

.method private native nativeDismissTextHandles(J)V
.end method

.method private native nativeDoubleTap(JJFF)V
.end method

.method private native nativeExtractSmartClipData(JIIII)V
.end method

.method private native nativeFlingCancel(JJ)V
.end method

.method private native nativeFlingStart(JJFFFFZ)V
.end method

.method private static native nativeFromWebContentsAndroid(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/ContentViewCore;
.end method

.method private native nativeGetCurrentRenderProcessId(J)I
.end method

.method private native nativeGetJavaWindowAndroid(J)Lorg/chromium/ui/base/WindowAndroid;
.end method

.method private native nativeGetNativeImeAdapter(J)J
.end method

.method private native nativeGetWebContentsAndroid(J)Lorg/chromium/content_public/browser/WebContents;
.end method

.method private native nativeInit(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/ui/base/ViewAndroidDelegate;JLjava/util/HashSet;)J
.end method

.method private native nativeLongPress(JJFF)V
.end method

.method private native nativeOnJavaContentViewCoreDestroyed(J)V
.end method

.method private native nativeOnTouchEvent(JLandroid/view/MotionEvent;JIIIIFFFFIIFFFFFFFFFFIIIIZ)Z
.end method

.method private native nativePinchBegin(JJFF)V
.end method

.method private native nativePinchBy(JJFFF)V
.end method

.method private native nativePinchEnd(JJ)V
.end method

.method private native nativeRemoveJavascriptInterface(JLjava/lang/String;)V
.end method

.method private native nativeResetGestureDetection(J)V
.end method

.method private native nativeScrollBegin(JJFFFFZ)V
.end method

.method private native nativeScrollBy(JJFFFF)V
.end method

.method private native nativeScrollEnd(JJ)V
.end method

.method private native nativeSelectBetweenCoordinates(JFFFF)V
.end method

.method private native nativeSelectPopupMenuItems(JJ[I)V
.end method

.method private native nativeSendMouseMoveEvent(JJFFI)I
.end method

.method private native nativeSendMouseWheelEvent(JJFFFFF)I
.end method

.method private native nativeSendOrientationChangeEvent(JI)V
.end method

.method private native nativeSetAccessibilityEnabled(JZ)V
.end method

.method private native nativeSetAllowJavascriptInterfacesInspection(JZ)V
.end method

.method private native nativeSetBackgroundOpaque(JZ)V
.end method

.method private native nativeSetDoubleTapSupportEnabled(JZ)V
.end method

.method private native nativeSetFocus(JZ)V
.end method

.method private native nativeSetMultiTouchZoomSupportEnabled(JZ)V
.end method

.method private native nativeSetTextHandlesTemporarilyHidden(JZ)V
.end method

.method private native nativeSetTextTrackSettings(JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSingleTap(JJFF)V
.end method

.method private native nativeUpdateWindowAndroid(JJ)V
.end method

.method private native nativeWasResized(J)V
.end method

.method private offerLongPressToEmbedder()Z
    .locals 1

    .prologue
    .line 3229
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->performLongClick()Z

    move-result v0

    return v0
.end method

.method private onBackgroundColorChanged(I)V
    .locals 1

    .prologue
    .line 1036
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewClient;->onBackgroundColorChanged(I)V

    .line 1037
    return-void
.end method

.method private onFlingCancelEventAck()V
    .locals 1

    .prologue
    .line 1279
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->updateGestureStateListener(I)V

    .line 1280
    return-void
.end method

.method private onFlingStartEventConsumed(II)V
    .locals 3

    .prologue
    .line 1267
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPotentiallyActiveFlingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPotentiallyActiveFlingCount:I

    .line 1268
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->setTouchScrollInProgress(Z)V

    .line 1269
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    .line 1270
    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1271
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollOffset()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollExtent()I

    move-result v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/chromium/content_public/browser/GestureStateListener;->onFlingStartGesture(IIII)V

    goto :goto_0

    .line 1274
    :cond_0
    return-void
.end method

.method private onNativeContentViewCoreDestroyed(J)V
    .locals 3

    .prologue
    .line 876
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 877
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    .line 878
    return-void
.end method

.method private onNativeFlingStopped()V
    .locals 1

    .prologue
    .line 3278
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->setTouchScrollInProgress(Z)V

    .line 3279
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPotentiallyActiveFlingCount:I

    if-gtz v0, :cond_0

    .line 3282
    :goto_0
    return-void

    .line 3280
    :cond_0
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPotentiallyActiveFlingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPotentiallyActiveFlingCount:I

    .line 3281
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->updateGestureStateListener(I)V

    goto :goto_0
.end method

.method private onOverscrollRefreshRelease(Z)V
    .locals 1

    .prologue
    .line 2591
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mOverscrollRefreshHandler:Lorg/chromium/content/browser/OverscrollRefreshHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mOverscrollRefreshHandler:Lorg/chromium/content/browser/OverscrollRefreshHandler;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/OverscrollRefreshHandler;->release(Z)V

    .line 2592
    :cond_0
    return-void
.end method

.method private onOverscrollRefreshReset()V
    .locals 1

    .prologue
    .line 2597
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mOverscrollRefreshHandler:Lorg/chromium/content/browser/OverscrollRefreshHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mOverscrollRefreshHandler:Lorg/chromium/content/browser/OverscrollRefreshHandler;

    invoke-interface {v0}, Lorg/chromium/content/browser/OverscrollRefreshHandler;->reset()V

    .line 2598
    :cond_0
    return-void
.end method

.method private onOverscrollRefreshStart()Z
    .locals 1

    .prologue
    .line 2578
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mOverscrollRefreshHandler:Lorg/chromium/content/browser/OverscrollRefreshHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2579
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mOverscrollRefreshHandler:Lorg/chromium/content/browser/OverscrollRefreshHandler;

    invoke-interface {v0}, Lorg/chromium/content/browser/OverscrollRefreshHandler;->start()Z

    move-result v0

    goto :goto_0
.end method

.method private onOverscrollRefreshUpdate(F)V
    .locals 1

    .prologue
    .line 2585
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mOverscrollRefreshHandler:Lorg/chromium/content/browser/OverscrollRefreshHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mOverscrollRefreshHandler:Lorg/chromium/content/browser/OverscrollRefreshHandler;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/OverscrollRefreshHandler;->pull(F)V

    .line 2586
    :cond_0
    return-void
.end method

.method private onPinchBeginEventAck()V
    .locals 1

    .prologue
    .line 1311
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->updateGestureStateListener(I)V

    .line 1312
    return-void
.end method

.method private onPinchEndEventAck()V
    .locals 1

    .prologue
    .line 1317
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->updateGestureStateListener(I)V

    .line 1318
    return-void
.end method

.method private onRenderProcessChange()V
    .locals 1

    .prologue
    .line 2675
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->attachImeAdapter()V

    .line 2677
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSystemCaptioningBridge:Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge;

    invoke-interface {v0, p0}, Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge;->syncToListener(Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;)V

    .line 2678
    return-void
.end method

.method private onScrollBeginEventAck()V
    .locals 1

    .prologue
    .line 1285
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->setTouchScrollInProgress(Z)V

    .line 1286
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePastePopup()V

    .line 1287
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;->invokeZoomPicker()V

    .line 1288
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->updateGestureStateListener(I)V

    .line 1289
    return-void
.end method

.method private onScrollEndEventAck()V
    .locals 1

    .prologue
    .line 1304
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->setTouchScrollInProgress(Z)V

    .line 1305
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->updateGestureStateListener(I)V

    .line 1306
    return-void
.end method

.method private onScrollUpdateGestureConsumed()V
    .locals 1

    .prologue
    .line 1294
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;->invokeZoomPicker()V

    .line 1295
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    .line 1296
    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1297
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/GestureStateListener;->onScrollUpdateGestureConsumed()V

    goto :goto_0

    .line 1299
    :cond_0
    return-void
.end method

.method private onSelectionChanged(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2603
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mLastSelectedText:Ljava/lang/String;

    .line 2604
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContextualSearchClient:Lorg/chromium/content/browser/ContextualSearchClient;

    if-eqz v0, :cond_0

    .line 2605
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContextualSearchClient:Lorg/chromium/content/browser/ContextualSearchClient;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/ContextualSearchClient;->onSelectionChanged(Ljava/lang/String;)V

    .line 2607
    :cond_0
    return-void
.end method

.method private onSelectionEvent(IIIIIII)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2268
    if-ne p4, p6, :cond_0

    add-int/lit8 p6, p6, 0x1

    .line 2269
    :cond_0
    if-ne p5, p7, :cond_1

    add-int/lit8 p7, p7, 0x1

    .line 2270
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 2349
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Invalid selection event type."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2272
    :pswitch_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p4, p5, p6, p7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2273
    iput-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    .line 2274
    iput-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mUnselectAllOnActionModeDismiss:Z

    .line 2277
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    .line 2278
    invoke-direct {p0, v2}, Lorg/chromium/content/browser/ContentViewCore;->showSelectActionMode(Z)V

    .line 2351
    :cond_2
    :goto_0
    :pswitch_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContextualSearchClient:Lorg/chromium/content/browser/ContextualSearchClient;

    if-eqz v0, :cond_3

    .line 2352
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContextualSearchClient:Lorg/chromium/content/browser/ContextualSearchClient;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-interface {v0, p1, v1, v2}, Lorg/chromium/content/browser/ContextualSearchClient;->onSelectionEvent(IFF)V

    .line 2354
    :cond_3
    return-void

    .line 2282
    :pswitch_2
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p4, p5, p6, p7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2283
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->invalidateActionModeContentRect()V

    goto :goto_0

    .line 2287
    :pswitch_3
    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    .line 2288
    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mDraggingSelection:Z

    .line 2289
    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mUnselectAllOnActionModeDismiss:Z

    .line 2290
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->hideSelectActionMode()V

    .line 2291
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 2295
    :pswitch_4
    iput-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mDraggingSelection:Z

    .line 2296
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->updateActionModeVisibility()V

    goto :goto_0

    .line 2300
    :pswitch_5
    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mDraggingSelection:Z

    .line 2301
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->updateActionModeVisibility()V

    goto :goto_0

    .line 2305
    :pswitch_6
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p4, p5, p6, p7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2306
    iput-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasInsertion:Z

    goto :goto_0

    .line 2310
    :pswitch_7
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p4, p5, p6, p7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2311
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->isScrollInProgress()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->isPastePopupShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2312
    invoke-direct {p0, p2, p3}, Lorg/chromium/content/browser/ContentViewCore;->showPastePopup(II)Z

    goto :goto_0

    .line 2314
    :cond_4
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePastePopup()V

    goto :goto_0

    .line 2319
    :pswitch_8
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWasPastePopupShowingOnInsertionDragStart:Z

    if-eqz v0, :cond_5

    .line 2320
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePastePopup()V

    .line 2324
    :goto_1
    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mWasPastePopupShowingOnInsertionDragStart:Z

    goto :goto_0

    .line 2322
    :cond_5
    invoke-direct {p0, p2, p3}, Lorg/chromium/content/browser/ContentViewCore;->showPastePopup(II)Z

    goto :goto_1

    .line 2328
    :pswitch_9
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePastePopup()V

    .line 2329
    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasInsertion:Z

    .line 2330
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 2334
    :pswitch_a
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->isPastePopupShowing()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWasPastePopupShowingOnInsertionDragStart:Z

    .line 2335
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePastePopup()V

    goto :goto_0

    .line 2339
    :pswitch_b
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWasPastePopupShowingOnInsertionDragStart:Z

    if-eqz v0, :cond_6

    .line 2340
    invoke-direct {p0, p2, p3}, Lorg/chromium/content/browser/ContentViewCore;->showPastePopup(II)Z

    .line 2342
    :cond_6
    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mWasPastePopupShowingOnInsertionDragStart:Z

    goto :goto_0

    .line 2270
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private onShowUnhandledTapUIIfNeeded(II)V
    .locals 1

    .prologue
    .line 1333
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContextualSearchClient:Lorg/chromium/content/browser/ContextualSearchClient;

    if-eqz v0, :cond_0

    .line 1334
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContextualSearchClient:Lorg/chromium/content/browser/ContextualSearchClient;

    invoke-interface {v0, p1, p2}, Lorg/chromium/content/browser/ContextualSearchClient;->showUnhandledTapUIIfNeeded(II)V

    .line 1336
    :cond_0
    return-void
.end method

.method private onSingleTapEventAck(ZII)V
    .locals 1

    .prologue
    .line 1323
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    .line 1324
    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1325
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/content_public/browser/GestureStateListener;->onSingleTap(ZII)V

    goto :goto_0

    .line 1327
    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePastePopup()V

    .line 1328
    return-void
.end method

.method private onSmartClipDataExtracted(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 3

    .prologue
    .line 3203
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getDeviceScaleFactor()F

    move-result v0

    .line 3204
    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipOffsetX:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    .line 3205
    iget v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipOffsetY:I

    int-to-float v2, v2

    div-float v0, v2, v0

    float-to-int v0, v0

    .line 3206
    neg-int v1, v1

    neg-int v0, v0

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 3208
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipDataListener:Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;

    if-eqz v0, :cond_0

    .line 3209
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipDataListener:Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;

    invoke-interface {v0, p1, p2, p3}, Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;->onSmartClipDataExtracted(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 3211
    :cond_0
    return-void
.end method

.method private onTouchEventImpl(Landroid/view/MotionEvent;Z)Z
    .locals 34

    .prologue
    .line 1171
    const-string/jumbo v2, "onTouchEvent"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 1173
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 1175
    if-nez v8, :cond_0

    .line 1176
    invoke-direct/range {p0 .. p0}, Lorg/chromium/content/browser/ContentViewCore;->cancelRequestToScrollFocusedEditableNodeIntoView()V

    .line 1179
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/chromium/content/browser/SPenSupport;->isSPenSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1180
    invoke-static {v8}, Lorg/chromium/content/browser/SPenSupport;->convertSPenEventAction(I)I

    move-result v8

    .line 1182
    :cond_1
    invoke-static {v8}, Lorg/chromium/content/browser/ContentViewCore;->isValidTouchEventActionForNative(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 1230
    const-string/jumbo v2, "onTouchEvent"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    return v2

    .line 1184
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 1230
    const-string/jumbo v2, "onTouchEvent"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0

    .line 1187
    :cond_3
    const/4 v2, 0x0

    .line 1188
    :try_start_2
    move-object/from16 v0, p0

    iget v3, v0, Lorg/chromium/content/browser/ContentViewCore;->mCurrentTouchOffsetX:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lorg/chromium/content/browser/ContentViewCore;->mCurrentTouchOffsetY:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_10

    .line 1189
    :cond_4
    invoke-direct/range {p0 .. p1}, Lorg/chromium/content/browser/ContentViewCore;->createOffsetMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v33, v2

    move-object v5, v2

    .line 1193
    :goto_1
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    .line 1195
    const/4 v2, 0x2

    new-array v0, v2, [F

    move-object/from16 v19, v0

    const/4 v2, 0x0

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getTouchMajor()F

    move-result v3

    aput v3, v19, v2

    const/4 v3, 0x1

    const/4 v2, 0x1

    if-le v9, v2, :cond_6

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v2

    :goto_2
    aput v2, v19, v3

    .line 1197
    const/4 v2, 0x2

    new-array v0, v2, [F

    move-object/from16 v21, v0

    const/4 v2, 0x0

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getTouchMinor()F

    move-result v3

    aput v3, v21, v2

    const/4 v3, 0x1

    const/4 v2, 0x1

    if-le v9, v2, :cond_7

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Landroid/view/MotionEvent;->getTouchMinor(I)F

    move-result v2

    :goto_3
    aput v2, v21, v3

    .line 1200
    const/4 v2, 0x0

    :goto_4
    const/4 v3, 0x2

    if-ge v2, v3, :cond_8

    .line 1201
    aget v3, v19, v2

    aget v4, v21, v2

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    .line 1202
    aget v3, v19, v2

    .line 1203
    aget v4, v21, v2

    aput v4, v19, v2

    .line 1204
    aput v3, v21, v2

    .line 1200
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1195
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 1197
    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    .line 1208
    :cond_8
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v10

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v11

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    const/4 v2, 0x1

    if-le v9, v2, :cond_a

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    :goto_5
    const/4 v2, 0x1

    if-le v9, v2, :cond_b

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    :goto_6
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v16

    const/4 v2, 0x1

    if-le v9, v2, :cond_c

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    :goto_7
    const/4 v2, 0x0

    aget v18, v19, v2

    const/4 v2, 0x1

    aget v19, v19, v2

    const/4 v2, 0x0

    aget v20, v21, v2

    const/4 v2, 0x1

    aget v21, v21, v2

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getOrientation()F

    move-result v22

    const/4 v2, 0x1

    if-le v9, v2, :cond_d

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Landroid/view/MotionEvent;->getOrientation(I)F

    move-result v23

    :goto_8
    const/16 v2, 0x19

    invoke-virtual {v5, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v24

    const/4 v2, 0x1

    if-le v9, v2, :cond_e

    const/16 v2, 0x19

    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v5, v2, v0}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v25

    :goto_9
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getRawX()F

    move-result v26

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getRawY()F

    move-result v27

    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v28

    const/4 v2, 0x1

    if-le v9, v2, :cond_f

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v29

    :goto_a
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v30

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v31

    move-object/from16 v2, p0

    move/from16 v32, p2

    invoke-direct/range {v2 .. v32}, Lorg/chromium/content/browser/ContentViewCore;->nativeOnTouchEvent(JLandroid/view/MotionEvent;JIIIIFFFFIIFFFFFFFFFFIIIIZ)Z

    move-result v2

    .line 1227
    if-eqz v33, :cond_9

    invoke-virtual/range {v33 .. v33}, Landroid/view/MotionEvent;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1230
    :cond_9
    const-string/jumbo v3, "onTouchEvent"

    invoke-static {v3}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1208
    :cond_a
    const/4 v14, 0x0

    goto :goto_5

    :cond_b
    const/4 v15, 0x0

    goto :goto_6

    :cond_c
    const/16 v17, -0x1

    goto :goto_7

    :cond_d
    const/16 v23, 0x0

    goto :goto_8

    :cond_e
    const/16 v25, 0x0

    goto :goto_9

    :cond_f
    const/16 v29, 0x0

    goto :goto_a

    .line 1230
    :catchall_0
    move-exception v2

    const-string/jumbo v3, "onTouchEvent"

    invoke-static {v3}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v2

    :cond_10
    move-object/from16 v33, v2

    move-object/from16 v5, p1

    goto/16 :goto_1
.end method

.method private requestDisallowInterceptTouchEvent()V
    .locals 2

    .prologue
    .line 1236
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1237
    return-void
.end method

.method private resetGestureDetection()V
    .locals 4

    .prologue
    .line 1488
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1490
    :goto_0
    return-void

    .line 1489
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeResetGestureDetection(J)V

    goto :goto_0
.end method

.method private resetScrollInProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3237
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->isScrollInProgress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3246
    :cond_0
    :goto_0
    return-void

    .line 3239
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchScrollInProgress:Z

    .line 3240
    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPotentiallyActiveFlingCount:I

    .line 3242
    invoke-direct {p0, v2}, Lorg/chromium/content/browser/ContentViewCore;->setTouchScrollInProgress(Z)V

    .line 3243
    iput v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mPotentiallyActiveFlingCount:I

    .line 3244
    if-eqz v0, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->updateGestureStateListener(I)V

    .line 3245
    :cond_2
    if-lez v1, :cond_0

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->updateGestureStateListener(I)V

    goto :goto_0
.end method

.method private restoreSelectionPopupsIfNecessary()V
    .locals 1

    .prologue
    .line 1473
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->showSelectActionMode(Z)V

    .line 1474
    :cond_0
    return-void
.end method

.method private setTextHandlesTemporarilyHidden(Z)V
    .locals 4

    .prologue
    .line 2361
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2363
    :goto_0
    return-void

    .line 2362
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeSetTextHandlesTemporarilyHidden(JZ)V

    goto :goto_0
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2494
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewClient;->onUpdateTitle(Ljava/lang/String;)V

    .line 2495
    return-void
.end method

.method private setTouchScrollInProgress(Z)V
    .locals 1

    .prologue
    .line 1259
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchScrollInProgress:Z

    if-ne v0, p1, :cond_0

    .line 1262
    :goto_0
    return-void

    .line 1260
    :cond_0
    iput-boolean p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchScrollInProgress:Z

    .line 1261
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->updateActionModeVisibility()V

    goto :goto_0
.end method

.method private shouldBlockMediaRequest(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 3271
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewClient;->shouldBlockMediaRequest(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private showDisambiguationPopup(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 2556
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v0, p2}, Lorg/chromium/content/browser/PopupZoomer;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2557
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/PopupZoomer;->show(Landroid/graphics/Rect;)V

    .line 2558
    return-void
.end method

.method private showPastePopup(II)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2630
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2637
    :cond_0
    :goto_0
    return v0

    .line 2634
    :cond_1
    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasInsertion:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->canPaste()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2635
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v0

    .line 2636
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->getPastePopup()Lorg/chromium/content/browser/input/PastePopupMenu;

    move-result-object v1

    int-to-float v2, p2

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-interface {v1, p1, v0}, Lorg/chromium/content/browser/input/PastePopupMenu;->show(II)V

    .line 2637
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showPastePopupWithFeedback(II)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2614
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/ContentViewCore;->showPastePopup(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2615
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    .line 2616
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->onContextMenuOpened()V

    .line 2617
    :cond_0
    const/4 v0, 0x1

    .line 2619
    :cond_1
    return v0
.end method

.method private showSelectActionMode(Z)V
    .locals 3

    .prologue
    .line 1986
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    if-eqz v0, :cond_1

    .line 1987
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    invoke-virtual {v0}, Lorg/chromium/content/browser/WebActionMode;->invalidate()V

    .line 2186
    :cond_0
    :goto_0
    return-void

    .line 1992
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

    if-nez v0, :cond_2

    .line 1993
    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$6;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/ContentViewCore$6;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

    .line 2168
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    .line 2170
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2171
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2172
    :cond_3
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/ContentViewCore;->startActionMode(Z)Landroid/view/ActionMode;

    move-result-object v0

    .line 2173
    if-eqz v0, :cond_4

    new-instance v1, Lorg/chromium/content/browser/WebActionMode;

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-direct {v1, v0, v2}, Lorg/chromium/content/browser/WebActionMode;-><init>(Landroid/view/ActionMode;Landroid/view/View;)V

    iput-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    .line 2175
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mUnselectAllOnActionModeDismiss:Z

    .line 2176
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    if-nez v0, :cond_5

    .line 2178
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->clearSelection()V

    goto :goto_0

    .line 2182
    :cond_5
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->supportsFloatingActionMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2183
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewClient;->onContextualActionBarShown()V

    goto :goto_0
.end method

.method private showSelectPopup(JLandroid/graphics/Rect;[Ljava/lang/String;[IZ[IZ)V
    .locals 9

    .prologue
    .line 2509
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 2510
    :cond_0
    iput-wide p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeSelectPopupSourceFrame:J

    .line 2511
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->selectPopupMenuItems([I)V

    .line 2535
    :cond_1
    :goto_0
    return-void

    .line 2515
    :cond_2
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopupsAndClearSelection()V

    .line 2516
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeSelectPopupSourceFrame:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Zombie popup did not clear the frame source"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2518
    :cond_3
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    array-length v0, p4

    array-length v1, p5

    if-eq v0, v1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2519
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2520
    const/4 v0, 0x0

    :goto_1
    array-length v1, p4

    if-ge v0, v1, :cond_5

    .line 2521
    new-instance v1, Lorg/chromium/content/browser/input/SelectPopupItem;

    aget-object v3, p4, v0

    aget v4, p5, v0

    invoke-direct {v1, v3, v4}, Lorg/chromium/content/browser/input/SelectPopupItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2520
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2523
    :cond_5
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p6, :cond_6

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2524
    new-instance v0, Lorg/chromium/content/browser/input/SelectPopupDropdown;

    move-object v1, p0

    move-object v3, p3

    move-object/from16 v4, p7

    move/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/input/SelectPopupDropdown;-><init>(Lorg/chromium/content/browser/ContentViewCore;Ljava/util/List;Landroid/graphics/Rect;[IZ)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectPopup:Lorg/chromium/content/browser/input/SelectPopup;

    .line 2533
    :goto_2
    iput-wide p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeSelectPopupSourceFrame:J

    .line 2534
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectPopup:Lorg/chromium/content/browser/input/SelectPopup;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/SelectPopup;->show()V

    goto :goto_0

    .line 2527
    :cond_6
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2528
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    .line 2529
    if-eqz v5, :cond_1

    .line 2530
    new-instance v3, Lorg/chromium/content/browser/input/SelectPopupDialog;

    move-object v4, p0

    move-object v6, v2

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v3 .. v8}, Lorg/chromium/content/browser/input/SelectPopupDialog;-><init>(Lorg/chromium/content/browser/ContentViewCore;Landroid/content/Context;Ljava/util/List;Z[I)V

    iput-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectPopup:Lorg/chromium/content/browser/input/SelectPopup;

    goto :goto_2
.end method

.method private startActionMode(Z)Landroid/view/ActionMode;
    .locals 3

    .prologue
    .line 2194
    new-instance v1, Lorg/chromium/content/browser/WebActionModeCallback;

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

    invoke-direct {v1, v0, v2}, Lorg/chromium/content/browser/WebActionModeCallback;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;)V

    .line 2196
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->supportsFloatingActionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2197
    invoke-direct {p0, v1}, Lorg/chromium/content/browser/ContentViewCore;->startFloatingActionMode(Lorg/chromium/content/browser/WebActionModeCallback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 2198
    if-eqz v0, :cond_0

    .line 2202
    :goto_0
    return-object v0

    .line 2199
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFloatingActionModeCreationFailed:Z

    .line 2200
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 2202
    :cond_1
    invoke-direct {p0, v1}, Lorg/chromium/content/browser/ContentViewCore;->startDefaultActionMode(Lorg/chromium/content/browser/WebActionModeCallback;)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_0
.end method

.method private startContentIntent(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 2945
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/chromium/content/browser/ContentViewClient;->onStartContentIntent(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2946
    return-void
.end method

.method private startDefaultActionMode(Lorg/chromium/content/browser/WebActionModeCallback;)Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 2206
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method private startFloatingActionMode(Lorg/chromium/content/browser/WebActionModeCallback;)Landroid/view/ActionMode;
    .locals 3

    .prologue
    .line 2211
    new-instance v0, Lorg/chromium/content/browser/FloatingWebActionModeCallback;

    invoke-direct {v0, p1}, Lorg/chromium/content/browser/FloatingWebActionModeCallback;-><init>(Lorg/chromium/content/browser/WebActionModeCallback;)V

    .line 2212
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method private supportsFloatingActionMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2189
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    .line 2190
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFloatingActionModeCreationFailed:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateActionModeVisibility()V
    .locals 2

    .prologue
    .line 2220
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    if-nez v0, :cond_0

    .line 2225
    :goto_0
    return-void

    .line 2224
    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mDraggingSelection:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchScrollInProgress:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/WebActionMode;->hide(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateAfterSizeChanged()V
    .locals 2

    .prologue
    .line 1600
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/PopupZoomer;->hide(Z)V

    .line 1604
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1605
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1606
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1607
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1609
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1610
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1611
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->scrollFocusedEditableNodeIntoView()V

    .line 1613
    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->cancelRequestToScrollFocusedEditableNodeIntoView()V

    .line 1616
    :cond_2
    return-void
.end method

.method private updateForTapOrPress(IFF)V
    .locals 1

    .prologue
    .line 1911
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    .line 1926
    :goto_0
    return-void

    .line 1918
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1920
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 1923
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v0}, Lorg/chromium/content/browser/PopupZoomer;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v0, p2, p3}, Lorg/chromium/content/browser/PopupZoomer;->setLastTouch(FF)V

    .line 1924
    :cond_2
    iput p2, p0, Lorg/chromium/content/browser/ContentViewCore;->mLastFocalEventX:F

    .line 1925
    iput p3, p0, Lorg/chromium/content/browser/ContentViewCore;->mLastFocalEventY:F

    goto :goto_0
.end method

.method private updateFrameInfo(FFFFFFFFFFFZZZFFF)V
    .locals 17

    .prologue
    .line 2377
    const-string/jumbo v2, "ContentViewCore:updateFrameInfo"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 2378
    move/from16 v0, p12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/chromium/content/browser/ContentViewCore;->mIsMobileOptimizedHint:Z

    .line 2381
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getDeviceScaleFactor()F

    move-result v16

    .line 2382
    move-object/from16 v0, p0

    iget v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mViewportWidthPix:I

    int-to-float v2, v2

    mul-float v3, v16, p3

    div-float/2addr v2, v3

    move/from16 v0, p6

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 2384
    move-object/from16 v0, p0

    iget v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mViewportHeightPix:I

    int-to-float v2, v2

    mul-float v3, v16, p3

    div-float/2addr v2, v3

    move/from16 v0, p7

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 2386
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    move/from16 v0, p11

    invoke-virtual {v2, v0}, Lorg/chromium/content/browser/RenderCoordinates;->fromDipToPix(F)F

    move-result v12

    .line 2388
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getContentWidthCss()F

    move-result v2

    cmpl-float v2, v5, v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getContentHeightCss()F

    move-result v2

    cmpl-float v2, v6, v2

    if-eqz v2, :cond_8

    :cond_0
    const/4 v2, 0x1

    .line 2391
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v3}, Lorg/chromium/content/browser/RenderCoordinates;->getMinPageScaleFactor()F

    move-result v3

    cmpl-float v3, p4, v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v3}, Lorg/chromium/content/browser/RenderCoordinates;->getMaxPageScaleFactor()F

    move-result v3

    cmpl-float v3, p5, v3

    if-eqz v3, :cond_9

    :cond_1
    const/4 v3, 0x1

    .line 2394
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v4}, Lorg/chromium/content/browser/RenderCoordinates;->getPageScaleFactor()F

    move-result v4

    cmpl-float v4, p3, v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    .line 2396
    :goto_2
    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v4}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollX()F

    move-result v4

    cmpl-float v4, p1, v4

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v4}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollY()F

    move-result v4

    cmpl-float v4, p2, v4

    if-eqz v4, :cond_b

    :cond_2
    const/4 v4, 0x1

    move v13, v4

    .line 2400
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v4}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v4

    cmpl-float v4, v12, v4

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    move v15, v4

    .line 2403
    :goto_4
    if-nez v2, :cond_3

    if-eqz v13, :cond_d

    :cond_3
    const/4 v2, 0x1

    move v4, v2

    .line 2404
    :goto_5
    if-nez v3, :cond_4

    if-eqz v13, :cond_e

    :cond_4
    const/4 v2, 0x1

    move v14, v2

    .line 2406
    :goto_6
    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/chromium/content/browser/PopupZoomer;->hide(Z)V

    .line 2408
    :cond_5
    if-eqz v13, :cond_6

    .line 2409
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v7}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollXPix()F

    move-result v7

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v8}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollYPix()F

    move-result v8

    float-to-int v8, v8

    invoke-interface {v2, v3, v4, v7, v8}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->onScrollChanged(IIII)V

    .line 2416
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v2 .. v12}, Lorg/chromium/content/browser/RenderCoordinates;->updateFrameInfo(FFFFFFFFFF)V

    .line 2423
    if-nez v13, :cond_7

    if-eqz v15, :cond_f

    .line 2424
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v2}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    .line 2425
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v2}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2426
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v2}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollOffset()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollExtent()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/chromium/content_public/browser/GestureStateListener;->onScrollOffsetOrExtentChanged(II)V

    goto :goto_7

    .line 2388
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2391
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 2394
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 2396
    :cond_b
    const/4 v4, 0x0

    move v13, v4

    goto/16 :goto_3

    .line 2400
    :cond_c
    const/4 v4, 0x0

    move v15, v4

    goto/16 :goto_4

    .line 2403
    :cond_d
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_5

    .line 2404
    :cond_e
    const/4 v2, 0x0

    move v14, v2

    goto/16 :goto_6

    .line 2432
    :cond_f
    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    invoke-interface {v2}, Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;->updateZoomControls()V

    .line 2435
    :cond_10
    mul-float v2, p10, v16

    .line 2437
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v3

    invoke-virtual {v3, v2, v12}, Lorg/chromium/content/browser/ContentViewClient;->onOffsetsForFullscreenChanged(FF)V

    .line 2440
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    if-eqz v2, :cond_11

    .line 2441
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    invoke-virtual {v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->notifyFrameInfoInitialized()V

    .line 2444
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    move/from16 v4, p13

    move/from16 v5, p14

    move/from16 v6, p15

    move/from16 v7, p16

    move/from16 v8, p17

    invoke-virtual/range {v2 .. v8}, Lorg/chromium/content/browser/input/ImeAdapter;->onUpdateFrameInfo(Lorg/chromium/content/browser/RenderCoordinates;ZZFFF)V

    .line 2448
    const-string/jumbo v2, "ContentViewCore:updateFrameInfo"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 2449
    return-void
.end method

.method private updateImeAdapter(JIILjava/lang/String;IIIIZZ)V
    .locals 11

    .prologue
    .line 2457
    :try_start_0
    const-string/jumbo v1, "ContentViewCore.updateImeAdapter"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 2458
    if-eqz p3, :cond_4

    const/4 v1, 0x1

    move v9, v1

    .line 2459
    :goto_0
    const/4 v1, 0x2

    if-ne p3, v1, :cond_5

    const/4 v1, 0x1

    move v8, v1

    .line 2460
    :goto_1
    if-nez v9, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePastePopup()V

    .line 2462
    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v1, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->attach(J)V

    .line 2463
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    move/from16 v0, p10

    invoke-virtual {v1, p3, p4, v0}, Lorg/chromium/content/browser/input/ImeAdapter;->updateKeyboardVisibility(IIZ)V

    .line 2465
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    move-object/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p11

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/content/browser/input/ImeAdapter;->updateState(Ljava/lang/String;IIIIZ)V

    .line 2468
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    if-eqz v1, :cond_2

    .line 2469
    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeEditable:Z

    if-ne v9, v1, :cond_1

    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeIsPassword:Z

    if-eq v8, v1, :cond_6

    :cond_1
    const/4 v1, 0x1

    .line 2472
    :goto_2
    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    invoke-virtual {v1}, Lorg/chromium/content/browser/WebActionMode;->invalidate()V

    .line 2475
    :cond_2
    iput-boolean v8, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeIsPassword:Z

    .line 2476
    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeEditable:Z

    if-eq v9, v1, :cond_3

    .line 2477
    iput-boolean v9, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeEditable:Z

    .line 2478
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mJoystickScrollProvider:Lorg/chromium/content/browser/input/JoystickScrollProvider;

    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeEditable:Z

    if-nez v1, :cond_7

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v2, v1}, Lorg/chromium/content/browser/input/JoystickScrollProvider;->setEnabled(Z)V

    .line 2479
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v1

    iget-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeEditable:Z

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/ContentViewClient;->onFocusedNodeEditabilityChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2482
    :cond_3
    const-string/jumbo v1, "ContentViewCore.updateImeAdapter"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 2483
    return-void

    .line 2458
    :cond_4
    const/4 v1, 0x0

    move v9, v1

    goto :goto_0

    .line 2459
    :cond_5
    const/4 v1, 0x0

    move v8, v1

    goto :goto_1

    .line 2469
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 2478
    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    .line 2482
    :catchall_0
    move-exception v1

    const-string/jumbo v2, "ContentViewCore.updateImeAdapter"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addContainerViewObserver(Lorg/chromium/content/browser/ContainerViewObserver;)V
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 868
    return-void
.end method

.method public addGestureStateListener(Lorg/chromium/content_public/browser/GestureStateListener;)V
    .locals 1

    .prologue
    .line 1384
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 1385
    return-void
.end method

.method public attachImeAdapter()V
    .locals 4

    .prologue
    .line 2684
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2685
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v2, v3}, Lorg/chromium/content/browser/ContentViewCore;->nativeGetNativeImeAdapter(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/chromium/content/browser/input/ImeAdapter;->attach(J)V

    .line 2687
    :cond_0
    return-void
.end method

.method public awakenScrollBars(IZ)Z
    .locals 1

    .prologue
    .line 1903
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollBarStyle()I

    move-result v0

    if-nez v0, :cond_0

    .line 1904
    const/4 v0, 0x0

    .line 1906
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    invoke-interface {v0, p1, p2}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->super_awakenScrollBars(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public canZoomIn()Z
    .locals 2

    .prologue
    .line 2708
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getMaxPageScaleFactor()F

    move-result v0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getPageScaleFactor()F

    move-result v1

    sub-float/2addr v0, v1

    .line 2710
    const v1, 0x3be56042    # 0.007f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canZoomOut()Z
    .locals 2

    .prologue
    .line 2721
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getPageScaleFactor()F

    move-result v0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getMinPageScaleFactor()F

    move-result v1

    sub-float/2addr v0, v1

    .line 2723
    const v1, 0x3be56042    # 0.007f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearSelection()V
    .locals 1

    .prologue
    .line 2232
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeEditable:Z

    if-eqz v0, :cond_1

    .line 2233
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->moveCursorToSelectionEnd()V

    .line 2238
    :cond_0
    :goto_0
    return-void

    .line 2236
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->unselect()V

    goto :goto_0
.end method

.method public computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 1850
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getLastFrameViewportWidthPixInt()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 1858
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollXPixInt()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 1866
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getContentWidthPixInt()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 1874
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getLastFrameViewportHeightPixInt()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 1882
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollYPixInt()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 1890
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getContentHeightPixInt()I

    move-result v0

    return v0
.end method

.method public createContentViewAndroidDelegate()V
    .locals 3

    .prologue
    .line 825
    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-direct {v0, v1, v2}, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;-><init>(Landroid/view/ViewGroup;Lorg/chromium/content/browser/RenderCoordinates;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewAndroidDelegate:Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;

    .line 826
    return-void
.end method

.method public destroy()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 965
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 966
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeOnJavaContentViewCoreDestroyed(J)V

    .line 968
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/WebContentsObserver;->destroy()V

    .line 969
    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

    .line 970
    invoke-virtual {p0, v2}, Lorg/chromium/content/browser/ContentViewCore;->setSmartClipDataListener(Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;)V

    .line 971
    invoke-virtual {p0, v2}, Lorg/chromium/content/browser/ContentViewCore;->setZoomControlsDelegate(Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;)V

    .line 972
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->reset()V

    .line 978
    new-instance v0, Lorg/chromium/content/browser/ContentViewClient;

    invoke-direct {v0}, Lorg/chromium/content/browser/ContentViewClient;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    .line 979
    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    .line 980
    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mOverscrollRefreshHandler:Lorg/chromium/content/browser/OverscrollRefreshHandler;

    .line 981
    iput-wide v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    .line 982
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mJavaScriptInterfaces:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 983
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRetainedJavaScriptObjects:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 984
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 985
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/GestureStateListener;->onDestroyed()V

    goto :goto_0

    .line 987
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->clear()V

    .line 988
    invoke-static {}, Lorg/chromium/content/browser/ScreenOrientationListener;->getInstance()Lorg/chromium/content/browser/ScreenOrientationListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/content/browser/ScreenOrientationListener;->removeObserver(Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationObserver;)V

    .line 989
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->clear()V

    .line 990
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopupsAndPreserveSelection()V

    .line 991
    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    .line 994
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1684
    invoke-static {p1}, Lorg/chromium/content/browser/input/GamepadList;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1691
    :cond_0
    :goto_0
    return v0

    .line 1685
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/chromium/content/browser/ContentViewClient;->shouldOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1686
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->super_dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1689
    :cond_2
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v1, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1691
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->super_dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 1673
    :try_start_0
    const-string/jumbo v0, "ContentViewCore.dispatchKeyEventPreIme"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 1674
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->super_dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1676
    const-string/jumbo v1, "ContentViewCore.dispatchKeyEventPreIme"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v0

    const-string/jumbo v1, "ContentViewCore.dispatchKeyEventPreIme"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
.end method

.method public doTopControlsShrinkBlinkSize()Z
    .locals 1

    .prologue
    .line 1084
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTopControlsShrinkBlinkSize:Z

    return v0
.end method

.method public extractSmartClipData(IIII)V
    .locals 8

    .prologue
    .line 3172
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 3173
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipOffsetX:I

    add-int v4, p1, v0

    .line 3174
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipOffsetY:I

    add-int v5, p2, v0

    .line 3175
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    move-object v1, p0

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/chromium/content/browser/ContentViewCore;->nativeExtractSmartClipData(JIIII)V

    .line 3177
    :cond_0
    return-void
.end method

.method public flingViewport(JII)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 1364
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1368
    :goto_0
    return-void

    .line 1365
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/content/browser/ContentViewCore;->nativeFlingCancel(JJ)V

    .line 1366
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    int-to-float v8, p3

    int-to-float v9, p4

    move-object v1, p0

    move-wide v4, p1

    move v7, v6

    invoke-direct/range {v1 .. v10}, Lorg/chromium/content/browser/ContentViewCore;->nativeScrollBegin(JJFFFFZ)V

    .line 1367
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    int-to-float v8, p3

    int-to-float v9, p4

    move-object v1, p0

    move-wide v4, p1

    move v7, v6

    invoke-direct/range {v1 .. v10}, Lorg/chromium/content/browser/ContentViewCore;->nativeFlingStart(JJFFFFZ)V

    goto :goto_0
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3010
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    if-eqz v0, :cond_0

    .line 3011
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    invoke-virtual {v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 3020
    :goto_0
    return-object v0

    .line 3014
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeAccessibilityAllowed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeAccessibilityEnabled:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 3016
    iput-boolean v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeAccessibilityEnabled:Z

    .line 3017
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, v4}, Lorg/chromium/content/browser/ContentViewCore;->nativeSetAccessibilityEnabled(JZ)V

    .line 3020
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBrowserAccessibilityManager()Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;
    .locals 1

    .prologue
    .line 2999
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    return-object v0
.end method

.method public getContainerView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method getContentVideoViewEmbedder()Lorg/chromium/content/browser/ContentVideoViewEmbedder;
    .locals 1

    .prologue
    .line 3266
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewClient;->getContentVideoViewEmbedder()Lorg/chromium/content/browser/ContentVideoViewEmbedder;

    move-result-object v0

    return-object v0
.end method

.method public getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    if-nez v0, :cond_0

    .line 1026
    new-instance v0, Lorg/chromium/content/browser/ContentViewClient;

    invoke-direct {v0}, Lorg/chromium/content/browser/ContentViewClient;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    .line 1031
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentRenderProcessId()I
    .locals 2

    .prologue
    .line 1442
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeGetCurrentRenderProcessId(J)I

    move-result v0

    return v0
.end method

.method public getDeviceScaleFactor()F
    .locals 1

    .prologue
    .line 1097
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getDeviceScaleFactor()F

    move-result v0

    return v0
.end method

.method getDownloadDelegate()Lorg/chromium/content/browser/ContentViewDownloadDelegate;
    .locals 1

    .prologue
    .line 1977
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mDownloadDelegate:Lorg/chromium/content/browser/ContentViewDownloadDelegate;

    return-object v0
.end method

.method public getImeAdapterForTest()Lorg/chromium/content/browser/input/ImeAdapter;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    return-object v0
.end method

.method public getIsMobileOptimizedHint()Z
    .locals 1

    .prologue
    .line 3163
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mIsMobileOptimizedHint:Z

    return v0
.end method

.method getNativeContentViewCore()J
    .locals 2

    .prologue
    .line 1010
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    return-wide v0
.end method

.method public getNewShowKeyboardReceiver()Landroid/os/ResultReceiver;
    .locals 2

    .prologue
    .line 3341
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mShowKeyboardResultReceiver:Lorg/chromium/content/browser/ContentViewCore$ShowKeyboardResultReceiver;

    if-nez v0, :cond_0

    .line 3343
    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$ShowKeyboardResultReceiver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lorg/chromium/content/browser/ContentViewCore$ShowKeyboardResultReceiver;-><init>(Lorg/chromium/content/browser/ContentViewCore;Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mShowKeyboardResultReceiver:Lorg/chromium/content/browser/ContentViewCore$ShowKeyboardResultReceiver;

    .line 3345
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mShowKeyboardResultReceiver:Lorg/chromium/content/browser/ContentViewCore$ShowKeyboardResultReceiver;

    return-object v0
.end method

.method public getPageScaleFactor()F
    .locals 1

    .prologue
    .line 1105
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getPageScaleFactor()F

    move-result v0

    return v0
.end method

.method public getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;
    .locals 1

    .prologue
    .line 3154
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 2940
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getPageScaleFactor()F

    move-result v0

    return v0
.end method

.method public getSelectActionHandler()Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;
    .locals 1

    .prologue
    .line 1982
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

    return-object v0
.end method

.method public getSelectPopupForTest()Lorg/chromium/content/browser/input/SelectPopup;
    .locals 1

    .prologue
    .line 2550
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectPopup:Lorg/chromium/content/browser/input/SelectPopup;

    return-object v0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1127
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mLastSelectedText:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getTopControlsHeightPix()I
    .locals 1

    .prologue
    .line 1089
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTopControlsHeightPix:I

    return v0
.end method

.method public getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewAndroidDelegate:Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;

    return-object v0
.end method

.method public getViewportHeightPix()I
    .locals 1

    .prologue
    .line 1052
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewportHeightPix:I

    return v0
.end method

.method public getViewportHeightWithOSKHiddenPix()I
    .locals 2

    .prologue
    .line 1060
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewportHeightPix:I

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewClient;->getSystemWindowInsetBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getViewportWidthPix()I
    .locals 1

    .prologue
    .line 1044
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewportWidthPix:I

    return v0
.end method

.method public getWebContents()Lorg/chromium/content_public/browser/WebContents;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    return-object v0
.end method

.method public getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;
    .locals 4

    .prologue
    .line 676
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 677
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeGetJavaWindowAndroid(J)Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    goto :goto_0
.end method

.method public hasInsertion()Z
    .locals 1

    .prologue
    .line 2260
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasInsertion:Z

    return v0
.end method

.method public hasSelection()Z
    .locals 1

    .prologue
    .line 2252
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    return v0
.end method

.method public hideSelectActionMode()V
    .locals 1

    .prologue
    .line 1477
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    if-eqz v0, :cond_0

    .line 1478
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    invoke-virtual {v0}, Lorg/chromium/content/browser/WebActionMode;->finish()V

    .line 1479
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    .line 1481
    :cond_0
    return-void
.end method

.method initPopupZoomer(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 891
    new-instance v0, Lorg/chromium/content/browser/PopupZoomer;

    invoke-direct {v0, p1}, Lorg/chromium/content/browser/PopupZoomer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    .line 892
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    new-instance v1, Lorg/chromium/content/browser/ContentViewCore$3;

    invoke-direct {v1, p0}, Lorg/chromium/content/browser/ContentViewCore$3;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/PopupZoomer;->setOnVisibilityChangedListener(Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;)V

    .line 924
    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$4;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/ContentViewCore$4;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 946
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/PopupZoomer;->setOnTapListener(Lorg/chromium/content/browser/PopupZoomer$OnTapListener;)V

    .line 947
    return-void
.end method

.method public initialize(Landroid/view/ViewGroup;Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 7

    .prologue
    .line 793
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->createContentViewAndroidDelegate()V

    .line 794
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/ContentViewCore;->setContainerView(Landroid/view/ViewGroup;)V

    .line 795
    invoke-virtual {p4}, Lorg/chromium/ui/base/WindowAndroid;->getNativePointer()J

    move-result-wide v4

    .line 796
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 798
    :cond_0
    sget-object v0, Lorg/chromium/content/browser/ContentViewCore;->NO_OP_ZOOM_CONTROLS_DELEGATE:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    .line 800
    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewAndroidDelegate:Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;

    iget-object v6, p0, Lorg/chromium/content/browser/ContentViewCore;->mRetainedJavaScriptObjects:Ljava/util/HashSet;

    move-object v1, p0

    move-object v2, p3

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/browser/ContentViewCore;->nativeInit(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/ui/base/ViewAndroidDelegate;JLjava/util/HashSet;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    .line 802
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeGetWebContentsAndroid(J)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    .line 804
    invoke-virtual {p0, p2}, Lorg/chromium/content/browser/ContentViewCore;->setContainerViewInternals(Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;)V

    .line 805
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->reset()V

    .line 806
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->initPopupZoomer(Landroid/content/Context;)V

    .line 807
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->createImeAdapter()Lorg/chromium/content/browser/input/ImeAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    .line 808
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->attachImeAdapter()V

    .line 810
    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$ContentViewWebContentsObserver;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/ContentViewCore$ContentViewWebContentsObserver;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

    .line 811
    return-void
.end method

.method public isAlive()Z
    .locals 4

    .prologue
    .line 1001
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusedNodeEditable()Z
    .locals 1

    .prologue
    .line 1141
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeEditable:Z

    return v0
.end method

.method public isGamepadAPIActive()Z
    .locals 1

    .prologue
    .line 1148
    invoke-static {}, Lorg/chromium/content/browser/input/GamepadList;->isGamepadAPIActive()Z

    move-result v0

    return v0
.end method

.method public isPastePopupShowing()Z
    .locals 1

    .prologue
    .line 2625
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/PastePopupMenu;->isShowing()Z

    move-result v0

    .line 2626
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollInProgress()Z
    .locals 1

    .prologue
    .line 1255
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchScrollInProgress:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPotentiallyActiveFlingCount:I

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectActionBarShowing()Z
    .locals 1

    .prologue
    .line 1484
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectionEditable()Z
    .locals 1

    .prologue
    .line 1134
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeEditable:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 1

    .prologue
    .line 3113
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchExplorationEnabled:Z

    return v0
.end method

.method public onAccessibilityStateChanged(Z)V
    .locals 0

    .prologue
    .line 2950
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/ContentViewCore;->setAccessibilityState(Z)V

    .line 2951
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1497
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->setAccessibilityState(Z)V

    .line 1498
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->setTextHandlesTemporarilyHidden(Z)V

    .line 1499
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->restoreSelectionPopupsIfNecessary()V

    .line 1500
    invoke-static {}, Lorg/chromium/content/browser/ScreenOrientationListener;->getInstance()Lorg/chromium/content/browser/ScreenOrientationListener;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, v1}, Lorg/chromium/content/browser/ScreenOrientationListener;->addObserver(Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationObserver;Landroid/content/Context;)V

    .line 1501
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/content/browser/input/GamepadList;->onAttachedToWindow(Landroid/content/Context;)V

    .line 1502
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 1503
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSystemCaptioningBridge:Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge;

    invoke-interface {v0, p0}, Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge;->addListener(Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;)V

    .line 1504
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 1548
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->hasTextInputType()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 1557
    :try_start_0
    const-string/jumbo v0, "ContentViewCore.onConfigurationChanged"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 1558
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->onKeyboardConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1559
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->super_onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1562
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1564
    const-string/jumbo v0, "ContentViewCore.onConfigurationChanged"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 1565
    return-void

    .line 1564
    :catchall_0
    move-exception v0

    const-string/jumbo v1, "ContentViewCore.onConfigurationChanged"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .prologue
    .line 1541
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    move-result-object v0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1512
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;->dismissZoomPicker()V

    .line 1514
    invoke-static {}, Lorg/chromium/content/browser/ScreenOrientationListener;->getInstance()Lorg/chromium/content/browser/ScreenOrientationListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/content/browser/ScreenOrientationListener;->removeObserver(Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationObserver;)V

    .line 1515
    invoke-static {}, Lorg/chromium/content/browser/input/GamepadList;->onDetachedFromWindow()V

    .line 1516
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 1523
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->setTextHandlesTemporarilyHidden(Z)V

    .line 1524
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopupsAndPreserveSelection()V

    .line 1525
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSystemCaptioningBridge:Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge;

    invoke-interface {v0, p0}, Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge;->removeListener(Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;)V

    .line 1526
    return-void
.end method

.method public onFocusChanged(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1636
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->onViewFocusChanged(Z)V

    .line 1637
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mJoystickScrollProvider:Lorg/chromium/content/browser/input/JoystickScrollProvider;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeEditable:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lorg/chromium/content/browser/input/JoystickScrollProvider;->setEnabled(Z)V

    .line 1639
    if-eqz p1, :cond_2

    .line 1640
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->restoreSelectionPopupsIfNecessary()V

    .line 1654
    :goto_1
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeSetFocus(JZ)V

    .line 1655
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1637
    goto :goto_0

    .line 1642
    :cond_2
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->cancelRequestToScrollFocusedEditableNodeIntoView()V

    .line 1643
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPreserveSelectionOnNextLossOfFocus:Z

    if-eqz v0, :cond_3

    .line 1644
    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPreserveSelectionOnNextLossOfFocus:Z

    .line 1645
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopupsAndPreserveSelection()V

    goto :goto_1

    .line 1647
    :cond_3
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopupsAndClearSelection()V

    .line 1651
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->clearSelection()V

    goto :goto_1
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    const/4 v0, 0x1

    .line 1741
    invoke-static {p1}, Lorg/chromium/content/browser/input/GamepadList;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1777
    :cond_0
    :goto_0
    return v0

    .line 1742
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 1743
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mLastFocalEventX:F

    .line 1744
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mLastFocalEventY:F

    .line 1745
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1777
    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->super_onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1747
    :pswitch_0
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    .line 1749
    :cond_3
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v8

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v9

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->getWheelScrollFactorInPixels()F

    move-result v10

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lorg/chromium/content/browser/ContentViewCore;->nativeSendMouseWheelEvent(JJFFFFF)I

    .line 1755
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mFakeMouseMoveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1758
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 1759
    new-instance v2, Lorg/chromium/content/browser/ContentViewCore$5;

    invoke-direct {v2, p0, v1}, Lorg/chromium/content/browser/ContentViewCore$5;-><init>(Lorg/chromium/content/browser/ContentViewCore;Landroid/view/MotionEvent;)V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mFakeMouseMoveRunnable:Ljava/lang/Runnable;

    .line 1766
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mFakeMouseMoveRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1769
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    .line 1770
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mJoystickScrollProvider:Lorg/chromium/content/browser/input/JoystickScrollProvider;

    invoke-virtual {v1, p1}, Lorg/chromium/content/browser/input/JoystickScrollProvider;->onMotion(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1771
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mJoystickZoomProvider:Lorg/chromium/content/browser/input/JoystickZoomProvider;

    if-nez v1, :cond_5

    .line 1772
    new-instance v1, Lorg/chromium/content/browser/input/JoystickZoomProvider;

    new-instance v2, Lorg/chromium/content/browser/ContentViewCore$SystemAnimationIntervalProvider;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/chromium/content/browser/ContentViewCore$SystemAnimationIntervalProvider;-><init>(Lorg/chromium/content/browser/ContentViewCore$1;)V

    invoke-direct {v1, p0, v2}, Lorg/chromium/content/browser/input/JoystickZoomProvider;-><init>(Lorg/chromium/content/browser/ContentViewCore;Lorg/chromium/content/browser/input/AnimationIntervalProvider;)V

    iput-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mJoystickZoomProvider:Lorg/chromium/content/browser/input/JoystickZoomProvider;

    .line 1775
    :cond_5
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mJoystickZoomProvider:Lorg/chromium/content/browser/input/JoystickZoomProvider;

    invoke-virtual {v1, p1}, Lorg/chromium/content/browser/input/JoystickZoomProvider;->onMotion(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_0

    .line 1745
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onHide()V
    .locals 1

    .prologue
    .line 1449
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1450
    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopupsAndPreserveSelection()V

    .line 1451
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->onHide()V

    .line 1452
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1701
    const-string/jumbo v2, "onHoverEvent"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 1703
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/ContentViewCore;->createOffsetMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    .line 1705
    :try_start_0
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    if-eqz v2, :cond_0

    .line 1706
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    invoke-virtual {v0, v9}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->onHoverEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1732
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 1733
    const-string/jumbo v1, "onHoverEvent"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    :goto_0
    return v0

    .line 1711
    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchExplorationEnabled:Z

    if-eqz v2, :cond_1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getAction()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 1732
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 1733
    const-string/jumbo v1, "onHoverEvent"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    goto :goto_0

    .line 1717
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 1718
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mEnableTouchHover:Ljava/lang/Boolean;

    if-nez v2, :cond_2

    .line 1719
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v2

    const-string/jumbo v3, "enable-touch-hover"

    invoke-virtual {v2, v3}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mEnableTouchHover:Ljava/lang/Boolean;

    .line 1722
    :cond_2
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mEnableTouchHover:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 1732
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 1733
    const-string/jumbo v0, "onHoverEvent"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    .line 1725
    :cond_3
    :try_start_3
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mFakeMouseMoveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1726
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 1727
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lorg/chromium/content/browser/ContentViewCore;->nativeSendMouseMoveEvent(JJFFI)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1732
    :cond_4
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 1733
    const-string/jumbo v1, "onHoverEvent"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    goto :goto_0

    .line 1732
    :catchall_0
    move-exception v0

    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 1733
    const-string/jumbo v1, "onHoverEvent"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1661
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v1}, Lorg/chromium/content/browser/PopupZoomer;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 1662
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/PopupZoomer;->hide(Z)V

    .line 1665
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    invoke-interface {v0, p1, p2}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->super_onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPhysicalBackingSizeChanged(II)V
    .locals 4

    .prologue
    .line 1589
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPhysicalBackingWidthPix:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPhysicalBackingHeightPix:I

    if-ne v0, p2, :cond_1

    .line 1597
    :cond_0
    :goto_0
    return-void

    .line 1591
    :cond_1
    iput p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPhysicalBackingWidthPix:I

    .line 1592
    iput p2, p0, Lorg/chromium/content/browser/ContentViewCore;->mPhysicalBackingHeightPix:I

    .line 1594
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1595
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeWasResized(J)V

    goto :goto_0
.end method

.method public onProvideVirtualStructure(Landroid/view/ViewStructure;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3026
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3027
    invoke-virtual {p1, v1}, Landroid/view/ViewStructure;->setChildCount(I)V

    .line 3047
    :goto_0
    return-void

    .line 3031
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setChildCount(I)V

    .line 3032
    invoke-virtual {p1, v1}, Landroid/view/ViewStructure;->asyncNewChild(I)Landroid/view/ViewStructure;

    move-result-object v0

    .line 3033
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    new-instance v2, Lorg/chromium/content/browser/ContentViewCore$8;

    invoke-direct {v2, p0, v0}, Lorg/chromium/content/browser/ContentViewCore$8;-><init>(Lorg/chromium/content/browser/ContentViewCore;Landroid/view/ViewStructure;)V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v0

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v3}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollXPix()F

    move-result v3

    invoke-interface {v1, v2, v0, v3}, Lorg/chromium/content_public/browser/WebContents;->requestAccessibilitySnapshot(Lorg/chromium/content_public/browser/AccessibilitySnapshotCallback;FF)V

    goto :goto_0
.end method

.method public onReceivedProcessTextResult(ILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 3096
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->isSelectionEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_1

    .line 3107
    :cond_0
    :goto_0
    return-void

    .line 3101
    :cond_1
    const-string/jumbo v0, "android.intent.extra.PROCESS_TEXT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3102
    if-eqz v0, :cond_0

    .line 3105
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/chromium/content_public/browser/WebContents;->replace(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onScreenOrientationChanged(I)V
    .locals 2

    .prologue
    .line 3289
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    if-eqz v0, :cond_0

    .line 3290
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopupsAndPreserveSelection()V

    .line 3291
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->showSelectActionMode(Z)V

    .line 3294
    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/ContentViewCore;->sendOrientationChangeEvent(I)V

    .line 3295
    return-void
.end method

.method public onShow()V
    .locals 1

    .prologue
    .line 1431
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1432
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->onShow()V

    .line 1433
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->setAccessibilityState(Z)V

    .line 1434
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->restoreSelectionPopupsIfNecessary()V

    .line 1435
    return-void
.end method

.method public onShowKeyboardReceiveResult(I)V
    .locals 2

    .prologue
    .line 3323
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 3329
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3337
    :cond_0
    :goto_0
    return-void

    .line 3331
    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 3333
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_0

    .line 3334
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->scrollFocusedEditableNodeIntoView()V

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 4

    .prologue
    .line 1573
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportWidthPix()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportHeightPix()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 1582
    :goto_0
    return-void

    .line 1575
    :cond_0
    iput p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewportWidthPix:I

    .line 1576
    iput p2, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewportHeightPix:I

    .line 1577
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1578
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeWasResized(J)V

    .line 1581
    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->updateAfterSizeChanged()V

    goto :goto_0
.end method

.method public onSystemCaptioningChanged(Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;)V
    .locals 12

    .prologue
    .line 3081
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3087
    :goto_0
    return-void

    .line 3082
    :cond_0
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->getTextTracksEnabled()Z

    move-result v4

    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->getTextTrackBackgroundColor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->getTextTrackFontFamily()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->getTextTrackFontStyle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->getTextTrackFontVariant()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->getTextTrackTextColor()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->getTextTrackTextShadow()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->getTextTrackTextSize()Ljava/lang/String;

    move-result-object v11

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lorg/chromium/content/browser/ContentViewCore;->nativeSetTextTrackSettings(JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1158
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/ContentViewCore;->onTouchEventImpl(Landroid/view/MotionEvent;Z)Z

    move-result v0

    return v0
.end method

.method public onTouchHandleEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1167
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/ContentViewCore;->onTouchEventImpl(Landroid/view/MotionEvent;Z)Z

    move-result v0

    return v0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 1532
    if-eqz p2, :cond_0

    .line 1533
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;->dismissZoomPicker()V

    .line 1535
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 1628
    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->resetGestureDetection()V

    .line 1629
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/WebActionMode;->onWindowFocusChanged(Z)V

    .line 1630
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1631
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {v0, p1}, Lorg/chromium/content_public/browser/GestureStateListener;->onWindowFocusChanged(Z)V

    goto :goto_0

    .line 1633
    :cond_2
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 2975
    const/4 v0, 0x0

    return v0
.end method

.method public pinchBegin(II)Z
    .locals 8

    .prologue
    .line 2800
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2802
    :goto_0
    return v0

    .line 2801
    :cond_0
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    int-to-float v6, p1

    int-to-float v7, p2

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/chromium/content/browser/ContentViewCore;->nativePinchBegin(JJFF)V

    .line 2802
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pinchBy(IIF)Z
    .locals 9

    .prologue
    .line 2814
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2816
    :goto_0
    return v0

    .line 2815
    :cond_0
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    int-to-float v6, p1

    int-to-float v7, p2

    move-object v1, p0

    move v8, p3

    invoke-direct/range {v1 .. v8}, Lorg/chromium/content/browser/ContentViewCore;->nativePinchBy(JJFFF)V

    .line 2816
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pinchByDelta(F)Z
    .locals 9

    .prologue
    .line 2779
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2789
    :goto_0
    return v0

    .line 2781
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2782
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportWidthPix()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 2783
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportHeightPix()I

    move-result v1

    div-int/lit8 v8, v1, 0x2

    .line 2785
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    int-to-float v6, v0

    int-to-float v7, v8

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/chromium/content/browser/ContentViewCore;->nativePinchBegin(JJFF)V

    .line 2786
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    int-to-float v6, v0

    int-to-float v7, v8

    move-object v1, p0

    move v8, p1

    invoke-direct/range {v1 .. v8}, Lorg/chromium/content/browser/ContentViewCore;->nativePinchBy(JJFFF)V

    .line 2787
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, v4, v5}, Lorg/chromium/content/browser/ContentViewCore;->nativePinchEnd(JJ)V

    .line 2789
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pinchEnd()Z
    .locals 4

    .prologue
    .line 2825
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2827
    :goto_0
    return v0

    .line 2826
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/chromium/content/browser/ContentViewCore;->nativePinchEnd(JJ)V

    .line 2827
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public preserveSelectionOnNextLossOfFocus()V
    .locals 1

    .prologue
    .line 2244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPreserveSelectionOnNextLossOfFocus:Z

    .line 2245
    return-void
.end method

.method public removeContainerViewObserver(Lorg/chromium/content/browser/ContainerViewObserver;)V
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 872
    return-void
.end method

.method public removeGestureStateListener(Lorg/chromium/content_public/browser/GestureStateListener;)V
    .locals 1

    .prologue
    .line 1392
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 1393
    return-void
.end method

.method public scrollBy(FFZ)V
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 1805
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1819
    :cond_0
    :goto_0
    return-void

    .line 1806
    :cond_1
    cmpl-float v0, p1, v7

    if-nez v0, :cond_2

    cmpl-float v0, p2, v7

    if-eqz v0, :cond_0

    .line 1807
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1811
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPotentiallyActiveFlingCount:I

    if-lez v0, :cond_3

    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, v4, v5}, Lorg/chromium/content/browser/ContentViewCore;->nativeFlingCancel(JJ)V

    .line 1813
    :cond_3
    if-eqz p3, :cond_5

    iget v6, p0, Lorg/chromium/content/browser/ContentViewCore;->mLastFocalEventX:F

    .line 1814
    :goto_1
    if-eqz p3, :cond_4

    iget v7, p0, Lorg/chromium/content/browser/ContentViewCore;->mLastFocalEventY:F

    .line 1815
    :cond_4
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    neg-float v8, p1

    neg-float v9, p2

    if-nez p3, :cond_6

    const/4 v10, 0x1

    :goto_2
    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lorg/chromium/content/browser/ContentViewCore;->nativeScrollBegin(JJFFFFZ)V

    .line 1817
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    move-object v1, p0

    move v8, p1

    move v9, p2

    invoke-direct/range {v1 .. v9}, Lorg/chromium/content/browser/ContentViewCore;->nativeScrollBy(JJFFFF)V

    .line 1818
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, v4, v5}, Lorg/chromium/content/browser/ContentViewCore;->nativeScrollEnd(JJ)V

    goto :goto_0

    :cond_5
    move v6, v7

    .line 1813
    goto :goto_1

    .line 1815
    :cond_6
    const/4 v10, 0x0

    goto :goto_2
.end method

.method public scrollTo(FF)V
    .locals 4

    .prologue
    .line 1825
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1831
    :goto_0
    return-void

    .line 1826
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollXPix()F

    move-result v0

    .line 1827
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollYPix()F

    move-result v1

    .line 1828
    sub-float v0, p1, v0

    .line 1829
    sub-float v1, p2, v1

    .line 1830
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/chromium/content/browser/ContentViewCore;->scrollBy(FFZ)V

    goto :goto_0
.end method

.method public selectPopupMenuItems([I)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 1947
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_0

    .line 1948
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    iget-wide v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeSelectPopupSourceFrame:J

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/browser/ContentViewCore;->nativeSelectPopupMenuItems(JJ[I)V

    .line 1951
    :cond_0
    iput-wide v8, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeSelectPopupSourceFrame:J

    .line 1952
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectPopup:Lorg/chromium/content/browser/input/SelectPopup;

    .line 1953
    return-void
.end method

.method public sendDoubleTapForTest(JII)V
    .locals 9

    .prologue
    .line 1353
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1355
    :goto_0
    return-void

    .line 1354
    :cond_0
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    int-to-float v6, p3

    int-to-float v7, p4

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Lorg/chromium/content/browser/ContentViewCore;->nativeDoubleTap(JJFF)V

    goto :goto_0
.end method

.method sendOrientationChangeEvent(I)V
    .locals 4

    .prologue
    .line 1960
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1963
    :goto_0
    return-void

    .line 1962
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeSendOrientationChangeEvent(JI)V

    goto :goto_0
.end method

.method public setAccessibilityState(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3123
    if-nez p1, :cond_0

    .line 3124
    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeAccessibilityAllowed:Z

    .line 3125
    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchExplorationEnabled:Z

    .line 3130
    :goto_0
    return-void

    .line 3127
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeAccessibilityAllowed:Z

    .line 3128
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchExplorationEnabled:Z

    goto :goto_0
.end method

.method public setBrowserAccessibilityManager(Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;)V
    .locals 1

    .prologue
    .line 2985
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    .line 2987
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->hasFrameInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2988
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    invoke-virtual {v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->notifyFrameInfoInitialized()V

    .line 2990
    :cond_0
    return-void
.end method

.method public setContainerView(Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 848
    :try_start_0
    const-string/jumbo v0, "ContentViewCore.setContainerView"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 849
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 850
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mOverscrollRefreshHandler:Lorg/chromium/content/browser/OverscrollRefreshHandler;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 862
    :catchall_0
    move-exception v0

    const-string/jumbo v1, "ContentViewCore.setContainerView"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0

    .line 851
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    .line 852
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopupsAndClearSelection()V

    .line 855
    :cond_1
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    .line 856
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 857
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewAndroidDelegate:Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->updateCurrentContainerView(Landroid/view/ViewGroup;)V

    .line 858
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ContainerViewObserver;

    .line 859
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Lorg/chromium/content/browser/ContainerViewObserver;->onContainerViewChanged(Landroid/view/ViewGroup;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 862
    :cond_2
    const-string/jumbo v0, "ContentViewCore.setContainerView"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 863
    return-void
.end method

.method public setContainerViewInternals(Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;)V
    .locals 0

    .prologue
    .line 886
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    .line 887
    return-void
.end method

.method public setContentViewClient(Lorg/chromium/content/browser/ContentViewClient;)V
    .locals 2

    .prologue
    .line 1014
    if-nez p1, :cond_0

    .line 1015
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The client can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1017
    :cond_0
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    .line 1018
    return-void
.end method

.method public setContextualSearchClient(Lorg/chromium/content/browser/ContextualSearchClient;)V
    .locals 0

    .prologue
    .line 3315
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContextualSearchClient:Lorg/chromium/content/browser/ContextualSearchClient;

    .line 3316
    return-void
.end method

.method public setCurrentMotionEventOffsets(FF)V
    .locals 0

    .prologue
    .line 1787
    iput p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mCurrentTouchOffsetX:F

    .line 1788
    iput p2, p0, Lorg/chromium/content/browser/ContentViewCore;->mCurrentTouchOffsetY:F

    .line 1789
    return-void
.end method

.method public setDownloadDelegate(Lorg/chromium/content/browser/ContentViewDownloadDelegate;)V
    .locals 0

    .prologue
    .line 1972
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mDownloadDelegate:Lorg/chromium/content/browser/ContentViewDownloadDelegate;

    .line 1973
    return-void
.end method

.method public setFullscreenRequiredForOrientationLock(Z)V
    .locals 0

    .prologue
    .line 3302
    iput-boolean p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFullscreenRequiredForOrientationLock:Z

    .line 3303
    return-void
.end method

.method public setImeAdapterForTest(Lorg/chromium/content/browser/input/ImeAdapter;)V
    .locals 0

    .prologue
    .line 717
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    .line 718
    return-void
.end method

.method public setOverscrollRefreshHandler(Lorg/chromium/content/browser/OverscrollRefreshHandler;)V
    .locals 1

    .prologue
    .line 2571
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mOverscrollRefreshHandler:Lorg/chromium/content/browser/OverscrollRefreshHandler;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2572
    :cond_0
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mOverscrollRefreshHandler:Lorg/chromium/content/browser/OverscrollRefreshHandler;

    .line 2573
    return-void
.end method

.method public setPopupZoomerForTest(Lorg/chromium/content/browser/PopupZoomer;)V
    .locals 0

    .prologue
    .line 951
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    .line 952
    return-void
.end method

.method public setShouldSetAccessibilityFocusOnPageLoad(Z)V
    .locals 0

    .prologue
    .line 3146
    iput-boolean p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mShouldSetAccessibilityFocusOnPageLoad:Z

    .line 3147
    return-void
.end method

.method public setSmartClipDataListener(Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;)V
    .locals 0

    .prologue
    .line 3214
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipDataListener:Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;

    .line 3215
    return-void
.end method

.method public setSmartClipOffsets(II)V
    .locals 0

    .prologue
    .line 3189
    iput p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipOffsetX:I

    .line 3190
    iput p2, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipOffsetY:I

    .line 3191
    return-void
.end method

.method public setTopControlsHeight(IZ)V
    .locals 4

    .prologue
    .line 688
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTopControlsHeightPix:I

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTopControlsShrinkBlinkSize:Z

    if-ne p2, v0, :cond_1

    .line 696
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    iput p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mTopControlsHeightPix:I

    .line 694
    iput-boolean p2, p0, Lorg/chromium/content/browser/ContentViewCore;->mTopControlsShrinkBlinkSize:Z

    .line 695
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeWasResized(J)V

    goto :goto_0
.end method

.method public setZoomControlsDelegate(Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;)V
    .locals 1

    .prologue
    .line 1929
    if-nez p1, :cond_0

    .line 1930
    sget-object v0, Lorg/chromium/content/browser/ContentViewCore;->NO_OP_ZOOM_CONTROLS_DELEGATE:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    .line 1934
    :goto_0
    return-void

    .line 1933
    :cond_0
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    goto :goto_0
.end method

.method public shouldSetAccessibilityFocusOnPageLoad()Z
    .locals 1

    .prologue
    .line 3136
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mShouldSetAccessibilityFocusOnPageLoad:Z

    return v0
.end method

.method public supportsAccessibilityAction(I)Z
    .locals 1

    .prologue
    .line 2960
    const/4 v0, 0x0

    return v0
.end method

.method public updateDoubleTapSupport(Z)V
    .locals 4

    .prologue
    .line 1942
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1944
    :goto_0
    return-void

    .line 1943
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeSetDoubleTapSupportEnabled(JZ)V

    goto :goto_0
.end method

.method updateGestureStateListener(I)V
    .locals 3

    .prologue
    .line 1396
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    .line 1397
    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1398
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/GestureStateListener;

    .line 1399
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1412
    :pswitch_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollOffset()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollExtent()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content_public/browser/GestureStateListener;->onScrollStarted(II)V

    goto :goto_0

    .line 1401
    :pswitch_2
    invoke-virtual {v0}, Lorg/chromium/content_public/browser/GestureStateListener;->onPinchStarted()V

    goto :goto_0

    .line 1404
    :pswitch_3
    invoke-virtual {v0}, Lorg/chromium/content_public/browser/GestureStateListener;->onPinchEnded()V

    goto :goto_0

    .line 1407
    :pswitch_4
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollOffset()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollExtent()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content_public/browser/GestureStateListener;->onFlingEndGesture(II)V

    goto :goto_0

    .line 1417
    :pswitch_5
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollOffset()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollExtent()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content_public/browser/GestureStateListener;->onScrollEnded(II)V

    goto :goto_0

    .line 1425
    :cond_0
    return-void

    .line 1399
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public updateMultiTouchZoomSupport(Z)V
    .locals 4

    .prologue
    .line 1937
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1939
    :goto_0
    return-void

    .line 1938
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeSetMultiTouchZoomSupportEnabled(JZ)V

    goto :goto_0
.end method

.method public updateWindowAndroid(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 4

    .prologue
    .line 819
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    .line 820
    :goto_0
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeUpdateWindowAndroid(JJ)V

    .line 821
    return-void

    .line 819
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getNativePointer()J

    move-result-wide v0

    goto :goto_0
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    .line 2735
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->canZoomIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2736
    const/4 v0, 0x0

    .line 2738
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3fa00000    # 1.25f

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->pinchByDelta(F)Z

    move-result v0

    goto :goto_0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    .line 2750
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->canZoomOut()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2751
    const/4 v0, 0x0

    .line 2753
    :goto_0
    return v0

    :cond_0
    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->pinchByDelta(F)Z

    move-result v0

    goto :goto_0
.end method

.method public zoomReset()Z
    .locals 2

    .prologue
    .line 2766
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->canZoomOut()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2767
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getMinPageScaleFactor()F

    move-result v0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getPageScaleFactor()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->pinchByDelta(F)Z

    move-result v0

    goto :goto_0
.end method
