.class Lorg/chromium/chrome/browser/download/OMADownloadHandler$2;
.super Ljava/lang/Object;
.source "OMADownloadHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/download/OMADownloadHandler;

.field final synthetic val$downloadInfo:Lorg/chromium/content/browser/DownloadInfo;

.field final synthetic val$omaInfo:Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;

.field final synthetic val$statusMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/download/OMADownloadHandler;Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$2;->this$0:Lorg/chromium/chrome/browser/download/OMADownloadHandler;

    iput-object p2, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$2;->val$omaInfo:Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;

    iput-object p3, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$2;->val$downloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    iput-object p4, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$2;->val$statusMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 421
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 422
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$2;->this$0:Lorg/chromium/chrome/browser/download/OMADownloadHandler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$2;->val$omaInfo:Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;

    iget-object v2, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$2;->val$downloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    iget-object v3, p0, Lorg/chromium/chrome/browser/download/OMADownloadHandler$2;->val$statusMessage:Ljava/lang/String;

    # invokes: Lorg/chromium/chrome/browser/download/OMADownloadHandler;->sendInstallNotificationAndNextStep(Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/download/OMADownloadHandler;->access$500(Lorg/chromium/chrome/browser/download/OMADownloadHandler;Lorg/chromium/chrome/browser/download/OMADownloadHandler$OMAInfo;Lorg/chromium/content/browser/DownloadInfo;Ljava/lang/String;)V

    .line 424
    :cond_0
    return-void
.end method
