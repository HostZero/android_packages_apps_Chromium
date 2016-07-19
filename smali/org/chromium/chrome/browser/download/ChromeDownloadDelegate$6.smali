.class Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$6;
.super Landroid/os/AsyncTask;
.source "ChromeDownloadDelegate.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

.field final synthetic val$downloadInfo:Lorg/chromium/content/browser/DownloadInfo;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;Lorg/chromium/content/browser/DownloadInfo;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$6;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    iput-object p2, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$6;->val$downloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 391
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$6;->val$downloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    # invokes: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->deleteFileForOverwrite(Lorg/chromium/content/browser/DownloadInfo;)V
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$1400(Lorg/chromium/content/browser/DownloadInfo;)V

    .line 395
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 391
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$6;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$6;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    iget-object v1, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$6;->val$downloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    # invokes: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->enqueueDownloadManagerRequest(Lorg/chromium/content/browser/DownloadInfo;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$800(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;Lorg/chromium/content/browser/DownloadInfo;)V

    .line 401
    return-void
.end method
