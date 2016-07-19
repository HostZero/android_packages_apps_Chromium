.class Lorg/chromium/chrome/browser/download/DownloadManagerService$2;
.super Landroid/os/AsyncTask;
.source "DownloadManagerService.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

.field final synthetic val$downloadId:J


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/download/DownloadManagerService;J)V
    .locals 0

    .prologue
    .line 943
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$2;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    iput-wide p2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$2;->val$downloadId:J

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 946
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$2;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    # getter for: Lorg/chromium/chrome/browser/download/DownloadManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->access$100(Lorg/chromium/chrome/browser/download/DownloadManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-wide v2, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$2;->val$downloadId:J

    # invokes: Lorg/chromium/chrome/browser/download/DownloadManagerService;->getLaunchIntentFromDownloadId(Landroid/content/Context;J)Landroid/content/Intent;
    invoke-static {v0, v2, v3}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->access$900(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 943
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService$2;->doInBackground([Ljava/lang/Void;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 951
    if-eqz p1, :cond_0

    .line 952
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadManagerService$2;->this$0:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    # getter for: Lorg/chromium/chrome/browser/download/DownloadManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->access$100(Lorg/chromium/chrome/browser/download/DownloadManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->openIntent(Landroid/content/Context;Landroid/content/Intent;Z)Z

    .line 954
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 943
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService$2;->onPostExecute(Landroid/content/Intent;)V

    return-void
.end method
