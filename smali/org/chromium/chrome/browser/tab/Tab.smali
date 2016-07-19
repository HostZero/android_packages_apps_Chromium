.class public final Lorg/chromium/chrome/browser/tab/Tab;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final INVALID_BOOKMARK_ID:J = -0x1L

.field public static final INVALID_TAB_ID:I = -0x1

.field protected static final MSG_ID_ENABLE_FULLSCREEN_AFTER_LOAD:I = 0x1


# instance fields
.field private mAppAssociatedWith:Ljava/lang/String;

.field private mAppBannerManager:Lorg/chromium/chrome/browser/banners/AppBannerManager;

.field private mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

.field private mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

.field private mContentViewParent:Landroid/widget/FrameLayout;

.field private final mDefaultThemeColor:I

.field private mDelegateFactory:Lorg/chromium/chrome/browser/tab/TabDelegateFactory;

.field private mDownloadDelegate:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

.field private mFailedToRestore:Z

.field private mFavicon:Landroid/graphics/Bitmap;

.field private mFaviconUrl:Ljava/lang/String;

.field private mFrozenContentsState:Lorg/chromium/chrome/browser/TabState$WebContentsState;

.field private mFullscreenHungRendererToken:I

.field private mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

.field private mGestureStateListener:Lorg/chromium/content_public/browser/GestureStateListener;

.field private mGroupedWithParent:Z

.field protected mHandler:Landroid/os/Handler;

.field private final mId:I

.field private mIdealFaviconSize:I

.field private final mIncognito:Z

.field private mInfoBarContainer:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

.field private mInterceptNavigationDelegate:Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;

.field private mIsAllowedToReturnToExternalApp:Z

.field private mIsBeingRestored:Z

.field private mIsClosing:Z

.field private mIsFullscreenWaitingForLoad:Z

.field private mIsHidden:Z

.field private mIsInitialized:Z

.field private mIsLoading:Z

.field private mIsNativePageCommitPending:Z

.field private mIsShowingErrorPage:Z

.field private mIsTabStateDirty:Z

.field private mIsTitleDirectionRtl:Z

.field private final mLaunchType:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

.field private mLoFiBarController:Lorg/chromium/chrome/browser/snackbar/LofiBarController;

.field private mNativePage:Lorg/chromium/chrome/browser/NativePage;

.field private mNativeTabAndroid:J

.field private mNeedsReload:Z

.field private final mObservers:Lorg/chromium/base/ObserverList;

.field private final mOverlayContentViewCores:Ljava/util/List;

.field private mParentId:I

.field private mParentIntent:Landroid/content/Intent;

.field private mPendingLoadParams:Lorg/chromium/content_public/browser/LoadUrlParams;

.field private mPreviousFullscreenContentOffsetY:F

.field private mPreviousFullscreenTopControlsOffsetY:F

.field private mSadTabView:Landroid/view/View;

.field private mShouldPreserve:Z

.field private mSwipeRefreshHandler:Lorg/chromium/chrome/browser/SwipeRefreshHandler;

.field private mSyncId:I

.field private final mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

.field private mTabRedirectHandler:Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

.field private mTabUma:Lorg/chromium/chrome/browser/tab/TabUma;

.field private final mThemedApplicationContext:Landroid/content/Context;

.field private mTimestampMillis:J

.field private mTitle:Ljava/lang/String;

.field private mTopControlsVisibilityDelegate:Lorg/chromium/chrome/browser/tab/TopControlsVisibilityDelegate;

.field private mUrl:Ljava/lang/String;

.field private mWebContentsDelegate:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

.field private mWebContentsObserver:Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;

