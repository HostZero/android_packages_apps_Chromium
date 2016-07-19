.class public Lorg/chromium/chrome/browser/services/GoogleServicesManager;
.super Ljava/lang/Object;
.source "GoogleServicesManager.java"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;


# static fields
.field public static final SESSION_TAG_PREFIX:Ljava/lang/String; = "session_sync"

.field private static sGoogleServicesManager:Lorg/chromium/chrome/browser/services/GoogleServicesManager;


# instance fields
.field private final mChromeSigninController:Lorg/chromium/sync/signin/ChromeSigninController;

.field protected final mContext:Landroid/content/Context;

.field private final mSigninHelper:Lorg/chromium/chrome/browser/signin/SigninHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    :try_start_0
    const-string/jumbo v0, "GoogleServicesManager.GoogleServicesManager"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/services/GoogleServicesManager;->mContext:Landroid/content/Context;

    .line 73
    iget-object v0, p0, Lorg/chromium/chrome/browser/services/GoogleServicesManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/services/GoogleServicesManager;->mChromeSigninController:Lorg/chromium/sync/signin/ChromeSigninController;

    .line 74
    iget-object v0, p0, Lorg/chromium/chrome/browser/services/GoogleServicesManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninHelper;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/services/GoogleServicesManager;->mSigninHelper:Lorg/chromium/chrome/browser/signin/SigninHelper;

    .line 81
    iget-object v0, p0, Lorg/chromium/chrome/browser/services/GoogleServicesManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lorg/chromium/chrome/browser/services/GoogleServicesManager;->mChromeSigninController:Lorg/chromium/sync/signin/ChromeSigninController;

    invoke-virtual {v1}, Lorg/chromium/sync/signin/ChromeSigninController;->isSignedIn()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->isSignedInOnNative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    const-string/jumbo v1, "GoogleServicesManager"

    const-string/jumbo v2, "Signed in state got out of sync, forcing native sign out"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->signOut()V

    .line 88
    :cond_0
    invoke-static {p1}, Lorg/chromium/chrome/browser/sync/SyncController;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/sync/SyncController;

    .line 90
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->registerApplicationStateListener(Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    const-string/jumbo v0, "GoogleServicesManager.GoogleServicesManager"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v0

    const-string/jumbo v1, "GoogleServicesManager.GoogleServicesManager"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
.end method

.method public static get(Landroid/content/Context;)Lorg/chromium/chrome/browser/services/GoogleServicesManager;
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 59
    sget-object v0, Lorg/chromium/chrome/browser/services/GoogleServicesManager;->sGoogleServicesManager:Lorg/chromium/chrome/browser/services/GoogleServicesManager;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lorg/chromium/chrome/browser/services/GoogleServicesManager;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/services/GoogleServicesManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/chrome/browser/services/GoogleServicesManager;->sGoogleServicesManager:Lorg/chromium/chrome/browser/services/GoogleServicesManager;

    .line 62
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/services/GoogleServicesManager;->sGoogleServicesManager:Lorg/chromium/chrome/browser/services/GoogleServicesManager;

    return-object v0
.end method


# virtual methods
.method public onApplicationStateChange(I)V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/services/GoogleServicesManager;->onMainActivityStart()V

    .line 116
    :cond_0
    return-void
.end method

.method public onMainActivityStart()V
    .locals 2

    .prologue
    .line 103
    :try_start_0
    const-string/jumbo v0, "GoogleServicesManager.onMainActivityStart"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lorg/chromium/chrome/browser/services/GoogleServicesManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninHelper;->checkAndClearAccountsChangedPref(Landroid/content/Context;)Z

    move-result v0

    .line 105
    iget-object v1, p0, Lorg/chromium/chrome/browser/services/GoogleServicesManager;->mSigninHelper:Lorg/chromium/chrome/browser/signin/SigninHelper;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/signin/SigninHelper;->validateAccountSettings(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    const-string/jumbo v0, "GoogleServicesManager.onMainActivityStart"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v0

    const-string/jumbo v1, "GoogleServicesManager.onMainActivityStart"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
.end method
