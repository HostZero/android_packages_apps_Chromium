.class Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate$1;
.super Ljava/lang/Object;
.source "PermissionUpdateInfoBarDelegate.java"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$ActivityStateListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate$1;->this$0:Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 73
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 74
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->unregisterActivityStateListener(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;)V

    .line 75
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate$1;->this$0:Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;

    # setter for: Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->mActivityStateListener:Lorg/chromium/base/ApplicationStatus$ActivityStateListener;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->access$002(Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;Lorg/chromium/base/ApplicationStatus$ActivityStateListener;)Lorg/chromium/base/ApplicationStatus$ActivityStateListener;

    .line 77
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate$1;->this$0:Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate$1;->this$0:Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;

    # getter for: Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->mNativePtr:J
    invoke-static {v1}, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->access$100(Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;)J

    move-result-wide v2

    const/4 v1, 0x0

    # invokes: Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->nativeOnPermissionResult(JZ)V
    invoke-static {v0, v2, v3, v1}, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->access$200(Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;JZ)V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 79
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->unregisterActivityStateListener(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;)V

    .line 80
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate$1;->this$0:Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;

    # setter for: Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->mActivityStateListener:Lorg/chromium/base/ApplicationStatus$ActivityStateListener;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->access$002(Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;Lorg/chromium/base/ApplicationStatus$ActivityStateListener;)Lorg/chromium/base/ApplicationStatus$ActivityStateListener;

    .line 82
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate$1;->this$0:Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;

    # invokes: Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->notifyPermissionResult()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;->access$300(Lorg/chromium/chrome/browser/infobar/PermissionUpdateInfoBarDelegate;)V

    goto :goto_0
.end method
