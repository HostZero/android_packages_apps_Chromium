.class Lorg/chromium/chrome/browser/download/DownloadManagerService$1$1;
.super Landroid/os/AsyncTask;
.source "DownloadManagerService.java"


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/download/DownloadManagerService$1;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/download/DownloadManagerService$1;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$1$1;->this$1:Lorg/chromium/chrome/browser/download/DownloadManagerService$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 546
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService$1$1;->doInBackground([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$1$1;->this$1:Lorg/chromium/chrome/browser/download/DownloadManagerService$1;

    iget-object v0, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService$1;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    # invokes: Lorg/chromium/chrome/browser/download/DownloadManagerService;->updateAllNotifications()Ljava/util/Map;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->access$600(Lorg/chromium/chrome/browser/download/DownloadManagerService;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 546
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService$1$1;->onPostExecute(Ljava/util/Map;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Map;)V
    .locals 8

    .prologue
    .line 557
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 558
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content/browser/DownloadInfo;

    .line 559
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 560
    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    .line 562
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$1$1;->this$1:Lorg/chromium/chrome/browser/download/DownloadManagerService$1;

    iget-object v0, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService$1;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    invoke-virtual {v1}, Lorg/chromium/content/browser/DownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->onDownloadFailed(Ljava/lang/String;I)V

    goto :goto_0

    .line 565
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 566
    if-eqz v0, :cond_1

    invoke-static {v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->shouldOpenAfterDownload(Lorg/chromium/content/browser/DownloadInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 567
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$1$1;->this$1:Lorg/chromium/chrome/browser/download/DownloadManagerService$1;

    iget-object v0, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService$1;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    # invokes: Lorg/chromium/chrome/browser/download/DownloadManagerService;->handleAutoOpenAfterDownload(Lorg/chromium/content/browser/DownloadInfo;J)V
    invoke-static {v0, v1, v4, v5}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->access$700(Lorg/chromium/chrome/browser/download/DownloadManagerService;Lorg/chromium/content/browser/DownloadInfo;J)V

    goto :goto_0

    .line 569
    :cond_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$1$1;->this$1:Lorg/chromium/chrome/browser/download/DownloadManagerService$1;

    iget-object v2, v2, Lorg/chromium/chrome/browser/download/DownloadManagerService$1;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    # getter for: Lorg/chromium/chrome/browser/download/DownloadManagerService;->mDownloadSnackbarController:Lorg/chromium/chrome/browser/download/DownloadSnackbarController;
    invoke-static {v2}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->access$500(Lorg/chromium/chrome/browser/download/DownloadManagerService;)Lorg/chromium/chrome/browser/download/DownloadSnackbarController;

    move-result-object v2

    invoke-virtual {v2, v1, v4, v5, v0}, Lorg/chromium/chrome/browser/download/DownloadSnackbarController;->onDownloadSucceeded(Lorg/chromium/content/browser/DownloadInfo;JZ)V

    goto :goto_0

    .line 574
    :cond_2
    return-void
.end method
