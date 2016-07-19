.class Lorg/chromium/chrome/browser/services/gcm/ChromeGcmListenerService$1;
.super Ljava/lang/Object;
.source "ChromeGcmListenerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/services/gcm/ChromeGcmListenerService;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$data:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/services/gcm/ChromeGcmListenerService;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lorg/chromium/chrome/browser/services/gcm/ChromeGcmListenerService$1;->this$0:Lorg/chromium/chrome/browser/services/gcm/ChromeGcmListenerService;

    iput-object p2, p0, Lorg/chromium/chrome/browser/services/gcm/ChromeGcmListenerService$1;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/chrome/browser/services/gcm/ChromeGcmListenerService$1;->val$data:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 63
    const-string/jumbo v0, "chrome"

    iget-object v1, p0, Lorg/chromium/chrome/browser/services/gcm/ChromeGcmListenerService$1;->this$0:Lorg/chromium/chrome/browser/services/gcm/ChromeGcmListenerService;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/services/gcm/ChromeGcmListenerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/base/PathUtils;->setPrivateDataDirectorySuffix(Ljava/lang/String;Landroid/content/Context;)V

    .line 65
    iget-object v0, p0, Lorg/chromium/chrome/browser/services/gcm/ChromeGcmListenerService$1;->this$0:Lorg/chromium/chrome/browser/services/gcm/ChromeGcmListenerService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/services/gcm/ChromeGcmListenerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/services/gcm/ChromeGcmListenerService$1;->val$appId:Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/chrome/browser/services/gcm/ChromeGcmListenerService$1;->val$data:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lorg/chromium/components/gcm_driver/GCMDriver;->onMessageReceived(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 66
    return-void
.end method
