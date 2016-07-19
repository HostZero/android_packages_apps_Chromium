.class Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAParserTask;
.super Landroid/os/AsyncTask;
.source "OMADownloadHandler.java"


# instance fields
.field private final mDownloadId:J

.field private final mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

.field final synthetic this$0:Lorg/chromium/chrome/browser/download/OMADownloadHandler;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/download/OMADownloadHandler;Lorg/chromium/content/browser/DownloadInfo;J)V
    .locals 1

    .prologue
    .line 216
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAParserTask;->this$0:Lorg/chromium/chrome/browser/download/OMADownloadHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 217
    iput-object p2, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAParserTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    .line 218
    iput-wide p3, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAParserTask;->mDownloadId:J

    .line 219
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 213
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAParserTask;->doInBackground([Ljava/lang/Void;)Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;
    .locals 6

    .prologue
    .line 223
    const/4 v1, 0x0

    .line 224
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAParserTask;->this$0:Lorg/chromium/chrome/browser/download/OMADownloadHandler;

    # getter for: Lorg/chromium/chrome/browser/download/OMADownloadHandler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->access$000(Lorg/chromium/chrome/browser/download/OMADownloadHandler;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "download"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 227
    :try_start_0
    iget-wide v2, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAParserTask;->mDownloadId:J

    invoke-virtual {v0, v2, v3}, Landroid/app/DownloadManager;->openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 228
    if-eqz v2, :cond_0

    .line 229
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v3}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->parseDownloadDescriptor(Ljava/io/InputStream;)Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;

    move-result-object v1

    .line 230
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 237
    :cond_0
    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    iget-wide v4, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAParserTask;->mDownloadId:J

    aput-wide v4, v2, v3

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager;->remove([J)I

    .line 238
    return-object v1

    .line 232
    :catch_0
    move-exception v2

    .line 233
    const-string/jumbo v3, "OMADownloadHandler"

    const-string/jumbo v4, "File not found."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 234
    :catch_1
    move-exception v2

    .line 235
    const-string/jumbo v3, "OMADownloadHandler"

    const-string/jumbo v4, "Cannot read file."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 213
    check-cast p1, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAParserTask;->onPostExecute(Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;)V

    return-void
.end method

.method protected onPostExecute(Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;)V
    .locals 4

    .prologue
    .line 243
    if-nez p1, :cond_0

    .line 270
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;->getTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->getSize(Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const-string/jumbo v0, "objectURI"

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;->isValueEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAParserTask;->this$0:Lorg/chromium/chrome/browser/download/OMADownloadHandler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAParserTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    const-string/jumbo v2, "906 Invalid descriptor \n\r"

    # invokes: Lorg/chromium/chrome/browser/download/OMADownloadHandler;->sendNotification(Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;)Z
    invoke-static {v0, p1, v1, v2}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->access$100(Lorg/chromium/chrome/browser/download/OMADownloadHandler;Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;)Z

    goto :goto_0

    .line 251
    :cond_2
    const-string/jumbo v0, "DDVersion"

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_3

    const-string/jumbo v1, "1."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 253
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAParserTask;->this$0:Lorg/chromium/chrome/browser/download/OMADownloadHandler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAParserTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    const-string/jumbo v2, "951 Invalid DDVersion \n\r"

    # invokes: Lorg/chromium/chrome/browser/download/OMADownloadHandler;->sendNotification(Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;)Z
    invoke-static {v0, p1, v1, v2}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->access$100(Lorg/chromium/chrome/browser/download/OMADownloadHandler;Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;)Z

    goto :goto_0

    .line 257
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    invoke-static {p1}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->getSize(Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 258
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAParserTask;->this$0:Lorg/chromium/chrome/browser/download/OMADownloadHandler;

    sget v1, Lorg/chromium/chrome/R$string;->oma_download_insufficient_memory:I

    iget-object v2, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAParserTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    const-string/jumbo v3, "901 insufficient memory \n\r"

    # invokes: Lorg/chromium/chrome/browser/download/OMADownloadHandler;->showDownloadWarningDialog(ILorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;)V
    invoke-static {v0, v1, p1, v2, v3}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->access$200(Lorg/chromium/chrome/browser/download/OMADownloadHandler;ILorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAParserTask;->this$0:Lorg/chromium/chrome/browser/download/OMADownloadHandler;

    # getter for: Lorg/chromium/chrome/browser/download/OMADownloadHandler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->access$000(Lorg/chromium/chrome/browser/download/OMADownloadHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->getOpennableType(Landroid/content/pm/PackageManager;Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 264
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAParserTask;->this$0:Lorg/chromium/chrome/browser/download/OMADownloadHandler;

    sget v1, Lorg/chromium/chrome/R$string;->oma_download_non_acceptable_content:I

    iget-object v2, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAParserTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    const-string/jumbo v3, "953 Non-Acceptable Content \n\r"

    # invokes: Lorg/chromium/chrome/browser/download/OMADownloadHandler;->showDownloadWarningDialog(ILorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;)V
    invoke-static {v0, v1, p1, v2, v3}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->access$200(Lorg/chromium/chrome/browser/download/OMADownloadHandler;ILorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :cond_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAParserTask;->this$0:Lorg/chromium/chrome/browser/download/OMADownloadHandler;

    iget-wide v2, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAParserTask;->mDownloadId:J

    iget-object v1, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAParserTask;->mDownloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    # invokes: Lorg/chromium/chrome/browser/download/OMADownloadHandler;->showOMAInfoDialog(JLorg/chromium/content/browser/DownloadInfo;Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;)V
    invoke-static {v0, v2, v3, v1, p1}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->access$300(Lorg/chromium/chrome/browser/download/OMADownloadHandler;JLorg/chromium/content/browser/DownloadInfo;Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;)V

    goto/16 :goto_0
.end method
