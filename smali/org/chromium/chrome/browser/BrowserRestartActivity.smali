.class public Lorg/chromium/chrome/browser/BrowserRestartActivity;
.super Landroid/app/Activity;
.source "BrowserRestartActivity.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final ACTION_KILL_PROCESS:Ljava/lang/String; = "org.chromium.chrome.browser.BrowserRestartActivity.kill_process"

.field static final ACTION_START_WATCHDOG:Ljava/lang/String; = "org.chromium.chrome.browser.BrowserRestartActivity.start_watchdog"

.field static final EXTRA_MAIN_PID:Ljava/lang/String; = "org.chromium.chrome.browser.BrowserRestartActivity.main_pid"

.field static final EXTRA_RESTART:Ljava/lang/String; = "org.chromium.chrome.browser.BrowserRestartActivity.restart"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/chromium/chrome/browser/BrowserRestartActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/BrowserRestartActivity;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/BrowserRestartActivity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/BrowserRestartActivity;->destroyProcess(Landroid/content/Intent;)V

    return-void
.end method

.method private destroyProcess(Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 76
    const-string/jumbo v0, "org.chromium.chrome.browser.BrowserRestartActivity.main_pid"

    invoke-static {p1, v0, v2}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    .line 78
    sget-boolean v1, Lorg/chromium/chrome/browser/BrowserRestartActivity;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 79
    :cond_0
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 82
    const-string/jumbo v0, "org.chromium.chrome.browser.BrowserRestartActivity.restart"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    .line 84
    if-eqz v0, :cond_1

    .line 85
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 86
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 93
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/BrowserRestartActivity;->finish()V

    .line 94
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 95
    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 58
    const-string/jumbo v0, "org.chromium.chrome.browser.BrowserRestartActivity.start_watchdog"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 61
    new-instance v1, Lorg/chromium/chrome/browser/BrowserRestartActivity$1;

    invoke-direct {v1, p0, p1}, Lorg/chromium/chrome/browser/BrowserRestartActivity$1;-><init>(Lorg/chromium/chrome/browser/BrowserRestartActivity;Landroid/content/Intent;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    const-string/jumbo v0, "org.chromium.chrome.browser.BrowserRestartActivity.kill_process"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/BrowserRestartActivity;->destroyProcess(Landroid/content/Intent;)V

    goto :goto_0

    .line 70
    :cond_2
    sget-boolean v0, Lorg/chromium/chrome/browser/BrowserRestartActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/BrowserRestartActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/BrowserRestartActivity;->handleIntent(Landroid/content/Intent;)V

    .line 50
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/BrowserRestartActivity;->handleIntent(Landroid/content/Intent;)V

    .line 55
    return-void
.end method
