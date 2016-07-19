.class public Lorg/chromium/chrome/browser/ChromeApplication;
.super Lorg/chromium/content/app/ContentApplication;
.source "ChromeApplication.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final COMMAND_LINE_FILE:Ljava/lang/String; = "chrome-command-line"

.field private static sDocumentTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

.field private static sIsFinishedCachingNativeFlags:Z


# instance fields
.field private final mBackgroundProcessing:Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;

.field private mChromeLifetimeController:Lorg/chromium/chrome/browser/ChromeLifetimeController;

.field private mDevToolsServer:Lorg/chromium/chrome/browser/DevToolsServer;

.field private mInitializedSharedClasses:Z

.field private mIsProcessInitialized:Z

.field private mIsStarted:Z

.field private final mPowerBroadcastReceiver:Lorg/chromium/chrome/browser/PowerBroadcastReceiver;

.field private mPrintingController:Lorg/chromium/printing/PrintingController;

.field private mVariationsSession:Lorg/chromium/chrome/browser/metrics/VariationsSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    const-class v0, Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/ChromeApplication;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 113
    invoke-direct {p0}, Lorg/chromium/content/app/ContentApplication;-><init>()V

    .line 175
    new-instance v0, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;-><init>(Lorg/chromium/chrome/browser/ChromeApplication$1;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeApplication;->mBackgroundProcessing:Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;

    .line 176
    new-instance v0, Lorg/chromium/chrome/browser/PowerBroadcastReceiver;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/PowerBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeApplication;->mPowerBroadcastReceiver:Lorg/chromium/chrome/browser/PowerBroadcastReceiver;

    return-void
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/ChromeApplication;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeApplication;->onForegroundSessionEnd()V

    return-void
.end method

.method static synthetic access$800(Lorg/chromium/chrome/browser/ChromeApplication;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeApplication;->onForegroundActivityDestroyed()V

    return-void
.end method

.method private cacheNativeFlags()V
    .locals 1

    .prologue
    .line 863
    sget-boolean v0, Lorg/chromium/chrome/browser/ChromeApplication;->sIsFinishedCachingNativeFlags:Z

    if-eqz v0, :cond_0

    .line 866
    :goto_0
    return-void

    .line 864
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->cacheHerbFlavor()V

    .line 865
    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/chrome/browser/ChromeApplication;->sIsFinishedCachingNativeFlags:Z

    goto :goto_0
.end method

.method private createApplicationStateListener()Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;
    .locals 1

    .prologue
    .line 340
    new-instance v0, Lorg/chromium/chrome/browser/ChromeApplication$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/ChromeApplication$2;-><init>(Lorg/chromium/chrome/browser/ChromeApplication;)V

    return-object v0
.end method

.method public static flushPersistentData()V
    .locals 2

    .prologue
    .line 576
    :try_start_0
    const-string/jumbo v0, "ChromiumApplication.flushPersistentData"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 577
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeApplication;->nativeFlushPersistentData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    const-string/jumbo v0, "ChromiumApplication.flushPersistentData"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 580
    return-void

    .line 579
    :catchall_0
    move-exception v0

    const-string/jumbo v1, "ChromiumApplication.flushPersistentData"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBrowserUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 566
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeApplication;->nativeGetBrowserUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDocumentTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;
    .locals 6

    .prologue
    .line 743
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 744
    sget-object v0, Lorg/chromium/chrome/browser/ChromeApplication;->sDocumentTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    if-nez v0, :cond_0

    .line 745
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegateImpl;

    const-class v1, Lorg/chromium/chrome/browser/document/DocumentActivity;

    const-class v2, Lorg/chromium/chrome/browser/document/IncognitoDocumentActivity;

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegateImpl;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 747
    new-instance v1, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    new-instance v2, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;

    invoke-direct {v2}, Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;-><init>()V

    new-instance v3, Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;-><init>(Z)V

    new-instance v4, Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;-><init>(Z)V

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;-><init>(Lorg/chromium/chrome/browser/tabmodel/document/ActivityDelegate;Lorg/chromium/chrome/browser/tabmodel/document/StorageDelegate;Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;)V

    sput-object v1, Lorg/chromium/chrome/browser/ChromeApplication;->sDocumentTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    .line 750
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/ChromeApplication;->sDocumentTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    return-object v0
.end method

.method private hasLocaleChanged(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 831
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "locale"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 834
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 835
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 836
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 837
    const-string/jumbo v1, "locale"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 838
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 839
    const/4 v0, 0x1

    .line 841
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDocumentTabModelSelectorInitializedForTests()Z
    .locals 1

    .prologue
    .line 758
    sget-object v0, Lorg/chromium/chrome/browser/ChromeApplication;->sDocumentTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native nativeFlushPersistentData()V
.end method

.method private static native nativeGetBrowserUserAgent()Ljava/lang/String;
.end method

.method private static native nativeRemoveSessionCookies()V
.end method

.method private onForegroundActivityDestroyed()V
    .locals 1

    .prologue
    .line 326
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->isEveryActivityDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeApplication;->mBackgroundProcessing:Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;

    # invokes: Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;->onDestroy()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;->access$600(Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;)V

    .line 328
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeApplication;->mDevToolsServer:Lorg/chromium/chrome/browser/DevToolsServer;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeApplication;->mDevToolsServer:Lorg/chromium/chrome/browser/DevToolsServer;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/DevToolsServer;->destroy()V

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeApplication;->mDevToolsServer:Lorg/chromium/chrome/browser/DevToolsServer;

    .line 332
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeApplication;->stopApplicationActivityTracker()V

    .line 333
    invoke-static {}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->destroy()V

    .line 334
    invoke-static {p0}, Lorg/chromium/chrome/browser/share/ShareHelper;->clearSharedImages(Landroid/content/Context;)V

    .line 335
    invoke-static {}, Lorg/chromium/policy/CombinedPolicyProvider;->get()Lorg/chromium/policy/CombinedPolicyProvider;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/policy/CombinedPolicyProvider;->destroy()V

    .line 337
    :cond_1
    return-void
.end method

.method private onForegroundSessionEnd()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 290
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/ChromeApplication;->mIsStarted:Z

    if-nez v1, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeApplication;->mBackgroundProcessing:Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;

    # invokes: Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;->suspendTimers()V
    invoke-static {v1}, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;->access$500(Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;)V

    .line 292
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeApplication;->flushPersistentData()V

    .line 293
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeApplication;->mIsStarted:Z

    .line 294
    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeApplication;->mPowerBroadcastReceiver:Lorg/chromium/chrome/browser/PowerBroadcastReceiver;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/PowerBroadcastReceiver;->onForegroundSessionEnd()V

    .line 296
    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncher;->onSentToBackground()V

    .line 297
    invoke-static {}, Lorg/chromium/chrome/browser/IntentHandler;->clearPendingReferrer()V

    .line 299
    invoke-static {p0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDocumentMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 300
    sget-object v0, Lorg/chromium/chrome/browser/ChromeApplication;->sDocumentTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    if-eqz v0, :cond_0

    .line 301
    const-string/jumbo v0, "Tab.TotalTabCount.BeforeLeavingApp"

    sget-object v1, Lorg/chromium/chrome/browser/ChromeApplication;->sDocumentTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModelSelector;->getTotalTabCount()I

    move-result v1

    invoke-static {v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordCountHistogram(Ljava/lang/String;I)V

    goto :goto_0

    .line 306
    :cond_2
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 307
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 308
    instance-of v3, v0, Lorg/chromium/chrome/browser/ChromeActivity;

    if-eqz v3, :cond_4

    .line 309
    check-cast v0, Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    .line 311
    if-eqz v0, :cond_4

    .line 312
    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getTotalTabCount()I

    move-result v0

    add-int/2addr v1, v0

    move v0, v1

    :goto_2
    move v1, v0

    .line 315
    goto :goto_1

    .line 316
    :cond_3
    const-string/jumbo v0, "Tab.TotalTabCount.BeforeLeavingApp"

    invoke-static {v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordCountHistogram(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method private onForegroundSessionStart()V
    .locals 2

    .prologue
    .line 268
    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncher;->onBroughtToForeground()V

    .line 269
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeApplication;->mBackgroundProcessing:Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;

    # invokes: Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;->startTimers()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;->access$400(Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;)V

    .line 270
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeApplication;->updatePasswordEchoState()V

    .line 271
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeApplication;->updateFontSize()V

    .line 272
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeApplication;->updateAcceptLanguages()V

    .line 273
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeApplication;->mVariationsSession:Lorg/chromium/chrome/browser/metrics/VariationsSession;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/metrics/VariationsSession;->start(Landroid/content/Context;)V

    .line 274
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeApplication;->mPowerBroadcastReceiver:Lorg/chromium/chrome/browser/PowerBroadcastReceiver;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/PowerBroadcastReceiver;->onForegroundSessionStart()V

    .line 278
    const-string/jumbo v0, "Startup.BringToForegroundReason"

    invoke-static {}, Lorg/chromium/chrome/browser/notifications/NotificationUIManager;->wasNotificationRecentlyClicked()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    .line 281
    return-void
.end method

.method public static reportStartupErrorAndExit(Lorg/chromium/base/library_loader/ProcessInitException;)V
    .locals 3

    .prologue
    .line 495
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 496
    invoke-static {v0}, Lorg/chromium/base/ApplicationStatus;->getStateForActivity(Landroid/app/Activity;)I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 500
    :goto_0
    return-void

    .line 499
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/base/library_loader/ProcessInitException;->getErrorCode()I

    move-result v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/init/InvalidStartupDialog;->show(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method private updateAcceptLanguages()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 817
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    .line 818
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 819
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/ChromeApplication;->hasLocaleChanged(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 820
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->resetAcceptLanguages(Ljava/lang/String;)V

    .line 826
    const/4 v1, 0x0

    new-array v2, v4, [I

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->clearBrowsingData(Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$OnClearBrowsingDataListener;[I)V

    .line 828
    :cond_0
    return-void
.end method

.method private updateFontSize()V
    .locals 0

    .prologue
    .line 786
    return-void
.end method

.method private updatePasswordEchoState()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 849
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_password"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 852
    :goto_0
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getPasswordEchoEnabled()Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 855
    :goto_1
    return-void

    .line 849
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 854
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setPasswordEchoEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public addPolicyChangeListener(Lorg/chromium/policy/CombinedPolicyProvider$PolicyChangeListener;)V
    .locals 1

    .prologue
    .line 685
    invoke-static {}, Lorg/chromium/policy/CombinedPolicyProvider;->get()Lorg/chromium/policy/CombinedPolicyProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/policy/CombinedPolicyProvider;->addPolicyChangeListener(Lorg/chromium/policy/CombinedPolicyProvider$PolicyChangeListener;)V

    .line 686
    return-void
.end method

.method protected areParentalControlsEnabled()Z
    .locals 1

    .prologue
    .line 543
    invoke-static {}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->isIncognitoDisabled()Z

    move-result v0

    return v0
.end method

.method public checkIsAndroidEduDevice(Lorg/chromium/chrome/browser/services/AndroidEduOwnerCheckCallback;)V
    .locals 2

    .prologue
    .line 383
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lorg/chromium/chrome/browser/ChromeApplication$3;

    invoke-direct {v1, p0, p1}, Lorg/chromium/chrome/browser/ChromeApplication$3;-><init>(Lorg/chromium/chrome/browser/ChromeApplication;Lorg/chromium/chrome/browser/services/AndroidEduOwnerCheckCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 389
    return-void
.end method

.method public createAccountManagerDelegate()Lorg/chromium/sync/signin/AccountManagerDelegate;
    .locals 1

    .prologue
    .line 773
    new-instance v0, Lorg/chromium/sync/signin/SystemAccountManagerDelegate;

    invoke-direct {v0, p0}, Lorg/chromium/sync/signin/SystemAccountManagerDelegate;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createActivityWindowAndroid(Landroid/app/Activity;)Lorg/chromium/ui/base/ActivityWindowAndroid;
    .locals 1

    .prologue
    .line 636
    instance-of v0, p1, Lorg/chromium/chrome/browser/ChromeActivity;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/chromium/chrome/browser/ChromeWindow;

    check-cast p1, Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/ChromeWindow;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;)V

    .line 637
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-direct {v0, p1}, Lorg/chromium/ui/base/ActivityWindowAndroid;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected createAppDetailsDelegate()Lorg/chromium/chrome/browser/banners/AppDetailsDelegate;
    .locals 1

    .prologue
    .line 732
    const/4 v0, 0x0

    return-object v0
.end method

.method public createAuthenticatorNavigationInterceptor(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/AuthenticatorNavigationInterceptor;
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    return-object v0
.end method

.method public createCustomTabsConnection()Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;
    .locals 1

    .prologue
    .line 645
    new-instance v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;-><init>(Landroid/app/Application;)V

    return-object v0
.end method

.method public createExternalAuthUtils()Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;
    .locals 1

    .prologue
    .line 622
    new-instance v0, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;-><init>()V

    return-object v0
.end method

.method public createExternalDataUseObserver(J)Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;
    .locals 1

    .prologue
    .line 559
    new-instance v0, Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;

    invoke-direct {v0, p1, p2}, Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;-><init>(J)V

    return-object v0
.end method

.method public createExternalEstimateProviderAndroid(J)Lorg/chromium/chrome/browser/net/qualityprovider/ExternalEstimateProviderAndroid;
    .locals 1

    .prologue
    .line 551
    new-instance v0, Lorg/chromium/chrome/browser/ChromeApplication$6;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/ChromeApplication$6;-><init>(Lorg/chromium/chrome/browser/ChromeApplication;J)V

    return-object v0
.end method

.method public createFeedbackReporter()Lorg/chromium/chrome/browser/feedback/FeedbackReporter;
    .locals 1

    .prologue
    .line 615
    new-instance v0, Lorg/chromium/chrome/browser/feedback/EmptyFeedbackReporter;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/feedback/EmptyFeedbackReporter;-><init>()V

    return-object v0
.end method

.method public createGmsCoreSyncListener()Lorg/chromium/chrome/browser/sync/GmsCoreSyncListener;
    .locals 1

    .prologue
    .line 724
    const/4 v0, 0x0

    return-object v0
.end method

.method public createGsaHelper()Lorg/chromium/chrome/browser/gsa/GSAHelper;
    .locals 1

    .prologue
    .line 668
    new-instance v0, Lorg/chromium/chrome/browser/gsa/GSAHelper;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/gsa/GSAHelper;-><init>()V

    return-object v0
.end method

.method public createHelpAndFeedback()Lorg/chromium/chrome/browser/help/HelpAndFeedback;
    .locals 1

    .prologue
    .line 629
    new-instance v0, Lorg/chromium/chrome/browser/help/HelpAndFeedback;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/help/HelpAndFeedback;-><init>()V

    return-object v0
.end method

.method public createLocationSettings()Lorg/chromium/chrome/browser/preferences/LocationSettings;
    .locals 1

    .prologue
    .line 509
    new-instance v0, Lorg/chromium/chrome/browser/ChromeApplication$5;

    invoke-direct {v0, p0, p0}, Lorg/chromium/chrome/browser/ChromeApplication$5;-><init>(Lorg/chromium/chrome/browser/ChromeApplication;Landroid/content/Context;)V

    return-object v0
.end method

.method public createMultiWindowUtils()Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;
    .locals 1

    .prologue
    .line 708
    new-instance v0, Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;-><init>()V

    return-object v0
.end method

.method public createOmahaRequestGenerator()Lorg/chromium/chrome/browser/omaha/RequestGenerator;
    .locals 1

    .prologue
    .line 716
    const/4 v0, 0x0

    return-object v0
.end method

.method public createPhysicalWebBleClient()Lorg/chromium/chrome/browser/physicalweb/PhysicalWebBleClient;
    .locals 1

    .prologue
    .line 652
    new-instance v0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebBleClient;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebBleClient;-><init>()V

    return-object v0
.end method

.method public createRevenueStatsInstance()Lorg/chromium/chrome/browser/rlz/RevenueStats;
    .locals 1

    .prologue
    .line 765
    new-instance v0, Lorg/chromium/chrome/browser/rlz/RevenueStats;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/rlz/RevenueStats;-><init>()V

    return-object v0
.end method

.method public createVariationsSession()Lorg/chromium/chrome/browser/metrics/VariationsSession;
    .locals 1

    .prologue
    .line 356
    new-instance v0, Lorg/chromium/chrome/browser/metrics/VariationsSession;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/metrics/VariationsSession;-><init>()V

    return-object v0
.end method

.method public getChildProcessCreationParams()Lorg/chromium/content/browser/ChildProcessLauncher$ChildProcessCreationParams;
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPolicyAuditor()Lorg/chromium/chrome/browser/policy/PolicyAuditor;
    .locals 1

    .prologue
    .line 701
    new-instance v0, Lorg/chromium/chrome/browser/ChromeApplication$7;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/ChromeApplication$7;-><init>(Lorg/chromium/chrome/browser/ChromeApplication;)V

    return-object v0
.end method

.method public getPowerBroadcastReceiver()Lorg/chromium/chrome/browser/PowerBroadcastReceiver;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeApplication;->mPowerBroadcastReceiver:Lorg/chromium/chrome/browser/PowerBroadcastReceiver;

    return-object v0
.end method

.method public getPrintingController()Lorg/chromium/printing/PrintingController;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeApplication;->mPrintingController:Lorg/chromium/printing/PrintingController;

    return-object v0
.end method

.method public initCommandLine()V
    .locals 1

    .prologue
    .line 487
    const-string/jumbo v0, "chrome-command-line"

    invoke-static {p0, v0}, Lorg/chromium/base/CommandLineInitUtil;->initCommandLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 488
    return-void
.end method

.method protected initializeLibraryDependencies()V
    .locals 1

    .prologue
    .line 421
    sget v0, Lorg/chromium/chrome/R$array;->locale_paks:I

    invoke-static {p0, v0}, Lorg/chromium/ui/base/ResourceBundle;->initializeLocalePaks(Landroid/content/Context;I)V

    .line 422
    invoke-static {p0}, Lorg/chromium/base/BuildInfo;->hasLanguageApkSplits(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    invoke-static {}, Lorg/chromium/ui/base/ResourceBundle;->getActiveLocaleResources()[Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/base/ResourceExtractor;->setResourcesToExtract([Lorg/chromium/base/ResourceExtractor$ResourceEntry;)V

    .line 425
    :cond_0
    return-void
.end method

.method public initializeProcess()V
    .locals 1

    .prologue
    .line 470
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeApplication;->mIsProcessInitialized:Z

    if-eqz v0, :cond_0

    .line 483
    :goto_0
    return-void

    .line 471
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeApplication;->mIsProcessInitialized:Z

    .line 472
    sget-boolean v0, Lorg/chromium/chrome/browser/ChromeApplication;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeApplication;->mIsStarted:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 474
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->reconcileDataReductionProxyEnabledState(Landroid/content/Context;)V

    .line 476
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeApplication;->createVariationsSession()Lorg/chromium/chrome/browser/metrics/VariationsSession;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeApplication;->mVariationsSession:Lorg/chromium/chrome/browser/metrics/VariationsSession;

    .line 477
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeApplication;->removeSessionCookies()V

    .line 478
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeApplication;->createApplicationStateListener()Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/base/ApplicationStatus;->registerApplicationStateListener(Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;)V

    .line 479
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeApplication;->createAppDetailsDelegate()Lorg/chromium/chrome/browser/banners/AppDetailsDelegate;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/banners/AppBannerManager;->setAppDetailsDelegate(Lorg/chromium/chrome/browser/banners/AppDetailsDelegate;)V

    .line 480
    new-instance v0, Lorg/chromium/chrome/browser/ChromeLifetimeController;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/ChromeLifetimeController;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeApplication;->mChromeLifetimeController:Lorg/chromium/chrome/browser/ChromeLifetimeController;

    .line 482
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->migratePreferences(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public initializeSharedClasses()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 432
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeApplication;->mInitializedSharedClasses:Z

    if-eqz v0, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/ChromeApplication;->mInitializedSharedClasses:Z

    .line 435
    invoke-static {p0}, Lorg/chromium/chrome/browser/firstrun/ForcedSigninProcessor;->start(Landroid/content/Context;)V

    .line 436
    new-instance v0, Lorg/chromium/chrome/browser/ChromeApplication$4;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/ChromeApplication$4;-><init>(Lorg/chromium/chrome/browser/ChromeApplication;)V

    invoke-static {v0}, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver;->addObserver(Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$AccountsChangedObserver;)V

    .line 447
    invoke-static {p0}, Lorg/chromium/chrome/browser/services/GoogleServicesManager;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/services/GoogleServicesManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/services/GoogleServicesManager;->onMainActivityStart()V

    .line 448
    invoke-static {}, Lorg/chromium/chrome/browser/rlz/RevenueStats;->getInstance()Lorg/chromium/chrome/browser/rlz/RevenueStats;

    .line 450
    new-instance v0, Lorg/chromium/chrome/browser/DevToolsServer;

    const-string/jumbo v1, "chrome"

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/DevToolsServer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeApplication;->mDevToolsServer:Lorg/chromium/chrome/browser/DevToolsServer;

    .line 451
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeApplication;->mDevToolsServer:Lorg/chromium/chrome/browser/DevToolsServer;

    sget-object v1, Lorg/chromium/chrome/browser/DevToolsServer$Security;->ALLOW_DEBUG_PERMISSION:Lorg/chromium/chrome/browser/DevToolsServer$Security;

    invoke-virtual {v0, v2, v1}, Lorg/chromium/chrome/browser/DevToolsServer;->setRemoteDebuggingEnabled(ZLorg/chromium/chrome/browser/DevToolsServer$Security;)V

    .line 454
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeApplication;->startApplicationActivityTracker()V

    .line 456
    invoke-static {p0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->getDownloadManagerService(Landroid/content/Context;)Lorg/chromium/chrome/browser/download/DownloadManagerService;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/content/browser/DownloadController;->setDownloadNotificationService(Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;)V

    .line 459
    invoke-static {}, Lorg/chromium/base/ApiCompatibilityUtils;->isPrintingSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/printing/PrintingControllerFactory;->create(Landroid/content/Context;)Lorg/chromium/printing/PrintingController;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeApplication;->mPrintingController:Lorg/chromium/printing/PrintingController;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 205
    invoke-static {}, Lorg/chromium/chrome/browser/metrics/UmaUtils;->recordMainEntryPointTime()V

    .line 206
    invoke-super {p0}, Lorg/chromium/content/app/ContentApplication;->onCreate()V

    .line 207
    new-instance v0, Lorg/chromium/chrome/browser/ChromeApplication$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/ChromeApplication$1;-><init>(Lorg/chromium/chrome/browser/ChromeApplication;)V

    invoke-static {v0}, Lorg/chromium/ui/UiUtils;->setKeyboardShowingDelegate(Lorg/chromium/ui/UiUtils$KeyboardShowingDelegate;)V

    .line 226
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeApplication;->createAccountManagerDelegate()Lorg/chromium/sync/signin/AccountManagerDelegate;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/chromium/sync/signin/AccountManagerHelper;->initializeAccountManagerHelper(Landroid/content/Context;Lorg/chromium/sync/signin/AccountManagerDelegate;)V

    .line 231
    invoke-static {p0}, Lorg/chromium/chrome/browser/invalidation/UniqueIdInvalidationClientNameGenerator;->doInitializeAndInstallGenerator(Landroid/content/Context;)V

    .line 236
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/ipc/invalidation/external/client/android/service/AndroidLogger;->setMinimumAndroidLogLevel(I)V

    .line 240
    const-string/jumbo v0, "SYNC"

    new-instance v1, Lorg/chromium/chrome/browser/identity/UuidBasedUniqueIdentificationGenerator;

    const-string/jumbo v2, "chromium.sync.sessions.id"

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/identity/UuidBasedUniqueIdentificationGenerator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/identity/UniqueIdentificationGeneratorFactory;->registerGenerator(Ljava/lang/String;Lorg/chromium/chrome/browser/identity/UniqueIdentificationGenerator;Z)V

    .line 242
    return-void
.end method

.method public onStartWithNative()V
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeApplication;->mIsStarted:Z

    if-eqz v0, :cond_0

    .line 259
    :goto_0
    return-void

    .line 253
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeApplication;->mIsStarted:Z

    .line 255
    sget-boolean v0, Lorg/chromium/chrome/browser/ChromeApplication;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeApplication;->mIsProcessInitialized:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 257
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeApplication;->onForegroundSessionStart()V

    .line 258
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeApplication;->cacheNativeFlags()V

    goto :goto_0
.end method

.method protected openClearBrowsingData(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 526
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 527
    if-nez v0, :cond_0

    .line 528
    const-string/jumbo v0, "ChromiumApplication"

    const-string/jumbo v1, "Attempting to open clear browsing data for a tab without a valid activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :goto_0
    return-void

    .line 532
    :cond_0
    const-class v1, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->createIntentForSettingsPage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 534
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public registerPolicyProviders(Lorg/chromium/policy/CombinedPolicyProvider;)V
    .locals 2

    .prologue
    .line 678
    new-instance v0, Lorg/chromium/policy/AppRestrictionsProvider;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/policy/AppRestrictionsProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lorg/chromium/policy/CombinedPolicyProvider;->registerProvider(Lorg/chromium/policy/PolicyProvider;)V

    .line 679
    return-void
.end method

.method public removePolicyChangeListener(Lorg/chromium/policy/CombinedPolicyProvider$PolicyChangeListener;)V
    .locals 1

    .prologue
    .line 692
    invoke-static {}, Lorg/chromium/policy/CombinedPolicyProvider;->get()Lorg/chromium/policy/CombinedPolicyProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/policy/CombinedPolicyProvider;->removePolicyChangeListener(Lorg/chromium/policy/CombinedPolicyProvider$PolicyChangeListener;)V

    .line 693
    return-void
.end method

.method protected removeSessionCookies()V
    .locals 6

    .prologue
    .line 591
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "com.google.android.apps.chrome.ChromeMobileApplication.BOOT_TIMESTAMP"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 593
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 594
    sub-long v0, v2, v0

    .line 597
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 598
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeApplication;->nativeRemoveSessionCookies()V

    .line 600
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 601
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 602
    const-string/jumbo v1, "com.google.android.apps.chrome.ChromeMobileApplication.BOOT_TIMESTAMP"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 603
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 605
    :cond_0
    return-void
.end method

.method protected showAutofillSettings()V
    .locals 1

    .prologue
    .line 393
    const-class v0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillPreferences;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->launchSettingsPage(Landroid/content/Context;Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method protected showPasswordSettings()V
    .locals 1

    .prologue
    .line 399
    const-class v0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->launchSettingsPage(Landroid/content/Context;Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method protected startApplicationActivityTracker()V
    .locals 0

    .prologue
    .line 371
    return-void
.end method

.method protected stopApplicationActivityTracker()V
    .locals 0

    .prologue
    .line 376
    return-void
.end method
