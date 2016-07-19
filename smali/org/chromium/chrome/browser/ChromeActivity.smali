.class public abstract Lorg/chromium/chrome/browser/ChromeActivity;
.super Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;
.source "ChromeActivity.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
.implements Lorg/chromium/chrome/browser/compositor/layouts/SceneChangeObserver;
.implements Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$ContextualSearchTabPromotionDelegate;
.implements Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarManageable;
.implements Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;
.implements Lorg/chromium/policy/CombinedPolicyProvider$PolicyChangeListener;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMPTY_RECT:Landroid/graphics/Rect;

.field static final NO_CONTROL_CONTAINER:I = -0x1

.field private static final SNAPSHOT_DATABASE_LOCK:Ljava/lang/Object;

.field private static sAppMenuHandlerFactory:Lorg/chromium/chrome/browser/ChromeActivity$AppMenuHandlerFactory;


# instance fields
.field private mAppMenuHandler:Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

.field private mAppMenuPropertiesDelegate:Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;

.field private mAssistStatusHandler:Lorg/chromium/chrome/browser/AssistStatusHandler;

.field private mCompositorViewHolder:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

.field private mContextReporter:Lorg/chromium/chrome/browser/gsa/ContextReporter;

.field private mContextualSearchManager:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

.field private mDataUseSnackbarController:Lorg/chromium/chrome/browser/snackbar/DataUseSnackbarController;

.field private mDeferredStartupNotified:Z

.field private mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

.field protected mGSAServiceClient:Lorg/chromium/chrome/browser/gsa/GSAServiceClient;

.field private mIncognitoTabCreator:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

.field private mInflateInitialLayoutDurationMs:J

.field private mInsetObserverView:Lorg/chromium/chrome/browser/InsetObserverView;

.field protected mIntentHandler:Lorg/chromium/chrome/browser/IntentHandler;

.field private mPartnerBrowserRefreshNeeded:Z

.field private mReaderModeManager:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

.field private mRegularTabCreator:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

.field private mSetWindowHWA:Z

.field private mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

.field private mSyncStateChangedListener:Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;

.field private mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

.field private mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

.field private mTabModelSelectorTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

.field private mToolbarManager:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

.field private mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

.field private mUmaSessionStats:Lorg/chromium/chrome/browser/metrics/UmaSessionStats;

.field private mWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    const-class v0, Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/ChromeActivity;->$assertionsDisabled:Z

    .line 166
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/ChromeActivity;->SNAPSHOT_DATABASE_LOCK:Ljava/lang/Object;

    .line 178
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/ChromeActivity;->EMPTY_RECT:Landroid/graphics/Rect;

    .line 223
    new-instance v0, Lorg/chromium/chrome/browser/ChromeActivity$1;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/ChromeActivity$1;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/ChromeActivity;->sAppMenuHandlerFactory:Lorg/chromium/chrome/browser/ChromeActivity$AppMenuHandlerFactory;

    return-void

    .line 146
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;-><init>()V

    .line 152
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->checkAccessibility()V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/ChromeActivity;)Lorg/chromium/chrome/browser/toolbar/ToolbarManager;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mToolbarManager:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/ChromeActivity;)Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mCompositorViewHolder:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/ChromeActivity;)Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mAppMenuPropertiesDelegate:Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/ChromeActivity;)Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mAppMenuHandler:Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/ChromeActivity;)Lorg/chromium/chrome/browser/snackbar/DataUseSnackbarController;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mDataUseSnackbarController:Lorg/chromium/chrome/browser/snackbar/DataUseSnackbarController;

    return-object v0
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->createContextReporterIfNeeded()V

    return-void
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/ChromeActivity;)Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mDeferredStartupNotified:Z

    return v0
.end method

.method static synthetic access$702(Lorg/chromium/chrome/browser/ChromeActivity;Z)Z
    .locals 0

    .prologue
    .line 146
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mDeferredStartupNotified:Z

    return p1
.end method

.method static synthetic access$800()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lorg/chromium/chrome/browser/ChromeActivity;->SNAPSHOT_DATABASE_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method private checkAccessibility()V
    .locals 1

    .prologue
    .line 1019
    invoke-static {p0}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->isAccessibilityModeEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ChromeActivity;->onAccessibilityModeChanged(Z)V

    .line 1020
    return-void
.end method

.method private createContextReporterIfNeeded()V
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mContextReporter:Lorg/chromium/chrome/browser/gsa/ContextReporter;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-nez v0, :cond_1

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    invoke-static {p0}, Lorg/chromium/chrome/browser/sync/SyncController;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/sync/SyncController;

    move-result-object v0

    .line 603
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->get()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v1

    .line 605
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/SyncController;->isSyncingUrlsWithKeystorePassphrase()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 606
    sget-boolean v0, Lorg/chromium/chrome/browser/ChromeActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 607
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeApplication;->createGsaHelper()Lorg/chromium/chrome/browser/gsa/GSAHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/gsa/GSAHelper;->getContextReporter(Lorg/chromium/chrome/browser/ChromeActivity;)Lorg/chromium/chrome/browser/gsa/ContextReporter;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mContextReporter:Lorg/chromium/chrome/browser/gsa/ContextReporter;

    .line 610
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mSyncStateChangedListener:Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mSyncStateChangedListener:Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->removeSyncStateChangedListener(Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;)V

    .line 612
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mSyncStateChangedListener:Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;

    goto :goto_0

    .line 617
    :cond_3
    invoke-static {v1}, Lorg/chromium/chrome/browser/gsa/ContextReporter;->reportSyncStatus(Lorg/chromium/chrome/browser/sync/ProfileSyncService;)V

    .line 620
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mSyncStateChangedListener:Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 621
    new-instance v0, Lorg/chromium/chrome/browser/ChromeActivity$5;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/ChromeActivity$5;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mSyncStateChangedListener:Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;

    .line 627
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mSyncStateChangedListener:Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->addSyncStateChangedListener(Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;)V

    goto :goto_0
.end method

.method private displayArea()I
    .locals 2

    .prologue
    .line 1485
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1486
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1487
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/2addr v0, v1

    .line 1489
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private enableHardwareAcceleration()V
    .locals 2

    .prologue
    .line 1610
    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1611
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1623
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mSetWindowHWA:Z

    .line 1625
    :cond_0
    return-void
.end method

.method public static getThemeId()I
    .locals 2

    .prologue
    .line 1629
    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1631
    :goto_0
    if-eqz v0, :cond_1

    sget v0, Lorg/chromium/chrome/R$style;->MainTheme_LowEnd:I

    :goto_1
    return v0

    .line 1629
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1631
    :cond_1
    sget v0, Lorg/chromium/chrome/R$style;->MainTheme:I

    goto :goto_1
.end method

.method private isSelectActionBarShowing()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1305
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    .line 1306
    if-nez v1, :cond_1

    .line 1309
    :cond_0
    :goto_0
    return v0

    .line 1307
    :cond_1
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    .line 1308
    if-eqz v1, :cond_0

    .line 1309
    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->isSelectActionBarShowing()Z

    move-result v0

    goto :goto_0
