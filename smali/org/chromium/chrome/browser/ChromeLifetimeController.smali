.class Lorg/chromium/chrome/browser/ChromeLifetimeController;
.super Ljava/lang/Object;
.source "ChromeLifetimeController.java"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$ActivityStateListener;
.implements Lorg/chromium/chrome/browser/ApplicationLifetime$Observer;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mRemainingActivitiesCount:I

.field private mRestartChromeOnDestroy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/chromium/chrome/browser/ChromeLifetimeController;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/ChromeLifetimeController;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/ChromeLifetimeController;->mRemainingActivitiesCount:I

    .line 34
    invoke-static {p0}, Lorg/chromium/chrome/browser/ApplicationLifetime;->addObserver(Lorg/chromium/chrome/browser/ApplicationLifetime$Observer;)V

    .line 35
    return-void
.end method

.method private fireBrowserRestartActivityIntent(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 66
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 67
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 68
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lorg/chromium/chrome/browser/BrowserRestartActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 72
    const-string/jumbo v2, "org.chromium.chrome.browser.BrowserRestartActivity.main_pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    const-string/jumbo v2, "org.chromium.chrome.browser.BrowserRestartActivity.restart"

    iget-boolean v3, p0, Lorg/chromium/chrome/browser/ChromeLifetimeController;->mRestartChromeOnDestroy:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 75
    return-void
.end method


# virtual methods
.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lorg/chromium/chrome/browser/ChromeLifetimeController;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/ChromeLifetimeController;->mRemainingActivitiesCount:I

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 57
    :cond_0
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 58
    iget v0, p0, Lorg/chromium/chrome/browser/ChromeLifetimeController;->mRemainingActivitiesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/ChromeLifetimeController;->mRemainingActivitiesCount:I

    .line 59
    iget v0, p0, Lorg/chromium/chrome/browser/ChromeLifetimeController;->mRemainingActivitiesCount:I

    if-nez v0, :cond_1

    .line 60
    const-string/jumbo v0, "org.chromium.chrome.browser.BrowserRestartActivity.kill_process"

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ChromeLifetimeController;->fireBrowserRestartActivityIntent(Ljava/lang/String;)V

    .line 63
    :cond_1
    return-void
.end method

.method public onTerminate(Z)V
    .locals 3

    .prologue
    .line 39
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/ChromeLifetimeController;->mRestartChromeOnDestroy:Z

    .line 41
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 42
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 43
    if-eqz v0, :cond_0

    .line 44
    invoke-static {p0, v0}, Lorg/chromium/base/ApplicationStatus;->registerStateListenerForActivity(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;Landroid/app/Activity;)V

    .line 45
    iget v2, p0, Lorg/chromium/chrome/browser/ChromeLifetimeController;->mRemainingActivitiesCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/chromium/chrome/browser/ChromeLifetimeController;->mRemainingActivitiesCount:I

    .line 46
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 51
    :cond_1
    const-string/jumbo v0, "org.chromium.chrome.browser.BrowserRestartActivity.start_watchdog"

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ChromeLifetimeController;->fireBrowserRestartActivityIntent(Ljava/lang/String;)V

    .line 52
    return-void
.end method
