.class public Lorg/chromium/chrome/browser/download/DownloadBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private openDownload(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 46
    const-string/jumbo v0, "extra_click_download_ids"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 49
    :cond_0
    invoke-static {p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->openDownloadsPage(Landroid/content/Context;)V

    .line 69
    :goto_0
    return-void

    .line 52
    :cond_1
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    .line 53
    const-string/jumbo v0, "download"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 55
    invoke-virtual {v0, v2, v3}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    move-result-object v1

    .line 56
    if-nez v1, :cond_2

    .line 58
    invoke-static {p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->openDownloadsPage(Landroid/content/Context;)V

    goto :goto_0

    .line 60
    :cond_2
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0, v2, v3}, Landroid/app/DownloadManager;->getMimeTypeForDownloadedFile(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const/high16 v0, 0x10000000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 64
    :try_start_0
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    invoke-static {p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->openDownloadsPage(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private performDownloadOperation(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 78
    invoke-static {p2}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->isDownloadOperationIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 80
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lorg/chromium/chrome/browser/download/DownloadNotificationService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 84
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 26
    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 38
    :goto_1
    return-void

    .line 26
    :sswitch_0
    const-string/jumbo v2, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "org.chromium.chrome.browser.download.DOWNLOAD_RESUME"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "org.chromium.chrome.browser.download.DOWNLOAD_CANCEL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "org.chromium.chrome.browser.download.DOWNLOAD_PAUSE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 28
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/download/DownloadBroadcastReceiver;->openDownload(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 33
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/download/DownloadBroadcastReceiver;->performDownloadOperation(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 26
    :sswitch_data_0
    .sparse-switch
        -0x6cf7d69b -> :sswitch_0
        -0x42732667 -> :sswitch_3
        -0x222410e9 -> :sswitch_2
        -0x8507736 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
