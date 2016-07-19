.class Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;
.super Landroid/os/AsyncTask;
.source "DownloadManagerService.java"


# instance fields
.field private mDownloadId:J

.field private mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

.field private mFailureReason:I

.field final synthetic this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/download/DownloadManagerService;Lorg/chromium/content/browser/DownloadInfo;)V
    .locals 0

    .prologue
    .line 720
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 721
    iput-object p2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    .line 722
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x3e9

    const/4 v5, 0x0

    .line 726
    aget-object v0, p1, v5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 727
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    invoke-virtual {v1}, Lorg/chromium/content/browser/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 730
    :try_start_0
    new-instance v2, Landroid/app/DownloadManager$Request;

    invoke-direct {v2, v1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    invoke-virtual {v1}, Lorg/chromium/content/browser/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 741
    if-eqz v0, :cond_1

    .line 744
    :try_start_1
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    iget-object v3, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    invoke-virtual {v3}, Lorg/chromium/content/browser/DownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 763
    :goto_0
    if-eqz v0, :cond_4

    .line 766
    invoke-virtual {v2}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 767
    invoke-virtual {v2, v7}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 773
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    invoke-virtual {v0}, Lorg/chromium/content/browser/DownloadInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 774
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 775
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    invoke-virtual {v0}, Lorg/chromium/content/browser/DownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 777
    :cond_0
    invoke-virtual {v2, v0}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 778
    const-string/jumbo v0, "Cookie"

    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    invoke-virtual {v1}, Lorg/chromium/content/browser/DownloadInfo;->getCookie()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 779
    const-string/jumbo v0, "Referer"

    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    invoke-virtual {v1}, Lorg/chromium/content/browser/DownloadInfo;->getReferer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 780
    const-string/jumbo v0, "User-Agent"

    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    invoke-virtual {v1}, Lorg/chromium/content/browser/DownloadInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 782
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    # getter for: Lorg/chromium/chrome/browser/download/DownloadManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->access$100(Lorg/chromium/chrome/browser/download/DownloadManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 785
    :try_start_2
    invoke-virtual {v0, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->mDownloadId:J
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 797
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_2
    return-object v0

    .line 732
    :catch_0
    move-exception v0

    const-string/jumbo v0, "DownloadService"

    const-string/jumbo v1, "Cannot download non http or https scheme"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 735
    const/16 v0, 0x3ea

    iput v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->mFailureReason:I

    .line 736
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    .line 747
    :cond_1
    :try_start_3
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    # getter for: Lorg/chromium/chrome/browser/download/DownloadManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->access$100(Lorg/chromium/chrome/browser/download/DownloadManagerService;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "Download"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 748
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 749
    :cond_2
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    invoke-virtual {v4}, Lorg/chromium/content/browser/DownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 750
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 758
    :catch_1
    move-exception v0

    const-string/jumbo v0, "DownloadService"

    const-string/jumbo v1, "Cannot create download directory"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 759
    iput v6, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->mFailureReason:I

    .line 760
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    .line 752
    :cond_3
    :try_start_4
    const-string/jumbo v0, "DownloadService"

    const-string/jumbo v1, "Cannot create download directory"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 753
    const/16 v0, 0x3e9

    iput v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->mFailureReason:I

    .line 754
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    goto :goto_2

    .line 770
    :cond_4
    invoke-virtual {v2, v5}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    goto/16 :goto_1

    .line 786
    :catch_2
    move-exception v0

    .line 788
    const-string/jumbo v1, "DownloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Download failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 789
    const/16 v0, 0x3e8

    iput v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->mFailureReason:I

    .line 790
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_2

    .line 791
    :catch_3
    move-exception v0

    .line 793
    const-string/jumbo v1, "DownloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed to create target file on the external storage: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 794
    iput v6, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->mFailureReason:I

    .line 795
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_2
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 714
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    .line 802
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    # getter for: Lorg/chromium/chrome/browser/download/DownloadManagerService;->mOMADownloadHandler:Lorg/chromium/chrome/browser/download/OMADownloadHandler;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->access$300(Lorg/chromium/chrome/browser/download/DownloadManagerService;)Lorg/chromium/chrome/browser/download/OMADownloadHandler;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    invoke-virtual {v1}, Lorg/chromium/content/browser/DownloadInfo;->getDownloadId()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->isPendingOMADownload(J)Z

    move-result v0

    .line 804
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 805
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    iget-object v2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    invoke-virtual {v2}, Lorg/chromium/content/browser/DownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->mFailureReason:I

    invoke-virtual {v1, v2, v3}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->onDownloadFailed(Ljava/lang/String;I)V

    .line 806
    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    # getter for: Lorg/chromium/chrome/browser/download/DownloadManagerService;->mOMADownloadHandler:Lorg/chromium/chrome/browser/download/OMADownloadHandler;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->access$300(Lorg/chromium/chrome/browser/download/DownloadManagerService;)Lorg/chromium/chrome/browser/download/OMADownloadHandler;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->onDownloadFailed(Lorg/chromium/content/browser/DownloadInfo;ILjava/lang/String;)V

    .line 832
    :cond_0
    :goto_0
    return-void

    .line 812
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    # getter for: Lorg/chromium/chrome/browser/download/DownloadManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->access$100(Lorg/chromium/chrome/browser/download/DownloadManagerService;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->download_pending:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/chromium/ui/widget/Toast;->makeText(Landroid/content/Context;II)Lorg/chromium/ui/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/ui/widget/Toast;->show()V

    .line 813
    if-eqz v0, :cond_2

    .line 816
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    # getter for: Lorg/chromium/chrome/browser/download/DownloadManagerService;->mOMADownloadHandler:Lorg/chromium/chrome/browser/download/OMADownloadHandler;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->access$300(Lorg/chromium/chrome/browser/download/DownloadManagerService;)Lorg/chromium/chrome/browser/download/OMADownloadHandler;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    iget-wide v2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->mDownloadId:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->updateDownloadInfo(Lorg/chromium/content/browser/DownloadInfo;J)Lorg/chromium/content/browser/DownloadInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    .line 821
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    # getter for: Lorg/chromium/chrome/browser/download/DownloadManagerService;->mOMADownloadHandler:Lorg/chromium/chrome/browser/download/OMADownloadHandler;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->access$300(Lorg/chromium/chrome/browser/download/DownloadManagerService;)Lorg/chromium/chrome/browser/download/OMADownloadHandler;

    move-result-object v0

    iget-wide v2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->mDownloadId:J

    invoke-virtual {v0, v2, v3}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->getInstallNotifyInfo(J)Ljava/lang/String;

    move-result-object v0

    .line 822
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 823
    new-instance v1, Lorg/chromium/chrome/browser/download/DownloadManagerService$OMAEntry;

    iget-wide v2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->mDownloadId:J

    invoke-direct {v1, v2, v3, v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService$OMAEntry;-><init>(JLjava/lang/String;)V

    .line 824
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService$OMAEntry;->generateSharedPrefsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->addOMADownloadToSharedPrefs(Ljava/lang/String;)V

    .line 827
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    # getter for: Lorg/chromium/chrome/browser/download/DownloadManagerService;->mPendingDownloads:Landroid/util/LongSparseArray;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->access$000(Lorg/chromium/chrome/browser/download/DownloadManagerService;)Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 828
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    # getter for: Lorg/chromium/chrome/browser/download/DownloadManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->access$100(Lorg/chromium/chrome/browser/download/DownloadManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 831
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    # getter for: Lorg/chromium/chrome/browser/download/DownloadManagerService;->mPendingDownloads:Landroid/util/LongSparseArray;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->access$000(Lorg/chromium/chrome/browser/download/DownloadManagerService;)Landroid/util/LongSparseArray;

    move-result-object v0

    iget-wide v2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->mDownloadId:J

    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 714
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService$EnqueueDownloadRequestTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
