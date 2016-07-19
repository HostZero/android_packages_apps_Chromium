.class Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid$1;
.super Ljava/lang/Object;
.source "AppBannerInfoBarDelegateAndroid.java"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid$1;->this$0:Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplicationStateChange(I)V
    .locals 4

    .prologue
    .line 57
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->hasVisibleActivities()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid$1;->this$0:Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid$1;->this$0:Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;

    # getter for: Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->mNativePointer:J
    invoke-static {v1}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->access$000(Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;)J

    move-result-wide v2

    # invokes: Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->nativeUpdateInstallState(J)V
    invoke-static {v0, v2, v3}, Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;->access$100(Lorg/chromium/chrome/browser/infobar/AppBannerInfoBarDelegateAndroid;J)V

    goto :goto_0
.end method
