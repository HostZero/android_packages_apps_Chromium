.class Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadCompletionTask;
.super Landroid/os/AsyncTask;
.source "DownloadManagerService.java"


# instance fields
.field private final mDownloadId:J

.field private final mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

.field private mFailureReason:I

.field final synthetic this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/download/DownloadManagerService;Lorg/chromium/content/browser/DownloadInfo;J)V
    .locals 1

    .prologue
    .line 650
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadCompletionTask;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 651
    iput-object p2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadCompletionTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    .line 652
    iput-wide p3, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadCompletionTask;->mDownloadId:J

    .line 653
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 657
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadCompletionTask;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    # getter for: Lorg/chromium/chrome/browser/download/DownloadManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->access$100(Lorg/chromium/chrome/browser/download/DownloadManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "download"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 659
    new-instance v3, Landroid/app/DownloadManager$Query;

    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    new-array v4, v2, [J

    iget-wide v6, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadCompletionTask;->mDownloadId:J

    aput-wide v6, v4, v1

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v4

    .line 660
    const/4 v0, -0x1

    .line 662
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 663
    const-string/jumbo v0, "status"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 664
    const/16 v0, 0x8

    if-ne v3, v0, :cond_3

    .line 665
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadCompletionTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->isOMADownloadDescription(Lorg/chromium/content/browser/DownloadInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadCompletionTask;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    # getter for: Lorg/chromium/chrome/browser/download/DownloadManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->access$100(Lorg/chromium/chrome/browser/download/DownloadManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-wide v6, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadCompletionTask;->mDownloadId:J

    # invokes: Lorg/chromium/chrome/browser/download/DownloadManagerService;->canResolveDownloadItem(Landroid/content/Context;J)Z
    invoke-static {v0, v6, v7}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->access$200(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    move v1, v0

    move v0, v3

    .line 671
    :cond_1
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 672
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_2
    move v0, v1

    .line 665
    goto :goto_0

    .line 667
    :cond_3
    const/16 v0, 0x10

    if-ne v3, v0, :cond_4

    .line 668
    const-string/jumbo v0, "reason"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadCompletionTask;->mFailureReason:I

    :cond_4
    move v0, v3

    goto :goto_1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 645
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadCompletionTask;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 6

    .prologue
    .line 677
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 692
    :goto_0
    return-void

    .line 679
    :sswitch_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadCompletionTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->shouldOpenAfterDownload(Lorg/chromium/content/browser/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadCompletionTask;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadCompletionTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    iget-wide v2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadCompletionTask;->mDownloadId:J

    # invokes: Lorg/chromium/chrome/browser/download/DownloadManagerService;->handleAutoOpenAfterDownload(Lorg/chromium/content/browser/DownloadInfo;J)V
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->access$700(Lorg/chromium/chrome/browser/download/DownloadManagerService;Lorg/chromium/content/browser/DownloadInfo;J)V

    goto :goto_0

    .line 682
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadCompletionTask;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    # getter for: Lorg/chromium/chrome/browser/download/DownloadManagerService;->mDownloadSnackbarController:Lorg/chromium/chrome/browser/download/DownloadSnackbarController;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->access$500(Lorg/chromium/chrome/browser/download/DownloadManagerService;)Lorg/chromium/chrome/browser/download/DownloadSnackbarController;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadCompletionTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    iget-wide v4, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadCompletionTask;->mDownloadId:J

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v2, v4, v5, v0}, Lorg/chromium/chrome/browser/download/DownloadSnackbarController;->onDownloadSucceeded(Lorg/chromium/content/browser/DownloadInfo;JZ)V

    goto :goto_0

    .line 687
    :sswitch_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadCompletionTask;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadCompletionTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    invoke-virtual {v1}, Lorg/chromium/content/browser/DownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadCompletionTask;->mFailureReason:I

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->onDownloadFailed(Ljava/lang/String;I)V

    goto :goto_0

    .line 677
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 645
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService$DownloadCompletionTask;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