.end method

.method private markSessionEnd()V
    .locals 4

    .prologue
    .line 1464
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mUmaSessionStats:Lorg/chromium/chrome/browser/metrics/UmaSessionStats;

    if-nez v0, :cond_0

    .line 1466
    sget-boolean v0, Lorg/chromium/chrome/browser/ChromeActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1470
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mUmaSessionStats:Lorg/chromium/chrome/browser/metrics/UmaSessionStats;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->windowArea()I

    move-result v1

    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->displayArea()I

    move-result v2

    invoke-static {}, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;->getInstance()Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;->getNumberOfAssignedTabModelSelectors()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->logMultiWindowStats(III)V

    .line 1472
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mUmaSessionStats:Lorg/chromium/chrome/browser/metrics/UmaSessionStats;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->logAndEndSession()V

    .line 1473
    :cond_1
    return-void
.end method

.method private markSessionResume()V
    .locals 2

    .prologue
    .line 1445
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mUmaSessionStats:Lorg/chromium/chrome/browser/metrics/UmaSessionStats;

    if-nez v0, :cond_0

    .line 1446
    new-instance v0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mUmaSessionStats:Lorg/chromium/chrome/browser/metrics/UmaSessionStats;

    .line 1449
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mUmaSessionStats:Lorg/chromium/chrome/browser/metrics/UmaSessionStats;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->updateMetricsServiceState()V

    .line 1452
    invoke-static {p0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDocumentMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1453
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mUmaSessionStats:Lorg/chromium/chrome/browser/metrics/UmaSessionStats;

    invoke-static {}, Lorg/chromium/chrome/browser/ChromeApplication;->getDocumentTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->startNewSession(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    .line 1458
    :goto_0
    return-void

    .line 1456
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mUmaSessionStats:Lorg/chromium/chrome/browser/metrics/UmaSessionStats;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->startNewSession(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    goto :goto_0
.end method

.method private recordKeyboardLocaleUma()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1545
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1547
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 1548
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1549
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 1550
    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v1

    .line 1552
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodSubtype;

    .line 1553
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "keyboard"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1554
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    .line 1555
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1556
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1561
    :cond_2
    const-string/jumbo v1, "InputMethod.ActiveCount"

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordCountHistogram(Ljava/lang/String;I)V

    .line 1563
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 1564
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 1565
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 1566
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v7

    .line 1567
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 1568
    const-string/jumbo v1, "InputMethod.MatchesSystemLanguage"

    invoke-static {v1, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    .line 1570
    :cond_3
    return-void
.end method

.method private removeSnapshotDatabase()V
    .locals 3

    .prologue
    .line 1527
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1528
    new-instance v1, Lorg/chromium/chrome/browser/ChromeActivity$12;

    invoke-direct {v1, p0, v0}, Lorg/chromium/chrome/browser/ChromeActivity$12;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;Landroid/content/Context;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lorg/chromium/chrome/browser/ChromeActivity$12;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1542
    return-void
.end method

.method public static setAppMenuHandlerFactoryForTesting(Lorg/chromium/chrome/browser/ChromeActivity$AppMenuHandlerFactory;)V
    .locals 0

    .prologue
    .line 239
    sput-object p0, Lorg/chromium/chrome/browser/ChromeActivity;->sAppMenuHandlerFactory:Lorg/chromium/chrome/browser/ChromeActivity$AppMenuHandlerFactory;

    .line 240
    return-void
.end method

.method private setLowEndTheme()V
    .locals 2

    .prologue
    .line 1635
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeActivity;->getThemeId()I

    move-result v0

    sget v1, Lorg/chromium/chrome/R$style;->MainTheme_LowEnd:I

    if-ne v0, v1, :cond_0

    sget v0, Lorg/chromium/chrome/R$style;->MainTheme_LowEnd:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ChromeActivity;->setTheme(I)V

    .line 1636
    :cond_0
    return-void
.end method

.method private windowArea()I
    .locals 2

    .prologue
    .line 1476
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1477
    if-eqz v0, :cond_0

    .line 1478
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1479
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    mul-int/2addr v0, v1

    .line 1481
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public addOrEditBookmark(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 7

    .prologue
    .line 1035
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1062
    :cond_0
    :goto_0
    return-void

    .line 1040
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mToolbarManager:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->getBookmarkBridge()Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->isEditBookmarksEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1041
    sget-boolean v0, Lorg/chromium/chrome/browser/ChromeActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1049
    :cond_2
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUserBookmarkId()J

    move-result-wide v4

    .line 1051
    new-instance v6, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-direct {v6}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;-><init>()V

    .line 1052
    new-instance v1, Lorg/chromium/chrome/browser/ChromeActivity$10;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/chromium/chrome/browser/ChromeActivity$10;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/tab/Tab;JLorg/chromium/chrome/browser/bookmarks/BookmarkModel;)V

    invoke-virtual {v6, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->runAfterBookmarkModelLoaded(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected createAppMenuPropertiesDelegate()Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;
    .locals 1

    .prologue
    .line 424
    new-instance v0, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;)V

    return-object v0
.end method

.method protected createAssistStatusHandler()Lorg/chromium/chrome/browser/AssistStatusHandler;
    .locals 1

    .prologue
    .line 438
    new-instance v0, Lorg/chromium/chrome/browser/AssistStatusHandler;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/AssistStatusHandler;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public createContextualSearchTab(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1314
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 1315
    if-nez v0, :cond_1

    .line 1323
    :cond_0
    :goto_0
    return-void

    .line 1317
    :cond_1
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    move-result-object v0

    .line 1318
    if-eqz v0, :cond_0

    .line 1320
    new-instance v1, Lorg/chromium/content_public/browser/LoadUrlParams;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    sget-object v2, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LINK:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;->createNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/Tab;

    goto :goto_0
.end method

.method protected createFullscreenManager(Landroid/view/View;)Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;
    .locals 6

    .prologue
    .line 1203
    new-instance v0, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v3

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getControlContainerHeightResource()I

    move-result v4

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;-><init>(Landroid/app/Activity;Landroid/view/View;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;IZ)V

    return-object v0
.end method

.method protected createIntentHandlerDelegate()Lorg/chromium/chrome/browser/IntentHandler$IntentHandlerDelegate;
    .locals 1

    .prologue
    .line 990
    new-instance v0, Lorg/chromium/chrome/browser/ChromeActivity$9;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/ChromeActivity$9;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;)V

    return-object v0
.end method

.method protected exitFullscreenIfShowing()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1212
    invoke-static {}, Lorg/chromium/content/browser/ContentVideoView;->getContentVideoView()Lorg/chromium/content/browser/ContentVideoView;

    move-result-object v2

    .line 1213
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentVideoView;->getContext()Landroid/content/Context;

    move-result-object v3

    if-ne v3, p0, :cond_0

    .line 1214
    invoke-virtual {v2, v1}, Lorg/chromium/content/browser/ContentVideoView;->exitFullscreen(Z)V

    .line 1221
    :goto_0
    return v0

    .line 1217
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->getPersistentFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1218
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;->setPersistentFullscreenMode(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1221
    goto :goto_0
.end method

.method public getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .prologue
    .line 1142
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getCurrentTabModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getCurrentTab(Lorg/chromium/chrome/browser/tabmodel/TabList;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    return-object v0
.end method

.method public getAppMenuHandler()Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;
    .locals 1

    .prologue
    .line 1330
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mAppMenuHandler:Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

    return-object v0
.end method

.method protected getAppMenuLayoutId()I
    .locals 1

    .prologue
    .line 416
    sget v0, Lorg/chromium/chrome/R$menu;->main_menu:I

    return v0
.end method

.method public getAppMenuPropertiesDelegate()Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;
    .locals 1

    .prologue
    .line 1338
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mAppMenuPropertiesDelegate:Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;

    return-object v0
.end method

.method protected getAssistStatusHandler()Lorg/chromium/chrome/browser/AssistStatusHandler;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mAssistStatusHandler:Lorg/chromium/chrome/browser/AssistStatusHandler;

    return-object v0
.end method

.method protected getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 879
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$color;->light_background_color:I

    invoke-static {v1, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public getChromeApplication()Lorg/chromium/chrome/browser/ChromeApplication;
    .locals 1

    .prologue
    .line 1026
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ChromeApplication;

    return-object v0
.end method

.method public getCompositorViewHolder()Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;
    .locals 1

    .prologue
    .line 1164
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mCompositorViewHolder:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    return-object v0
.end method

.method public getContentOffsetProvider()Lorg/chromium/chrome/browser/compositor/layouts/content/ContentOffsetProvider;
    .locals 1

    .prologue
    .line 1179
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mCompositorViewHolder:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->getContentOffsetProvider()Lorg/chromium/chrome/browser/compositor/layouts/content/ContentOffsetProvider;

    move-result-object v0

    return-object v0
.end method

.method public getContextualSearchManager()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mContextualSearchManager:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    return-object v0
.end method

.method public getControlContainerHeightResource()I
    .locals 1

    .prologue
    .line 1010
    sget v0, Lorg/chromium/chrome/R$dimen;->control_container_height:I

    return v0
.end method

.method protected getControlContainerLayoutId()I
    .locals 1

    .prologue
    .line 445
    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentContentViewCore()Lorg/chromium/content/browser/ContentViewCore;
    .locals 1

    .prologue
    .line 1150
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getCurrentTabModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->getCurrentContentViewCore(Lorg/chromium/chrome/browser/tabmodel/TabList;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTabCreator()Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;
    .locals 1

    .prologue
    .line 1102
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->isIncognitoSelected()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTabModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;
    .locals 1

    .prologue
    .line 1128
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    .line 1129
    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModel;->getInstance()Lorg/chromium/chrome/browser/tabmodel/EmptyTabModel;

    move-result-object v0

    .line 1130
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getCurrentModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    goto :goto_0
.end method

.method public getFullscreenManager()Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;
    .locals 1

    .prologue
    .line 1172
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    return-object v0
.end method

.method public getInsetObserverView()Lorg/chromium/chrome/browser/InsetObserverView;
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mInsetObserverView:Lorg/chromium/chrome/browser/InsetObserverView;

    return-object v0
.end method

.method public getOnCreateTimestampMs()J
    .locals 2

    .prologue
    .line 767
    invoke-super {p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->getOnCreateTimestampMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSnackbarManager()Lorg/chromium/chrome/browser/snackbar/SnackbarManager;
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    return-object v0
.end method

.method public getTabContentManager()Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    return-object v0
.end method

.method public getTabCreator(Z)Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;
    .locals 1

    .prologue
    .line 1084
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mIncognitoTabCreator:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mRegularTabCreator:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    goto :goto_0
.end method

.method public getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    return-object v0
.end method

.method protected getToolbarManager()Lorg/chromium/chrome/browser/toolbar/ToolbarManager;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mToolbarManager:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    return-object v0
.end method

.method protected getViewToBeDrawnBeforeInitializingNative()Landroid/view/View;
    .locals 1

    .prologue
    .line 314
    sget v0, Lorg/chromium/chrome/R$id;->control_container:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ChromeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 315
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->getViewToBeDrawnBeforeInitializingNative()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;
    .locals 1

    .prologue
    .line 1157
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    return-object v0
.end method

.method protected abstract handleBackPressed()Z
.end method

.method public initializeCompositor()V
    .locals 3

    .prologue
    .line 465
    const-string/jumbo v0, "ChromeActivity:CompositorInitialization"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 466
    invoke-super {p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->initializeCompositor()V

    .line 468
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getContentOffsetProvider()Lorg/chromium/chrome/browser/compositor/layouts/content/ContentOffsetProvider;

    move-result-object v1

    invoke-static {}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->enableSnapshots()Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/content/ContentOffsetProvider;Z)V

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ChromeActivity;->setTabContentManager(Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)V

    .line 470
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mCompositorViewHolder:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabContentManager()Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->onNativeLibraryReady(Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)V

    .line 472
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->isContextualSearchAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchFieldTrial;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    new-instance v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-direct {v0, p0, v1, p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$ContextualSearchTabPromotionDelegate;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mContextualSearchManager:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 476
    :cond_0
    invoke-static {p0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    new-instance v0, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;-><init>(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/ChromeActivity;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mReaderModeManager:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

    .line 478
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mToolbarManager:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mToolbarManager:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mReaderModeManager:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->getFindToolbarObserver()Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->addFindToolbarObserver(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbarObserver;)V

    .line 484
    :cond_1
    const-string/jumbo v0, "ChromeActivity:CompositorInitialization"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method protected initializeCompositorContent(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;Landroid/view/View;Landroid/view/ViewGroup;Lorg/chromium/chrome/browser/widget/ControlContainer;)V
    .locals 7

    .prologue
    .line 1239
    if-eqz p4, :cond_0

    move-object v0, p4

    .line 1240
    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ChromeActivity;->createFullscreenManager(Landroid/view/View;)Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    .line 1243
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mContextualSearchManager:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    if-eqz v0, :cond_1

    .line 1244
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mContextualSearchManager:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    invoke-virtual {v0, p3}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->initialize(Landroid/view/ViewGroup;)V

    .line 1245
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mContextualSearchManager:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->setSearchContentViewDelegate(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContentViewDelegate;)V

    .line 1248
    :cond_1
    invoke-virtual {p1, p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->addSceneChangeObserver(Lorg/chromium/chrome/browser/compositor/layouts/SceneChangeObserver;)V

    .line 1249
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mCompositorViewHolder:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->setLayoutManager(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;)V

    .line 1250
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mCompositorViewHolder:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->setFocusable(Z)V

    .line 1251
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mCompositorViewHolder:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    invoke-virtual {v0, p4}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->setControlContainer(Lorg/chromium/chrome/browser/widget/ControlContainer;)V

    .line 1252
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mCompositorViewHolder:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mFullscreenManager:Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->setFullscreenHandler(Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;)V

    .line 1253
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mCompositorViewHolder:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    invoke-virtual {v0, p2}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->setUrlBar(Landroid/view/View;)V

    .line 1254
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mCompositorViewHolder:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabContentManager()Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    move-result-object v3

    iget-object v5, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mContextualSearchManager:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    iget-object v6, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mReaderModeManager:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

    move-object v2, p0

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->onFinishNativeInitialization(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Landroid/view/ViewGroup;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;)V

    .line 1258
    if-eqz p4, :cond_2

    invoke-static {p0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDocumentMode(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->enableToolbarSwipe(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1260
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getCompositorViewHolder()Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->getLayoutManager()Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->getTopSwipeHandler()Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;

    move-result-object v0

    invoke-interface {p4, v0}, Lorg/chromium/chrome/browser/widget/ControlContainer;->setSwipeHandler(Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EdgeSwipeHandler;)V

    .line 1263
    :cond_2
    return-void
.end method

.method public initializeState()V
    .locals 3

    .prologue
    .line 457
    invoke-super {p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->initializeState()V

    .line 458
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string/jumbo v1, "enable-test-intents"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/IntentHandler;->setTestIntentsEnabled(Z)V

    .line 460
    new-instance v0, Lorg/chromium/chrome/browser/IntentHandler;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->createIntentHandlerDelegate()Lorg/chromium/chrome/browser/IntentHandler$IntentHandlerDelegate;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/IntentHandler;-><init>(Lorg/chromium/chrome/browser/IntentHandler$IntentHandlerDelegate;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mIntentHandler:Lorg/chromium/chrome/browser/IntentHandler;

    .line 461
    return-void
.end method

.method protected initializeToolbar()V
    .locals 6

    .prologue
    .line 375
    sget v0, Lorg/chromium/chrome/R$id;->control_container:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ChromeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 376
    sget-boolean v0, Lorg/chromium/chrome/browser/ChromeActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 377
    :cond_0
    check-cast v2, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;

    .line 378
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->createAppMenuPropertiesDelegate()Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mAppMenuPropertiesDelegate:Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;

    .line 379
    sget-object v0, Lorg/chromium/chrome/browser/ChromeActivity;->sAppMenuHandlerFactory:Lorg/chromium/chrome/browser/ChromeActivity$AppMenuHandlerFactory;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mAppMenuPropertiesDelegate:Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getAppMenuLayoutId()I

    move-result v3

    invoke-interface {v0, p0, v1, v3}, Lorg/chromium/chrome/browser/ChromeActivity$AppMenuHandlerFactory;->get(Landroid/app/Activity;Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;I)Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mAppMenuHandler:Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

    .line 381
    new-instance v0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mAppMenuHandler:Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

    iget-object v4, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mAppMenuPropertiesDelegate:Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getCompositorViewHolder()Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->getInvalidator()Lorg/chromium/chrome/browser/compositor/Invalidator;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer;Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;Lorg/chromium/chrome/browser/appmenu/AppMenuPropertiesDelegate;Lorg/chromium/chrome/browser/compositor/Invalidator;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mToolbarManager:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    .line 383
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mAppMenuHandler:Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

    new-instance v1, Lorg/chromium/chrome/browser/ChromeActivity$3;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/ChromeActivity$3;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->addObserver(Lorg/chromium/chrome/browser/appmenu/AppMenuObserver;)V

    .line 403
    return-void
.end method

.method protected isContextualSearchAllowed()Z
    .locals 1

    .prologue
    .line 452
    const/4 v0, 0x1

    return v0
.end method

.method public isCustomTab()Z
    .locals 1

    .prologue
    .line 679
    const/4 v0, 0x0

    return v0
.end method

.method public isInOverviewMode()Z
    .locals 1

    .prologue
    .line 952
    const/4 v0, 0x0

    return v0
.end method

.method public isOverlayVisible()Z
    .locals 1

    .prologue
    .line 1519
    const/4 v0, 0x0

    return v0
.end method

.method protected onAccessibilityModeChanged(Z)V
    .locals 1

    .prologue
    .line 892
    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->setIsAllowedToAutoHide(Z)V

    .line 893
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mToolbarManager:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mToolbarManager:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->onAccessibilityStatusChanged(Z)V

    .line 894
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mContextualSearchManager:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    if-eqz v0, :cond_1

    .line 895
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mContextualSearchManager:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->onAccessibilityModeChanged(Z)V

    .line 897
    :cond_1
    return-void

    .line 892
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onAccessibilityStateChanged(Z)V
    .locals 0

    .prologue
    .line 1015
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->checkAccessibility()V

    .line 1016
    return-void
.end method

.method public onActivityResultWithNative(IILandroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 849
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->onActivityResultWithNative(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 850
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/ui/base/ActivityWindowAndroid;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 5

    .prologue
    .line 1583
    invoke-super {p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->onAttachedToWindow()V

    .line 1586
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mSetWindowHWA:Z

    if-eqz v0, :cond_0

    .line 1587
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mSetWindowHWA:Z

    .line 1588
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    .line 1594
    :cond_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .prologue
    .line 1288
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mCompositorViewHolder:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    if-eqz v0, :cond_3

    .line 1289
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mCompositorViewHolder:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->getLayoutManager()Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    move-result-object v0

    .line 1290
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 1291
    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mContextualSearchManager:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mContextualSearchManager:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1293
    :cond_0
    const-string/jumbo v0, "SystemBack"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 1302
    :cond_1
    :goto_1
    return-void

    .line 1290
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1297
    :cond_3
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->isSelectActionBarShowing()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->handleBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1301
    :cond_4
    invoke-super {p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->onBackPressed()V

    goto :goto_1
.end method

.method public onCheckForUpdate(Z)V
    .locals 2

    .prologue
    .line 1346
    invoke-static {}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->getInstance()Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->shouldShowToolbarBadge(Lorg/chromium/chrome/browser/ChromeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1347
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mToolbarManager:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->getToolbar()Lorg/chromium/chrome/browser/toolbar/Toolbar;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/Toolbar;->showAppMenuUpdateBadge()V

    .line 1348
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mCompositorViewHolder:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->requestRender()V

    .line 1352
    :goto_0
    return-void

    .line 1350
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mToolbarManager:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->getToolbar()Lorg/chromium/chrome/browser/toolbar/Toolbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/toolbar/Toolbar;->removeAppMenuUpdateBadge(Z)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 1282
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mAppMenuHandler:Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mAppMenuHandler:Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->hideAppMenu()V

    .line 1283
    :cond_0
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1284
    return-void
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 1601
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 1602
    if-nez v0, :cond_1

    .line 1606
    :cond_0
    :goto_0
    return-void

    .line 1603
    :cond_1
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    .line 1604
    if-eqz v0, :cond_0

    .line 1605
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->onContextMenuClosed()V

    goto :goto_0
.end method

.method protected onDeferredStartup()V
    .locals 5

    .prologue
    .line 684
    invoke-super {p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->onDeferredStartup()V

    .line 685
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string/jumbo v1, "disable-dump-upload"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    .line 687
    invoke-static {}, Lorg/chromium/chrome/browser/DeferredStartupHandler;->getInstance()Lorg/chromium/chrome/browser/DeferredStartupHandler;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getChromeApplication()Lorg/chromium/chrome/browser/ChromeApplication;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/chromium/chrome/browser/DeferredStartupHandler;->onDeferredStartup(Lorg/chromium/chrome/browser/ChromeApplication;Z)V

    .line 690
    new-instance v0, Lorg/chromium/chrome/browser/ChromeActivity$6;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/ChromeActivity$6;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;)V

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/nfc/BeamController;->registerForBeam(Landroid/app/Activity;Lorg/chromium/chrome/browser/nfc/BeamProvider;)V

    .line 699
    invoke-static {}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->getInstance()Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->checkForUpdateOnBackgroundThread(Lorg/chromium/chrome/browser/ChromeActivity;)V

    .line 701
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->removeSnapshotDatabase()V

    .line 702
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mToolbarManager:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    if-eqz v0, :cond_0

    .line 703
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 704
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "MobileStartup.ToolbarInflationTime."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mInflateInitialLayoutDurationMs:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3, v4}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    .line 706
    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mToolbarManager:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getOnCreateTimestampMs()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->onDeferredStartup(JLjava/lang/String;)V

    .line 708
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->recordKeyboardLocaleUma()V

    .line 709
    return-void
.end method

.method protected final onDestroy()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 777
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mReaderModeManager:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mReaderModeManager:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->destroy()V

    .line 779
    iput-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mReaderModeManager:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

    .line 782
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mContextualSearchManager:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    if-eqz v0, :cond_1

    .line 783
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mContextualSearchManager:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->destroy()V

    .line 784
    iput-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mContextualSearchManager:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 787
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mTabModelSelectorTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    if-eqz v0, :cond_2

    .line 788
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mTabModelSelectorTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;->destroy()V

    .line 789
    iput-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mTabModelSelectorTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    .line 792
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mCompositorViewHolder:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    if-eqz v0, :cond_4

    .line 793
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mCompositorViewHolder:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->getLayoutManager()Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 794
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mCompositorViewHolder:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->getLayoutManager()Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->removeSceneChangeObserver(Lorg/chromium/chrome/browser/compositor/layouts/SceneChangeObserver;)V

    .line 796
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mCompositorViewHolder:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->shutDown()V

    .line 797
    iput-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mCompositorViewHolder:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    .line 800
    :cond_4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->onDestroyInternal()V

    .line 802
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mToolbarManager:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    if-eqz v0, :cond_5

    .line 803
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mToolbarManager:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->destroy()V

    .line 804
    iput-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mToolbarManager:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    .line 807
    :cond_5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    .line 808
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->destroy()V

    .line 810
    :cond_6
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    if-eqz v0, :cond_7

    .line 811
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->destroy()V

    .line 812
    iput-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    .line 815
    :cond_7
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getChromeApplication()Lorg/chromium/chrome/browser/ChromeApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/ChromeApplication;->removePolicyChangeListener(Lorg/chromium/policy/CombinedPolicyProvider$PolicyChangeListener;)V

    .line 817
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    if-eqz v0, :cond_8

    .line 818
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->destroy()V

    .line 819
    iput-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    .line 822
    :cond_8
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 824
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 825
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_9

    .line 826
    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 829
    :cond_9
    invoke-super {p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->onDestroy()V

    .line 830
    return-void
.end method

.method protected onDestroyInternal()V
    .locals 0

    .prologue
    .line 841
    return-void
.end method

.method public onMenuOrKeyboardAction(IZ)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1363
    sget v2, Lorg/chromium/chrome/R$id;->preferences_id:I

    if-ne p1, v2, :cond_2

    .line 1364
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->launchSettingsPage(Landroid/content/Context;Ljava/lang/String;)V

    .line 1365
    const-string/jumbo v2, "MobileMenuSettings"

    invoke-static {v2}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 1370
    :cond_0
    :goto_0
    sget v2, Lorg/chromium/chrome/R$id;->update_menu_id:I

    if-ne p1, v2, :cond_3

    .line 1371
    invoke-static {}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->getInstance()Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->onMenuItemClicked(Lorg/chromium/chrome/browser/ChromeActivity;)V

    .line 1440
    :cond_1
    :goto_1
    return v1

    .line 1366
    :cond_2
    sget v2, Lorg/chromium/chrome/R$id;->show_menu:I

    if-ne p1, v2, :cond_0

    .line 1367
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->showAppMenuForKeyboardEvent()V

    goto :goto_0

    .line 1376
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    .line 1377
    if-nez v3, :cond_4

    move v1, v0

    .line 1378
    goto :goto_1

    .line 1379
    :cond_4
    sget v2, Lorg/chromium/chrome/R$id;->forward_menu_id:I

    if-ne p1, v2, :cond_5

    .line 1380
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1381
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->goForward()V

    .line 1382
    const-string/jumbo v0, "MobileMenuForward"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 1383
    const-string/jumbo v0, "MobileTabClobbered"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_1

    .line 1385
    :cond_5
    sget v2, Lorg/chromium/chrome/R$id;->bookmark_this_page_id:I

    if-ne p1, v2, :cond_6

    .line 1386
    invoke-virtual {p0, v3}, Lorg/chromium/chrome/browser/ChromeActivity;->addOrEditBookmark(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 1387
    const-string/jumbo v0, "MobileMenuAddToBookmarks"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_1

    .line 1388
    :cond_6
    sget v2, Lorg/chromium/chrome/R$id;->reload_menu_id:I

    if-ne p1, v2, :cond_8

    .line 1389
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1390
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->stopLoading()V

    goto :goto_1

    .line 1392
    :cond_7
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->reload()V

    .line 1393
    const-string/jumbo v0, "MobileToolbarReload"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_1

    .line 1395
    :cond_8
    sget v2, Lorg/chromium/chrome/R$id;->info_menu_id:I

    if-ne p1, v2, :cond_9

    .line 1396
    invoke-static {p0, v3}, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup;->show(Landroid/app/Activity;Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_1

    .line 1397
    :cond_9
    sget v2, Lorg/chromium/chrome/R$id;->open_history_menu_id:I

    if-ne p1, v2, :cond_a

    .line 1398
    new-instance v0, Lorg/chromium/content_public/browser/LoadUrlParams;

    const-string/jumbo v2, "chrome://history/"

    const/4 v4, 0x6

    invoke-direct {v0, v2, v4}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v0}, Lorg/chromium/chrome/browser/tab/Tab;->loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    .line 1400
    const-string/jumbo v0, "MobileMenuHistory"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 1401
    invoke-static {}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->getInstance()Lorg/chromium/chrome/browser/metrics/StartupMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->recordOpenedHistory()V

    goto :goto_1

    .line 1402
    :cond_a
    sget v2, Lorg/chromium/chrome/R$id;->share_menu_id:I

    if-eq p1, v2, :cond_b

    sget v2, Lorg/chromium/chrome/R$id;->direct_share_menu_id:I

    if-ne p1, v2, :cond_d

    .line 1403
    :cond_b
    sget v2, Lorg/chromium/chrome/R$id;->direct_share_menu_id:I

    if-ne p1, v2, :cond_c

    move v0, v1

    :cond_c
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getCurrentTabModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v2

    invoke-interface {v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->isIncognito()Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Lorg/chromium/chrome/browser/ChromeActivity;->onShareMenuItemSelected(ZZ)V

    goto/16 :goto_1

    .line 1405
    :cond_d
    sget v2, Lorg/chromium/chrome/R$id;->print_id:I

    if-ne p1, v2, :cond_e

    .line 1406
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getChromeApplication()Lorg/chromium/chrome/browser/ChromeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeApplication;->getPrintingController()Lorg/chromium/printing/PrintingController;

    move-result-object v0

    .line 1407
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/chromium/printing/PrintingController;->isBusy()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isPrintingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1409
    new-instance v2, Lorg/chromium/chrome/browser/printing/TabPrinter;

    invoke-direct {v2, v3}, Lorg/chromium/chrome/browser/printing/TabPrinter;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    new-instance v3, Lorg/chromium/printing/PrintManagerDelegateImpl;

    invoke-direct {v3, p0}, Lorg/chromium/printing/PrintManagerDelegateImpl;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, v2, v3}, Lorg/chromium/printing/PrintingController;->startPrint(Lorg/chromium/printing/Printable;Lorg/chromium/printing/PrintManagerDelegate;)V

    .line 1411
    const-string/jumbo v0, "MobileMenuPrint"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1413
    :cond_e
    sget v2, Lorg/chromium/chrome/R$id;->add_to_homescreen_id:I

    if-ne p1, v2, :cond_f

    .line 1414
    invoke-static {p0, v3}, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog;->show(Landroid/app/Activity;Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 1415
    const-string/jumbo v0, "MobileMenuAddToHomescreen"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1416
    :cond_f
    sget v2, Lorg/chromium/chrome/R$id;->request_desktop_site_id:I

    if-ne p1, v2, :cond_12

    .line 1417
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->isNativePage()Z

    move-result v2

    if-nez v2, :cond_11

    move v2, v1

    .line 1418
    :goto_2
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->getUseDesktopUserAgent()Z

    move-result v4

    .line 1419
    if-nez v4, :cond_10

    move v0, v1

    :cond_10
    invoke-virtual {v3, v0, v2}, Lorg/chromium/chrome/browser/tab/Tab;->setUseDesktopUserAgent(ZZ)V

    .line 1420
    const-string/jumbo v0, "MobileMenuRequestDesktopSite"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_11
    move v2, v0

    .line 1417
    goto :goto_2

    .line 1421
    :cond_12
    sget v2, Lorg/chromium/chrome/R$id;->reader_mode_prefs_id:I

    if-ne p1, v2, :cond_13

    .line 1422
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1423
    const-string/jumbo v0, "DomDistiller_DistilledPagePrefsOpened"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 1424
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    sget v2, Lorg/chromium/chrome/R$style;->AlertDialogTheme:I

    invoke-direct {v0, p0, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1426
    invoke-static {p0}, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->create(Landroid/content/Context;)Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1427
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_1

    .line 1429
    :cond_13
    sget v2, Lorg/chromium/chrome/R$id;->help_id:I

    if-ne p1, v2, :cond_14

    .line 1432
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getCurrentTabModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v2

    invoke-interface {v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->isIncognito()Z

    move-result v2

    invoke-static {p0, v0, v2}, Lorg/chromium/chrome/browser/help/HelpAndFeedback;->getHelpContextIdFromUrl(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1434
    invoke-static {p0}, Lorg/chromium/chrome/browser/help/HelpAndFeedback;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/help/HelpAndFeedback;

    move-result-object v2

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->getProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v4

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v0, v4, v3}, Lorg/chromium/chrome/browser/help/HelpAndFeedback;->show(Landroid/app/Activity;Ljava/lang/String;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V

    .line 1436
    const-string/jumbo v0, "MobileMenuFeedback"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_14
    move v1, v0

    .line 1438
    goto/16 :goto_1
.end method

.method public onNewIntentWithNative(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 669
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->onNewIntentWithNative(Landroid/content/Intent;)V

    .line 670
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mIntentHandler:Lorg/chromium/chrome/browser/IntentHandler;

    invoke-virtual {v0, p0, p1}, Lorg/chromium/chrome/browser/IntentHandler;->shouldIgnoreIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    :goto_0
    return-void

    .line 672
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mIntentHandler:Lorg/chromium/chrome/browser/IntentHandler;

    invoke-virtual {v0, p0, p1}, Lorg/chromium/chrome/browser/IntentHandler;->onNewIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 901
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lorg/chromium/chrome/browser/ChromeActivity;->onMenuOrKeyboardAction(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 904
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOrientationChange(I)V
    .locals 1

    .prologue
    .line 1275
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mContextualSearchManager:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mContextualSearchManager:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->onOrientationChange()V

    .line 1276
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mReaderModeManager:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mReaderModeManager:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->onOrientationChange()V

    .line 1277
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mToolbarManager:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mToolbarManager:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->onOrientationChange()V

    .line 1278
    :cond_2
    return-void
.end method

.method public onPauseWithNative()V
    .locals 0

    .prologue
    .line 644
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->markSessionEnd()V

    .line 645
    invoke-super {p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->onPauseWithNative()V

    .line 646
    return-void
.end method

.method public onProvideAssistContent(Landroid/app/assist/AssistContent;)V
    .locals 2

    .prologue
    .line 755
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getAssistStatusHandler()Lorg/chromium/chrome/browser/AssistStatusHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getAssistStatusHandler()Lorg/chromium/chrome/browser/AssistStatusHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/AssistStatusHandler;->isAssistSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 760
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->isInOverviewMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 761
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/assist/AssistContent;->setWebUri(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/ui/base/ActivityWindowAndroid;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    :goto_0
    return-void

    .line 861
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method public onResumeWithNative()V
    .locals 1

    .prologue
    .line 633
    invoke-super {p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->onResumeWithNative()V

    .line 634
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->markSessionResume()V

    .line 636
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/metrics/LaunchMetrics;->commitLaunchMetrics(Lorg/chromium/content_public/browser/WebContents;)V

    .line 639
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->isCustomTab()Z

    move-result v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->setCustomTabVisible(Z)V

    .line 640
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 866
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 867
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-virtual {v0, p1}, Lorg/chromium/ui/base/ActivityWindowAndroid;->saveInstanceState(Landroid/os/Bundle;)V

    .line 868
    return-void
.end method

.method public onSceneChange(Lorg/chromium/chrome/browser/compositor/layouts/Layout;)V
    .locals 0

    .prologue
    .line 1579
    return-void
.end method

.method public onShareMenuItemSelected(ZZ)V
    .locals 5

    .prologue
    .line 915
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 916
    if-nez v0, :cond_0

    .line 946
    :goto_0
    return-void

    .line 919
    :cond_0
    new-instance v1, Lorg/chromium/chrome/browser/ChromeActivity$8;

    invoke-direct {v1, p0, v0, p1, p0}, Lorg/chromium/chrome/browser/ChromeActivity$8;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/tab/Tab;ZLandroid/app/Activity;)V

    .line 940
    if-nez p2, :cond_1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v2

    if-nez v2, :cond_2

    .line 941
    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-interface {v1, v0, v2}, Lorg/chromium/content_public/browser/ContentBitmapCallback;->onFinishGetBitmap(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 943
    :cond_2
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/high16 v3, 0x3f800000    # 1.0f

    sget-object v4, Lorg/chromium/chrome/browser/ChromeActivity;->EMPTY_RECT:Landroid/graphics/Rect;

    invoke-interface {v0, v2, v3, v4, v1}, Lorg/chromium/content_public/browser/WebContents;->getContentBitmapAsync(Landroid/graphics/Bitmap$Config;FLandroid/graphics/Rect;Lorg/chromium/content_public/browser/ContentBitmapCallback;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 713
    invoke-static {}, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParamsManager;->hasParamsWithTabToReparent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mCompositorViewHolder:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->prepareForTabReparenting()V

    .line 716
    :cond_0
    invoke-super {p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->onStart()V

    .line 717
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mContextReporter:Lorg/chromium/chrome/browser/gsa/ContextReporter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mContextReporter:Lorg/chromium/chrome/browser/gsa/ContextReporter;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/gsa/ContextReporter;->enable()V

    .line 719
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mPartnerBrowserRefreshNeeded:Z

    if-eqz v0, :cond_2

    .line 720
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mPartnerBrowserRefreshNeeded:Z

    .line 721
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-wide/16 v2, 0x2710

    invoke-static {v0, v2, v3}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->initializeAsync(Landroid/content/Context;J)V

    .line 723
    new-instance v0, Lorg/chromium/chrome/browser/ChromeActivity$7;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/ChromeActivity$7;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;)V

    invoke-static {v0}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->setOnInitializeAsyncFinished(Ljava/lang/Runnable;)V

    .line 732
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mCompositorViewHolder:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mCompositorViewHolder:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->onStart()V

    .line 733
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->onStart()V

    .line 738
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->checkAccessibility()V

    .line 739
    return-void
.end method

.method public onStartWithNative()V
    .locals 1

    .prologue
    .line 559
    invoke-super {p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->onStartWithNative()V

    .line 560
    invoke-static {}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->getInstance()Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper;->onStart()V

    .line 561
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getChromeApplication()Lorg/chromium/chrome/browser/ChromeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeApplication;->onStartWithNative()V

    .line 562
    invoke-static {p0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDocumentMode(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->setDocumentModeEnabled(Z)V

    .line 563
    invoke-static {}, Lorg/chromium/chrome/browser/WarmupManager;->getInstance()Lorg/chromium/chrome/browser/WarmupManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/WarmupManager;->clearWebContentsIfNecessary()V

    .line 565
    invoke-static {p0}, Lorg/chromium/chrome/browser/gsa/GSAState;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/gsa/GSAState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/gsa/GSAState;->isGsaAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    new-instance v0, Lorg/chromium/chrome/browser/gsa/GSAServiceClient;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/gsa/GSAServiceClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mGSAServiceClient:Lorg/chromium/chrome/browser/gsa/GSAServiceClient;

    .line 567
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mGSAServiceClient:Lorg/chromium/chrome/browser/gsa/GSAServiceClient;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->connect()Z

    .line 568
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->createContextReporterIfNeeded()V

    .line 572
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mCompositorViewHolder:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->resetFlags()V

    .line 573
    return-void

    .line 570
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/chromium/chrome/browser/gsa/ContextReporter;->reportStatus(I)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 743
    invoke-super {p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->onStop()V

    .line 744
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mContextReporter:Lorg/chromium/chrome/browser/gsa/ContextReporter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mContextReporter:Lorg/chromium/chrome/browser/gsa/ContextReporter;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/gsa/ContextReporter;->disable()V

    .line 747
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mPartnerBrowserRefreshNeeded:Z

    .line 748
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mCompositorViewHolder:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mCompositorViewHolder:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->onStop()V

    .line 749
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->onStop()V

    .line 750
    return-void
.end method

.method public onStopWithNative()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 650
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 651
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->hasWindowFocus()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->onActivityHidden()V

    .line 652
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mAppMenuHandler:Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mAppMenuHandler:Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->hideAppMenu()V

    .line 653
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mGSAServiceClient:Lorg/chromium/chrome/browser/gsa/GSAServiceClient;

    if-eqz v0, :cond_3

    .line 654
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mGSAServiceClient:Lorg/chromium/chrome/browser/gsa/GSAServiceClient;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/gsa/GSAServiceClient;->disconnect()V

    .line 655
    iput-object v2, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mGSAServiceClient:Lorg/chromium/chrome/browser/gsa/GSAServiceClient;

    .line 656
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mSyncStateChangedListener:Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;

    if-eqz v0, :cond_3

    .line 657
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->get()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    .line 658
    if-eqz v0, :cond_2

    .line 659
    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mSyncStateChangedListener:Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->removeSyncStateChangedListener(Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;)V

    .line 661
    :cond_2
    iput-object v2, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mSyncStateChangedListener:Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;

    .line 664
    :cond_3
    invoke-super {p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->onStopWithNative()V

    .line 665
    return-void
.end method

.method public onTabSelectionHinted(I)V
    .locals 0

    .prologue
    .line 1576
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .prologue
    .line 577
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->onWindowFocusChanged(Z)V

    .line 578
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    .line 579
    if-nez v1, :cond_1

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    if-eqz p1, :cond_2

    .line 581
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->onActivityShown()V

    goto :goto_0

    .line 583
    :cond_2
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->getStateForActivity(Landroid/app/Activity;)I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    .line 584
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->onActivityHidden()V

    goto :goto_0

    .line 583
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected final postDeferredStartupIfNeeded()V
    .locals 4

    .prologue
    .line 1493
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mDeferredStartupNotified:Z

    if-nez v0, :cond_0

    .line 1496
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/chrome/browser/ChromeActivity$11;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/ChromeActivity$11;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1512
    :cond_0
    return-void
.end method

.method public postInflationStartup()V
    .locals 3

    .prologue
    .line 266
    invoke-super {p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->postInflationStartup()V

    .line 268
    new-instance v1, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ChromeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v1, v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    .line 269
    new-instance v0, Lorg/chromium/chrome/browser/snackbar/DataUseSnackbarController;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getSnackbarManager()Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/snackbar/DataUseSnackbarController;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/snackbar/SnackbarManager;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mDataUseSnackbarController:Lorg/chromium/chrome/browser/snackbar/DataUseSnackbarController;

    .line 271
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->createAssistStatusHandler()Lorg/chromium/chrome/browser/AssistStatusHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mAssistStatusHandler:Lorg/chromium/chrome/browser/AssistStatusHandler;

    .line 272
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mAssistStatusHandler:Lorg/chromium/chrome/browser/AssistStatusHandler;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mAssistStatusHandler:Lorg/chromium/chrome/browser/AssistStatusHandler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/AssistStatusHandler;->setTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    .line 276
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mAssistStatusHandler:Lorg/chromium/chrome/browser/AssistStatusHandler;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/AssistStatusHandler;->updateAssistState()V

    .line 282
    :cond_1
    invoke-static {p0}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getAllowLowEndDeviceUi()Z

    move-result v0

    if-nez v0, :cond_2

    .line 283
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string/jumbo v1, "disable-low-end-device-mode"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->appendSwitch(Ljava/lang/String;)V

    .line 287
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 289
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 290
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_3

    .line 291
    new-instance v1, Lorg/chromium/chrome/browser/ChromeActivity$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/ChromeActivity$2;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 297
    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 301
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getChromeApplication()Lorg/chromium/chrome/browser/ChromeApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/ChromeApplication;->addPolicyChangeListener(Lorg/chromium/policy/CombinedPolicyProvider$PolicyChangeListener;)V

    .line 305
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mCompositorViewHolder:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/ui/base/ActivityWindowAndroid;->setAnimationPlaceholderView(Landroid/view/View;)V

    .line 308
    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    sget v0, Lorg/chromium/chrome/R$id;->keyboard_accessory:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ChromeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->setKeyboardAccessoryView(Landroid/view/ViewGroup;)V

    .line 309
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->initializeToolbar()V

    .line 310
    return-void
.end method

.method public preInflationStartup()V
    .locals 2

    .prologue
    .line 244
    invoke-super {p0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->preInflationStartup()V

    .line 249
    invoke-static {}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mPartnerBrowserRefreshNeeded:Z

    .line 251
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getControlContainerHeightResource()I

    move-result v1

    invoke-static {v0, p0, v1}, Lorg/chromium/chrome/browser/ApplicationInitialization;->enableFullscreenFlags(Landroid/content/res/Resources;Landroid/content/Context;I)V

    .line 255
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string/jumbo v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/ChromeApplication;->createActivityWindowAndroid(Landroid/app/Activity;)Lorg/chromium/ui/base/ActivityWindowAndroid;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    .line 260
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getSavedInstanceState()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/ui/base/ActivityWindowAndroid;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 261
    return-void

    .line 249
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepareMenu(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 987
    return-void
.end method

.method protected final setContentView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 326
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 327
    const-string/jumbo v0, "onCreate->setContentView()"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 329
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->enableHardwareAcceleration()V

    .line 330
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->setLowEndTheme()V

    .line 331
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getControlContainerLayoutId()I

    move-result v1

    .line 332
    invoke-static {}, Lorg/chromium/chrome/browser/WarmupManager;->getInstance()Lorg/chromium/chrome/browser/WarmupManager;

    move-result-object v0

    .line 333
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/WarmupManager;->hasBuiltOrClearViewHierarchyWithToolbar(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 335
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/ChromeActivity;->setContentView(Landroid/view/View;)V

    .line 336
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 337
    invoke-static {}, Lorg/chromium/chrome/browser/WarmupManager;->getInstance()Lorg/chromium/chrome/browser/WarmupManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/chromium/chrome/browser/WarmupManager;->transferViewHierarchyTo(Landroid/view/ViewGroup;)V

    .line 338
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 348
    :cond_0
    :goto_0
    const-string/jumbo v0, "onCreate->setContentView()"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 349
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mInflateInitialLayoutDurationMs:J

    .line 354
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->setStatusBarColor(Landroid/view/Window;I)V

    .line 356
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 357
    sget v1, Lorg/chromium/chrome/R$id;->compositor_view_holder:I

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/ChromeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    iput-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mCompositorViewHolder:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    .line 358
    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mCompositorViewHolder:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->setRootView(Landroid/view/View;)V

    .line 361
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 366
    invoke-static {p0}, Lorg/chromium/chrome/browser/InsetObserverView;->create(Landroid/content/Context;)Lorg/chromium/chrome/browser/InsetObserverView;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mInsetObserverView:Lorg/chromium/chrome/browser/InsetObserverView;

    .line 367
    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mInsetObserverView:Lorg/chromium/chrome/browser/InsetObserverView;

    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 368
    return-void

    .line 340
    :cond_1
    sget v0, Lorg/chromium/chrome/R$layout;->main:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ChromeActivity;->setContentView(I)V

    .line 341
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 342
    sget v0, Lorg/chromium/chrome/R$id;->control_container_stub:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ChromeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 344
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 345
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto :goto_0
.end method

.method protected setStatusBarColor(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 2

    .prologue
    .line 594
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isDefaultThemeColor()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x1000000

    .line 596
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/chromium/base/ApiCompatibilityUtils;->setStatusBarColor(Landroid/view/Window;I)V

    .line 597
    return-void

    .line 594
    :cond_0
    invoke-static {p2}, Lorg/chromium/chrome/browser/util/ColorUtils;->getDarkenedColorForStatusBar(I)I

    move-result v0

    goto :goto_0
.end method

.method protected setTabContentManager(Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;)V
    .locals 0

    .prologue
    .line 1118
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mTabContentManager:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    .line 1119
    return-void
.end method

.method public setTabCreators(Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;)V
    .locals 0

    .prologue
    .line 1093
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mRegularTabCreator:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    .line 1094
    iput-object p2, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mIncognitoTabCreator:Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager$TabCreator;

    .line 1095
    return-void
.end method

.method protected setTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V
    .locals 1

    .prologue
    .line 492
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    .line 494
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mTabModelSelectorTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mTabModelSelectorTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;->destroy()V

    .line 495
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/ChromeActivity$4;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/ChromeActivity$4;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mTabModelSelectorTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    .line 552
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mAssistStatusHandler:Lorg/chromium/chrome/browser/AssistStatusHandler;

    if-eqz v0, :cond_1

    .line 553
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mAssistStatusHandler:Lorg/chromium/chrome/browser/AssistStatusHandler;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/AssistStatusHandler;->setTabModelSelector(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    .line 555
    :cond_1
    return-void
.end method

.method public shouldShowAppMenu()Z
    .locals 1

    .prologue
    .line 962
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mContextualSearchManager:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mContextualSearchManager:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->isSearchPanelOpened()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mReaderModeManager:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->mReaderModeManager:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManager;->isPanelOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 964
    :cond_1
    const/4 v0, 0x0

    .line 967
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected showAppMenuForKeyboardEvent()V
    .locals 3

    .prologue
    .line 975
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getAppMenuHandler()Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 980
    :goto_0
    return-void

    .line 977
    :cond_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    .line 978
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getAppMenuHandler()Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

    move-result-object v1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->showAppMenu(Landroid/view/View;Z)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getToolbarManager()Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->getMenuAnchor()Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method public terminateIncognitoSession()V
    .locals 0

    .prologue
    .line 1573
    return-void
.end method
