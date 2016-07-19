.class Lorg/chromium/chrome/browser/download/OMADownloadHandler$PostStatusTask;
.super Landroid/os/AsyncTask;
.source "OMADownloadHandler.java"


# instance fields
.field private final mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

.field private final mOMAInfo:Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;

.field private final mStatusMessage:Ljava/lang/String;

.field final synthetic this$0:Lorg/chromium/chrome/browser/download/OMADownloadHandler;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/download/OMADownloadHandler;Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$PostStatusTask;->this$0:Lorg/chromium/chrome/browser/download/OMADownloadHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 657
    iput-object p2, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$PostStatusTask;->mOMAInfo:Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;

    .line 658
    iput-object p3, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$PostStatusTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    .line 659
    iput-object p4, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$PostStatusTask;->mStatusMessage:Ljava/lang/String;

    .line 660
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 664
    const/4 v1, 0x0

    .line 666
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$PostStatusTask;->mOMAInfo:Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;

    const-string/jumbo v3, "installNotifyURI"

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 667
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 668
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 669
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 670
    const-string/jumbo v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 671
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$PostStatusTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    invoke-virtual {v1}, Lorg/chromium/content/browser/DownloadInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    .line 672
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 673
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeApplication;->getBrowserUserAgent()Ljava/lang/String;

    move-result-object v1

    .line 675
    :cond_0
    const-string/jumbo v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    const-string/jumbo v1, "cookie"

    iget-object v2, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$PostStatusTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    invoke-virtual {v2}, Lorg/chromium/content/browser/DownloadInfo;->getCookie()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 680
    :try_start_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$PostStatusTask;->mStatusMessage:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 681
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 685
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 687
    :goto_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 688
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 689
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v1

    .line 699
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move-object v0, v1

    .line 701
    :goto_1
    return-object v0

    .line 682
    :catch_0
    move-exception v1

    .line 683
    :try_start_4
    const-string/jumbo v3, "PostStatusTask"

    const-string/jumbo v4, "Cannot write status message."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 685
    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    .line 692
    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 693
    :goto_2
    :try_start_6
    const-string/jumbo v2, "PostStatusTask"

    const-string/jumbo v3, "Invalid notification URL."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 699
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 701
    :cond_3
    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 685
    :catchall_0
    move-exception v1

    :try_start_7
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    throw v1
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 694
    :catch_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 695
    :goto_4
    :try_start_8
    const-string/jumbo v2, "PostStatusTask"

    const-string/jumbo v3, "Cannot connect to server."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 699
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    .line 691
    :cond_4
    const/4 v1, 0x0

    :try_start_9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result-object v1

    .line 699
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    move-object v0, v1

    goto :goto_1

    .line 696
    :catch_3
    move-exception v0

    .line 697
    :goto_5
    :try_start_a
    const-string/jumbo v2, "PostStatusTask"

    const-string/jumbo v3, "Cannot connect to server."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 699
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_6
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v0

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_6

    .line 696
    :catch_4
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_5

    .line 694
    :catch_5
    move-exception v0

    goto :goto_4

    .line 692
    :catch_6
    move-exception v0

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 649
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$PostStatusTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 706
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$PostStatusTask;->this$0:Lorg/chromium/chrome/browser/download/OMADownloadHandler;

    # getter for: Lorg/chromium/chrome/browser/download/OMADownloadHandler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->access$000(Lorg/chromium/chrome/browser/download/OMADownloadHandler;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 708
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 709
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$PostStatusTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    invoke-virtual {v1}, Lorg/chromium/content/browser/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 710
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 712
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 713
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 714
    new-instance v5, Ljava/io/File;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v5, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 716
    invoke-virtual {v2, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 717
    iget-object v2, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$PostStatusTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    invoke-virtual {v2}, Lorg/chromium/content/browser/DownloadInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$PostStatusTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    invoke-virtual {v4}, Lorg/chromium/content/browser/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$PostStatusTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    invoke-virtual {v6}, Lorg/chromium/content/browser/DownloadInfo;->getContentLength()J

    move-result-wide v6

    invoke-virtual/range {v0 .. v8}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J

    .line 728
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$PostStatusTask;->this$0:Lorg/chromium/chrome/browser/download/OMADownloadHandler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$PostStatusTask;->mOMAInfo:Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;

    # invokes: Lorg/chromium/chrome/browser/download/OMADownloadHandler;->showNextUrlDialog(Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->access$600(Lorg/chromium/chrome/browser/download/OMADownloadHandler;Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;)V

    .line 733
    :cond_1
    :goto_1
    return-void

    .line 721
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 722
    const-string/jumbo v0, "PostStatusTask"

    const-string/jumbo v1, "Failed to rename the file."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 725
    :cond_3
    const-string/jumbo v0, "PostStatusTask"

    const-string/jumbo v1, "Failed to rename and delete the file."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 729
    :cond_4
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$PostStatusTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    invoke-virtual {v1}, Lorg/chromium/content/browser/DownloadInfo;->getDownloadId()I

    move-result v1

    if-lez v1, :cond_1

    .line 731
    new-array v1, v8, [J

    iget-object v2, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$PostStatusTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    invoke-virtual {v2}, Lorg/chromium/content/browser/DownloadInfo;->getDownloadId()I

    move-result v2

    int-to-long v4, v2

    aput-wide v4, v1, v3

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->remove([J)I

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 649
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$PostStatusTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
