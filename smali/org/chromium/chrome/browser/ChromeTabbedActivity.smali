.class public Lorg/chromium/chrome/browser/ChromeTabbedActivity;
.super Lorg/chromium/chrome/browser/ChromeActivity;
.source "ChromeTabbedActivity.java"

# interfaces
.implements Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior$OverviewModeObserver;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final INTENT_EXTRA_TEST_RENDER_PROCESS_LIMIT:Ljava/lang/String; = "render_process_limit"


# instance fields
.field private final mActivityStopMetrics:Lorg/chromium/chrome/browser/metrics/ActivityStopMetrics;

.field private mConnectionChangeReceiver:Lorg/chromium/chrome/browser/preferences/ConnectionChangeReceiver;

.field private mContentContainer:Landroid/view/ViewGroup;

.field private mControlContainer:Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;

.field private mCreatedTabOnStartup:Z

.field private mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

.field private mIntentHandlingTimeMs:J

.field private mIntentWithEffect:Z

.field private mIsAccessibilityEnabled:Ljava/lang/Boolean;

.field private mIsOnFirstRun:Z

.field private mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

.field private mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

.field private mTabModelSelectorImpl:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

.field private mTabModelSelectorTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

.field private mUIInitialized:Z

.field private mUndoBarPopupController:Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const-class v0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeActivity;-><init>()V

    .line 171
    new-instance v0, Lorg/chromium/chrome/browser/metrics/ActivityStopMetrics;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/metrics/ActivityStopMetrics;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mActivityStopMetrics:Lorg/chromium/chrome/browser/metrics/ActivityStopMetrics;

    .line 189
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mUIInitialized:Z

    .line 191
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mIsOnFirstRun:Z

    .line 198
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mCreatedTabOnStartup:Z

    .line 201
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mIntentWithEffect:Z

    .line 204
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mIntentHandlingTimeMs:J

    .line 688
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelSelectorImpl:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->toggleOverview()V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)Lorg/chromium/chrome/browser/metrics/ActivityStopMetrics;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mActivityStopMetrics:Lorg/chromium/chrome/browser/metrics/ActivityStopMetrics;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/ChromeTabbedActivity;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->sendToBackground(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->createInitialTab()V

    return-void
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mUIInitialized:Z

    return v0
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    return-object v0
.end method

.method static synthetic access$800(Lorg/chromium/chrome/browser/ChromeTabbedActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .prologue
    .line 111
    invoke-direct/range {p0 .. p6}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->launchIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)J
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mIntentHandlingTimeMs:J

    return-wide v0
.end method

.method private createInitialTab()V
    .locals 3

    .prologue
    .line 615
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->getHomepageUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 616
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "chrome-native://newtab/"

    .line 617
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;

    move-result-object v1

    sget-object v2, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_CHROME_UI:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    invoke-virtual {v1, v0, v2}, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->launchUrl(Ljava/lang/String;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)Lorg/chromium/chrome/browser/tab/Tab;

    .line 618
    return-void
.end method

.method private createTabModelSelectorImpl(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 970
    if-eqz p1, :cond_1

    const-string/jumbo v1, "is_incognito_selected"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 972
    :goto_0
    if-eqz p1, :cond_0

    const-string/jumbo v3, "window_index"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 973
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;->getInstance()Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;

    move-result-object v3

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v4

    invoke-virtual {v3, p0, v4, v0}, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;->requestSelector(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/ui/base/WindowAndroid;I)Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelSelectorImpl:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    .line 975
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelSelectorImpl:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    if-nez v0, :cond_2

    .line 976
    sget v0, Lorg/chromium/chrome/R$string;->unsupported_number_of_windows:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lorg/chromium/ui/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lorg/chromium/ui/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/widget/Toast;->show()V

    .line 978
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->finish()V

    .line 999
    :goto_1
    return-void

    :cond_1
    move v1, v0

    .line 970
    goto :goto_0

    .line 981
    :cond_2
    new-instance v0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$8;

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelSelectorImpl:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    invoke-direct {v0, p0, v3}, Lorg/chromium/chrome/browser/ChromeTabbedActivity$8;-><init>(Lorg/chromium/chrome/browser/ChromeTabbedActivity;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelSelectorTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    .line 997
    if-eqz v1, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelSelectorImpl:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->selectModel(Z)V

    .line 998
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelSelectorImpl:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->setTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    goto :goto_1
.end method

.method private getConnectionChangeReceiver()Lorg/chromium/chrome/browser/preferences/ConnectionChangeReceiver;
    .locals 1

    .prologue
    .line 1326
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mConnectionChangeReceiver:Lorg/chromium/chrome/browser/preferences/ConnectionChangeReceiver;

    if-nez v0, :cond_0

    .line 1327
    new-instance v0, Lorg/chromium/chrome/browser/preferences/ConnectionChangeReceiver;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/preferences/ConnectionChangeReceiver;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mConnectionChangeReceiver:Lorg/chromium/chrome/browser/preferences/ConnectionChangeReceiver;

    .line 1329
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mConnectionChangeReceiver:Lorg/chromium/chrome/browser/preferences/ConnectionChangeReceiver;

    return-object v0
.end method

.method private handleDebugIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 413
    const-string/jumbo v0, "com.google.android.apps.chrome.ACTION_CLOSE_TABS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->closeAllTabs()V

    .line 419
    :goto_0
    return-void

    .line 415
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/chromium/base/MemoryPressureListener;->handleDebugIntent(Landroid/app/Activity;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private initializeUI()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 431
    :try_start_0
    const-string/jumbo v1, "ChromeTabbedActivity.initializeUI"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 433
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v1

    .line 435
    const-string/jumbo v2, "enable-instant-extended-api"

    invoke-virtual {v1, v2}, Lorg/chromium/base/CommandLine;->appendSwitch(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getCompositorViewHolder()Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    move-result-object v1

    .line 438
    invoke-static {p0}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 439
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v2

    const-string/jumbo v3, "enable-tablet-tab-stack"

    invoke-virtual {v2, v3}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v2

    .line 441
    new-instance v3, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;

    if-eqz v2, :cond_0

    new-instance v0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$StackLayoutFactory;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/chromium/chrome/browser/ChromeTabbedActivity$StackLayoutFactory;-><init>(Lorg/chromium/chrome/browser/ChromeTabbedActivity$1;)V

    :cond_0
    invoke-direct {v3, v1, v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromeTablet;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$OverviewLayoutFactoryDelegate;)V

    iput-object v3, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    .line 447
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    invoke-static {p0}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->enableAnimations(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->setEnableAnimations(Z)V

    .line 448
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->addOverviewModeObserver(Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior$OverviewModeObserver;)V

    .line 451
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    sget v1, Lorg/chromium/chrome/R$id;->url_bar:I

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mControlContainer:Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->initializeCompositorContent(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;Landroid/view/View;Landroid/view/ViewGroup;Lorg/chromium/chrome/browser/widget/ControlContainer;)V

    .line 454
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelSelectorImpl:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->setOverviewModeBehavior(Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior;)V

    .line 456
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mUndoBarPopupController:Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->initialize()V

    .line 459
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 460
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->control_container_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 461
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 467
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelSelectorImpl:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelSelectorImpl:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 468
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelSelectorImpl:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->setFullscreenManager(Lorg/chromium/chrome/browser/fullscreen/FullscreenManager;)V

    .line 471
    :cond_2
    new-instance v0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getToolbarManager()Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->getActionModeController()Lorg/chromium/chrome/browser/toolbar/ActionModeController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/toolbar/ActionModeController;->getActionModeCallback()Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;-><init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Landroid/view/ActionMode$Callback;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    .line 474
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getContextualSearchManager()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 475
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getContextualSearchManager()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->setFindToolbarManager(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;)V

    .line 478
    :cond_3
    new-instance v6, Lorg/chromium/chrome/browser/ChromeTabbedActivity$2;

    invoke-direct {v6, p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity$2;-><init>(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)V

    .line 488
    new-instance v7, Lorg/chromium/chrome/browser/ChromeTabbedActivity$3;

    invoke-direct {v7, p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity$3;-><init>(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)V

    .line 496
    new-instance v8, Lorg/chromium/chrome/browser/ChromeTabbedActivity$4;

    invoke-direct {v8, p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity$4;-><init>(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)V

    .line 503
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getToolbarManager()Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelSelectorImpl:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    iget-object v4, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    iget-object v5, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->initializeWithNative(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior;Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 506
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getToolbarManager()Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->getToolbar()Lorg/chromium/chrome/browser/toolbar/Toolbar;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/ChromeTabbedActivity$5;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity$5;-><init>(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)V

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/toolbar/Toolbar;->setReturnButtonListener(Landroid/view/View$OnClickListener;)V

    .line 517
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->removeWindowBackground()V

    .line 519
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 520
    new-instance v0, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;

    move-result-object v2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getAppMenuHandler()Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

    move-result-object v4

    iget-object v5, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;-><init>(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;Landroid/app/Activity;Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior;)V

    .line 523
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/emptybackground/EmptyBackgroundViewWrapper;->initialize()V

    .line 526
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->hideOverview(Z)V

    .line 528
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mUIInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    const-string/jumbo v0, "ChromeTabbedActivity.initializeUI"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 531
    return-void

    .line 444
    :cond_5
    :try_start_1
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;

    new-instance v2, Lorg/chromium/chrome/browser/ChromeTabbedActivity$StackLayoutFactory;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/chromium/chrome/browser/ChromeTabbedActivity$StackLayoutFactory;-><init>(Lorg/chromium/chrome/browser/ChromeTabbedActivity$1;)V

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChromePhone;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$OverviewLayoutFactoryDelegate;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 530
    :catchall_0
    move-exception v0

    const-string/jumbo v1, "ChromeTabbedActivity.initializeUI"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
.end method

.method private isFullscreenVideoPlaying()Z
    .locals 1

    .prologue
    .line 1375
    invoke-static {}, Lorg/chromium/content/browser/ContentVideoView;->getContentVideoView()Lorg/chromium/content/browser/ContentVideoView;

    move-result-object v0

    .line 1376
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchFirstRunExperience()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 927
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mIsOnFirstRun:Z

    if-eqz v0, :cond_1

    .line 928
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelSelectorImpl:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->clearState()V

    .line 950
    :cond_0
    :goto_0
    return-void

    .line 932
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 934
    :goto_1
    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->checkIfFirstRunIsNecessary(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    .line 936
    if-eqz v0, :cond_0

    .line 938
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mIsOnFirstRun:Z

    .line 944
    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lorg/chromium/chrome/browser/ChromeTabbedActivity$7;

    invoke-direct {v2, p0, v0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity$7;-><init>(Lorg/chromium/chrome/browser/ChromeTabbedActivity;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 932
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private launchIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 10

    .prologue
    .line 1213
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mUIInitialized:Z

    if-eqz v0, :cond_0

    .line 1214
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->hideOverview(Z)V

    .line 1215
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getToolbarManager()Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->finishAnimations()V

    .line 1217
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1221
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getCurrentTabCreator()Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;

    move-result-object v0

    sget-object v2, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LINK:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    iget-wide v4, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mIntentHandlingTimeMs:J

    move-object v1, p1

    move-object/from16 v3, p6

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->launchUrl(Ljava/lang/String;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Landroid/content/Intent;J)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 1224
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;

    move-result-object v1

    iget-wide v8, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mIntentHandlingTimeMs:J

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v9}, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->launchUrlFromExternalApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;J)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    goto :goto_0
.end method

.method private recordBackPressedUma(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 1079
    const-string/jumbo v0, "ChromeTabbedActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Back pressed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1080
    const-string/jumbo v0, "Android.Activity.ChromeTabbedActivity.SystemBackAction"

    const/16 v1, 0x9

    invoke-static {v0, p2, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 1083
    return-void
.end method

.method private refreshSignIn()V
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mIsOnFirstRun:Z

    if-eqz v0, :cond_0

    .line 275
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-static {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunSignInProcessor;->start(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private sendToBackground(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 4

    .prologue
    .line 1182
    const-string/jumbo v0, "ChromeTabbedActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendToBackground(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1183
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->moveTaskToBack(Z)Z

    .line 1184
    if-eqz p1, :cond_0

    .line 1191
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/chrome/browser/ChromeTabbedActivity$10;

    invoke-direct {v1, p0, p1}, Lorg/chromium/chrome/browser/ChromeTabbedActivity$10;-><init>(Lorg/chromium/chrome/browser/ChromeTabbedActivity;Lorg/chromium/chrome/browser/tab/Tab;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1198
    :cond_0
    return-void
.end method

.method private toggleOverview()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 1230
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 1231
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    .line 1234
    :goto_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->overviewVisible()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1235
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getCompositorViewHolder()Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    move-result-object v1

    new-instance v2, Lorg/chromium/chrome/browser/ChromeTabbedActivity$11;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity$11;-><init>(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)V

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->hideKeyboard(Ljava/lang/Runnable;)V

    .line 1241
    if-eqz v0, :cond_0

    .line 1242
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->setAccessibilityState(Z)V

    .line 1262
    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object v0, v1

    .line 1231
    goto :goto_0

    .line 1245
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getActiveLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    .line 1246
    instance-of v2, v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    if-eqz v2, :cond_3

    .line 1247
    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->time()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;->commitOutstandingModelState(J)V

    .line 1249
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getCurrentTabModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1251
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    invoke-virtual {v0, v4}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->hideOverview(Z)V

    .line 1254
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 1255
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    .line 1257
    :cond_4
    if-eqz v1, :cond_0

    .line 1258
    invoke-virtual {v1, v4}, Lorg/chromium/content/browser/ContentViewCore;->setAccessibilityState(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected createAssistStatusHandler()Lorg/chromium/chrome/browser/AssistStatusHandler;
    .locals 1

    .prologue
    .line 409
    new-instance v0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$TabbedAssistStatusHandler;

    invoke-direct {v0, p0, p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity$TabbedAssistStatusHandler;-><init>(Lorg/chromium/chrome/browser/ChromeTabbedActivity;Landroid/app/Activity;)V

    return-object v0
.end method

.method protected createIntentHandlerDelegate()Lorg/chromium/chrome/browser/IntentHandler$IntentHandlerDelegate;
    .locals 2

    .prologue
    .line 1386
    new-instance v0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/ChromeTabbedActivity$InternalIntentDelegate;-><init>(Lorg/chromium/chrome/browser/ChromeTabbedActivity;Lorg/chromium/chrome/browser/ChromeTabbedActivity$1;)V

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1310
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mUIInitialized:Z

    invoke-static {p1, p0, v0}, Lorg/chromium/chrome/browser/KeyboardShortcuts;->dispatchKeyEvent(Landroid/view/KeyEvent;Lorg/chromium/chrome/browser/ChromeActivity;Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1311
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/ChromeActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public finishNativeInitialization()V
    .locals 3

    .prologue
    .line 286
    :try_start_0
    const-string/jumbo v0, "ChromeTabbedActivity.finishNativeInitialization"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 288
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->launchFirstRunExperience()V

    .line 290
    invoke-static {p0}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    move-result-object v0

    .line 293
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mIntentWithEffect:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunStatus;->getFirstRunFlowComplete(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getPromosSkippedOnFirstStart()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 299
    invoke-static {p0}, Lorg/chromium/chrome/browser/signin/SigninPromoScreen;->launchSigninPromoIfNeeded(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    invoke-static {p0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoScreen;->launchDataReductionPromo(Landroid/app/Activity;)V

    .line 307
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->refreshSignIn()V

    .line 309
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->initializeUI()V

    .line 312
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelSelectorImpl:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->notifyChanged()V

    .line 314
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 317
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->finishNativeInitialization()V

    .line 319
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;->launchDataReductionSSLInfoBar(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :cond_1
    const-string/jumbo v0, "ChromeTabbedActivity.finishNativeInitialization"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 325
    return-void

    .line 303
    :cond_2
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->setPromosSkippedOnFirstStart(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 324
    :catchall_0
    move-exception v0

    const-string/jumbo v1, "ChromeTabbedActivity.finishNativeInitialization"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
.end method

.method protected getControlContainerLayoutId()I
    .locals 1

    .prologue
    .line 890
    sget v0, Lorg/chromium/chrome/R$layout;->control_container:I

    return v0
.end method

.method public getCurrentTabCreator()Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;
    .locals 2

    .prologue
    .line 402
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getCurrentTabCreator()Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    move-result-object v0

    .line 403
    sget-boolean v1, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 404
    :cond_0
    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;

    return-object v0
.end method

.method public bridge synthetic getCurrentTabCreator()Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getCurrentTabCreator()Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutManager()Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;
    .locals 1

    .prologue
    .line 1339
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getCompositorViewHolder()Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->getLayoutManager()Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    return-object v0
.end method

.method public getOverviewListLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;
    .locals 1

    .prologue
    .line 1344
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getLayoutManager()Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->getOverviewListLayout()Lorg/chromium/chrome/browser/compositor/layouts/Layout;

    move-result-object v0

    return-object v0
.end method

.method public getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;
    .locals 2

    .prologue
    .line 395
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    move-result-object v0

    .line 396
    sget-boolean v1, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 397
    :cond_0
    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;

    return-object v0
.end method

.method public bridge synthetic getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;

    move-result-object v0

    return-object v0
.end method

.method public getTabsView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1334
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getCompositorViewHolder()Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public handleBackPressed()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1087
    const-string/jumbo v0, "SystemBack"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 1089
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mUIInitialized:Z

    if-nez v0, :cond_0

    move v1, v2

    .line 1173
    :goto_0
    return v1

    .line 1090
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v4

    .line 1092
    if-nez v4, :cond_1

    .line 1093
    const-string/jumbo v0, "currentTab is null"

    const/4 v2, 0x5

    invoke-direct {p0, v0, v2}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->recordBackPressedUma(Ljava/lang/String;I)V

    .line 1094
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->moveTaskToBack(Z)Z

    goto :goto_0

    .line 1099
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->overviewVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->isTablet()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1100
    const-string/jumbo v0, "Hid overview"

    const/4 v2, 0x6

    invoke-direct {p0, v0, v2}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->recordBackPressedUma(Ljava/lang/String;I)V

    .line 1101
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->hideOverview(Z)V

    goto :goto_0

    .line 1105
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->exitFullscreenIfShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1106
    const-string/jumbo v0, "Exited fullscreen"

    const/4 v2, 0x7

    invoke-direct {p0, v0, v2}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->recordBackPressedUma(Ljava/lang/String;I)V

    goto :goto_0

    .line 1110
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getToolbarManager()Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->back()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1111
    const-string/jumbo v0, "Navigating backward"

    const/16 v2, 0x8

    invoke-direct {p0, v0, v2}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->recordBackPressedUma(Ljava/lang/String;I)V

    .line 1112
    const-string/jumbo v0, "MobileTabClobbered"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_0

    .line 1119
    :cond_4
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/tab/Tab;->getLaunchType()Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    move-result-object v3

    .line 1120
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "https://support.google.com/chrome/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1121
    sget-object v5, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_CHROME_UI:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    if-ne v3, v5, :cond_5

    if-eqz v0, :cond_5

    .line 1122
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getCurrentTabModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-interface {v0, v4}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->closeTab(Lorg/chromium/chrome/browser/tab/Tab;)Z

    .line 1123
    const-string/jumbo v0, "Closed tab for help URL"

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->recordBackPressedUma(Ljava/lang/String;I)V

    goto :goto_0

    .line 1130
    :cond_5
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->getHerbFlavor()Ljava/lang/String;

    move-result-object v0

    .line 1131
    const-string/jumbo v5, "Basil"

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v5, "Chive"

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1133
    :cond_6
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/tab/Tab;->isAllowedToReturnToExternalApp()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    .line 1140
    :goto_1
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/tab/Tab;->getParentId()I

    move-result v5

    .line 1141
    sget-object v6, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LINK:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    if-eq v3, v6, :cond_8

    sget-object v6, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_EXTERNAL_APP:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    if-ne v3, v6, :cond_7

    if-nez v0, :cond_8

    :cond_7
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LONGPRESS_FOREGROUND:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    if-eq v3, v0, :cond_8

    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LONGPRESS_BACKGROUND:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    if-eq v3, v0, :cond_8

    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_RESTORE:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    if-ne v3, v0, :cond_b

    const/4 v0, -0x1

    if-eq v5, v0, :cond_b

    :cond_8
    move v3, v1

    .line 1151
    :goto_2
    if-eqz v3, :cond_9

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/tab/Tab;->isCreatedForExternalApp()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_9
    move v0, v1

    .line 1153
    :goto_3
    if-eqz v0, :cond_e

    .line 1154
    if-eqz v3, :cond_d

    .line 1155
    const-string/jumbo v0, "Minimized and closed tab"

    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->recordBackPressedUma(Ljava/lang/String;I)V

    .line 1156
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mActivityStopMetrics:Lorg/chromium/chrome/browser/metrics/ActivityStopMetrics;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/metrics/ActivityStopMetrics;->setStopReason(I)V

    .line 1157
    invoke-direct {p0, v4}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->sendToBackground(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto/16 :goto_0

    :cond_a
    move v0, v2

    .line 1133
    goto :goto_1

    :cond_b
    move v3, v2

    .line 1141
    goto :goto_2

    :cond_c
    move v0, v2

    .line 1151
    goto :goto_3

    .line 1160
    :cond_d
    const-string/jumbo v0, "Minimized, kept tab"

    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->recordBackPressedUma(Ljava/lang/String;I)V

    .line 1161
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mActivityStopMetrics:Lorg/chromium/chrome/browser/metrics/ActivityStopMetrics;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/metrics/ActivityStopMetrics;->setStopReason(I)V

    .line 1162
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->sendToBackground(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto/16 :goto_0

    .line 1165
    :cond_e
    if-eqz v3, :cond_f

    .line 1166
    const-string/jumbo v0, "Tab closed"

    const/4 v3, 0x4

    invoke-direct {p0, v0, v3}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->recordBackPressedUma(Ljava/lang/String;I)V

    .line 1167
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getCurrentTabModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-interface {v0, v4, v1, v2, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->closeTab(Lorg/chromium/chrome/browser/tab/Tab;ZZZ)Z

    goto/16 :goto_0

    .line 1171
    :cond_f
    sget-boolean v0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "The back button should have already been handled by this point"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1172
    :cond_10
    const-string/jumbo v0, "Unhandled"

    invoke-direct {p0, v0, v2}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->recordBackPressedUma(Ljava/lang/String;I)V

    move v1, v2

    .line 1173
    goto/16 :goto_0

    :cond_11
    move v0, v1

    goto :goto_1
.end method

.method public initializeCompositor()V
    .locals 3

    .prologue
    .line 225
    :try_start_0
    const-string/jumbo v0, "ChromeTabbedActivity.initializeCompositor"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 226
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->initializeCompositor()V

    .line 228
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelSelectorImpl:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getTabContentManager()Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->onNativeLibraryReady(Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)V

    .line 230
    new-instance v0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity$1;-><init>(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    .line 259
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelSelectorImpl:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->getModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 260
    iget-object v2, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 268
    :catchall_0
    move-exception v0

    const-string/jumbo v1, "ChromeTabbedActivity.initializeCompositor"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getSavedInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_1

    const-string/jumbo v1, "First run is running"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    const-string/jumbo v1, "First run is running"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mIsOnFirstRun:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    :cond_1
    const-string/jumbo v0, "ChromeTabbedActivity.initializeCompositor"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public initializeState()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 548
    :try_start_0
    const-string/jumbo v2, "ChromeTabbedActivity.initializeState"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 550
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->initializeState()V

    .line 552
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 554
    invoke-static {}, Lorg/chromium/content/browser/crypto/CipherFactory;->getInstance()Lorg/chromium/content/browser/crypto/CipherFactory;

    move-result-object v3

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getSavedInstanceState()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/chromium/content/browser/crypto/CipherFactory;->restoreFromBundle(Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 555
    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelSelectorImpl:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->clearEncryptedState()V

    .line 558
    :cond_0
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v3

    const-string/jumbo v4, "no-restore-state"

    invoke-virtual {v3, v4}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v3

    .line 560
    if-eqz v3, :cond_7

    .line 562
    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelSelectorImpl:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->clearState()V

    .line 570
    :cond_1
    :goto_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mIntentWithEffect:Z

    .line 571
    iget-boolean v3, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mIsOnFirstRun:Z

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getSavedInstanceState()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_2
    if-eqz v2, :cond_3

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mIntentHandler:Lorg/chromium/chrome/browser/IntentHandler;

    invoke-virtual {v3, p0, v2}, Lorg/chromium/chrome/browser/IntentHandler;->shouldIgnoreIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 573
    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mIntentHandler:Lorg/chromium/chrome/browser/IntentHandler;

    invoke-virtual {v3, p0, v2}, Lorg/chromium/chrome/browser/IntentHandler;->onNewIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mIntentWithEffect:Z

    .line 576
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getCurrentTabModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v2

    invoke-interface {v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v2

    if-gtz v2, :cond_4

    iget-object v2, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelSelectorImpl:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->getRestoredTabCount()I

    move-result v2

    if-gtz v2, :cond_4

    iget-boolean v2, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mIntentWithEffect:Z

    if-eqz v2, :cond_8

    :cond_4
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mCreatedTabOnStartup:Z

    .line 583
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mIntentWithEffect:Z

    if-nez v2, :cond_9

    .line 584
    :goto_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelSelectorImpl:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->restoreTabs(Z)V

    .line 590
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mCreatedTabOnStartup:Z

    if-eqz v1, :cond_5

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getTotalTabCount()I

    move-result v0

    if-nez v0, :cond_6

    .line 595
    :cond_5
    new-instance v0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$6;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity$6;-><init>(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->setOnInitializeAsyncFinished(Ljava/lang/Runnable;J)V

    .line 604
    :cond_6
    const-string/jumbo v0, "MobileStartup.ColdStartupIntent"

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mIntentWithEffect:Z

    invoke-static {v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    const-string/jumbo v0, "ChromeTabbedActivity.initializeState"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 608
    return-void

    .line 563
    :cond_7
    :try_start_1
    iget-boolean v3, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mIsOnFirstRun:Z

    if-nez v3, :cond_1

    .line 567
    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelSelectorImpl:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->loadState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 607
    :catchall_0
    move-exception v0

    const-string/jumbo v1, "ChromeTabbedActivity.initializeState"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0

    :cond_8
    move v2, v1

    .line 576
    goto :goto_1

    :cond_9
    move v0, v1

    .line 583
    goto :goto_2
.end method

.method public isInOverviewMode()Z
    .locals 1

    .prologue
    .line 1381
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->overviewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverlayVisible()Z
    .locals 1

    .prologue
    .line 1349
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getCompositorViewHolder()Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getCompositorViewHolder()Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->isTabInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStartedUpCorrectly(Landroid/content/Intent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 840
    invoke-static {p0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDocumentMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 841
    const-string/jumbo v1, "ChromeTabbedActivity"

    const-string/jumbo v2, "Discarding Intent: Starting ChromeTabbedActivity in Document mode"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 844
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onAccessibilityModeChanged(Z)V
    .locals 2

    .prologue
    .line 664
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/ChromeActivity;->onAccessibilityModeChanged(Z)V

    .line 666
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->enableAnimations(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->setEnableAnimations(Z)V

    .line 670
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 671
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getCompositorViewHolder()Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 672
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getCompositorViewHolder()Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->onAccessibilityStatusChanged(Z)V

    .line 675
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->overviewVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mIsAccessibilityEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_2

    .line 677
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->hideOverview(Z)V

    .line 678
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 679
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getCurrentTabCreator()Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->launchNTP()V

    .line 682
    :cond_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mIsAccessibilityEnabled:Ljava/lang/Boolean;

    .line 683
    return-void
.end method

.method public onActivityResultWithNative(IILandroid/content/Intent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 622
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/ChromeActivity;->onActivityResultWithNative(IILandroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 659
    :cond_0
    :goto_0
    return v0

    .line 624
    :cond_1
    const/16 v2, 0x65

    if-ne p1, v2, :cond_4

    .line 625
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mIsOnFirstRun:Z

    .line 626
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    .line 627
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->refreshSignIn()V

    goto :goto_0

    .line 629
    :cond_2
    if-eqz p3, :cond_3

    const-string/jumbo v2, "Close App"

    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 631
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->closeAllTabs(Z)V

    .line 632
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->finish()V

    goto :goto_0

    .line 634
    :cond_3
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->launchFirstRunExperience()V

    goto :goto_0

    .line 638
    :cond_4
    const/16 v2, 0x66

    if-ne p1, v2, :cond_7

    .line 639
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Custom Tab result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 640
    const/4 v2, 0x2

    if-ne p2, v2, :cond_5

    if-eqz p3, :cond_5

    .line 647
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;

    move-result-object v1

    new-instance v2, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    sget-object v3, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_CHROME_UI:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->createNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/Tab;

    goto :goto_0

    .line 649
    :cond_5
    if-eq p2, v0, :cond_6

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    :cond_6
    if-eqz p3, :cond_0

    .line 653
    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mActivityStopMetrics:Lorg/chromium/chrome/browser/metrics/ActivityStopMetrics;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/metrics/ActivityStopMetrics;->setStopReason(I)V

    .line 655
    invoke-direct {p0, v4}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->sendToBackground(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    :cond_7
    move v0, v1

    .line 659
    goto :goto_0
.end method

.method protected onDeferredStartup()V
    .locals 2

    .prologue
    .line 955
    :try_start_0
    const-string/jumbo v0, "ChromeTabbedActivity.onDeferredStartup"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 956
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->onDeferredStartup()V

    .line 958
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 959
    const-string/jumbo v1, "MemoryAndroid.DeviceMemoryClass"

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    invoke-static {v1, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordSparseSlowlyHistogram(Ljava/lang/String;I)V

    .line 962
    invoke-static {}, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->nativePrefetchZeroSuggestResults()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 964
    const-string/jumbo v0, "ChromeTabbedActivity.onDeferredStartup"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 965
    return-void

    .line 964
    :catchall_0
    move-exception v0

    const-string/jumbo v1, "ChromeTabbedActivity.onDeferredStartup"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
.end method

.method public onDestroyInternal()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1276
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->removeOverviewModeObserver(Lorg/chromium/chrome/browser/compositor/layouts/OverviewModeBehavior$OverviewModeObserver;)V

    .line 1278
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelSelectorTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    if-eqz v0, :cond_1

    .line 1279
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelSelectorTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;->destroy()V

    .line 1280
    iput-object v3, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelSelectorTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    .line 1283
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    if-eqz v0, :cond_2

    .line 1284
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelSelectorImpl:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->getModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 1285
    iget-object v2, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->removeObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V

    goto :goto_0

    .line 1289
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mUndoBarPopupController:Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;

    if-eqz v0, :cond_3

    .line 1290
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mUndoBarPopupController:Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;->destroy()V

    .line 1291
    iput-object v3, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mUndoBarPopupController:Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;

    .line 1294
    :cond_3
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->onDestroyInternal()V

    .line 1295
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1316
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mUIInitialized:Z

    if-nez v0, :cond_1

    .line 1317
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/ChromeActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 1321
    :cond_0
    :goto_0
    return v2

    .line 1319
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->overviewVisible()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getCurrentTabModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    move v0, v1

    .line 1321
    :goto_1
    invoke-static {p2, p0, v0, v1}, Lorg/chromium/chrome/browser/KeyboardShortcuts;->onKeyDown(Landroid/view/KeyEvent;Lorg/chromium/chrome/browser/ChromeActivity;ZZ)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/ChromeActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 1319
    goto :goto_1
.end method

.method public onMenuOrKeyboardAction(IZ)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1008
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    .line 1009
    sget v3, Lorg/chromium/chrome/R$id;->new_tab_menu_id:I

    if-ne p1, v3, :cond_1

    .line 1010
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;

    move-result-object v1

    const-string/jumbo v2, "chrome-native://newtab/"

    sget-object v3, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_CHROME_UI:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    invoke-virtual {v1, v2, v3}, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->launchUrl(Ljava/lang/String;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    .line 1012
    const-string/jumbo v2, "MobileMenuNewTab"

    invoke-static {v2}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 1013
    const-string/jumbo v2, "MobileNewTabOpened"

    invoke-static {v2}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1015
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getToolbarManager()Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->setUrlBarFocus(Z)V

    .line 1075
    :cond_0
    :goto_0
    return v0

    .line 1017
    :cond_1
    sget v3, Lorg/chromium/chrome/R$id;->new_incognito_tab_menu_id:I

    if-ne p1, v3, :cond_2

    .line 1018
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isIncognitoModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1021
    const-string/jumbo v1, "MobileMenuNewIncognitoTab"

    invoke-static {v1}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 1022
    const-string/jumbo v1, "MobileNewTabOpened"

    invoke-static {v1}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 1023
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;

    move-result-object v1

    const-string/jumbo v2, "chrome-native://newtab/"

    sget-object v3, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_CHROME_UI:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    invoke-virtual {v1, v2, v3}, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->launchUrl(Ljava/lang/String;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    .line 1025
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1026
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getToolbarManager()Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->setUrlBarFocus(Z)V

    goto :goto_0

    .line 1029
    :cond_2
    sget v3, Lorg/chromium/chrome/R$id;->all_bookmarks_menu_id:I

    if-ne p1, v3, :cond_3

    .line 1030
    if-eqz v2, :cond_0

    .line 1031
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getCompositorViewHolder()Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    move-result-object v1

    new-instance v2, Lorg/chromium/chrome/browser/ChromeTabbedActivity$9;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity$9;-><init>(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)V

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->hideKeyboard(Ljava/lang/Runnable;)V

    .line 1038
    const-string/jumbo v1, "MobileMenuAllBookmarks"

    invoke-static {v1}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_0

    .line 1040
    :cond_3
    sget v3, Lorg/chromium/chrome/R$id;->recent_tabs_menu_id:I

    if-ne p1, v3, :cond_4

    .line 1041
    if-eqz v2, :cond_0

    .line 1042
    new-instance v1, Lorg/chromium/content_public/browser/LoadUrlParams;

    const-string/jumbo v3, "chrome-native://recent-tabs/"

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v1}, Lorg/chromium/chrome/browser/tab/Tab;->loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    .line 1045
    const-string/jumbo v1, "MobileMenuOpenTabs"

    invoke-static {v1}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_0

    .line 1047
    :cond_4
    sget v2, Lorg/chromium/chrome/R$id;->close_all_tabs_menu_id:I

    if-ne p1, v2, :cond_5

    .line 1049
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->closeAllTabs()V

    .line 1050
    const-string/jumbo v1, "MobileMenuCloseAllTabs"

    invoke-static {v1}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1051
    :cond_5
    sget v2, Lorg/chromium/chrome/R$id;->close_all_incognito_tabs_menu_id:I

    if-ne p1, v2, :cond_6

    .line 1053
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->closeAllTabs()V

    .line 1055
    const-string/jumbo v1, "MobileMenuCloseAllTabs"

    invoke-static {v1}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1056
    :cond_6
    sget v2, Lorg/chromium/chrome/R$id;->find_in_page_id:I

    if-ne p1, v2, :cond_9

    .line 1057
    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->showToolbar()V

    .line 1058
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getContextualSearchManager()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1059
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getContextualSearchManager()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object v1

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->hideContextualSearch(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 1061
    :cond_7
    if-eqz p2, :cond_8

    .line 1062
    const-string/jumbo v1, "MobileMenuFindInPage"

    invoke-static {v1}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1064
    :cond_8
    const-string/jumbo v1, "MobileShortcutFindInPage"

    invoke-static {v1}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1066
    :cond_9
    sget v2, Lorg/chromium/chrome/R$id;->focus_url_bar:I

    if-ne p1, v2, :cond_c

    .line 1067
    iget-object v2, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->overviewVisible()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getCurrentTabModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v2

    invoke-interface {v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    move v1, v0

    .line 1069
    :cond_b
    if-eqz v1, :cond_0

    .line 1070
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getToolbarManager()Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->setUrlBarFocus(Z)V

    goto/16 :goto_0

    .line 1073
    :cond_c
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/ChromeActivity;->onMenuOrKeyboardAction(IZ)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 279
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mIntentHandlingTimeMs:J

    .line 280
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/ChromeActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 281
    return-void
.end method

.method public onNewIntentWithNative(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 382
    :try_start_0
    const-string/jumbo v0, "ChromeTabbedActivity.onNewIntentWithNative"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 384
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/ChromeActivity;->onNewIntentWithNative(Landroid/content/Intent;)V

    .line 385
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string/jumbo v1, "enable-test-intents"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->handleDebugIntent(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    :cond_0
    const-string/jumbo v0, "ChromeTabbedActivity.onNewIntentWithNative"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 390
    return-void

    .line 389
    :catchall_0
    move-exception v0

    const-string/jumbo v1, "ChromeTabbedActivity.onNewIntentWithNative"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
.end method

.method public onOverviewModeFinishedHiding()V
    .locals 2

    .prologue
    .line 1414
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getAssistStatusHandler()Lorg/chromium/chrome/browser/AssistStatusHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getAssistStatusHandler()Lorg/chromium/chrome/browser/AssistStatusHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/AssistStatusHandler;->updateAssistState()V

    .line 1415
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1416
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getThemeColor()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->setStatusBarColor(Lorg/chromium/chrome/browser/tab/Tab;I)V

    .line 1418
    :cond_1
    return-void
.end method

.method public onOverviewModeFinishedShowing()V
    .locals 0

    .prologue
    .line 1405
    return-void
.end method

.method public onOverviewModeStartedHiding(ZZ)V
    .locals 1

    .prologue
    .line 1409
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getAppMenuHandler()Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getAppMenuHandler()Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->hideAppMenu()V

    .line 1410
    :cond_0
    return-void
.end method

.method public onOverviewModeStartedShowing(Z)V
    .locals 2

    .prologue
    .line 1397
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->hideToolbar()V

    .line 1398
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getAssistStatusHandler()Lorg/chromium/chrome/browser/AssistStatusHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getAssistStatusHandler()Lorg/chromium/chrome/browser/AssistStatusHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/AssistStatusHandler;->updateAssistState()V

    .line 1399
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getAppMenuHandler()Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getAppMenuHandler()Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->hideAppMenu()V

    .line 1400
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->setStatusBarColor(Landroid/view/Window;I)V

    .line 1401
    invoke-static {}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->getInstance()Lorg/chromium/chrome/browser/metrics/StartupMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->recordOpenedTabSwitcher()V

    .line 1402
    return-void
.end method

.method public onPauseWithNative()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelSelectorImpl:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->commitAllTabClosures()V

    .line 338
    invoke-static {p0}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->persistCookies(Landroid/content/Context;)V

    .line 339
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->onPauseWithNative()V

    .line 340
    return-void
.end method

.method public onResumeWithNative()V
    .locals 2

    .prologue
    .line 330
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->onResumeWithNative()V

    .line 331
    invoke-static {p0}, Lorg/chromium/chrome/browser/cookies/CookiesFetcher;->restoreCookies(Landroid/content/Context;)V

    .line 332
    invoke-static {}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->getInstance()Lorg/chromium/chrome/browser/metrics/StartupMetrics;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->recordHistogram(Z)V

    .line 333
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1266
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/ChromeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1267
    invoke-static {}, Lorg/chromium/content/browser/crypto/CipherFactory;->getInstance()Lorg/chromium/content/browser/crypto/CipherFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/crypto/CipherFactory;->saveToBundle(Landroid/os/Bundle;)V

    .line 1268
    const-string/jumbo v0, "is_incognito_selected"

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getCurrentTabModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->isIncognito()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1269
    const-string/jumbo v0, "First run is running"

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mIsOnFirstRun:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1270
    const-string/jumbo v0, "window_index"

    invoke-static {}, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;->getInstance()Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;->getIndexForWindow(Landroid/app/Activity;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1272
    return-void
.end method

.method public onSceneChange(Lorg/chromium/chrome/browser/compositor/layouts/Layout;)V
    .locals 1

    .prologue
    .line 1391
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/ChromeActivity;->onSceneChange(Lorg/chromium/chrome/browser/compositor/layouts/Layout;)V

    .line 1392
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/layouts/Layout;->shouldDisplayContentOverlay()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelSelectorImpl:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->onTabsViewShown()V

    .line 1393
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 360
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->onStart()V

    .line 361
    invoke-static {}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->getInstance()Lorg/chromium/chrome/browser/metrics/StartupMetrics;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->updateIntent(Landroid/content/Intent;)V

    .line 362
    return-void
.end method

.method public onStartWithNative()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 366
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->onStartWithNative()V

    .line 368
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome;->showOverview(Z)V

    .line 370
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getConnectionChangeReceiver()Lorg/chromium/chrome/browser/preferences/ConnectionChangeReceiver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/preferences/ConnectionChangeReceiver;->registerReceiver(Landroid/content/Context;)V

    .line 372
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->resetSavedInstanceState()V

    .line 374
    invoke-static {p0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDocumentModeEligible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    invoke-static {v1}, Lorg/chromium/chrome/browser/document/DocumentUma;->recordInDocumentMode(Z)V

    .line 377
    :cond_1
    return-void
.end method

.method public onStopWithNative()V
    .locals 2

    .prologue
    .line 344
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->onStopWithNative()V

    .line 346
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->setIsAllowedToReturnToExternalApp(Z)V

    .line 348
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelSelectorImpl:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;->saveState()V

    .line 350
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getConnectionChangeReceiver()Lorg/chromium/chrome/browser/preferences/ConnectionChangeReceiver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/preferences/ConnectionChangeReceiver;->unregisterReceiver(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    invoke-static {}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->getInstance()Lorg/chromium/chrome/browser/metrics/StartupMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->recordHistogram(Z)V

    .line 355
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mActivityStopMetrics:Lorg/chromium/chrome/browser/metrics/ActivityStopMetrics;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/metrics/ActivityStopMetrics;->onStopWithNative(Landroid/app/Activity;)V

    .line 356
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onTrimMemory(I)V
    .locals 1

    .prologue
    .line 1299
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/ChromeActivity;->onTrimMemory(I)V

    .line 1302
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/16 v0, 0x14

    if-lt p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_2

    .line 1304
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/ntp/NativePageAssassin;->getInstance()Lorg/chromium/chrome/browser/ntp/NativePageAssassin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/NativePageAssassin;->freezeAllHiddenPages()V

    .line 1306
    :cond_2
    return-void
.end method

.method public postInflationStartup()V
    .locals 3

    .prologue
    .line 895
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->postInflationStartup()V

    .line 900
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getSavedInstanceState()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->createTabModelSelectorImpl(Landroid/os/Bundle;)V

    .line 902
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 914
    :goto_0
    return-void

    .line 905
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 909
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mContentContainer:Landroid/view/ViewGroup;

    .line 910
    sget v0, Lorg/chromium/chrome/R$id;->control_container:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mControlContainer:Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;

    .line 912
    new-instance v0, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mTabModelSelectorImpl:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getSnackbarManager()Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/snackbar/SnackbarManager;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mUndoBarPopupController:Lorg/chromium/chrome/browser/snackbar/undo/UndoBarController;

    goto :goto_0
.end method

.method public preInflationStartup()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 849
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->preInflationStartup()V

    .line 857
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 858
    invoke-static {v4}, Lorg/chromium/chrome/browser/metrics/UmaUtils;->setRunningApplicationStart(Z)V

    .line 861
    :cond_0
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    .line 862
    const-string/jumbo v1, "enable-test-intents"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "render_process_limit"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 866
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "render_process_limit"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 868
    if-eq v1, v3, :cond_1

    .line 869
    new-array v2, v4, [Ljava/lang/String;

    .line 870
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "--renderer-process-limit="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    .line 872
    invoke-virtual {v0, v2}, Lorg/chromium/base/CommandLine;->appendSwitchesAndArguments([Ljava/lang/String;)V

    .line 876
    :cond_1
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->supportRequestWindowFeature(I)Z

    .line 880
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->isFreshInstallOrDataHasBeenCleared(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 884
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 886
    :cond_2
    return-void
.end method

.method protected setStatusBarColor(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 1

    .prologue
    .line 1422
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->isInOverviewMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p2, -0x1000000

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/ChromeActivity;->setStatusBarColor(Lorg/chromium/chrome/browser/tab/Tab;I)V

    .line 1423
    return-void
.end method

.method public shouldShowAppMenu()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1358
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mUIInitialized:Z

    if-nez v1, :cond_1

    .line 1365
    :cond_0
    :goto_0
    return v0

    .line 1361
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mFindToolbarManager:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarManager;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1365
    :cond_2
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->shouldShowAppMenu()Z

    move-result v0

    goto :goto_0
.end method

.method protected showAppMenuForKeyboardEvent()V
    .locals 1

    .prologue
    .line 1370
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->mUIInitialized:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->isFullscreenVideoPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1372
    :cond_0
    :goto_0
    return-void

    .line 1371
    :cond_1
    invoke-super {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->showAppMenuForKeyboardEvent()V

    goto :goto_0
.end method

.method public terminateIncognitoSession()V
    .locals 2

    .prologue
    .line 1003
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->closeAllTabs()V

    .line 1004
    return-void
.end method
