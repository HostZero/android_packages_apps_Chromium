.class Lorg/chromium/chrome/browser/download/DownloadNotificationService$1;
.super Lorg/chromium/chrome/browser/init/EmptyBrowserParts;
.source "DownloadNotificationService.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/download/DownloadNotificationService;

.field final synthetic val$downloadId:I

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/download/DownloadNotificationService;Landroid/content/Intent;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService$1;->this$0:Lorg/chromium/chrome/browser/download/DownloadNotificationService;

    iput-object p2, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService$1;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService$1;->val$downloadId:I

    iput-object p4, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService$1;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/init/EmptyBrowserParts;-><init>()V

    return-void
.end method


# virtual methods
.method public finishNativeInitialization()V
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v8, 0x1

    .line 333
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService$1;->this$0:Lorg/chromium/chrome/browser/download/DownloadNotificationService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->getDownloadManagerService(Landroid/content/Context;)Lorg/chromium/chrome/browser/download/DownloadManagerService;

    move-result-object v2

    .line 335
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    move v0, v3

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 352
    const-string/jumbo v0, "DownloadNotification"

    const-string/jumbo v2, "Unrecognized intent action."

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService$1;->val$intent:Landroid/content/Intent;

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    :goto_1
    return-void

    .line 335
    :sswitch_0
    const-string/jumbo v6, "org.chromium.chrome.browser.download.DOWNLOAD_CANCEL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v6, "org.chromium.chrome.browser.download.DOWNLOAD_PAUSE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    goto :goto_0

    :sswitch_2
    const-string/jumbo v6, "org.chromium.chrome.browser.download.DOWNLOAD_RESUME"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 340
    :pswitch_0
    iget v0, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService$1;->val$downloadId:I

    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->cancelDownload(I)V

    .line 341
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService$1;->this$0:Lorg/chromium/chrome/browser/download/DownloadNotificationService;

    iget v1, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService$1;->val$downloadId:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->cancelNotification(I)V

    goto :goto_1

    .line 344
    :pswitch_1
    iget v0, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService$1;->val$downloadId:I

    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->pauseDownload(I)V

    goto :goto_1

    .line 347
    :pswitch_2
    iget v0, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService$1;->val$downloadId:I

    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService$1;->val$fileName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->resumeDownload(ILjava/lang/String;)V

    .line 348
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService$1;->this$0:Lorg/chromium/chrome/browser/download/DownloadNotificationService;

    iget v1, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService$1;->val$downloadId:I

    iget-object v2, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService$1;->val$fileName:Ljava/lang/String;

    move-wide v6, v4

    invoke-virtual/range {v0 .. v8}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->notifyDownloadProgress(ILjava/lang/String;IJJZ)V

    goto :goto_1

    .line 335
    :sswitch_data_0
    .sparse-switch
        -0x42732667 -> :sswitch_1
        -0x222410e9 -> :sswitch_0
        -0x8507736 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
