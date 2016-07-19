.class Lorg/chromium/chrome/browser/download/DownloadManagerService$1;
.super Ljava/lang/Object;
.source "DownloadManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/download/DownloadManagerService;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$1;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 546
    new-instance v0, Lorg/chromium/chrome/browser/download/DownloadManagerService$1$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/download/DownloadManagerService$1$1;-><init>(Lorg/chromium/chrome/browser/download/DownloadManagerService$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/download/DownloadManagerService$1$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 576
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$1;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    # getter for: Lorg/chromium/chrome/browser/download/DownloadManagerService;->mIsUIUpdateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->access$800(Lorg/chromium/chrome/browser/download/DownloadManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 577
    return-void
.end method
