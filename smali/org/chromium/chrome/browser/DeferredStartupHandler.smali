.class public Lorg/chromium/chrome/browser/DeferredStartupHandler;
.super Ljava/lang/Object;
.source "DeferredStartupHandler.java"


# static fields
.field private static sDeferredStartupHandler:Lorg/chromium/chrome/browser/DeferredStartupHandler;


# instance fields
.field private mDeferredStartupComplete:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/chromium/chrome/browser/DeferredStartupHandler;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/chromium/chrome/browser/DeferredStartupHandler;->sDeferredStartupHandler:Lorg/chromium/chrome/browser/DeferredStartupHandler;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lorg/chromium/chrome/browser/DeferredStartupHandler;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/DeferredStartupHandler;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/DeferredStartupHandler;->sDeferredStartupHandler:Lorg/chromium/chrome/browser/DeferredStartupHandler;

    .line 44
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/DeferredStartupHandler;->sDeferredStartupHandler:Lorg/chromium/chrome/browser/DeferredStartupHandler;

    return-object v0
.end method

.method private static startModerateBindingManagementIfNeeded(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 142
    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 144
    :cond_0
    const-string/jumbo v0, "ModerateBindingOnBackgroundTabCreation"

    invoke-static {v0}, Lorg/chromium/base/FieldTrialList;->findFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 147
    invoke-static {p0, v0}, Lorg/chromium/content/browser/ChildProcessLauncher;->startModerateBindingManagement(Landroid/content/Context;Z)V

    goto :goto_0
.end method


# virtual methods
.method public isDeferredStartupComplete()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/DeferredStartupHandler;->mDeferredStartupComplete:Z

    return v0
.end method

.method public onDeferredStartup(Lorg/chromium/chrome/browser/ChromeApplication;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/DeferredStartupHandler;->mDeferredStartupComplete:Z

    if-eqz v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 62
    new-instance v0, Lorg/chromium/chrome/browser/DeferredStartupHandler$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/chromium/chrome/browser/DeferredStartupHandler$1;-><init>(Lorg/chromium/chrome/browser/DeferredStartupHandler;ZLorg/chromium/chrome/browser/ChromeApplication;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/DeferredStartupHandler$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 94
    invoke-static {}, Lorg/chromium/chrome/browser/AfterStartupTaskUtils;->setStartupComplete()V

    .line 97
    invoke-static {p1}, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksShim;->kickOffReading(Landroid/content/Context;)V

    .line 99
    invoke-static {p1}, Lorg/chromium/base/PowerMonitor;->create(Landroid/content/Context;)V

    .line 102
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeApplication;->createGsaHelper()Lorg/chromium/chrome/browser/gsa/GSAHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/gsa/GSAHelper;->startSync()V

    .line 104
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeApplication;->initializeSharedClasses()V

    .line 106
    invoke-static {p1}, Lorg/chromium/chrome/browser/share/ShareHelper;->clearSharedImages(Landroid/content/Context;)V

    .line 109
    invoke-static {p1}, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->clearMediaNotifications(Landroid/content/Context;)V

    .line 111
    invoke-static {p1}, Lorg/chromium/chrome/browser/DeferredStartupHandler;->startModerateBindingManagementIfNeeded(Landroid/content/Context;)V

    .line 113
    const-string/jumbo v0, "CustomTabs"

    invoke-static {v0}, Lorg/chromium/base/FieldTrialList;->findFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    const-string/jumbo v1, "Disabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    invoke-static {p1}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->setCustomTabsEnabled(Z)V

    .line 122
    :cond_1
    :goto_1
    invoke-static {p1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWeb;->shouldStartOnLaunch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    invoke-static {p1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWeb;->startPhysicalWeb(Lorg/chromium/chrome/browser/ChromeApplication;)V

    .line 124
    invoke-static {p1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWeb;->uploadDeferredMetrics(Landroid/content/Context;)V

    .line 129
    :goto_2
    iput-boolean v4, p0, Lorg/chromium/chrome/browser/DeferredStartupHandler;->mDeferredStartupComplete:Z

    goto :goto_0

    .line 116
    :cond_2
    const-string/jumbo v1, "Enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "DisablePrerender"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    :cond_3
    invoke-static {p1}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->setCustomTabsEnabled(Z)V

    goto :goto_1

    .line 126
    :cond_4
    invoke-static {p1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWeb;->stopPhysicalWeb(Lorg/chromium/chrome/browser/ChromeApplication;)V

    goto :goto_2
.end method
