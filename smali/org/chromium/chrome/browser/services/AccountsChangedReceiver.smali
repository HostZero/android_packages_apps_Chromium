.class public Lorg/chromium/chrome/browser/services/AccountsChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountsChangedReceiver.java"


# static fields
.field private static sObservers:Lorg/chromium/base/ObserverList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver;->sObservers:Lorg/chromium/base/ObserverList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/services/AccountsChangedReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver;->continueHandleAccountChangeIfNeeded(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100()Lorg/chromium/base/ObserverList;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver;->sObservers:Lorg/chromium/base/ObserverList;

    return-object v0
.end method

.method public static addObserver(Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$AccountsChangedObserver;)V
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver;->sObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p0}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method private continueHandleAccountChangeIfNeeded(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 88
    const-string/jumbo v0, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-static {p1}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/AccountTrackerService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->invalidateAccountSeedStatus(Z)V

    .line 92
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->hasVisibleActivities()Z

    move-result v0

    .line 93
    if-eqz v0, :cond_1

    .line 94
    invoke-static {p1}, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver;->startBrowserIfNeededAndValidateAccounts(Landroid/content/Context;)V

    .line 99
    :goto_1
    invoke-static {p1, p2}, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver;->notifyAccountsChangedOnBrowserStartup(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 97
    :cond_1
    invoke-static {p1}, Lorg/chromium/chrome/browser/signin/SigninHelper;->markAccountsChangedPref(Landroid/content/Context;)V

    goto :goto_1
.end method

.method private static notifyAccountsChangedOnBrowserStartup(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 133
    new-instance v0, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$3;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$3;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 148
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lorg/chromium/content/browser/BrowserStartupController;->get(Landroid/content/Context;I)Lorg/chromium/content/browser/BrowserStartupController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/BrowserStartupController;->addStartupCompletedObserver(Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;)V

    .line 150
    return-void
.end method

.method private static startBrowserIfNeededAndValidateAccounts(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 104
    new-instance v0, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$2;-><init>(Landroid/content/Context;)V

    .line 123
    :try_start_0
    invoke-static {p0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->handlePreNativeStartup(Lorg/chromium/chrome/browser/init/BrowserParts;)V

    .line 124
    invoke-static {p0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/chromium/chrome/browser/init/ChromeBrowserInitializer;->handlePostNativeStartup(ZLorg/chromium/chrome/browser/init/BrowserParts;)V
    :try_end_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    const-string/jumbo v1, "AccountsChangedRx"

    const-string/jumbo v2, "Unable to load native library."

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeApplication;->reportStartupErrorAndExit(Lorg/chromium/base/library_loader/ProcessInitException;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    new-instance v1, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$1;

    invoke-direct {v1, p0, v0, p2}, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$1;-><init>(Lorg/chromium/chrome/browser/services/AccountsChangedReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 84
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 85
    return-void
.end method
