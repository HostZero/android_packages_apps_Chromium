.class Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid$3;
.super Ljava/lang/Object;
.source "AppBannerInfoBarDelegateAndroid.java"

# interfaces
.implements Lorg/chromium/chrome/browser/banners/InstallerDelegate$Observer;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid$3;->this$0:Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstallFinished(Lorg/chromium/chrome/browser/banners/InstallerDelegate;Z)V
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid$3;->this$0:Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;

    # getter for: Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->mInstallTask:Lorg/chromium/chrome/browser/banners/InstallerDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->access$300(Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;)Lorg/chromium/chrome/browser/banners/InstallerDelegate;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid$3;->this$0:Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->mInstallTask:Lorg/chromium/chrome/browser/banners/InstallerDelegate;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->access$302(Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;Lorg/chromium/chrome/browser/banners/InstallerDelegate;)Lorg/chromium/chrome/browser/banners/InstallerDelegate;

    .line 125
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid$3;->this$0:Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid$3;->this$0:Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;

    # getter for: Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->mNativePointer:J
    invoke-static {v1}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->access$000(Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;)J

    move-result-wide v2

    # invokes: Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->nativeOnInstallFinished(JZ)V
    invoke-static {v0, v2, v3, p2}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->access$600(Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;JZ)V

    goto :goto_0
.end method