.field private mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    const-class v0, Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/tab/Tab;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(IIZLandroid/content/Context;Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;Lorg/chromium/chrome/browser/TabState;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/high16 v4, 0x7fc00000    # NaNf

    const/4 v2, 0x1

    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mObservers:Lorg/chromium/base/ObserverList;

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mOverlayContentViewCores:Ljava/util/List;

    .line 208
    iput v5, p0, Lorg/chromium/chrome/browser/tab/Tab;->mParentId:I

    .line 220
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mGroupedWithParent:Z

    .line 236
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsTabStateDirty:Z

    .line 303
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsHidden:Z

    .line 308
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTimestampMillis:J

    .line 341
    iput v4, p0, Lorg/chromium/chrome/browser/tab/Tab;->mPreviousFullscreenTopControlsOffsetY:F

    .line 342
    iput v4, p0, Lorg/chromium/chrome/browser/tab/Tab;->mPreviousFullscreenContentOffsetY:F

    .line 343
    iput v5, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFullscreenHungRendererToken:I

    .line 344
    iput-boolean v6, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsFullscreenWaitingForLoad:Z

    .line 533
    new-instance v0, Lorg/chromium/chrome/browser/tab/Tab$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/tab/Tab$2;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

    .line 597
    invoke-static {}, Lorg/chromium/chrome/browser/tab/TabIdManager;->getInstance()Lorg/chromium/chrome/browser/tab/TabIdManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/tab/TabIdManager;->generateValidId(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mId:I

    .line 598
    iput p2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mParentId:I

    .line 599
    iput-boolean p3, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIncognito:Z

    .line 600
    if-eqz p4, :cond_1

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lorg/chromium/chrome/browser/ChromeActivity;->getThemeId()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    :goto_0
    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mThemedApplicationContext:Landroid/content/Context;

    .line 602
    iput-object p5, p0, Lorg/chromium/chrome/browser/tab/Tab;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    .line 603
    iput-object p6, p0, Lorg/chromium/chrome/browser/tab/Tab;->mLaunchType:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    .line 604
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mThemedApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 605
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getSnackbarManager()Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 606
    new-instance v0, Lorg/chromium/chrome/browser/snackbar/LofiBarController;

    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mThemedApplicationContext:Landroid/content/Context;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getSnackbarManager()Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/chromium/chrome/browser/snackbar/LofiBarController;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/snackbar/SnackbarManager;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mLoFiBarController:Lorg/chromium/chrome/browser/snackbar/LofiBarController;

    .line 609
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mThemedApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 610
    sget v2, Lorg/chromium/chrome/R$dimen;->default_favicon_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIdealFaviconSize:I

    .line 611
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIncognito:Z

    if-eqz v2, :cond_2

    sget v2, Lorg/chromium/chrome/R$color;->incognito_primary_color:I

    invoke-static {v0, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    :goto_1
    iput v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mDefaultThemeColor:I

    .line 620
    :goto_2
    if-nez p8, :cond_4

    .line 621
    sget-boolean v0, Lorg/chromium/chrome/browser/tab/Tab;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_RESTORE:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    if-ne p6, v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    move-object v0, v1

    .line 600
    goto :goto_0

    .line 611
    :cond_2
    sget v2, Lorg/chromium/chrome/R$color;->default_primary_color:I

    invoke-static {v0, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    goto :goto_1

    .line 615
    :cond_3
    const/16 v0, 0x10

    iput v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIdealFaviconSize:I

    .line 616
    iput v6, p0, Lorg/chromium/chrome/browser/tab/Tab;->mDefaultThemeColor:I

    goto :goto_2

    .line 623
    :cond_4
    sget-boolean v0, Lorg/chromium/chrome/browser/tab/Tab;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_RESTORE:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    if-eq p6, v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 624
    :cond_5
    invoke-direct {p0, p8}, Lorg/chromium/chrome/browser/tab/Tab;->restoreFieldsFromState(Lorg/chromium/chrome/browser/TabState;)V

    .line 627
    :cond_6
    new-instance v0, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/tab/Tab$TabContentViewClient;-><init>(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tab/Tab$1;)V

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/tab/Tab;->setContentViewClient(Lorg/chromium/content/browser/ContentViewClient;)V

    .line 629
    new-instance v0, Lorg/chromium/chrome/browser/tab/Tab$3;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/tab/Tab$3;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mHandler:Landroid/os/Handler;

    .line 638
    new-instance v0, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mThemedApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTabRedirectHandler:Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    .line 639
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tab/Tab;->addObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 641
    if-eqz p3, :cond_7

    .line 642
    invoke-static {}, Lorg/chromium/content/browser/crypto/CipherFactory;->getInstance()Lorg/chromium/content/browser/crypto/CipherFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/crypto/CipherFactory;->triggerKeyGeneration()V

    .line 645
    :cond_7
    invoke-static {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->createForTab(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 646
    invoke-static {p0}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->createForTab(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 648
    if-eqz p7, :cond_b

    .line 649
    new-instance v0, Lorg/chromium/chrome/browser/tab/TabUma;

    invoke-direct {v0, p7}, Lorg/chromium/chrome/browser/tab/TabUma;-><init>(Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTabUma:Lorg/chromium/chrome/browser/tab/TabUma;

    .line 650
    if-nez p8, :cond_9

    .line 651
    sget-boolean v0, Lorg/chromium/chrome/browser/tab/Tab;->$assertionsDisabled:Z

    if-nez v0, :cond_b

    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_RESTORE:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    if-eq p6, v0, :cond_8

    sget-object v0, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->FROZEN_ON_RESTORE:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    if-ne p7, v0, :cond_b

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 654
    :cond_9
    sget-boolean v0, Lorg/chromium/chrome/browser/tab/Tab;->$assertionsDisabled:Z

    if-nez v0, :cond_b

    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_RESTORE:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    if-ne p6, v0, :cond_a

    sget-object v0, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->FROZEN_ON_RESTORE:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    if-eq p7, v0, :cond_b

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 658
    :cond_b
    return-void
.end method

.method public constructor <init>(IZLorg/chromium/ui/base/WindowAndroid;)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 576
    const/4 v2, -0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v5, p3

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    invoke-direct/range {v0 .. v8}, Lorg/chromium/chrome/browser/tab/Tab;-><init>(IIZLandroid/content/Context;Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;Lorg/chromium/chrome/browser/TabState;)V

    .line 577
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/tab/Tab;FFZ)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/tab/Tab;->onOffsetsChanged(FFZ)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/tab/Tab;->updateTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/base/ObserverList;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mObservers:Lorg/chromium/base/ObserverList;

    return-object v0
.end method

.method static synthetic access$302(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mAppAssociatedWith:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/Tab;->scheduleEnableFullscreenLoadDelayIfNecessary()V

    return-void
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/Tab;->enableFullscreenAfterLoad()V

    return-void
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/ui/base/WindowAndroid;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    return-object v0
.end method

.method private cancelEnableFullscreenLoadDelay()V
    .locals 2

    .prologue
    .line 1608
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1609
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsFullscreenWaitingForLoad:Z

    .line 1610
    return-void
.end method

.method private clearHungRendererState()V
    .locals 2

    .prologue
    .line 2486
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    if-nez v0, :cond_0

    .line 2491
    :goto_0
    return-void

    .line 2488
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    iget v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFullscreenHungRendererToken:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->hideControlsPersistent(I)V

    .line 2489
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFullscreenHungRendererToken:I

    .line 2490
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->updateFullscreenEnabledState()V

    goto :goto_0
.end method

.method private clearNativePtr()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 2362
    sget-boolean v0, Lorg/chromium/chrome/browser/tab/Tab;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativeTabAndroid:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2363
    :cond_0
    iput-wide v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativeTabAndroid:J

    .line 2364
    return-void
.end method

.method private static computeMRURank(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2850
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabUma()Lorg/chromium/chrome/browser/tab/TabUma;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/TabUma;->getLastShownTimestamp()J

    move-result-wide v2

    move v1, v0

    .line 2852
    :goto_0
    invoke-interface {p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 2853
    invoke-interface {p1, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v4

    .line 2854
    if-eq v4, p0, :cond_0

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/tab/Tab;->getTabUma()Lorg/chromium/chrome/browser/tab/TabUma;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/tab/Tab;->getTabUma()Lorg/chromium/chrome/browser/tab/TabUma;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/tab/TabUma;->getLastShownTimestamp()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    .line 2856
    add-int/lit8 v1, v1, 0x1

    .line 2852
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2859
    :cond_1
    return v1
.end method

.method public static createBringTabToFrontIntent(I)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 2938
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object v0

    .line 2939
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 2940
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 2941
    instance-of v1, v0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 2944
    const/4 v0, 0x0

    .line 2953
    :goto_0
    return-object v0

    .line 2948
    :cond_1
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2949
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2950
    const-string/jumbo v2, "com.android.browser.application_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2951
    sget-object v2, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;->BRING_TAB_TO_FRONT:Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/IntentHandler$TabOpenType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2952
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static createFrozenTabFromState(ILorg/chromium/chrome/browser/ChromeActivity;ZLorg/chromium/ui/base/WindowAndroid;ILorg/chromium/chrome/browser/TabState;)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 9

    .prologue
    .line 2885
    sget-boolean v0, Lorg/chromium/chrome/browser/tab/Tab;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p5, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2886
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/tab/Tab;

    sget-object v6, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_RESTORE:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    sget-object v7, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->FROZEN_ON_RESTORE:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    move v1, p0

    move v2, p4

    move v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lorg/chromium/chrome/browser/tab/Tab;-><init>(IIZLandroid/content/Context;Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;Lorg/chromium/chrome/browser/TabState;)V

    return-object v0
.end method

.method private createGestureStateListener()Lorg/chromium/content_public/browser/GestureStateListener;
    .locals 1

    .prologue
    .line 502
    new-instance v0, Lorg/chromium/chrome/browser/tab/Tab$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/tab/Tab$1;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-object v0
.end method

.method public static createLiveTab(ILorg/chromium/chrome/browser/ChromeActivity;ZLorg/chromium/ui/base/WindowAndroid;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;IZ)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 9

    .prologue
    .line 2912
    new-instance v0, Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz p6, :cond_0

    sget-object v7, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->LIVE_IN_BACKGROUND:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    :goto_0
    const/4 v8, 0x0

    move v1, p0

    move v2, p5

    move v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lorg/chromium/chrome/browser/tab/Tab;-><init>(IIZLandroid/content/Context;Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;Lorg/chromium/chrome/browser/TabState;)V

    return-object v0

    :cond_0
    sget-object v7, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->LIVE_IN_FOREGROUND:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    goto :goto_0
.end method

.method public static createTabForLazyLoad(Lorg/chromium/chrome/browser/ChromeActivity;ZLorg/chromium/ui/base/WindowAndroid;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;ILorg/chromium/content_public/browser/LoadUrlParams;)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 9

    .prologue
    .line 2898
    new-instance v0, Lorg/chromium/chrome/browser/tab/Tab;

    const/4 v1, -0x1

    sget-object v7, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->FROZEN_FOR_LAZY_LOAD:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    const/4 v8, 0x0

    move v2, p4

    move v3, p1

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v8}, Lorg/chromium/chrome/browser/tab/Tab;-><init>(IIZLandroid/content/Context;Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;Lorg/chromium/chrome/browser/TabState;)V

    .line 2901
    invoke-direct {v0, p5}, Lorg/chromium/chrome/browser/tab/Tab;->setPendingLoadParams(Lorg/chromium/content_public/browser/LoadUrlParams;)V

    .line 2902
    return-object v0
.end method

.method private final destroyContentViewCore(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2194
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-nez v0, :cond_0

    .line 2223
    :goto_0
    return-void

    .line 2196
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 2197
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 2198
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mGestureStateListener:Lorg/chromium/content_public/browser/GestureStateListener;

    if-eqz v0, :cond_1

    .line 2199
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mGestureStateListener:Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->removeGestureStateListener(Lorg/chromium/content_public/browser/GestureStateListener;)V

    .line 2202
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mInfoBarContainer:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mInfoBarContainer:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2203
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mInfoBarContainer:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->removeFromParentView()Z

    .line 2204
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mInfoBarContainer:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->setContentViewCore(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 2206
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mSwipeRefreshHandler:Lorg/chromium/chrome/browser/SwipeRefreshHandler;

    if-eqz v0, :cond_3

    .line 2207
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mSwipeRefreshHandler:Lorg/chromium/chrome/browser/SwipeRefreshHandler;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->setContentViewCore(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 2208
    iput-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mSwipeRefreshHandler:Lorg/chromium/chrome/browser/SwipeRefreshHandler;

    .line 2210
    :cond_3
    iput-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewParent:Landroid/widget/FrameLayout;

    .line 2211
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->destroy()V

    .line 2212
    iput-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    .line 2214
    iput-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mWebContentsDelegate:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

    .line 2216
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mWebContentsObserver:Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;

    if-eqz v0, :cond_4

    .line 2217
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mWebContentsObserver:Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->destroy()V

    .line 2218
    iput-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mWebContentsObserver:Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;

    .line 2221
    :cond_4
    sget-boolean v0, Lorg/chromium/chrome/browser/tab/Tab;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativeTabAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2222
    :cond_5
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativeTabAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/tab/Tab;->nativeDestroyWebContents(JZ)V

    goto :goto_0
.end method

.method private destroyNativePageInternal(Lorg/chromium/chrome/browser/NativePage;)V
    .locals 2

    .prologue
    .line 2175
    if-nez p1, :cond_0

    .line 2179
    :goto_0
    return-void

    .line 2176
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/tab/Tab;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativePage:Lorg/chromium/chrome/browser/NativePage;

    if-ne p1, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Attempting to destroy active page."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2178
    :cond_1
    invoke-interface {p1}, Lorg/chromium/chrome/browser/NativePage;->destroy()V

    goto :goto_0
.end method

.method private enableFullscreenAfterLoad()V
    .locals 1

    .prologue
    .line 661
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsFullscreenWaitingForLoad:Z

    if-nez v0, :cond_0

    .line 665
    :goto_0
    return-void

    .line 663
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsFullscreenWaitingForLoad:Z

    .line 664
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->updateFullscreenEnabledState()V

    goto :goto_0
.end method

.method private getNativePtr()J
    .locals 2

    .prologue
    .line 2287
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativeTabAndroid:J

    return-wide v0
.end method

.method private getPendingLoadParams()Lorg/chromium/content_public/browser/LoadUrlParams;
    .locals 1

    .prologue
    .line 2406
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mPendingLoadParams:Lorg/chromium/content_public/browser/LoadUrlParams;

    return-object v0
.end method

.method private getSyncId()I
    .locals 1

    .prologue
    .line 1129
    iget v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mSyncId:I

    return v0
.end method

.method private getTimestampMillis()J
    .locals 2

    .prologue
    .line 2444
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTimestampMillis:J

    return-wide v0
.end method

.method private getWebContentsState()Lorg/chromium/chrome/browser/TabState$WebContentsState;
    .locals 2

    .prologue
    .line 911
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFrozenContentsState:Lorg/chromium/chrome/browser/TabState$WebContentsState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFrozenContentsState:Lorg/chromium/chrome/browser/TabState$WebContentsState;

    .line 919
    :goto_0
    return-object v0

    .line 914
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContentsStateAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 915
    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 917
    :cond_1
    new-instance v0, Lorg/chromium/chrome/browser/TabState$WebContentsStateNative;

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/TabState$WebContentsStateNative;-><init>(Ljava/nio/ByteBuffer;)V

    .line 918
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/TabState$WebContentsState;->setVersion(I)V

    goto :goto_0
.end method

.method private getWebContentsStateAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    .line 924
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mPendingLoadParams:Lorg/chromium/content_public/browser/LoadUrlParams;

    if-nez v0, :cond_0

    .line 925
    invoke-static {p0}, Lorg/chromium/chrome/browser/TabState;->getContentsStateAsByteBuffer(Lorg/chromium/chrome/browser/tab/Tab;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 928
    :goto_0
    return-object v0

    .line 927
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mPendingLoadParams:Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/LoadUrlParams;->getReferrer()Lorg/chromium/content_public/common/Referrer;

    move-result-object v2

    .line 928
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mPendingLoadParams:Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/LoadUrlParams;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/chromium/content_public/common/Referrer;->getUrl()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/chromium/content_public/common/Referrer;->getPolicy()I

    move-result v0

    :goto_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v2

    invoke-static {v3, v1, v0, v2}, Lorg/chromium/chrome/browser/TabState;->createSingleNavigationStateAsByteBuffer(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private isHidingTopControlsEnabled()Z
    .locals 1

    .prologue
    .line 2570
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTopControlsVisibilityDelegate:Lorg/chromium/chrome/browser/tab/TopControlsVisibilityDelegate;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/TopControlsVisibilityDelegate;->isHidingTopControlsEnabled()Z

    move-result v0

    return v0
.end method

.method private native nativeAttachOverlayContentViewCore(JLorg/chromium/content/browser/ContentViewCore;Z)V
.end method

.method private native nativeAttachToTabContentManager(JLorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)V
.end method

.method private native nativeCreateHistoricalTab(J)V
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeDestroyWebContents(JZ)V
.end method

.method private native nativeDetachOverlayContentViewCore(JLorg/chromium/content/browser/ContentViewCore;)V
.end method

.method private native nativeGetBookmarkId(JZ)J
.end method

.method private native nativeGetFavicon(J)Landroid/graphics/Bitmap;
.end method

.method private native nativeGetOfflinePageOriginalUrl(J)Ljava/lang/String;
.end method

.method private native nativeGetProfileAndroid(J)Lorg/chromium/chrome/browser/profiles/Profile;
.end method

.method private native nativeHasOfflineCopy(J)Z
.end method

.method private native nativeHasPrerenderedUrl(JLjava/lang/String;)Z
.end method

.method private native nativeInit()V
.end method

.method private native nativeInitWebContents(JZLorg/chromium/content/browser/ContentViewCore;Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;)V
.end method

.method private native nativeIsOfflinePage(J)Z
.end method

.method private native nativeLoadOriginalImage(J)V
.end method

.method private native nativeLoadUrl(JLjava/lang/String;Ljava/lang/String;[BILjava/lang/String;IZZJZ)I
.end method

.method private native nativePrint(J)Z
.end method

.method private native nativeSetActiveNavigationEntryTitleForUrl(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSetInterceptNavigationDelegate(JLorg/chromium/components/navigation_interception/InterceptNavigationDelegate;)V
.end method

.method private native nativeUpdateDelegates(JLorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;)V
.end method

.method private native nativeUpdateTopControlsState(JIIZ)V
.end method

.method private notifyFaviconChanged()V
    .locals 3

    .prologue
    .line 1959
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabObservers()Lorg/chromium/base/ObserverList$RewindableIterator;

    move-result-object v1

    .line 1960
    :goto_0
    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1961
    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Lorg/chromium/chrome/browser/tab/TabObserver;->onFaviconUpdated(Lorg/chromium/chrome/browser/tab/Tab;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1963
    :cond_0
    return-void
.end method

.method private notifyPageTitleChanged()V
    .locals 2

    .prologue
    .line 1944
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabObservers()Lorg/chromium/base/ObserverList$RewindableIterator;

    move-result-object v1

    .line 1945
    :goto_0
    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1946
    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/tab/TabObserver;->onTitleUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    .line 1948
    :cond_0
    return-void
.end method

.method private onNavEntryChanged()V
    .locals 1

    .prologue
    .line 2270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsTabStateDirty:Z

    .line 2271
    return-void
.end method

.method private onOffsetsChanged(FFZ)V
    .locals 1

    .prologue
    .line 2502
    iput p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mPreviousFullscreenTopControlsOffsetY:F

    .line 2503
    iput p2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mPreviousFullscreenContentOffsetY:F

    .line 2505
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    if-nez v0, :cond_0

    .line 2512
    :goto_0
    return-void

    .line 2506
    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isNativePage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2507
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->setPositionsForTabToNonFullscreen()V

    .line 2511
    :goto_1
    invoke-static {}, Lorg/chromium/chrome/browser/tabmodel/TabModelImpl;->setActualTabSwitchLatencyMetricRequired()V

    goto :goto_0

    .line 2509
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->setPositionsForTab(FF)V

    goto :goto_1
.end method

.method private onWebContentsInstantSupportDisabled()V
    .locals 2

    .prologue
    .line 2231
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tab/TabObserver;->onWebContentsInstantSupportDisabled()V

    goto :goto_0

    .line 2232
    :cond_0
    return-void
.end method

.method private removeSadTabIfPresent()V
    .locals 2

    .prologue
    .line 1814
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isShowingSadTab()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1815
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mSadTabView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1816
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/tab/TabObserver;->onContentChanged(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    .line 1818
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mSadTabView:Landroid/view/View;

    .line 1819
    return-void
.end method

.method private restoreFieldsFromState(Lorg/chromium/chrome/browser/TabState;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 672
    sget-boolean v1, Lorg/chromium/chrome/browser/tab/Tab;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 673
    :cond_0
    iget-object v1, p1, Lorg/chromium/chrome/browser/TabState;->openerAppId:Ljava/lang/String;

    iput-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mAppAssociatedWith:Ljava/lang/String;

    .line 674
    iget-object v1, p1, Lorg/chromium/chrome/browser/TabState;->contentsState:Lorg/chromium/chrome/browser/TabState$WebContentsState;

    iput-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFrozenContentsState:Lorg/chromium/chrome/browser/TabState$WebContentsState;

    .line 675
    iget-wide v2, p1, Lorg/chromium/chrome/browser/TabState;->syncId:J

    long-to-int v1, v2

    iput v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mSyncId:I

    .line 676
    iget-boolean v1, p1, Lorg/chromium/chrome/browser/TabState;->shouldPreserve:Z

    iput-boolean v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mShouldPreserve:Z

    .line 677
    iget-wide v2, p1, Lorg/chromium/chrome/browser/TabState;->timestampMillis:J

    iput-wide v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTimestampMillis:J

    .line 678
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/TabState;->getVirtualUrlFromState()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mUrl:Ljava/lang/String;

    .line 680
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/TabState;->getDisplayTitleFromState()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTitle:Ljava/lang/String;

    .line 681
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/ui/base/LocalizationUtils;->getFirstStrongCharacterDirection(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsTitleDirectionRtl:Z

    .line 683
    return-void

    .line 681
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final restoreIfNeeded()V
    .locals 2

    .prologue
    .line 2021
    :try_start_0
    const-string/jumbo v0, "Tab.restoreIfNeeded"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 2022
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFrozenContentsState:Lorg/chromium/chrome/browser/TabState$WebContentsState;

    if-eqz v0, :cond_1

    .line 2025
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->unfreezeContents()Z

    .line 2036
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->loadIfNecessary()V

    .line 2037
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsBeingRestored:Z

    .line 2038
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTabUma:Lorg/chromium/chrome/browser/tab/TabUma;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTabUma:Lorg/chromium/chrome/browser/tab/TabUma;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/TabUma;->onRestoreStarted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2040
    :cond_0
    const-string/jumbo v0, "Tab.restoreIfNeeded"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 2041
    :goto_1
    return-void

    .line 2026
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNeedsReload:Z

    if-eqz v0, :cond_2

    .line 2029
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNeedsReload:Z

    .line 2030
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->requestRestoreLoad()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2040
    :catchall_0
    move-exception v0

    const-string/jumbo v1, "Tab.restoreIfNeeded"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string/jumbo v0, "Tab.restoreIfNeeded"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private scheduleEnableFullscreenLoadDelayIfNecessary()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1581
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsFullscreenWaitingForLoad:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1583
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1586
    :cond_0
    return-void
.end method

.method private setContentViewClient(Lorg/chromium/content/browser/ContentViewClient;)V
    .locals 2

    .prologue
    .line 1155
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    if-ne v0, p1, :cond_1

    .line 1168
    :cond_0
    :goto_0
    return-void

    .line 1157
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    .line 1158
    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    .line 1160
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v1, :cond_0

    .line 1162
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    if-eqz v1, :cond_2

    .line 1163
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->setContentViewClient(Lorg/chromium/content/browser/ContentViewClient;)V

    goto :goto_0

    .line 1164
    :cond_2
    if-eqz v0, :cond_0

    .line 1166
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    new-instance v1, Lorg/chromium/content/browser/ContentViewClient;

    invoke-direct {v1}, Lorg/chromium/content/browser/ContentViewClient;-><init>()V

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->setContentViewClient(Lorg/chromium/content/browser/ContentViewClient;)V

    goto :goto_0
.end method

.method private setContentViewCore(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 8

    .prologue
    .line 1655
    :try_start_0
    const-string/jumbo v0, "ChromeTab.setContentViewCore"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 1656
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativePage:Lorg/chromium/chrome/browser/NativePage;

    .line 1657
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativePage:Lorg/chromium/chrome/browser/NativePage;

    .line 1658
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/tab/Tab;->destroyNativePageInternal(Lorg/chromium/chrome/browser/NativePage;)V

    .line 1660
    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    .line 1661
    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 1662
    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 1669
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewParent:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 1670
    sget-boolean v0, Lorg/chromium/chrome/browser/tab/Tab;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1726
    :catchall_0
    move-exception v0

    const-string/jumbo v1, "ChromeTab.setContentViewCore"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0

    .line 1671
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewParent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1673
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mThemedApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewParent:Landroid/widget/FrameLayout;

    .line 1674
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewParent:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1678
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mDelegateFactory:Lorg/chromium/chrome/browser/tab/TabDelegateFactory;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/tab/TabDelegateFactory;->createWebContentsDelegate(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mWebContentsDelegate:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

    .line 1679
    new-instance v0, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;-><init>(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/chrome/browser/tab/Tab;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mWebContentsObserver:Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;

    .line 1682
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    if-eqz v0, :cond_2

    .line 1683
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->setContentViewClient(Lorg/chromium/content/browser/ContentViewClient;)V

    .line 1686
    :cond_2
    sget-boolean v0, Lorg/chromium/chrome/browser/tab/Tab;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativeTabAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1687
    :cond_3
    iget-wide v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativeTabAndroid:J

    iget-boolean v4, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIncognito:Z

    iget-object v5, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v6, p0, Lorg/chromium/chrome/browser/tab/Tab;->mWebContentsDelegate:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

    new-instance v7, Lorg/chromium/chrome/browser/tab/TabContextMenuPopulator;

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mDelegateFactory:Lorg/chromium/chrome/browser/tab/TabDelegateFactory;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/tab/TabDelegateFactory;->createContextMenuPopulator(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;

    move-result-object v0

    invoke-direct {v7, v0, p0}, Lorg/chromium/chrome/browser/tab/TabContextMenuPopulator;-><init>(Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;Lorg/chromium/chrome/browser/tab/Tab;)V

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/chromium/chrome/browser/tab/Tab;->nativeInitWebContents(JZLorg/chromium/content/browser/ContentViewCore;Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;)V

    .line 1694
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mInfoBarContainer:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    if-nez v0, :cond_4

    .line 1697
    new-instance v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mThemedApplicationContext:Landroid/content/Context;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewParent:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;-><init>(Landroid/content/Context;ILandroid/view/ViewGroup;Lorg/chromium/chrome/browser/tab/Tab;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mInfoBarContainer:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    .line 1702
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mInfoBarContainer:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->setContentViewCore(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 1704
    new-instance v0, Lorg/chromium/chrome/browser/SwipeRefreshHandler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mThemedApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/SwipeRefreshHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mSwipeRefreshHandler:Lorg/chromium/chrome/browser/SwipeRefreshHandler;

    .line 1705
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mSwipeRefreshHandler:Lorg/chromium/chrome/browser/SwipeRefreshHandler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->setContentViewCore(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 1707
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/tab/TabObserver;->onContentChanged(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_1

    .line 1700
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mInfoBarContainer:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewParent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->onParentViewChanged(ILandroid/view/ViewGroup;)V

    goto :goto_0

    .line 1712
    :cond_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->setShouldSetAccessibilityFocusOnPageLoad(Z)V

    .line 1714
    new-instance v0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mThemedApplicationContext:Landroid/content/Context;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/tab/Tab;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mDownloadDelegate:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    .line 1716
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mDownloadDelegate:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    invoke-virtual {p1, v0}, Lorg/chromium/content/browser/ContentViewCore;->setDownloadDelegate(Lorg/chromium/content/browser/ContentViewDownloadDelegate;)V

    .line 1718
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mDelegateFactory:Lorg/chromium/chrome/browser/tab/TabDelegateFactory;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/tab/TabDelegateFactory;->createInterceptNavigationDelegate(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tab/Tab;->setInterceptNavigationDelegate(Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;)V

    .line 1721
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mGestureStateListener:Lorg/chromium/content_public/browser/GestureStateListener;

    if-nez v0, :cond_6

    .line 1722
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/Tab;->createGestureStateListener()Lorg/chromium/content_public/browser/GestureStateListener;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mGestureStateListener:Lorg/chromium/content_public/browser/GestureStateListener;

    .line 1724
    :cond_6
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mGestureStateListener:Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {p1, v0}, Lorg/chromium/content/browser/ContentViewCore;->addGestureStateListener(Lorg/chromium/content_public/browser/GestureStateListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1726
    const-string/jumbo v0, "ChromeTab.setContentViewCore"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 1727
    return-void
.end method

.method private setNativePtr(J)V
    .locals 5

    .prologue
    .line 2368
    sget-boolean v0, Lorg/chromium/chrome/browser/tab/Tab;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativeTabAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2369
    :cond_0
    iput-wide p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativeTabAndroid:J

    .line 2370
    return-void
.end method

.method private setPendingLoadParams(Lorg/chromium/content_public/browser/LoadUrlParams;)V
    .locals 1

    .prologue
    .line 2413
    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mPendingLoadParams:Lorg/chromium/content_public/browser/LoadUrlParams;

    .line 2414
    invoke-virtual {p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mUrl:Ljava/lang/String;

    .line 2415
    return-void
.end method

.method private setSyncId(I)V
    .locals 0

    .prologue
    .line 1137
    iput p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mSyncId:I

    .line 1138
    return-void
.end method

.method private shouldIgnoreNewTab(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 2793
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getInterceptNavigationDelegate()Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;

    move-result-object v0

    .line 2794
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->shouldIgnoreNewTab(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showNativePage(Lorg/chromium/chrome/browser/NativePage;)V
    .locals 4

    .prologue
    .line 1291
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativePage:Lorg/chromium/chrome/browser/NativePage;

    if-ne v0, p1, :cond_0

    .line 1305
    :goto_0
    return-void

    .line 1292
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativePage:Lorg/chromium/chrome/browser/NativePage;

    .line 1293
    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativePage:Lorg/chromium/chrome/browser/NativePage;

    .line 1294
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->pushNativePageStateToNavigationEntry()V

    .line 1298
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    .line 1299
    iget v3, p0, Lorg/chromium/chrome/browser/tab/Tab;->mDefaultThemeColor:I

    invoke-interface {v0, p0, v3}, Lorg/chromium/chrome/browser/tab/TabObserver;->onDidChangeThemeColor(Lorg/chromium/chrome/browser/tab/Tab;I)V

    goto :goto_1

    .line 1301
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    .line 1302
    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/tab/TabObserver;->onContentChanged(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_2

    .line 1304
    :cond_2
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->destroyNativePageInternal(Lorg/chromium/chrome/browser/NativePage;)V

    goto :goto_0
.end method

.method private updateTitle(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1934
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTitle:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1941
    :goto_0
    return-void

    .line 1936
    :cond_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsTabStateDirty:Z

    .line 1937
    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTitle:Ljava/lang/String;

    .line 1938
    invoke-static {p1}, Lorg/chromium/ui/base/LocalizationUtils;->getFirstStrongCharacterDirection(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_1
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsTitleDirectionRtl:Z

    .line 1940
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/Tab;->notifyPageTitleChanged()V

    goto :goto_0

    .line 1938
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final addObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 691
    return-void
.end method

.method public final attachTabContentManager(Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)V
    .locals 2

    .prologue
    .line 1434
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativeTabAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/tab/Tab;->nativeAttachToTabContentManager(JLorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)V

    .line 1435
    return-void
.end method

.method public final canGoBack()Z
    .locals 1

    .prologue
    .line 705
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final canGoForward()Z
    .locals 1

    .prologue
    .line 712
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final createHistoricalTab()V
    .locals 2

    .prologue
    .line 2452
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2453
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativeTabAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->nativeCreateHistoricalTab(J)V

    .line 2457
    :cond_0
    :goto_0
    return-void

    .line 2454
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFrozenContentsState:Lorg/chromium/chrome/browser/TabState$WebContentsState;

    if-eqz v0, :cond_0

    .line 2455
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFrozenContentsState:Lorg/chromium/chrome/browser/TabState$WebContentsState;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/TabState$WebContentsState;->createHistoricalTab()V

    goto :goto_0
.end method

.method public final destroy()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x7fc00000    # NaNf

    const/4 v2, 0x0

    .line 1836
    iput-boolean v4, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsInitialized:Z

    .line 1838
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->updateTitle()V

    .line 1840
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTabUma:Lorg/chromium/chrome/browser/tab/TabUma;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTabUma:Lorg/chromium/chrome/browser/tab/TabUma;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/TabUma;->onDestroy()V

    .line 1842
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/tab/TabObserver;->onDestroyed(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    .line 1843
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->clear()V

    .line 1845
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativePage:Lorg/chromium/chrome/browser/NativePage;

    .line 1846
    iput-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativePage:Lorg/chromium/chrome/browser/NativePage;

    .line 1847
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/tab/Tab;->destroyNativePageInternal(Lorg/chromium/chrome/browser/NativePage;)V

    .line 1848
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/tab/Tab;->destroyContentViewCore(Z)V

    .line 1854
    sget-boolean v0, Lorg/chromium/chrome/browser/tab/Tab;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativeTabAndroid:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1855
    :cond_2
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativeTabAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->nativeDestroy(J)V

    .line 1856
    sget-boolean v0, Lorg/chromium/chrome/browser/tab/Tab;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativeTabAndroid:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1858
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mInfoBarContainer:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    if-eqz v0, :cond_4

    .line 1859
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mInfoBarContainer:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->destroy()V

    .line 1860
    iput-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mInfoBarContainer:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    .line 1865
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mAppBannerManager:Lorg/chromium/chrome/browser/banners/AppBannerManager;

    if-eqz v0, :cond_5

    .line 1866
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mAppBannerManager:Lorg/chromium/chrome/browser/banners/AppBannerManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/banners/AppBannerManager;->destroy()V

    .line 1867
    iput-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mAppBannerManager:Lorg/chromium/chrome/browser/banners/AppBannerManager;

    .line 1870
    :cond_5
    iput v3, p0, Lorg/chromium/chrome/browser/tab/Tab;->mPreviousFullscreenTopControlsOffsetY:F

    .line 1871
    iput v3, p0, Lorg/chromium/chrome/browser/tab/Tab;->mPreviousFullscreenContentOffsetY:F

    .line 1873
    iput-boolean v4, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNeedsReload:Z

    .line 1874
    return-void
.end method

.method protected final didFailPageLoad(I)V
    .locals 2

    .prologue
    .line 1600
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/Tab;->cancelEnableFullscreenLoadDelay()V

    .line 1601
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsBeingRestored:Z

    .line 1602
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTabUma:Lorg/chromium/chrome/browser/tab/TabUma;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTabUma:Lorg/chromium/chrome/browser/tab/TabUma;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/tab/TabUma;->onLoadFailed(I)V

    .line 1603
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-interface {v0, p0, p1}, Lorg/chromium/chrome/browser/tab/TabObserver;->onPageLoadFailed(Lorg/chromium/chrome/browser/tab/Tab;I)V

    goto :goto_0

    .line 1604
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->updateFullscreenEnabledState()V

    .line 1605
    return-void
.end method

.method public final didFailToRestore()Z
    .locals 1

    .prologue
    .line 2096
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFailedToRestore:Z

    return v0
.end method

.method protected final didFinishPageLoad()V
    .locals 2

    .prologue
    .line 1562
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsBeingRestored:Z

    .line 1563
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsTabStateDirty:Z

    .line 1564
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->updateTitle()V

    .line 1565
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->updateFullscreenEnabledState()V

    .line 1566
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isNativePage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1567
    const-string/jumbo v0, "Navigation.IsMobileOptimized"

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getIsMobileOptimizedHint()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    .line 1571
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTabUma:Lorg/chromium/chrome/browser/tab/TabUma;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTabUma:Lorg/chromium/chrome/browser/tab/TabUma;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/TabUma;->onPageLoadFinished()V

    .line 1573
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/tab/TabObserver;->onPageLoadFinished(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    .line 1577
    :cond_2
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/Tab;->scheduleEnableFullscreenLoadDelayIfNecessary()V

    .line 1578
    return-void
.end method

.method protected final didStartPageLoad(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 1542
    invoke-static {p1}, Lorg/chromium/components/dom_distiller/core/DomDistillerUrlUtils;->isDistilledPage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsFullscreenWaitingForLoad:Z

    .line 1544
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mLoFiBarController:Lorg/chromium/chrome/browser/snackbar/LofiBarController;

    if-eqz v0, :cond_0

    .line 1545
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mLoFiBarController:Lorg/chromium/chrome/browser/snackbar/LofiBarController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/snackbar/LofiBarController;->resetLoFiPopupShownForPageLoad()V

    .line 1548
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->updateTitle()V

    .line 1549
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/Tab;->removeSadTabIfPresent()V

    .line 1551
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/Tab;->clearHungRendererState()V

    .line 1553
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTabUma:Lorg/chromium/chrome/browser/tab/TabUma;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTabUma:Lorg/chromium/chrome/browser/tab/TabUma;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/TabUma;->onPageLoadStarted()V

    .line 1555
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-interface {v0, p0, p1}, Lorg/chromium/chrome/browser/tab/TabObserver;->onPageLoadStarted(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V

    goto :goto_1

    .line 1542
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1556
    :cond_3
    return-void
.end method

.method public final freezeNativePage()V
    .locals 2

    .prologue
    .line 1312
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativePage:Lorg/chromium/chrome/browser/NativePage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativePage:Lorg/chromium/chrome/browser/NativePage;

    instance-of v0, v0, Lorg/chromium/chrome/browser/FrozenNativePage;

    if-eqz v0, :cond_1

    .line 1315
    :cond_0
    :goto_0
    return-void

    .line 1313
    :cond_1
    sget-boolean v0, Lorg/chromium/chrome/browser/tab/Tab;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativePage:Lorg/chromium/chrome/browser/NativePage;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/NativePage;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Cannot freeze visible native page"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1314
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativePage:Lorg/chromium/chrome/browser/NativePage;

    invoke-static {v0}, Lorg/chromium/chrome/browser/FrozenNativePage;->freeze(Lorg/chromium/chrome/browser/NativePage;)Lorg/chromium/chrome/browser/FrozenNativePage;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativePage:Lorg/chromium/chrome/browser/NativePage;

    goto :goto_0
.end method

.method final getActivity()Lorg/chromium/chrome/browser/ChromeActivity;
    .locals 2

    .prologue
    .line 869
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/ui/base/WindowAndroid;->activityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 871
    instance-of v1, v0, Lorg/chromium/chrome/browser/ChromeActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/chromium/chrome/browser/ChromeActivity;

    .line 872
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getAllContentViewCores(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 1469
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1470
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mOverlayContentViewCores:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1471
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mOverlayContentViewCores:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1470
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1473
    :cond_1
    return-void
.end method

.method public final getAllContentViews(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 1451
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isNativePage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1452
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getView()Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1456
    :cond_0
    :goto_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mOverlayContentViewCores:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1457
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mOverlayContentViewCores:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1456
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1453
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v0, :cond_0

    .line 1454
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1459
    :cond_2
    return-void
.end method

.method public final getAppAssociatedWith()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2425
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mAppAssociatedWith:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppBannerManagerForTesting()Lorg/chromium/chrome/browser/banners/AppBannerManager;
    .locals 1

    .prologue
    .line 2830
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mAppBannerManager:Lorg/chromium/chrome/browser/banners/AppBannerManager;

    return-object v0
.end method

.method protected final getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mThemedApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final getAuthenticatorHelper()Lorg/chromium/chrome/browser/tab/AuthenticatorNavigationInterceptor;
    .locals 1

    .prologue
    .line 2806
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getInterceptNavigationDelegate()Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->getAuthenticatorNavigationInterceptor()Lorg/chromium/chrome/browser/tab/AuthenticatorNavigationInterceptor;

    move-result-object v0

    return-object v0
.end method

.method public final getBackgroundColor()I
    .locals 1

    .prologue
    .line 1024
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativePage:Lorg/chromium/chrome/browser/NativePage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativePage:Lorg/chromium/chrome/browser/NativePage;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/NativePage;->getBackgroundColor()I

    move-result v0

    .line 1026
    :goto_0
    return v0

    .line 1025
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getBackgroundColor()I

    move-result v0

    goto :goto_0

    .line 1026
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final getBookmarkId()J
    .locals 3

    .prologue
    .line 2687
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativeTabAndroid:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/chrome/browser/tab/Tab;->nativeGetBookmarkId(JZ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;
    .locals 1

    .prologue
    .line 1076
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativePage:Lorg/chromium/chrome/browser/NativePage;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final getDefaultThemeColor()I
    .locals 1

    .prologue
    .line 2928
    iget v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mDefaultThemeColor:I

    return v0
.end method

.method public final getDelegateFactory()Lorg/chromium/chrome/browser/tab/TabDelegateFactory;
    .locals 1

    .prologue
    .line 1441
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mDelegateFactory:Lorg/chromium/chrome/browser/tab/TabDelegateFactory;

    return-object v0
.end method

.method public final getFavicon()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 1978
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1985
    :goto_0
    return-object v0

    .line 1981
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFavicon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFaviconUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFaviconUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1982
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFavicon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1985
    :cond_1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativeTabAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->nativeGetFavicon(J)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public final getFrozenContentsState()Lorg/chromium/chrome/browser/TabState$WebContentsState;
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFrozenContentsState:Lorg/chromium/chrome/browser/TabState$WebContentsState;

    return-object v0
.end method

.method protected final getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;
    .locals 1

    .prologue
    .line 2479
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .prologue
    .line 1061
    iget v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mId:I

    return v0
.end method

.method public final getInfoBarContainer()Lorg/chromium/chrome/browser/infobar/InfoBarContainer;
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mInfoBarContainer:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    return-object v0
.end method

.method public final getInterceptNavigationDelegate()Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;
    .locals 1

    .prologue
    .line 2801
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mInterceptNavigationDelegate:Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;

    return-object v0
.end method

.method public final getLaunchType()Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;
    .locals 1

    .prologue
    .line 2463
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mLaunchType:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    return-object v0
.end method

.method public final getNativePage()Lorg/chromium/chrome/browser/NativePage;
    .locals 1

    .prologue
    .line 1085
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativePage:Lorg/chromium/chrome/browser/NativePage;

    return-object v0
.end method

.method public final getOfflinePageOriginalUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2717
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativeTabAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->nativeGetOfflinePageOriginalUrl(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getParentId()I
    .locals 1

    .prologue
    .line 2154
    iget v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mParentId:I

    return v0
.end method

.method protected final getParentIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 2874
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mParentIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public final getProfile()Lorg/chromium/chrome/browser/profiles/Profile;
    .locals 4

    .prologue
    .line 1050
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativeTabAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1051
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativeTabAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->nativeGetProfileAndroid(J)Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    goto :goto_0
.end method

.method public final getProgress()I
    .locals 2

    .prologue
    .line 1015
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabWebContentsDelegateAndroid()Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

    move-result-object v0

    .line 1016
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1017
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->getMostRecentProgress()I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x64

    goto :goto_0
.end method

.method public final getSecurityLevel()I
    .locals 1

    .prologue
    .line 1121
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/ssl/SecurityStateModel;->getSecurityLevelForWebContents(Lorg/chromium/content_public/browser/WebContents;)I

    move-result v0

    return v0
.end method

.method public final getSnackbarManager()Lorg/chromium/chrome/browser/snackbar/SnackbarManager;
    .locals 1

    .prologue
    .line 2278
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getActivity()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2279
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getActivity()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getSnackbarManager()Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    move-result-object v0

    goto :goto_0
.end method

.method public final getState()Lorg/chromium/chrome/browser/TabState;
    .locals 4

    .prologue
    .line 893
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 901
    :goto_0
    return-object v0

    .line 894
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/TabState;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/TabState;-><init>()V

    .line 895
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContentsState()Lorg/chromium/chrome/browser/TabState$WebContentsState;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/chrome/browser/TabState;->contentsState:Lorg/chromium/chrome/browser/TabState$WebContentsState;

    .line 896
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mAppAssociatedWith:Ljava/lang/String;

    iput-object v1, v0, Lorg/chromium/chrome/browser/TabState;->openerAppId:Ljava/lang/String;

    .line 897
    iget v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mParentId:I

    iput v1, v0, Lorg/chromium/chrome/browser/TabState;->parentId:I

    .line 898
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mShouldPreserve:Z

    iput-boolean v1, v0, Lorg/chromium/chrome/browser/TabState;->shouldPreserve:Z

    .line 899
    iget v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mSyncId:I

    int-to-long v2, v1

    iput-wide v2, v0, Lorg/chromium/chrome/browser/TabState;->syncId:J

    .line 900
    iget-wide v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTimestampMillis:J

    iput-wide v2, v0, Lorg/chromium/chrome/browser/TabState;->timestampMillis:J

    goto :goto_0
.end method

.method final getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    .locals 1

    .prologue
    .line 880
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getActivity()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 881
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getActivity()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    goto :goto_0
.end method

.method public final getTabObservers()Lorg/chromium/base/ObserverList$RewindableIterator;
    .locals 1

    .prologue
    .line 1147
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->rewindableIterator()Lorg/chromium/base/ObserverList$RewindableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final getTabRedirectHandler()Lorg/chromium/chrome/browser/tab/TabRedirectHandler;
    .locals 1

    .prologue
    .line 2822
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTabRedirectHandler:Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    return-object v0
.end method

.method public final getTabUma()Lorg/chromium/chrome/browser/tab/TabUma;
    .locals 1

    .prologue
    .line 2843
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTabUma:Lorg/chromium/chrome/browser/tab/TabUma;

    return-object v0
.end method

.method public final getTabWebContentsDelegateAndroid()Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;
    .locals 1

    .prologue
    .line 2245
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mWebContentsDelegate:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

    return-object v0
.end method

.method public final getThemeColor()I
    .locals 1

    .prologue
    .line 1034
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isNativePage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativePage:Lorg/chromium/chrome/browser/NativePage;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/NativePage;->getThemeColor()I

    move-result v0

    .line 1036
    :goto_0
    return v0

    .line 1035
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mWebContentsObserver:Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mWebContentsObserver:Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->getThemeColor()I

    move-result v0

    goto :goto_0

    .line 1036
    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mDefaultThemeColor:I

    goto :goto_0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1905
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->updateTitle()V

    .line 1906
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getTopControlsStateConstraints()I
    .locals 3

    .prologue
    .line 2618
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isHidingTopControlsEnabled()Z

    move-result v1

    .line 2619
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isShowingTopControlsEnabled()Z

    move-result v2

    .line 2621
    const/4 v0, 0x3

    .line 2622
    if-nez v2, :cond_1

    .line 2623
    const/4 v0, 0x2

    .line 2627
    :cond_0
    :goto_0
    return v0

    .line 2624
    :cond_1
    if-nez v1, :cond_0

    .line 2625
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1889
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 1893
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getNativePage()Lorg/chromium/chrome/browser/NativePage;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1894
    :cond_0
    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mUrl:Ljava/lang/String;

    .line 1897
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mUrl:Ljava/lang/String;

    :goto_1
    return-object v0

    .line 1889
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0

    .line 1897
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public final getUseDesktopUserAgent()Z
    .locals 1

    .prologue
    .line 1112
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->getUseDesktopUserAgent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getUserBookmarkId()J
    .locals 3

    .prologue
    .line 2695
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativeTabAndroid:J

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/chrome/browser/tab/Tab;->nativeGetBookmarkId(JZ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativePage:Lorg/chromium/chrome/browser/NativePage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativePage:Lorg/chromium/chrome/browser/NativePage;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/NativePage;->getView()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewParent:Landroid/widget/FrameLayout;

    goto :goto_0
.end method

.method public final getWebContents()Lorg/chromium/content_public/browser/WebContents;
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;
    .locals 1

    .prologue
    .line 2238
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    return-object v0
.end method

.method public final goBack()V
    .locals 1

    .prologue
    .line 720
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->goBack()V

    .line 721
    :cond_0
    return-void
.end method

.method public final goForward()V
    .locals 1

    .prologue
    .line 727
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->goForward()V

    .line 728
    :cond_0
    return-void
.end method

.method final handleDidCommitProvisonalLoadForFrame(Ljava/lang/String;I)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1755
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsNativePageCommitPending:Z

    .line 1756
    const/16 v2, 0x8

    if-ne p2, v2, :cond_0

    move v0, v1

    .line 1757
    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/tab/Tab;->maybeShowNativePage(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1758
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->showRenderedPage()V

    .line 1761
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1762
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1764
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->updateFullscreenEnabledState()V

    .line 1766
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getInterceptNavigationDelegate()Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1767
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getInterceptNavigationDelegate()Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;->maybeUpdateNavigationHistory()V

    .line 1769
    :cond_2
    return-void
.end method

.method final handleRendererResponsive()V
    .locals 2

    .prologue
    .line 2985
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    if-nez v0, :cond_0

    .line 2988
    :goto_0
    return-void

    .line 2986
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    iget v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFullscreenHungRendererToken:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->hideControlsPersistent(I)V

    .line 2987
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFullscreenHungRendererToken:I

    goto :goto_0
.end method

.method final handleRendererUnresponsive()V
    .locals 2

    .prologue
    .line 2978
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    if-nez v0, :cond_0

    .line 2982
    :goto_0
    return-void

    .line 2979
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    iget v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFullscreenHungRendererToken:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->showControlsPersistentAndClearOldToken(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFullscreenHungRendererToken:I

    goto :goto_0
.end method

.method final handleTabCrash()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2577
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsLoading:Z

    .line 2578
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsBeingRestored:Z

    .line 2580
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTabUma:Lorg/chromium/chrome/browser/tab/TabUma;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTabUma:Lorg/chromium/chrome/browser/tab/TabUma;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/TabUma;->onRendererCrashed()V

    .line 2582
    :cond_0
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "MinidumpDirectoryObserver"

    const-string/jumbo v2, "Enabled"

    invoke-static {v1, v2}, Lorg/chromium/components/variations/VariationsAssociatedData;->getVariationParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2590
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2591
    invoke-static {v0}, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->createFindAndUploadLastCrashIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 2592
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2593
    const-string/jumbo v0, "MobileBreakpadUploadAttempt"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2604
    :cond_1
    return-void

    .line 2594
    :catch_0
    move-exception v0

    .line 2599
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 2600
    throw v0
.end method

.method public final hasPrerenderedUrl(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 2835
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativeTabAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/tab/Tab;->nativeHasPrerenderedUrl(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final hide()V
    .locals 2

    .prologue
    .line 1258
    :try_start_0
    const-string/jumbo v0, "Tab.hide"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 1259
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isHidden()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1282
    const-string/jumbo v0, "Tab.hide"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 1283
    :goto_0
    return-void

    .line 1260
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsHidden:Z

    .line 1262
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->onHide()V

    .line 1265
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    if-eqz v0, :cond_2

    .line 1266
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->setPersistentFullscreenMode(Z)V

    .line 1267
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    iget v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFullscreenHungRendererToken:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->hideControlsPersistent(I)V

    .line 1268
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFullscreenHungRendererToken:I

    .line 1271
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTabUma:Lorg/chromium/chrome/browser/tab/TabUma;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTabUma:Lorg/chromium/chrome/browser/tab/TabUma;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/TabUma;->onHide()V

    .line 1273
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTabRedirectHandler:Lorg/chromium/chrome/browser/tab/TabRedirectHandler;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/TabRedirectHandler;->clear()V

    .line 1275
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/Tab;->cancelEnableFullscreenLoadDelay()V

    .line 1278
    invoke-static {}, Lorg/chromium/chrome/browser/ntp/NativePageAssassin;->getInstance()Lorg/chromium/chrome/browser/ntp/NativePageAssassin;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/ntp/NativePageAssassin;->tabHidden(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 1280
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/tab/TabObserver;->onHidden(Lorg/chromium/chrome/browser/tab/Tab;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1282
    :catchall_0
    move-exception v0

    const-string/jumbo v1, "Tab.hide"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string/jumbo v0, "Tab.hide"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final initContentViewCore(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 4

    .prologue
    .line 1632
    new-instance v0, Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mThemedApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;-><init>(Landroid/content/Context;)V

    .line 1633
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mThemedApplicationContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lorg/chromium/content/browser/ContentView;->createContentView(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    .line 1634
    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mThemedApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$string;->accessibility_content_view:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/ContentView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1636
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v2

    invoke-virtual {v0, v1, v1, p1, v2}, Lorg/chromium/content/browser/ContentViewCore;->initialize(Landroid/view/ViewGroup;Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/ui/base/WindowAndroid;)V

    .line 1637
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/tab/Tab;->setContentViewCore(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 1638
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    instance-of v0, v0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;

    if-eqz v0, :cond_0

    .line 1639
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->setFullscreenRequiredForOrientationLock(Z)V

    .line 1641
    :cond_0
    return-void
.end method

.method public final initialize(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Lorg/chromium/chrome/browser/tab/TabDelegateFactory;ZZ)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const-wide/16 v4, -0x1

    .line 1347
    :try_start_0
    const-string/jumbo v1, "Tab.initialize"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 1349
    iput-object p3, p0, Lorg/chromium/chrome/browser/tab/Tab;->mDelegateFactory:Lorg/chromium/chrome/browser/tab/TabDelegateFactory;

    .line 1350
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->initializeNative()V

    .line 1352
    invoke-static {}, Lorg/chromium/chrome/browser/rlz/RevenueStats;->getInstance()Lorg/chromium/chrome/browser/rlz/RevenueStats;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/chromium/chrome/browser/rlz/RevenueStats;->tabCreated(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 1354
    invoke-static {}, Lorg/chromium/chrome/browser/banners/AppBannerManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1355
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mDelegateFactory:Lorg/chromium/chrome/browser/tab/TabDelegateFactory;

    invoke-virtual {v1, p0}, Lorg/chromium/chrome/browser/tab/TabDelegateFactory;->createAppBannerManager(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/banners/AppBannerManager;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mAppBannerManager:Lorg/chromium/chrome/browser/banners/AppBannerManager;

    .line 1356
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mAppBannerManager:Lorg/chromium/chrome/browser/banners/AppBannerManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mAppBannerManager:Lorg/chromium/chrome/browser/banners/AppBannerManager;

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->addObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 1359
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mDelegateFactory:Lorg/chromium/chrome/browser/tab/TabDelegateFactory;

    invoke-virtual {v1, p0}, Lorg/chromium/chrome/browser/tab/TabDelegateFactory;->createTopControlsVisibilityDelegate(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/TopControlsVisibilityDelegate;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTopControlsVisibilityDelegate:Lorg/chromium/chrome/browser/tab/TopControlsVisibilityDelegate;

    .line 1365
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/tab/Tab;->attachTabContentManager(Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)V

    .line 1369
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getFrozenContentsState()Lorg/chromium/chrome/browser/TabState$WebContentsState;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getPendingLoadParams()Lorg/chromium/content_public/browser/LoadUrlParams;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1370
    :cond_1
    if-eqz p5, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->unfreezeContents()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1391
    :cond_2
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTimestampMillis:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    .line 1392
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTimestampMillis:J

    .line 1395
    :cond_3
    const-string/jumbo v0, "Tab.initialize"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 1396
    :goto_0
    return-void

    .line 1374
    :cond_4
    if-nez p1, :cond_5

    const/4 v0, 0x1

    .line 1375
    :cond_5
    if-eqz v0, :cond_6

    .line 1376
    :try_start_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v1

    invoke-static {v1, p4}, Lorg/chromium/chrome/browser/WebContentsFactory;->createWebContents(ZZ)Lorg/chromium/content_public/browser/WebContents;

    move-result-object p1

    .line 1379
    :cond_6
    invoke-static {p1}, Lorg/chromium/content/browser/ContentViewCore;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    .line 1381
    if-nez v1, :cond_9

    .line 1382
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/tab/Tab;->initContentViewCore(Lorg/chromium/content_public/browser/WebContents;)V

    .line 1387
    :goto_1
    if-nez v0, :cond_7

    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->isLoadingToDifferentDocument()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1388
    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->didStartPageLoad(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1391
    :cond_7
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTimestampMillis:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_8

    .line 1392
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTimestampMillis:J

    .line 1395
    :cond_8
    const-string/jumbo v0, "Tab.initialize"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    goto :goto_0

    .line 1384
    :cond_9
    :try_start_2
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->setContentViewCore(Lorg/chromium/content/browser/ContentViewCore;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1391
    :catchall_0
    move-exception v0

    iget-wide v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTimestampMillis:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_a

    .line 1392
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTimestampMillis:J

    .line 1395
    :cond_a
    const-string/jumbo v1, "Tab.initialize"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
.end method

.method public final initializeNative()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1620
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativeTabAndroid:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/Tab;->nativeInit()V

    .line 1621
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/tab/Tab;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativeTabAndroid:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1622
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsInitialized:Z

    .line 1623
    return-void
.end method

.method public final isAllowedToReturnToExternalApp()Z
    .locals 1

    .prologue
    .line 3022
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsAllowedToReturnToExternalApp:Z

    return v0
.end method

.method public final isBeingRestored()Z
    .locals 1

    .prologue
    .line 2147
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsBeingRestored:Z

    return v0
.end method

.method public final isClosing()Z
    .locals 1

    .prologue
    .line 2110
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsClosing:Z

    return v0
.end method

.method public final isCreatedForExternalApp()Z
    .locals 3

    .prologue
    .line 3029
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3030
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getLaunchType()Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    move-result-object v1

    sget-object v2, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_EXTERNAL_APP:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getAppAssociatedWith()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDefaultThemeColor()Z
    .locals 2

    .prologue
    .line 2921
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isNativePage()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mDefaultThemeColor:I

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getThemeColor()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFrozen()Z
    .locals 1

    .prologue
    .line 2472
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getNativePage()Lorg/chromium/chrome/browser/NativePage;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isFullscreenWaitingForLoad()Z
    .locals 1

    .prologue
    .line 1592
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsFullscreenWaitingForLoad:Z

    return v0
.end method

.method public final isGroupedWithParent()Z
    .locals 1

    .prologue
    .line 2161
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mGroupedWithParent:Z

    return v0
.end method

.method public final isHidden()Z
    .locals 1

    .prologue
    .line 2103
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsHidden:Z

    return v0
.end method

.method public final isIncognito()Z
    .locals 1

    .prologue
    .line 1068
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIncognito:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1881
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsInitialized:Z

    return v0
.end method

.method public final isLoading()Z
    .locals 1

    .prologue
    .line 2140
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsLoading:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isShowingInterstitialPage()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isLoadingAndRenderingDone()Z
    .locals 2

    .prologue
    .line 999
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isNativePage()Z
    .locals 1

    .prologue
    .line 1092
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativePage:Lorg/chromium/chrome/browser/NativePage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isOfflinePage()Z
    .locals 2

    .prologue
    .line 2709
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativeTabAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->nativeIsOfflinePage(J)Z

    move-result v0

    goto :goto_0
.end method

.method public final isReady()Z
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativePage:Lorg/chromium/chrome/browser/NativePage;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isShowingErrorPage()Z
    .locals 1

    .prologue
    .line 812
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsShowingErrorPage:Z

    return v0
.end method

.method public final isShowingInterstitialPage()Z
    .locals 1

    .prologue
    .line 805
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->isShowingInterstitialPage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isShowingSadTab()Z
    .locals 2

    .prologue
    .line 1825
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mSadTabView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mSadTabView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isShowingTopControlsEnabled()Z
    .locals 1

    .prologue
    .line 2610
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTopControlsVisibilityDelegate:Lorg/chromium/chrome/browser/tab/TopControlsVisibilityDelegate;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/TopControlsVisibilityDelegate;->isShowingTopControlsEnabled()Z

    move-result v0

    return v0
.end method

.method public final isTabStateDirty()Z
    .locals 1

    .prologue
    .line 2376
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsTabStateDirty:Z

    return v0
.end method

.method public final isTitleDirectionRtl()Z
    .locals 1

    .prologue
    .line 1969
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsTitleDirectionRtl:Z

    return v0
.end method

.method public final loadIfNecessary()V
    .locals 1

    .prologue
    .line 734
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->loadIfNecessary()V

    .line 735
    :cond_0
    return-void
.end method

.method public final loadIfNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1996
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getActivity()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1997
    const-string/jumbo v0, "Tab"

    const-string/jumbo v1, "Tab couldn\'t be loaded because Context was null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    const/4 v0, 0x0

    .line 2010
    :goto_0
    return v0

    .line 2001
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mPendingLoadParams:Lorg/chromium/content_public/browser/LoadUrlParams;

    if-eqz v1, :cond_2

    .line 2002
    sget-boolean v1, Lorg/chromium/chrome/browser/tab/Tab;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isFrozen()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2003
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isHidden()Z

    move-result v2

    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/WebContentsFactory;->createWebContents(ZZ)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->initContentViewCore(Lorg/chromium/content_public/browser/WebContents;)V

    .line 2004
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mPendingLoadParams:Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    .line 2005
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mPendingLoadParams:Lorg/chromium/content_public/browser/LoadUrlParams;

    goto :goto_0

    .line 2009
    :cond_2
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/Tab;->restoreIfNeeded()V

    goto :goto_0
.end method

.method final loadOriginalImage()V
    .locals 4

    .prologue
    .line 797
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativeTabAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativeTabAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->nativeLoadOriginalImage(J)V

    .line 798
    :cond_0
    return-void
.end method

.method public final loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)I
    .locals 17

    .prologue
    .line 756
    :try_start_0
    const-string/jumbo v2, "Tab.loadUrl"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 759
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/chromium/chrome/browser/tab/Tab;->mIsNativePageCommitPending:Z

    if-nez v2, :cond_0

    .line 760
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/chromium/chrome/browser/tab/Tab;->maybeShowNativePage(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/chromium/chrome/browser/tab/Tab;->mIsNativePageCommitPending:Z

    .line 763
    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/chromium/chrome/browser/tab/Tab;->removeSadTabIfPresent()V

    .line 766
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getTransitionType()I

    move-result v2

    const/high16 v3, 0x2000000

    and-int/2addr v2, v3

    const/high16 v3, 0x2000000

    if-ne v2, v3, :cond_1

    .line 768
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/chromium/chrome/browser/tab/Tab;->mAppAssociatedWith:Ljava/lang/String;

    .line 769
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/tab/Tab;->setIsAllowedToReturnToExternalApp(Z)V

    .line 774
    :cond_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/chromium/chrome/browser/tab/Tab;->mNativeTabAndroid:J

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getVerbatimHeaders()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getPostData()[B

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getTransitionType()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getReferrer()Lorg/chromium/content_public/common/Referrer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getReferrer()Lorg/chromium/content_public/common/Referrer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content_public/common/Referrer;->getUrl()Ljava/lang/String;

    move-result-object v10

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getReferrer()Lorg/chromium/content_public/common/Referrer;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getReferrer()Lorg/chromium/content_public/common/Referrer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content_public/common/Referrer;->getPolicy()I

    move-result v11

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getIsRendererInitiated()Z

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getShouldReplaceCurrentEntry()Z

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getIntentReceivedTimestamp()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getHasUserGesture()Z

    move-result v16

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v16}, Lorg/chromium/chrome/browser/tab/Tab;->nativeLoadUrl(JLjava/lang/String;Ljava/lang/String;[BILjava/lang/String;IZZJZ)I

    move-result v3

    .line 784
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/chrome/browser/tab/Tab;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v2}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/chrome/browser/tab/TabObserver;

    .line 785
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v2, v0, v1, v3}, Lorg/chromium/chrome/browser/tab/TabObserver;->onLoadUrl(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/LoadUrlParams;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 789
    :catchall_0
    move-exception v2

    const-string/jumbo v3, "Tab.loadUrl"

    invoke-static {v3}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v2

    .line 774
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 789
    :cond_4
    const-string/jumbo v2, "Tab.loadUrl"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return v3
.end method

.method final maybeShowNativePage(Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    .line 1737
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 1738
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getActivity()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v2

    invoke-static {p1, v0, p0, v1, v2}, Lorg/chromium/chrome/browser/ntp/NativePageFactory;->createNativePageForURL(Ljava/lang/String;Lorg/chromium/chrome/browser/NativePage;Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Landroid/app/Activity;)Lorg/chromium/chrome/browser/NativePage;

    move-result-object v0

    .line 1740
    if-eqz v0, :cond_1

    .line 1741
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/tab/Tab;->showNativePage(Lorg/chromium/chrome/browser/NativePage;)V

    .line 1742
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/Tab;->notifyPageTitleChanged()V

    .line 1743
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/Tab;->notifyFaviconChanged()V

    .line 1744
    const/4 v0, 0x1

    .line 1746
    :goto_1
    return v0

    .line 1737
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getNativePage()Lorg/chromium/chrome/browser/NativePage;

    move-result-object v0

    goto :goto_0

    .line 1746
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final needsReload()Z
    .locals 1

    .prologue
    .line 2126
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNeedsReload:Z

    return v0
.end method

.method protected final notifyLoadProgress(I)V
    .locals 2

    .prologue
    .line 1955
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-interface {v0, p0, p1}, Lorg/chromium/chrome/browser/tab/TabObserver;->onLoadProgressChanged(Lorg/chromium/chrome/browser/tab/Tab;I)V

    goto :goto_0

    .line 1956
    :cond_0
    return-void
.end method

.method public final onActivityHidden()V
    .locals 1

    .prologue
    .line 1193
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->hide()V

    .line 1195
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTabUma:Lorg/chromium/chrome/browser/tab/TabUma;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTabUma:Lorg/chromium/chrome/browser/tab/TabUma;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/TabUma;->onActivityHidden()V

    .line 1196
    :cond_0
    return-void
.end method

.method public final onActivityShown()V
    .locals 1

    .prologue
    .line 1175
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1176
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;->FROM_USER:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tab/Tab;->show(Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;)V

    .line 1186
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->updateFullscreenEnabledState()V

    .line 1187
    return-void

    .line 1180
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->loadIfNeeded()Z

    goto :goto_0
.end method

.method protected final onBackgroundColorChanged(I)V
    .locals 2

    .prologue
    .line 2186
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-interface {v0, p0, p1}, Lorg/chromium/chrome/browser/tab/TabObserver;->onBackgroundColorChanged(Lorg/chromium/chrome/browser/tab/Tab;I)V

    goto :goto_0

    .line 2187
    :cond_0
    return-void
.end method

.method public final onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2668
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    move-result-object v0

    .line 2669
    if-eqz v0, :cond_0

    .line 2670
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->updateContentViewChildrenState()V

    .line 2672
    :cond_0
    return-void
.end method

.method public final onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2660
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    move-result-object v0

    .line 2661
    if-eqz v0, :cond_0

    .line 2662
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->updateContentViewChildrenState()V

    .line 2664
    :cond_0
    return-void
.end method

.method protected final onFaviconAvailable(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2250
    if-nez p1, :cond_1

    .line 2263
    :cond_0
    return-void

    .line 2251
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 2252
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFaviconUrl:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 2256
    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v3, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIdealFaviconSize:I

    if-ne v0, v3, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v3, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIdealFaviconSize:I

    if-ne v0, v3, :cond_3

    .line 2258
    :cond_2
    iget v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIdealFaviconSize:I

    iget v3, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIdealFaviconSize:I

    invoke-static {p1, v0, v3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFavicon:Landroid/graphics/Bitmap;

    .line 2259
    iput-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFaviconUrl:Ljava/lang/String;

    .line 2262
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-interface {v0, p0, p1}, Lorg/chromium/chrome/browser/tab/TabObserver;->onFaviconUpdated(Lorg/chromium/chrome/browser/tab/Tab;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 2252
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onLoFiResponseReceived(Z)V
    .locals 1

    .prologue
    .line 2737
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mLoFiBarController:Lorg/chromium/chrome/browser/snackbar/LofiBarController;

    if-eqz v0, :cond_0

    .line 2738
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mLoFiBarController:Lorg/chromium/chrome/browser/snackbar/LofiBarController;

    invoke-virtual {v0, p0, p1}, Lorg/chromium/chrome/browser/snackbar/LofiBarController;->maybeCreateLoFiBar(Lorg/chromium/chrome/browser/tab/Tab;Z)V

    .line 2740
    :cond_0
    return-void
.end method

.method protected final onLoadStarted(Z)V
    .locals 2

    .prologue
    .line 1522
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsLoading:Z

    .line 1523
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-interface {v0, p0, p1}, Lorg/chromium/chrome/browser/tab/TabObserver;->onLoadStarted(Lorg/chromium/chrome/browser/tab/Tab;Z)V

    goto :goto_0

    .line 1524
    :cond_1
    return-void
.end method

.method protected final onLoadStopped()V
    .locals 3

    .prologue
    .line 1531
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsLoading:Z

    .line 1532
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsLoading:Z

    .line 1533
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-interface {v0, p0, v1}, Lorg/chromium/chrome/browser/tab/TabObserver;->onLoadStopped(Lorg/chromium/chrome/browser/tab/Tab;Z)V

    goto :goto_0

    .line 1534
    :cond_0
    return-void
.end method

.method public final onSystemUiVisibilityChange(I)V
    .locals 1

    .prologue
    .line 2676
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    move-result-object v0

    .line 2677
    if-eqz v0, :cond_0

    .line 2678
    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->onContentViewSystemUiVisibilityChange(I)V

    .line 2680
    :cond_0
    return-void
.end method

.method protected final openNewTab(Ljava/lang/String;Ljava/lang/String;[BIZZ)V
    .locals 5

    .prologue
    .line 2754
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2787
    :cond_0
    :goto_0
    return-void

    .line 2756
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v1

    .line 2757
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LONGPRESS_FOREGROUND:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    .line 2758
    if-eqz p5, :cond_2

    move-object v2, p0

    .line 2760
    :goto_1
    packed-switch p4, :pswitch_data_0

    .line 2773
    :pswitch_0
    sget-boolean v3, Lorg/chromium/chrome/browser/tab/Tab;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2758
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 2766
    :pswitch_1
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LONGPRESS_BACKGROUND:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    .line 2779
    :cond_3
    :goto_2
    :pswitch_2
    invoke-direct {p0, p1, v1}, Lorg/chromium/chrome/browser/tab/Tab;->shouldIgnoreNewTab(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2781
    new-instance v3, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-direct {v3, p1}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    .line 2782
    invoke-virtual {v3, p2}, Lorg/chromium/content_public/browser/LoadUrlParams;->setVerbatimHeaders(Ljava/lang/String;)V

    .line 2783
    invoke-virtual {v3, p3}, Lorg/chromium/content_public/browser/LoadUrlParams;->setPostData([B)V

    .line 2784
    invoke-virtual {v3, p6}, Lorg/chromium/content_public/browser/LoadUrlParams;->setIsRendererInitiated(Z)V

    .line 2785
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v4

    invoke-interface {v4, v3, v0, v2, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->openNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/Tab;Z)Lorg/chromium/chrome/browser/tab/Tab;

    goto :goto_0

    .line 2769
    :pswitch_3
    sget-boolean v3, Lorg/chromium/chrome/browser/tab/Tab;->$assertionsDisabled:Z

    if-nez v3, :cond_4

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2770
    :cond_4
    const/4 v1, 0x1

    .line 2771
    goto :goto_2

    .line 2760
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final print()Z
    .locals 4

    .prologue
    .line 943
    sget-boolean v0, Lorg/chromium/chrome/browser/tab/Tab;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativeTabAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 944
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativeTabAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->nativePrint(J)Z

    move-result v0

    return v0
.end method

.method public final processEnableFullscreenRunnableForTest()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2961
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2962
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2963
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/Tab;->enableFullscreenAfterLoad()V

    .line 2965
    :cond_0
    return-void
.end method

.method final pushNativePageStateToNavigationEntry()V
    .locals 4

    .prologue
    .line 2653
    sget-boolean v0, Lorg/chromium/chrome/browser/tab/Tab;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativeTabAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getNativePage()Lorg/chromium/chrome/browser/NativePage;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2654
    :cond_1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativeTabAndroid:J

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getNativePage()Lorg/chromium/chrome/browser/NativePage;

    move-result-object v2

    invoke-interface {v2}, Lorg/chromium/chrome/browser/NativePage;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getNativePage()Lorg/chromium/chrome/browser/NativePage;

    move-result-object v3

    invoke-interface {v3}, Lorg/chromium/chrome/browser/NativePage;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/chromium/chrome/browser/tab/Tab;->nativeSetActiveNavigationEntryTitleForUrl(JLjava/lang/String;Ljava/lang/String;)V

    .line 2656
    return-void
.end method

.method public final reload()V
    .locals 2

    .prologue
    .line 961
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/chromium/content_public/browser/NavigationController;->reload(Z)V

    .line 962
    :cond_0
    return-void
.end method

.method public final reloadDisableLoFi()V
    .locals 2

    .prologue
    .line 979
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 980
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/chromium/content_public/browser/NavigationController;->reloadDisableLoFi(Z)V

    .line 982
    :cond_0
    return-void
.end method

.method public final reloadIgnoringCache()V
    .locals 2

    .prologue
    .line 969
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 970
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/chromium/content_public/browser/NavigationController;->reloadIgnoringCache(Z)V

    .line 972
    :cond_0
    return-void
.end method

.method public final reloadLoFiImages()V
    .locals 1

    .prologue
    .line 989
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 990
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->reloadLoFiImages()V

    .line 992
    :cond_0
    return-void
.end method

.method public final removeObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 699
    return-void
.end method

.method public final reparentToActivity(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/tab/TabDelegateFactory;)V
    .locals 4

    .prologue
    .line 1411
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    .line 1412
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->updateWindowAndroid(Lorg/chromium/ui/base/WindowAndroid;)V

    .line 1415
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabContentManager()Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tab/Tab;->attachTabContentManager(Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)V

    .line 1416
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    .line 1417
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->getCompositorViewHolder()Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->prepareForTabReparenting()V

    .line 1420
    iput-object p2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mDelegateFactory:Lorg/chromium/chrome/browser/tab/TabDelegateFactory;

    .line 1421
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mDelegateFactory:Lorg/chromium/chrome/browser/tab/TabDelegateFactory;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/tab/TabDelegateFactory;->createWebContentsDelegate(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mWebContentsDelegate:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

    .line 1422
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativeTabAndroid:J

    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mWebContentsDelegate:Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;

    iget-object v3, p0, Lorg/chromium/chrome/browser/tab/Tab;->mDelegateFactory:Lorg/chromium/chrome/browser/tab/TabDelegateFactory;

    invoke-virtual {v3, p0}, Lorg/chromium/chrome/browser/tab/TabDelegateFactory;->createContextMenuPopulator(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/chromium/chrome/browser/tab/Tab;->nativeUpdateDelegates(JLorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;)V

    .line 1424
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mDelegateFactory:Lorg/chromium/chrome/browser/tab/TabDelegateFactory;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/tab/TabDelegateFactory;->createTopControlsVisibilityDelegate(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/TopControlsVisibilityDelegate;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTopControlsVisibilityDelegate:Lorg/chromium/chrome/browser/tab/TopControlsVisibilityDelegate;

    .line 1425
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mDelegateFactory:Lorg/chromium/chrome/browser/tab/TabDelegateFactory;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/tab/TabDelegateFactory;->createInterceptNavigationDelegate(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tab/Tab;->setInterceptNavigationDelegate(Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;)V

    .line 1426
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mDelegateFactory:Lorg/chromium/chrome/browser/tab/TabDelegateFactory;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/tab/TabDelegateFactory;->createAppBannerManager(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/banners/AppBannerManager;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mAppBannerManager:Lorg/chromium/chrome/browser/banners/AppBannerManager;

    .line 1427
    return-void
.end method

.method protected final requestAppBanner()Z
    .locals 1

    .prologue
    .line 2355
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mAppBannerManager:Lorg/chromium/chrome/browser/banners/AppBannerManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2357
    :goto_0
    return v0

    .line 2356
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mAppBannerManager:Lorg/chromium/chrome/browser/banners/AppBannerManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/banners/AppBannerManager;->requestAppBanner()V

    .line 2357
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final requestFocus()V
    .locals 1

    .prologue
    .line 2747
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getView()Landroid/view/View;

    move-result-object v0

    .line 2748
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2749
    :cond_0
    return-void
.end method

.method protected final requestRestoreLoad()V
    .locals 1

    .prologue
    .line 741
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 742
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->requestRestoreLoad()V

    .line 744
    :cond_0
    return-void
.end method

.method final resetSwipeRefreshHandler()V
    .locals 1

    .prologue
    .line 2997
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mSwipeRefreshHandler:Lorg/chromium/chrome/browser/SwipeRefreshHandler;

    if-eqz v0, :cond_0

    .line 2998
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mSwipeRefreshHandler:Lorg/chromium/chrome/browser/SwipeRefreshHandler;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->reset()V

    .line 3000
    :cond_0
    return-void
.end method

.method public final setAppAssociatedWith(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2437
    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mAppAssociatedWith:Ljava/lang/String;

    .line 2438
    return-void
.end method

.method public final setClosing(Z)V
    .locals 2

    .prologue
    .line 2117
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsClosing:Z

    .line 2119
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-interface {v0, p0, p1}, Lorg/chromium/chrome/browser/tab/TabObserver;->onClosingStateChanged(Lorg/chromium/chrome/browser/tab/Tab;Z)V

    goto :goto_0

    .line 2120
    :cond_0
    return-void
.end method

.method public final setFullscreenManager(Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;)V
    .locals 3

    .prologue
    .line 2635
    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    .line 2636
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    if-eqz v0, :cond_1

    .line 2637
    iget v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mPreviousFullscreenTopControlsOffsetY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mPreviousFullscreenContentOffsetY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2639
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->setPositionsForTabToNonFullscreen()V

    .line 2644
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->showControlsTransient()V

    .line 2645
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->updateFullscreenEnabledState()V

    .line 2647
    :cond_1
    return-void

    .line 2641
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    iget v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mPreviousFullscreenTopControlsOffsetY:F

    iget v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mPreviousFullscreenContentOffsetY:F

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->setPositionsForTab(FF)V

    goto :goto_0
.end method

.method public final setGroupedWithParent(Z)V
    .locals 0

    .prologue
    .line 2171
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mGroupedWithParent:Z

    .line 2172
    return-void
.end method

.method protected final setInterceptNavigationDelegate(Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;)V
    .locals 2

    .prologue
    .line 2814
    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mInterceptNavigationDelegate:Lorg/chromium/chrome/browser/tab/InterceptNavigationDelegateImpl;

    .line 2815
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativeTabAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/tab/Tab;->nativeSetInterceptNavigationDelegate(JLorg/chromium/components/navigation_interception/InterceptNavigationDelegate;)V

    .line 2816
    return-void
.end method

.method public final setIsAllowedToReturnToExternalApp(Z)V
    .locals 0

    .prologue
    .line 3015
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsAllowedToReturnToExternalApp:Z

    .line 3016
    return-void
.end method

.method public final setIsShowingErrorPage(Z)V
    .locals 0

    .prologue
    .line 822
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsShowingErrorPage:Z

    .line 823
    return-void
.end method

.method public final setIsTabStateDirty(Z)V
    .locals 0

    .prologue
    .line 2384
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsTabStateDirty:Z

    .line 2385
    return-void
.end method

.method protected final setNeedsReload(Z)V
    .locals 0

    .prologue
    .line 2133
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNeedsReload:Z

    .line 2134
    return-void
.end method

.method public final setParentIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 2867
    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mParentIntent:Landroid/content/Intent;

    .line 2868
    return-void
.end method

.method public final setPendingPrint()V
    .locals 4

    .prologue
    .line 949
    invoke-static {}, Lorg/chromium/printing/PrintingControllerImpl;->getInstance()Lorg/chromium/printing/PrintingController;

    move-result-object v0

    .line 950
    if-nez v0, :cond_0

    .line 954
    :goto_0
    return-void

    .line 952
    :cond_0
    new-instance v1, Lorg/chromium/chrome/browser/printing/TabPrinter;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/printing/TabPrinter;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    new-instance v2, Lorg/chromium/printing/PrintManagerDelegateImpl;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getActivity()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/chromium/printing/PrintManagerDelegateImpl;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, v1, v2}, Lorg/chromium/printing/PrintingController;->setPendingPrint(Lorg/chromium/printing/Printable;Lorg/chromium/printing/PrintManagerDelegate;)V

    goto :goto_0
.end method

.method public final setShouldPreserve(Z)V
    .locals 0

    .prologue
    .line 2399
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mShouldPreserve:Z

    .line 2400
    return-void
.end method

.method public final setUseDesktopUserAgent(ZZ)V
    .locals 1

    .prologue
    .line 1102
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1103
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/chromium/content_public/browser/NavigationController;->setUseDesktopUserAgent(ZZ)V

    .line 1106
    :cond_0
    return-void
.end method

.method protected final shouldInterceptContextMenuDownload(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2974
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mDownloadDelegate:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->shouldInterceptContextMenuDownload(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final shouldPreserve()Z
    .locals 1

    .prologue
    .line 2391
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mShouldPreserve:Z

    return v0
.end method

.method public final shouldStall()Z
    .locals 2

    .prologue
    .line 1202
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->needsReload()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ntp/NativePageFactory;->isNativePageUrl(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final show(Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;)V
    .locals 5

    .prologue
    .line 1214
    :try_start_0
    const-string/jumbo v0, "Tab.show"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 1215
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isHidden()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1249
    const-string/jumbo v0, "Tab.show"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 1250
    :goto_0
    return-void

    .line 1218
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIsHidden:Z

    .line 1220
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->loadIfNeeded()Z

    .line 1221
    sget-boolean v0, Lorg/chromium/chrome/browser/tab/Tab;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1249
    :catchall_0
    move-exception v0

    const-string/jumbo v1, "Tab.show"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0

    .line 1223
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->onShow()V

    .line 1225
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTabUma:Lorg/chromium/chrome/browser/tab/TabUma;

    if-eqz v0, :cond_3

    .line 1226
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTabUma:Lorg/chromium/chrome/browser/tab/TabUma;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getTimestampMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v1

    iget-boolean v4, p0, Lorg/chromium/chrome/browser/tab/Tab;->mIncognito:Z

    invoke-interface {v1, v4}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->computeMRURank(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel;)I

    move-result v1

    invoke-virtual {v0, p1, v2, v3, v1}, Lorg/chromium/chrome/browser/tab/TabUma;->onShow(Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;JI)V

    .line 1232
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getNativePage()Lorg/chromium/chrome/browser/NativePage;

    move-result-object v0

    instance-of v0, v0, Lorg/chromium/chrome/browser/FrozenNativePage;

    if-eqz v0, :cond_4

    .line 1233
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->maybeShowNativePage(Ljava/lang/String;Z)Z

    .line 1235
    :cond_4
    invoke-static {}, Lorg/chromium/chrome/browser/ntp/NativePageAssassin;->getInstance()Lorg/chromium/chrome/browser/ntp/NativePageAssassin;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/ntp/NativePageAssassin;->tabShown(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 1239
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_5

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isShowingInterstitialPage()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1240
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tab/Tab;->notifyLoadProgress(I)V

    .line 1245
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTimestampMillis:J

    .line 1247
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/tab/TabObserver;->onShown(Lorg/chromium/chrome/browser/tab/Tab;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1249
    :cond_6
    const-string/jumbo v0, "Tab.show"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final showOfflinePages()V
    .locals 1

    .prologue
    .line 2727
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getActivity()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkUtils;->showBookmarkManager(Landroid/app/Activity;)V

    .line 2728
    return-void
.end method

.method protected final showRenderedPage()V
    .locals 3

    .prologue
    .line 1321
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->updateTitle()V

    .line 1323
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativePage:Lorg/chromium/chrome/browser/NativePage;

    if-nez v0, :cond_0

    .line 1328
    :goto_0
    return-void

    .line 1324
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativePage:Lorg/chromium/chrome/browser/NativePage;

    .line 1325
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativePage:Lorg/chromium/chrome/browser/NativePage;

    .line 1326
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/tab/TabObserver;->onContentChanged(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_1

    .line 1327
    :cond_1
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->destroyNativePageInternal(Lorg/chromium/chrome/browser/NativePage;)V

    goto :goto_0
.end method

.method protected final showSadTab()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1775
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1776
    new-instance v0, Lorg/chromium/chrome/browser/tab/Tab$4;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/tab/Tab$4;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 1786
    new-instance v1, Lorg/chromium/chrome/browser/tab/Tab$5;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/tab/Tab$5;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 1794
    sget-boolean v2, Lorg/chromium/chrome/browser/tab/Tab;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mSadTabView:Landroid/view/View;

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1795
    :cond_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mThemedApplicationContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lorg/chromium/chrome/browser/tab/SadTabViewFactory;->createSadTabView(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mSadTabView:Landroid/view/View;

    .line 1799
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mSadTabView:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1802
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/tab/TabObserver;->onContentChanged(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    .line 1804
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    move-result-object v0

    .line 1805
    if-eqz v0, :cond_2

    .line 1806
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->setPositionsForTabToNonFullscreen()V

    .line 1808
    :cond_2
    return-void
.end method

.method public final simulateRendererKilledForTesting(Z)V
    .locals 1

    .prologue
    .line 2052
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mWebContentsObserver:Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;

    if-eqz v0, :cond_0

    .line 2053
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mWebContentsObserver:Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->renderProcessGone(Z)V

    .line 2055
    :cond_0
    return-void
.end method

.method public final stopLoading()V
    .locals 2

    .prologue
    .line 1004
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1005
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabObservers()Lorg/chromium/base/ObserverList$RewindableIterator;

    move-result-object v1

    .line 1006
    :goto_0
    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/tab/TabObserver;->onPageLoadFinished(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    .line 1008
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->stop()V

    .line 1009
    :cond_1
    return-void
.end method

.method final stopSwipeRefreshHandler()V
    .locals 1

    .prologue
    .line 3006
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mSwipeRefreshHandler:Lorg/chromium/chrome/browser/SwipeRefreshHandler;

    if-eqz v0, :cond_0

    .line 3007
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mSwipeRefreshHandler:Lorg/chromium/chrome/browser/SwipeRefreshHandler;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/SwipeRefreshHandler;->didStopRefreshing()V

    .line 3009
    :cond_0
    return-void
.end method

.method public final swapContentViewCore(Lorg/chromium/content/browser/ContentViewCore;ZZZ)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2317
    .line 2319
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v0, :cond_2

    .line 2320
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportWidthPix()I

    move-result v2

    .line 2321
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportHeightPix()I

    move-result v0

    .line 2322
    iget-object v3, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->onHide()V

    .line 2324
    :goto_0
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/tab/Tab;->destroyContentViewCore(Z)V

    .line 2325
    iget-object v3, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativePage:Lorg/chromium/chrome/browser/NativePage;

    .line 2326
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativePage:Lorg/chromium/chrome/browser/NativePage;

    .line 2327
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/tab/Tab;->setContentViewCore(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 2333
    iget-object v4, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v4, v2, v0, v1, v1}, Lorg/chromium/content/browser/ContentViewCore;->onSizeChanged(IIII)V

    .line 2334
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->onShow()V

    .line 2335
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->attachImeAdapter()V

    .line 2341
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getLastCommittedUrl()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2342
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getCurrentRenderProcessId()I

    move-result v0

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessLauncher;->determinedVisibility(I)V

    .line 2345
    :cond_0
    invoke-direct {p0, v3}, Lorg/chromium/chrome/browser/tab/Tab;->destroyNativePageInternal(Lorg/chromium/chrome/browser/NativePage;)V

    .line 2346
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mWebContentsObserver:Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    iget v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mDefaultThemeColor:I

    invoke-interface {v1, v2}, Lorg/chromium/content_public/browser/WebContents;->getThemeColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/TabWebContentsObserver;->didChangeThemeColor(I)V

    .line 2348
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    .line 2349
    invoke-interface {v0, p0, p3, p4}, Lorg/chromium/chrome/browser/tab/TabObserver;->onWebContentsSwapped(Lorg/chromium/chrome/browser/tab/Tab;ZZ)V

    goto :goto_1

    .line 2351
    :cond_1
    return-void

    :cond_2
    move v0, v1

    move v2, v1

    goto :goto_0
.end method

.method public final swapWebContents(Lorg/chromium/content_public/browser/WebContents;ZZ)V
    .locals 4

    .prologue
    .line 2295
    new-instance v0, Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mThemedApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;-><init>(Landroid/content/Context;)V

    .line 2296
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mThemedApplicationContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lorg/chromium/content/browser/ContentView;->createContentView(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    .line 2297
    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mThemedApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$string;->accessibility_content_view:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/ContentView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2299
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v2

    invoke-virtual {v0, v1, v1, p1, v2}, Lorg/chromium/content/browser/ContentViewCore;->initialize(Landroid/view/ViewGroup;Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/ui/base/WindowAndroid;)V

    .line 2300
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2, p3}, Lorg/chromium/chrome/browser/tab/Tab;->swapContentViewCore(Lorg/chromium/content/browser/ContentViewCore;ZZZ)V

    .line 2301
    return-void
.end method

.method protected final unfreezeContents()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 2064
    :try_start_0
    const-string/jumbo v1, "Tab.unfreezeContents"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 2065
    sget-boolean v1, Lorg/chromium/chrome/browser/tab/Tab;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFrozenContentsState:Lorg/chromium/chrome/browser/TabState$WebContentsState;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2088
    :catchall_0
    move-exception v0

    const-string/jumbo v1, "Tab.unfreezeContents"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0

    .line 2066
    :cond_0
    :try_start_1
    sget-boolean v1, Lorg/chromium/chrome/browser/tab/Tab;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2068
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFrozenContentsState:Lorg/chromium/chrome/browser/TabState$WebContentsState;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isHidden()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/TabState$WebContentsState;->restoreContentsFromByteBuffer(Z)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    .line 2070
    if-nez v1, :cond_2

    .line 2074
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isHidden()Z

    move-result v2

    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/WebContentsFactory;->createWebContents(ZZ)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    .line 2075
    new-instance v2, Lorg/chromium/chrome/browser/tab/TabUma;

    sget-object v3, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->FROZEN_ON_RESTORE_FAILED:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    invoke-direct {v2, v3}, Lorg/chromium/chrome/browser/tab/TabUma;-><init>(Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;)V

    iput-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mTabUma:Lorg/chromium/chrome/browser/tab/TabUma;

    .line 2076
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFailedToRestore:Z

    .line 2079
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFrozenContentsState:Lorg/chromium/chrome/browser/TabState$WebContentsState;

    .line 2080
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->initContentViewCore(Lorg/chromium/content_public/browser/WebContents;)V

    .line 2082
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFailedToRestore:Z

    if-eqz v1, :cond_3

    .line 2083
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "chrome-native://newtab/"

    .line 2084
    :goto_0
    new-instance v2, Lorg/chromium/content_public/browser/LoadUrlParams;

    const/4 v3, 0x5

    invoke-direct {v2, v1, v3}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/tab/Tab;->loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    .line 2086
    :cond_3
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFailedToRestore:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_5

    .line 2088
    :goto_1
    const-string/jumbo v1, "Tab.unfreezeContents"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return v0

    .line 2083
    :cond_4
    :try_start_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mUrl:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2086
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final updateFullscreenEnabledState()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2518
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isFrozen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2526
    :cond_0
    :goto_0
    return-void

    .line 2520
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getTopControlsStateConstraints()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2, v0}, Lorg/chromium/chrome/browser/tab/Tab;->updateTopControlsState(IIZ)V

    .line 2522
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    if-eqz v1, :cond_0

    .line 2523
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;->getPersistentFullscreenMode()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/ContentViewCore;->updateMultiTouchZoomSupport(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final updateTitle()V
    .locals 2

    .prologue
    .line 1910
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1921
    :goto_0
    return-void

    .line 1914
    :cond_0
    const-string/jumbo v0, ""

    .line 1915
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativePage:Lorg/chromium/chrome/browser/NativePage;

    if-eqz v1, :cond_2

    .line 1916
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativePage:Lorg/chromium/chrome/browser/NativePage;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/NativePage;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 1920
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/tab/Tab;->updateTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 1917
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1918
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected final updateTopControlsState(IIZ)V
    .locals 7

    .prologue
    .line 2541
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativeTabAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2543
    :goto_0
    return-void

    .line 2542
    :cond_0
    iget-wide v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->mNativeTabAndroid:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/chromium/chrome/browser/tab/Tab;->nativeUpdateTopControlsState(JIIZ)V

    goto :goto_0
.end method

.method public final updateTopControlsState(IZ)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2556
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getTopControlsStateConstraints()I

    move-result v0

    .line 2559
    if-ne v0, v2, :cond_0

    if-eq p1, v1, :cond_1

    :cond_0
    if-ne v0, v1, :cond_2

    if-ne p1, v2, :cond_2

    .line 2564
    :cond_1
    :goto_0
    return-void

    .line 2563
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getTopControlsStateConstraints()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/chromium/chrome/browser/tab/Tab;->updateTopControlsState(IIZ)V

    goto :goto_0
.end method
