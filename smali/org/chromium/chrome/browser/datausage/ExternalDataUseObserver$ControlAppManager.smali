.class Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver$ControlAppManager;
.super Ljava/lang/Object;
.source "ExternalDataUseObserver.java"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;


# instance fields
.field private final mControlAppPackageName:Ljava/lang/String;

.field private mInstalled:Z

.field final synthetic this$0:Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 35
    iput-object p1, p0, Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver$ControlAppManager;->this$0:Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver$ControlAppManager;->mControlAppPackageName:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver$ControlAppManager;->mInstalled:Z

    .line 38
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->registerApplicationStateListener(Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;)V

    .line 39
    invoke-direct {p0}, Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver$ControlAppManager;->checkAndNotifyPackageInstallState()V

    .line 40
    return-void
.end method

.method private checkAndNotifyPackageInstallState()V
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver$ControlAppManager;->this$0:Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;

    # getter for: Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;->mNativeExternalDataUseObserverBridge:J
    invoke-static {v0}, Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;->access$000(Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver$ControlAppManager;->mControlAppPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver$ControlAppManager;->mControlAppPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver$ControlAppManager;->mControlAppPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/chromium/base/PackageUtils;->getPackageVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    .line 64
    :goto_1
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver$ControlAppManager;->mInstalled:Z

    if-eq v0, v1, :cond_0

    .line 65
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver$ControlAppManager;->mInstalled:Z

    .line 66
    iget-object v0, p0, Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver$ControlAppManager;->this$0:Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;

    iget-object v1, p0, Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver$ControlAppManager;->this$0:Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;

    # getter for: Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;->mNativeExternalDataUseObserverBridge:J
    invoke-static {v1}, Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;->access$000(Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;)J

    move-result-wide v2

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver$ControlAppManager;->mInstalled:Z

    # invokes: Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;->nativeOnControlAppInstallStateChange(JZ)V
    invoke-static {v0, v2, v3, v1}, Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;->access$100(Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver;JZ)V

    goto :goto_0

    .line 60
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onApplicationStateChange(I)V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 45
    invoke-direct {p0}, Lorg/chromium/chrome/browser/datausage/ExternalDataUseObserver$ControlAppManager;->checkAndNotifyPackageInstallState()V

    .line 47
    :cond_0
    return-void
.end method
