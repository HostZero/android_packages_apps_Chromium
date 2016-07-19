.class Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$5;
.super Ljava/lang/Object;
.source "ChromeDownloadDelegate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

.field final synthetic val$permissionCallback:Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$5;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    iput-object p2, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$5;->val$permissionCallback:Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 321
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$5;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    # getter for: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$000(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-nez v0, :cond_0

    .line 322
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 327
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$5;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    # getter for: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$000(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    iget-object v2, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$5;->val$permissionCallback:Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/ui/base/WindowAndroid;->requestPermissions([Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)V

    goto :goto_0
.end method
