.class Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$2;
.super Landroid/os/AsyncTask;
.source "ChromeDownloadDelegate.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

.field final synthetic val$downloadInfo:Lorg/chromium/content/browser/DownloadInfo;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$newMimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;Ljava/lang/String;Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$2;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    iput-object p2, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$2;->val$fileName:Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$2;->val$downloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    iput-object p4, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$2;->val$newMimeType:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 188
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$2;->doInBackground([Ljava/lang/Void;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/Object;
    .locals 6

    .prologue
    .line 192
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 193
    # invokes: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->getDownloadDirectoryNameAndFullPath()Landroid/util/Pair;
    invoke-static {}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$500()Landroid/util/Pair;

    move-result-object v1

    .line 194
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 195
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 196
    iget-object v3, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$2;->val$fileName:Ljava/lang/String;

    # invokes: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->doesFileAlreadyExists(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v1, v3}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$600(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 198
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v0, v4, v2

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v0

    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 188
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$2;->onPostExecute([Ljava/lang/Object;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 203
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    .line 204
    aget-object v1, p1, v6

    check-cast v1, Ljava/lang/String;

    .line 205
    const/4 v2, 0x2

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    .line 206
    const/4 v3, 0x3

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/Boolean;

    .line 207
    iget-object v4, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$2;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    iget-object v5, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$2;->val$fileName:Ljava/lang/String;

    # invokes: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->checkExternalStorageAndNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v4, v5, v2, v0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$1200(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$2;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    iget-object v4, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$2;->val$downloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    invoke-virtual {v0, v4}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->sanitizeDownloadUrl(Lorg/chromium/content/browser/DownloadInfo;)Ljava/lang/String;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_0

    .line 213
    iget-object v4, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$2;->val$downloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    invoke-static {v4}, Lorg/chromium/content/browser/DownloadInfo$Builder;->fromDownloadInfo(Lorg/chromium/content/browser/DownloadInfo;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setUrl(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v4

    iget-object v5, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$2;->val$newMimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setMimeType(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setDescription(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v0

    iget-object v4, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$2;->val$fileName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setFileName(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setIsGETRequest(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/DownloadInfo$Builder;->build()Lorg/chromium/content/browser/DownloadInfo;

    move-result-object v0

    .line 224
    const-string/jumbo v4, "application/x-shockwave-flash"

    invoke-virtual {v0}, Lorg/chromium/content/browser/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 226
    iget-object v4, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$2;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    iget-object v5, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$2;->val$fileName:Ljava/lang/String;

    iget-object v6, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$2;->val$newMimeType:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->isDangerousFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 227
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$2;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    # invokes: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->confirmDangerousDownload(Lorg/chromium/content/browser/DownloadInfo;)V
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$1300(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;Lorg/chromium/content/browser/DownloadInfo;)V

    goto :goto_0

    .line 230
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 231
    iget-object v3, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$2;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    # invokes: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->launchDownloadInfoBar(Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v0, v1, v2}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$700(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_3
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$2;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    # invokes: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->enqueueDownloadManagerRequest(Lorg/chromium/content/browser/DownloadInfo;)V
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$800(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;Lorg/chromium/content/browser/DownloadInfo;)V

    goto :goto_0
.end method
