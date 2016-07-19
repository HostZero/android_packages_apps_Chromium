.class Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;
.super Landroid/os/AsyncTask;
.source "DownloadManagerService.java"


# instance fields
.field private final mDownloadId:J

.field private mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

.field private mFailureReason:I

.field private final mInstallNotifyURI:Ljava/lang/String;

.field final synthetic this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/download/DownloadManagerService;JLjava/lang/String;)V
    .locals 2

    .prologue
    .line 282
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 283
    iput-wide p2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;->mDownloadId:J

    .line 284
    iput-object p4, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;->mInstallNotifyURI:Ljava/lang/String;

    .line 285
    # getter for: Lorg/chromium/chrome/browser/download/DownloadManagerService;->mPendingDownloads:Landroid/util/LongSparseArray;
    invoke-static {p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->access$000(Lorg/chromium/chrome/browser/download/DownloadManagerService;)Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/DownloadInfo;

    iput-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    .line 286
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 12

    .prologue
    const/16 v4, 0x10

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 290
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    # getter for: Lorg/chromium/chrome/browser/download/DownloadManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->access$100(Lorg/chromium/chrome/browser/download/DownloadManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 292
    new-instance v1, Landroid/app/DownloadManager$Query;

    invoke-direct {v1}, Landroid/app/DownloadManager$Query;-><init>()V

    new-array v2, v11, [J

    iget-wide v6, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;->mDownloadId:J

    aput-wide v6, v2, v10

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v5

    .line 293
    const-string/jumbo v1, "status"

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 294
    const-string/jumbo v2, "reason"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 295
    const-string/jumbo v2, "local_filename"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 297
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 298
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 299
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 300
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v1, 0x0

    .line 302
    :goto_0
    iget-object v7, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    if-nez v7, :cond_0

    .line 304
    new-instance v7, Lorg/chromium/content/browser/DownloadInfo$Builder;

    invoke-direct {v7}, Lorg/chromium/content/browser/DownloadInfo$Builder;-><init>()V

    invoke-virtual {v7, v1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setFileName(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v7

    iget-wide v8, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;->mDownloadId:J

    long-to-int v8, v8

    invoke-virtual {v7, v8}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setDownloadId(I)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v7

    const-string/jumbo v8, "description"

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setDescription(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v7

    const-string/jumbo v8, "media_type"

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setMimeType(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v7

    const-string/jumbo v8, "total_size"

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setContentLength(J)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/DownloadInfo$Builder;->build()Lorg/chromium/content/browser/DownloadInfo;

    move-result-object v7

    iput-object v7, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    .line 315
    :cond_0
    const/16 v7, 0x8

    if-ne v3, v7, :cond_2

    .line 316
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    invoke-static {v0}, Lorg/chromium/content/browser/DownloadInfo$Builder;->fromDownloadInfo(Lorg/chromium/content/browser/DownloadInfo;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setFileName(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/DownloadInfo$Builder;->build()Lorg/chromium/content/browser/DownloadInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    .line 319
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    # getter for: Lorg/chromium/chrome/browser/download/DownloadManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->access$100(Lorg/chromium/chrome/browser/download/DownloadManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-wide v6, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;->mDownloadId:J

    # invokes: Lorg/chromium/chrome/browser/download/DownloadManagerService;->canResolveDownloadItem(Landroid/content/Context;J)Z
    invoke-static {v0, v6, v7}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->access$200(Landroid/content/Context;J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move v1, v3

    .line 325
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 326
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 301
    :cond_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 320
    :cond_2
    if-ne v3, v4, :cond_3

    .line 321
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;->mFailureReason:I

    .line 322
    new-array v1, v11, [J

    iget-wide v6, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;->mDownloadId:J

    aput-wide v6, v1, v10

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->remove([J)I

    :cond_3
    move-object v0, v2

    move v1, v3

    goto :goto_1

    :cond_4
    move-object v0, v2

    move v1, v4

    goto :goto_1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 275
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 6

    .prologue
    .line 331
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 332
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    # getter for: Lorg/chromium/chrome/browser/download/DownloadManagerService;->mOMADownloadHandler:Lorg/chromium/chrome/browser/download/OMADownloadHandler;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->access$300(Lorg/chromium/chrome/browser/download/DownloadManagerService;)Lorg/chromium/chrome/browser/download/OMADownloadHandler;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    iget-object v2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;->mInstallNotifyURI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->onDownloadCompleted(Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    iget-wide v2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;->mDownloadId:J

    # invokes: Lorg/chromium/chrome/browser/download/DownloadManagerService;->removeOMADownloadFromSharedPrefs(J)V
    invoke-static {v0, v2, v3}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->access$400(Lorg/chromium/chrome/browser/download/DownloadManagerService;J)V

    .line 334
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    # getter for: Lorg/chromium/chrome/browser/download/DownloadManagerService;->mDownloadSnackbarController:Lorg/chromium/chrome/browser/download/DownloadSnackbarController;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->access$500(Lorg/chromium/chrome/browser/download/DownloadManagerService;)Lorg/chromium/chrome/browser/download/DownloadSnackbarController;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    iget-wide v4, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;->mDownloadId:J

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v2, v4, v5, v0}, Lorg/chromium/chrome/browser/download/DownloadSnackbarController;->onDownloadSucceeded(Lorg/chromium/content/browser/DownloadInfo;JZ)V

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 337
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    # getter for: Lorg/chromium/chrome/browser/download/DownloadManagerService;->mOMADownloadHandler:Lorg/chromium/chrome/browser/download/OMADownloadHandler;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->access$300(Lorg/chromium/chrome/browser/download/DownloadManagerService;)Lorg/chromium/chrome/browser/download/OMADownloadHandler;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    iget v2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;->mFailureReason:I

    iget-object v3, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;->mInstallNotifyURI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->onDownloadFailed(Lorg/chromium/content/browser/DownloadInfo;ILjava/lang/String;)V

    .line 339
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    iget-wide v2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;->mDownloadId:J

    # invokes: Lorg/chromium/chrome/browser/download/DownloadManagerService;->removeOMADownloadFromSharedPrefs(J)V
    invoke-static {v0, v2, v3}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->access$400(Lorg/chromium/chrome/browser/download/DownloadManagerService;J)V

    .line 340
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    invoke-virtual {v0}, Lorg/chromium/content/browser/DownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 341
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    iget v2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;->mFailureReason:I

    invoke-virtual {v1, v0, v2}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->onDownloadFailed(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 275
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService$ClearPendingOMADownloadTask;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
