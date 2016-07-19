.class Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid$2;
.super Ljava/lang/Object;
.source "AppBannerInfoBarDelegateAndroid.java"

# interfaces
.implements Lorg/chromium/ui/base/WindowAndroid$IntentCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;

.field final synthetic val$appData:Lorg/chromium/chrome/browser/banners/AppData;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;Lorg/chromium/chrome/browser/banners/AppData;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid$2;->this$0:Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;

    iput-object p2, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid$2;->val$appData:Lorg/chromium/chrome/browser/banners/AppData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIntentCompleted(Lorg/chromium/ui/base/WindowAndroid;ILandroid/content/ContentResolver;Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 103
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    .line 104
    :goto_0
    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid$2;->this$0:Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;

    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    # invokes: Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;
    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->access$200(Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 108
    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid$2;->this$0:Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;

    new-instance v3, Lorg/chromium/chrome/browser/banners/InstallerDelegate;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid$2;->this$0:Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;

    # invokes: Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->createInstallerDelegateObserver()Lorg/chromium/chrome/browser/banners/InstallerDelegate$Observer;
    invoke-static {v5}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->access$400(Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;)Lorg/chromium/chrome/browser/banners/InstallerDelegate$Observer;

    move-result-object v5

    iget-object v6, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid$2;->val$appData:Lorg/chromium/chrome/browser/banners/AppData;

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/banners/AppData;->packageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v1, v5, v6}, Lorg/chromium/chrome/browser/banners/InstallerDelegate;-><init>(Landroid/os/Looper;Landroid/content/pm/PackageManager;Lorg/chromium/chrome/browser/banners/InstallerDelegate$Observer;Ljava/lang/String;)V

    # setter for: Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->mInstallTask:Lorg/chromium/chrome/browser/banners/InstallerDelegate;
    invoke-static {v2, v3}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->access$302(Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;Lorg/chromium/chrome/browser/banners/InstallerDelegate;)Lorg/chromium/chrome/browser/banners/InstallerDelegate;

    .line 111
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid$2;->this$0:Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;

    # getter for: Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->mInstallTask:Lorg/chromium/chrome/browser/banners/InstallerDelegate;
    invoke-static {v1}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->access$300(Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;)Lorg/chromium/chrome/browser/banners/InstallerDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/banners/InstallerDelegate;->start()V

    .line 114
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid$2;->this$0:Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;

    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid$2;->this$0:Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;

    # getter for: Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->mNativePointer:J
    invoke-static {v2}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->access$000(Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;)J

    move-result-wide v2

    # invokes: Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->nativeOnInstallIntentReturned(JZ)V
    invoke-static {v1, v2, v3, v0}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->access$500(Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;JZ)V

    .line 115
    return-void

    .line 103
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
