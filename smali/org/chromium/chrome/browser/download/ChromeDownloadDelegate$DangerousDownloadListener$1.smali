.class Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener$1;
.super Landroid/os/AsyncTask;
.source "ChromeDownloadDelegate.java"


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;

.field final synthetic val$info:Lorg/chromium/content/browser/DownloadInfo;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;Lorg/chromium/content/browser/DownloadInfo;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener$1;->this$1:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;

    iput-object p2, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener$1;->val$info:Lorg/chromium/content/browser/DownloadInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 3

    .prologue
    .line 73
    # invokes: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->getDownloadDirectoryNameAndFullPath()Landroid/util/Pair;
    invoke-static {}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$500()Landroid/util/Pair;

    move-result-object v1

    .line 74
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 75
    iget-object v2, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener$1;->val$info:Lorg/chromium/content/browser/DownloadInfo;

    invoke-virtual {v2}, Lorg/chromium/content/browser/DownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    # invokes: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->doesFileAlreadyExists(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$600(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener$1;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 4

    .prologue
    .line 81
    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 84
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 85
    iget-object v2, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener$1;->this$1:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;

    iget-object v2, v2, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    iget-object v3, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener$1;->val$info:Lorg/chromium/content/browser/DownloadInfo;

    # invokes: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->launchDownloadInfoBar(Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v0, v1}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$700(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener$1;->this$1:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;

    iget-object v0, v0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    iget-object v1, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener$1;->val$info:Lorg/chromium/content/browser/DownloadInfo;

    # invokes: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->enqueueDownloadManagerRequest(Lorg/chromium/content/browser/DownloadInfo;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$800(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;Lorg/chromium/content/browser/DownloadInfo;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 70
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener$1;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
