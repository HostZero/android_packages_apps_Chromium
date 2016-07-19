.class public Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;
.super Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;
.source "ChromeFullscreenManager.java"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$ActivityStateListener;
.implements Lorg/chromium/base/BaseChromiumApplication$WindowFocusChangedListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mActivityShowToken:I

.field private mBrowserControlOffset:F

.field private mContentViewScrolling:Z

.field private mControlAnimation:Landroid/animation/ObjectAnimator;

.field private final mControlContainer:Landroid/view/View;

.field private final mControlContainerHeight:I

.field private mControlOffset:F

.field private mCurrentAnimationIsShowing:Z

.field private mCurrentShowTime:J

.field private mDisableBrowserOverride:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInGesture:Z

.field private mIsEnteringPersistentModeState:Z

.field private final mListeners:Ljava/util/ArrayList;

.field private mMaxAnimationDurationMs:J

.field private mMinShowNotificationMs:J

.field private final mPersistentControlTokens:Ljava/util/HashSet;

.field private mPersistentControlsCurrentToken:I

.field private mPreviousContentOffset:F

.field private mPreviousControlOffset:F

.field private mRendererContentOffset:F

.field private mRendererControlOffset:F

.field private final mSupportsBrowserOverride:Z

.field private mTopControlsAndroidViewHidden:Z

.field private mTopControlsPermanentlyHidden:Z

.field private final mUpdateVisibilityRunnable:Ljava/lang/Runnable;

