.class Lorg/chromium/chrome/browser/download/SystemDownloadNotifier$1;
.super Ljava/lang/Object;
.source "SystemDownloadNotifier.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier$1;->this$0:Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier$1;->this$0:Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;

    # getter for: Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->access$000(Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 76
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier$1;->this$0:Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;

    check-cast p2, Lorg/chromium/chrome/browser/download/DownloadNotificationService$LocalBinder;

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/download/DownloadNotificationService$LocalBinder;->getService()Lorg/chromium/chrome/browser/download/DownloadNotificationService;

    move-result-object v2

    # setter for: Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mBoundService:Lorg/chromium/chrome/browser/download/DownloadNotificationService;
    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->access$102(Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;Lorg/chromium/chrome/browser/download/DownloadNotificationService;)Lorg/chromium/chrome/browser/download/DownloadNotificationService;

    .line 79
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier$1;->this$0:Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->handlePendingNotifications()V

    .line 80
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier$1;->this$0:Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;

    # getter for: Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->access$000(Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 86
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier$1;->this$0:Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;

    const/4 v2, 0x0

    # setter for: Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mBoundService:Lorg/chromium/chrome/browser/download/DownloadNotificationService;
    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->access$102(Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;Lorg/chromium/chrome/browser/download/DownloadNotificationService;)Lorg/chromium/chrome/browser/download/DownloadNotificationService;

    .line 87
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier$1;->this$0:Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;

    const/4 v2, 0x0

    # setter for: Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mServiceStarted:Z
    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->access$202(Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;Z)Z

    .line 88
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
