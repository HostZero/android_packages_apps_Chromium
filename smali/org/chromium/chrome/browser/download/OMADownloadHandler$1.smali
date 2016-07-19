.class Lorg/chromium/chrome/browser/download/OMADownloadHandler$1;
.super Ljava/lang/Object;
.source "OMADownloadHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/download/OMADownloadHandler;

.field final synthetic val$downloadId:J

.field final synthetic val$downloadInfo:Lorg/chromium/content/browser/DownloadInfo;

.field final synthetic val$omaInfo:Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/download/OMADownloadHandler;JLorg/chromium/content/browser/DownloadInfo;Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$1;->this$0:Lorg/chromium/chrome/browser/download/OMADownloadHandler;

    iput-wide p2, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$1;->val$downloadId:J

    iput-object p4, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$1;->val$downloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    iput-object p5, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$1;->val$omaInfo:Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 388
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 389
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$1;->this$0:Lorg/chromium/chrome/browser/download/OMADownloadHandler;

    iget-wide v2, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$1;->val$downloadId:J

    iget-object v1, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$1;->val$downloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    iget-object v4, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$1;->val$omaInfo:Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;

    # invokes: Lorg/chromium/chrome/browser/download/OMADownloadHandler;->downloadOMAContent(JLorg/chromium/content/browser/DownloadInfo;Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;)V
    invoke-static {v0, v2, v3, v1, v4}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->access$400(Lorg/chromium/chrome/browser/download/OMADownloadHandler;JLorg/chromium/content/browser/DownloadInfo;Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;)V

    .line 393
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$1;->this$0:Lorg/chromium/chrome/browser/download/OMADownloadHandler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$1;->val$omaInfo:Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;

    iget-object v2, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$1;->val$downloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    const-string/jumbo v3, "902 User Cancelled \n\r"

    # invokes: Lorg/chromium/chrome/browser/download/OMADownloadHandler;->sendNotification(Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->access$100(Lorg/chromium/chrome/browser/download/OMADownloadHandler;Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;)Z

    goto :goto_0
.end method