.field private final mWindow:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;IZ)V
    .locals 3

    .prologue
    const/high16 v2, 0x7fc00000    # NaNf

    .line 190
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;-><init>(Landroid/view/Window;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mPersistentControlTokens:Ljava/util/HashSet;

    .line 65
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mMinShowNotificationMs:J

    .line 66
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mMaxAnimationDurationMs:J

    .line 68
    iput v2, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mBrowserControlOffset:F

    .line 69
    iput v2, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mRendererControlOffset:F

    .line 71
    iput v2, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mPreviousContentOffset:F

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mActivityShowToken:I

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mListeners:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$1;-><init>(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mUpdateVisibilityRunnable:Ljava/lang/Runnable;

    .line 192
    iput-object p1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mActivity:Landroid/app/Activity;

    .line 193
    invoke-static {p0, p1}, Lorg/chromium/base/ApplicationStatus;->registerStateListenerForActivity(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;Landroid/app/Activity;)V

    .line 194
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/BaseChromiumApplication;

    invoke-virtual {v0, p0}, Lorg/chromium/base/BaseChromiumApplication;->registerWindowFocusChangedListener(Lorg/chromium/base/BaseChromiumApplication$WindowFocusChangedListener;)V

    .line 197
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mWindow:Landroid/view/Window;

    .line 198
    new-instance v0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$FullscreenHandler;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$FullscreenHandler;-><init>(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mHandler:Landroid/os/Handler;

    .line 199
    sget-boolean v0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 200
    :cond_0
    iput-object p2, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlContainer:Landroid/view/View;

    .line 201
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 202
    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlContainerHeight:I

    .line 203
    iget v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlContainerHeight:I

    int-to-float v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mRendererContentOffset:F

    .line 204
    iput-boolean p5, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mSupportsBrowserOverride:Z

    .line 205
    invoke-direct {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->updateControlOffset()V

    .line 206
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mDisableBrowserOverride:Z

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)F
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mBrowserControlOffset:F

    return v0
.end method

.method static synthetic access$1002(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlAnimation:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$102(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;F)F
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mBrowserControlOffset:F

    return p1
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->updateControlOffset()V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->updateVisuals()V

    return-void
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)Z
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->shouldShowAndroidControls()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)Landroid/view/View;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;Z)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->update(Z)V

    return-void
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->getActiveTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlContainerHeight:I

    return v0
.end method

.method static synthetic access$900(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mIsEnteringPersistentModeState:Z

    return v0
.end method

.method static synthetic access$902(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mIsEnteringPersistentModeState:Z

    return p1
.end method

.method private animateIfNecessary(ZJ)V
    .locals 6

    .prologue
    .line 691
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 692
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mCurrentAnimationIsShowing:Z

    if-eq v0, p1, :cond_2

    .line 693
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 694
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlAnimation:Landroid/animation/ObjectAnimator;

    .line 700
    :cond_1
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 701
    :goto_0
    iget-wide v2, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mMaxAnimationDurationMs:J

    long-to-float v1, v2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->getControlOffset()F

    move-result v2

    sub-float v2, v0, v2

    iget v3, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlContainerHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-long v2, v1

    .line 703
    new-instance v1, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$ControlsOffsetProperty;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$ControlsOffsetProperty;-><init>(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)V

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    invoke-static {p0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlAnimation:Landroid/animation/ObjectAnimator;

    .line 704
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlAnimation:Landroid/animation/ObjectAnimator;

    new-instance v1, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$3;

    invoke-direct {v1, p0, p1}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$3;-><init>(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 718
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 719
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 720
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 721
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mCurrentAnimationIsShowing:Z

    .line 722
    :cond_2
    return-void

    .line 700
    :cond_3
    iget v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlContainerHeight:I

    neg-int v0, v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method private applyMarginToFullChildViews(Landroid/view/ViewGroup;F)V
    .locals 5

    .prologue
    .line 556
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 557
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 558
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 562
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    float-to-int v4, p2

    if-eq v3, v4, :cond_0

    .line 564
    float-to-int v3, p2

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 565
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 566
    const-string/jumbo v0, "FullscreenManager:child.requestLayout()"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->instant(Ljava/lang/String;)V

    .line 556
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 569
    :cond_1
    return-void
.end method

.method private applyTranslationToTopChildViews(Landroid/view/ViewGroup;F)V
    .locals 4

    .prologue
    .line 572
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 573
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 574
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 576
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 578
    const/16 v3, 0x30

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v0, v0, 0x70

    if-ne v3, v0, :cond_0

    .line 579
    invoke-virtual {v2, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 580
    const-string/jumbo v0, "FullscreenManager:child.setTranslationY()"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->instant(Ljava/lang/String;)V

    .line 572
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 583
    :cond_1
    return-void
.end method

.method private getActiveContentViewCore()Lorg/chromium/content/browser/ContentViewCore;
    .locals 1

    .prologue
    .line 591
    invoke-direct {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->getActiveTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 592
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getActiveTab()Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .prologue
    .line 586
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 587
    return-object v0
.end method

.method private rendererContentOffset()F
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mRendererContentOffset:F

    return v0
.end method

.method private rendererControlOffset()F
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mRendererControlOffset:F

    return v0
.end method

.method private scheduleVisibilityUpdate()V
    .locals 2

    .prologue
    .line 479
    invoke-direct {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->shouldShowAndroidControls()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 480
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 483
    :goto_1
    return-void

    .line 479
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 481
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlContainer:Landroid/view/View;

    iget-object v1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mUpdateVisibilityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 482
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlContainer:Landroid/view/View;

    iget-object v1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mUpdateVisibilityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private shouldShowAndroidControls()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 531
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mTopControlsAndroidViewHidden:Z

    if-eqz v0, :cond_0

    .line 552
    :goto_0
    return v3

    .line 533
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->getControlOffset()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    move v1, v2

    .line 534
    :goto_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->getActiveContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    .line 535
    if-nez v0, :cond_2

    move v3, v1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 533
    goto :goto_1

    .line 536
    :cond_2
    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v5

    move v4, v3

    .line 538
    :goto_2
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v4, v0, :cond_3

    .line 539
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 540
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v6, v6, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v6, :cond_4

    .line 542
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 544
    const/16 v6, 0x30

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v0, v0, 0x70

    if-ne v6, v0, :cond_4

    move v1, v2

    .line 550
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mPersistentControlTokens:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    :goto_3
    or-int v3, v1, v2

    .line 552
    goto :goto_0

    .line 538
    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_5
    move v2, v3

    .line 550
    goto :goto_3
.end method

.method private update(Z)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 664
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mInGesture:Z

    .line 665
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mContentViewScrolling:Z

    .line 667
    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mCurrentShowTime:J

    .line 670
    :cond_0
    if-nez p1, :cond_4

    .line 671
    iget-object v2, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mCurrentAnimationIsShowing:Z

    if-eqz v2, :cond_3

    move v0, v1

    .line 682
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 683
    if-eqz v0, :cond_2

    .line 684
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mCurrentShowTime:J

    sub-long/2addr v2, v4

    .line 685
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mHandler:Landroid/os/Handler;

    iget-wide v4, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mMinShowNotificationMs:J

    sub-long v2, v4, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 688
    :cond_2
    return-void

    .line 674
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mCurrentShowTime:J

    sub-long/2addr v2, v4

    .line 675
    iget-wide v4, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mMinShowNotificationMs:J

    sub-long v2, v4, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->animateIfNecessary(ZJ)V

    goto :goto_0

    .line 678
    :cond_4
    invoke-direct {p0, v1, v6, v7}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->animateIfNecessary(ZJ)V

    .line 679
    iget-object v2, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mPersistentControlTokens:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private updateControlOffset()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 379
    const/4 v4, 0x0

    .line 381
    iget v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mBrowserControlOffset:F

    iget v3, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mBrowserControlOffset:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_2

    move v0, v1

    .line 382
    :goto_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->rendererControlOffset()F

    move-result v3

    .line 383
    cmpl-float v5, v3, v3

    if-eqz v5, :cond_0

    move v2, v1

    .line 384
    :cond_0
    if-eqz v0, :cond_1

    if-nez v2, :cond_5

    .line 385
    :cond_1
    if-eqz v0, :cond_3

    iget v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlContainerHeight:I

    neg-int v0, v0

    int-to-float v0, v0

    move v1, v0

    :goto_1
    if-eqz v2, :cond_4

    iget v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlContainerHeight:I

    neg-int v0, v0

    int-to-float v0, v0

    :goto_2
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 389
    :goto_3
    iput v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlOffset:F

    .line 390
    return-void

    :cond_2
    move v0, v2

    .line 381
    goto :goto_0

    .line 385
    :cond_3
    iget v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mBrowserControlOffset:F

    move v1, v0

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_2

    :cond_5
    move v0, v4

    goto :goto_3
.end method

.method private updateVisuals()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 486
    const-string/jumbo v0, "FullscreenManager:updateVisuals"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->getControlOffset()F

    move-result v3

    .line 489
    iget v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mPreviousControlOffset:F

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1

    .line 490
    iput v3, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mPreviousControlOffset:F

    .line 492
    invoke-direct {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->scheduleVisibilityUpdate()V

    .line 493
    invoke-direct {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->shouldShowAndroidControls()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlContainer:Landroid/view/View;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->getControlOffset()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    move v1, v2

    .line 495
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 496
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$FullscreenListener;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->getVisibleContentOffset()F

    move-result v4

    invoke-interface {v0, v4}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$FullscreenListener;->onVisibleContentOffsetChanged(F)V

    .line 495
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 500
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->getActiveTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 501
    if-eqz v0, :cond_2

    iget v1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlContainerHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v1, v3, v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mIsEnteringPersistentModeState:Z

    if-eqz v1, :cond_2

    .line 502
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->getHtmlApiHandler()Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->enterFullscreen(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 503
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mIsEnteringPersistentModeState:Z

    .line 506
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->updateContentViewChildrenState()V

    .line 508
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->getContentOffset()F

    move-result v1

    .line 509
    iget v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mPreviousContentOffset:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_4

    .line 510
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 511
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$FullscreenListener;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$FullscreenListener;->onContentOffsetChanged(F)V

    .line 510
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 513
    :cond_3
    iput v1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mPreviousContentOffset:F

    .line 516
    :cond_4
    const-string/jumbo v0, "FullscreenManager:updateVisuals"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 517
    return-void
.end method


# virtual methods
.method public addListener(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$FullscreenListener;)V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_0
    return-void
.end method

.method public areTopControlsPermanentlyHidden()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mTopControlsPermanentlyHidden:Z

    return v0
.end method

.method protected createApiDelegate()Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler$FullscreenHtmlApiDelegate;
    .locals 1

    .prologue
    .line 238
    new-instance v0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$2;-><init>(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)V

    return-object v0
.end method

.method public disableBrowserOverrideForTest()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 279
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 281
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mDisableBrowserOverride:Z

    .line 282
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mPersistentControlTokens:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 283
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 284
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlAnimation:Landroid/animation/ObjectAnimator;

    .line 288
    :cond_0
    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mBrowserControlOffset:F

    .line 289
    invoke-direct {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->updateVisuals()V

    .line 290
    return-void
.end method

.method public drawControlsAsTexture()Z
    .locals 2

    .prologue
    .line 353
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->getControlOffset()F

    move-result v0

    iget v1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlContainerHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentOffset()F
    .locals 1

    .prologue
    .line 365
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mTopControlsPermanentlyHidden:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 366
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->rendererContentOffset()F

    move-result v0

    goto :goto_0
.end method

.method public getControlOffset()F
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mTopControlsPermanentlyHidden:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->getTopControlsHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    .line 374
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlOffset:F

    goto :goto_0
.end method

.method public getTopControlsHeight()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlContainerHeight:I

    return v0
.end method

.method public getVisibleContentOffset()F
    .locals 2

    .prologue
    .line 429
    iget v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlContainerHeight:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->getControlOffset()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public hasBrowserControlOffsetOverride()Z
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mBrowserControlOffset:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlAnimation:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mPersistentControlTokens:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideControlsPersistent(I)V
    .locals 2

    .prologue
    .line 327
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mSupportsBrowserOverride:Z

    if-nez v0, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mPersistentControlTokens:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mPersistentControlTokens:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->update(Z)V

    goto :goto_0
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->setPersistentFullscreenMode(Z)V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 218
    iget v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mActivityShowToken:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->showControlsPersistentAndClearOldToken(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mActivityShowToken:I

    goto :goto_0

    .line 219
    :cond_2
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 220
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->unregisterActivityStateListener(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;)V

    .line 221
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/BaseChromiumApplication;

    invoke-virtual {v0, p0}, Lorg/chromium/base/BaseChromiumApplication;->unregisterWindowFocusChangedListener(Lorg/chromium/base/BaseChromiumApplication$WindowFocusChangedListener;)V

    goto :goto_0
.end method

.method public onContentViewScrollingStateChanged(Z)V
    .locals 0

    .prologue
    .line 726
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mContentViewScrolling:Z

    .line 727
    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->updateVisuals()V

    .line 728
    :cond_0
    return-void
.end method

.method public onInterceptMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 637
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->getControlOffset()F

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlContainerHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mTopControlsAndroidViewHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 646
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 647
    if-eqz v0, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 649
    :cond_0
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mInGesture:Z

    .line 652
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->getHtmlApiHandler()Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/fullscreen/FullscreenHtmlApiHandler;->hideNotificationToast()V

    .line 658
    :cond_1
    :goto_0
    return-void

    .line 653
    :cond_2
    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    if-ne v0, v2, :cond_1

    .line 655
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mInGesture:Z

    .line 656
    invoke-direct {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->updateVisuals()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Landroid/app/Activity;Z)V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mActivity:Landroid/app/Activity;

    if-eq v0, p1, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->onWindowFocusChanged(Z)V

    .line 230
    invoke-static {}, Lorg/chromium/content/browser/ContentVideoView;->getContentVideoView()Lorg/chromium/content/browser/ContentVideoView;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentVideoView;->onFullscreenWindowFocused()V

    goto :goto_0
.end method

.method public removeListener(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$FullscreenListener;)V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 445
    return-void
.end method

.method public setAnimationDurationsForTest(JJ)V
    .locals 1

    .prologue
    .line 299
    iput-wide p1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mMinShowNotificationMs:J

    .line 300
    iput-wide p3, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mMaxAnimationDurationMs:J

    .line 301
    return-void
.end method

.method public setHideTopControlsAndroidView(Z)V
    .locals 1

    .prologue
    .line 525
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mTopControlsAndroidViewHidden:Z

    if-ne v0, p1, :cond_0

    .line 528
    :goto_0
    return-void

    .line 526
    :cond_0
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mTopControlsAndroidViewHidden:Z

    .line 527
    invoke-direct {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->scheduleVisibilityUpdate()V

    goto :goto_0
.end method

.method public setOverlayVideoMode(Z)V
    .locals 2

    .prologue
    .line 394
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->setOverlayVideoMode(Z)V

    .line 396
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 397
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$FullscreenListener;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager$FullscreenListener;->onToggleOverlayVideoMode(Z)V

    .line 396
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 399
    :cond_0
    return-void
.end method

.method public setPositionsForTab(FF)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 609
    iget v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mActivityShowToken:I

    if-eq v0, v1, :cond_0

    .line 610
    iget v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mActivityShowToken:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->hideControlsPersistent(I)V

    .line 611
    iput v1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mActivityShowToken:I

    .line 614
    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlContainerHeight:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 616
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlContainerHeight:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 619
    iget v2, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mRendererControlOffset:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mRendererContentOffset:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    .line 629
    :cond_1
    :goto_0
    return-void

    .line 624
    :cond_2
    iput v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mRendererControlOffset:F

    .line 625
    iput v1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mRendererContentOffset:F

    .line 626
    invoke-direct {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->updateControlOffset()V

    .line 628
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlAnimation:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->updateVisuals()V

    goto :goto_0
.end method

.method public setPositionsForTabToNonFullscreen()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 597
    invoke-direct {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->getActiveTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 598
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isShowingTopControlsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 599
    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlContainerHeight:I

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->setPositionsForTab(FF)V

    .line 603
    :goto_0
    return-void

    .line 601
    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlContainerHeight:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->setPositionsForTab(FF)V

    goto :goto_0
.end method

.method public setTopControlsPermamentlyHidden(Z)V
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mTopControlsPermanentlyHidden:Z

    if-ne p1, v0, :cond_0

    .line 340
    :goto_0
    return-void

    .line 338
    :cond_0
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mTopControlsPermanentlyHidden:Z

    .line 339
    invoke-direct {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->updateVisuals()V

    goto :goto_0
.end method

.method public showControlsPersistent()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 311
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mSupportsBrowserOverride:Z

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 315
    :cond_0
    :goto_0
    return v0

    .line 312
    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mPersistentControlsCurrentToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mPersistentControlsCurrentToken:I

    .line 313
    iget-object v1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mPersistentControlTokens:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mPersistentControlTokens:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-direct {p0, v3}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->update(Z)V

    goto :goto_0
.end method

.method public showControlsPersistentAndClearOldToken(I)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 320
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mSupportsBrowserOverride:Z

    if-nez v1, :cond_0

    .line 322
    :goto_0
    return v0

    .line 321
    :cond_0
    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mPersistentControlTokens:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 322
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->showControlsPersistent()I

    move-result v0

    goto :goto_0
.end method

.method public showControlsTransient()V
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mSupportsBrowserOverride:Z

    if-nez v0, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mPersistentControlTokens:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->update(Z)V

    goto :goto_0
.end method

.method public updateContentViewChildrenState()V
    .locals 4

    .prologue
    .line 464
    invoke-direct {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->getActiveContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    .line 465
    if-nez v0, :cond_0

    .line 472
    :goto_0
    return-void

    .line 466
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v1

    .line 468
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->getControlOffset()F

    move-result v2

    iget v3, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlContainerHeight:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 469
    invoke-direct {p0, v1, v2}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->applyTranslationToTopChildViews(Landroid/view/ViewGroup;F)V

    .line 470
    invoke-direct {p0, v1, v2}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->applyMarginToFullChildViews(Landroid/view/ViewGroup;F)V

    .line 471
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->updateContentViewViewportSize(Lorg/chromium/content/browser/ContentViewCore;)V

    goto :goto_0
.end method

.method public updateContentViewViewportSize(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 2

    .prologue
    .line 453
    if-nez p1, :cond_1

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mInGesture:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mContentViewScrolling:Z

    if-nez v0, :cond_0

    .line 457
    invoke-direct {p0}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->rendererContentOffset()F

    move-result v0

    float-to-int v0, v0

    .line 458
    if-eqz v0, :cond_2

    iget v1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlContainerHeight:I

    if-ne v0, v1, :cond_0

    .line 459
    :cond_2
    iget v1, p0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->mControlContainerHeight:I

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v1, v0}, Lorg/chromium/content/browser/ContentViewCore;->setTopControlsHeight(IZ)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
