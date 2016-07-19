.class Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;
.super Ljava/lang/Object;
.source "ChromeDownloadDelegate.java"

# interfaces
.implements Lorg/chromium/chrome/browser/infobar/SimpleConfirmInfoBarBuilder$Listener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$1;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;-><init>(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;)V

    return-void
.end method


# virtual methods
.method public onInfoBarButtonClicked(Z)V
    .locals 2

    .prologue
    .line 58
    sget-boolean v0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    # getter for: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$000(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 59
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    # getter for: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mPendingRequest:Lorg/chromium/content/browser/DownloadInfo;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$100(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;)Lorg/chromium/content/browser/DownloadInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 104
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    # getter for: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mPendingRequest:Lorg/chromium/content/browser/DownloadInfo;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$100(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;)Lorg/chromium/content/browser/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/DownloadInfo;->hasDownloadId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 61
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    # getter for: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$000(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    # getter for: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mPendingRequest:Lorg/chromium/content/browser/DownloadInfo;
    invoke-static {v1}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$100(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;)Lorg/chromium/content/browser/DownloadInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/DownloadInfo;->getDownloadId()I

    move-result v1

    # invokes: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->nativeDangerousDownloadValidated(Ljava/lang/Object;IZ)V
    invoke-static {v0, v1, p1}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$200(Ljava/lang/Object;IZ)V

    .line 62
    if-eqz p1, :cond_2

    .line 63
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    # invokes: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->showDownloadStartNotification()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$300(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;)V

    .line 65
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    # invokes: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->closeBlankTab()Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$400(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;)Z

    .line 103
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mPendingRequest:Lorg/chromium/content/browser/DownloadInfo;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$102(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;Lorg/chromium/content/browser/DownloadInfo;)Lorg/chromium/content/browser/DownloadInfo;

    goto :goto_0

    .line 66
    :cond_4
    if-eqz p1, :cond_6

    .line 68
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    # getter for: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mPendingRequest:Lorg/chromium/content/browser/DownloadInfo;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$100(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;)Lorg/chromium/content/browser/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/DownloadInfo;->isGETRequest()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 69
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    # getter for: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mPendingRequest:Lorg/chromium/content/browser/DownloadInfo;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$100(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;)Lorg/chromium/content/browser/DownloadInfo;

    move-result-object v0

    .line 70
    new-instance v1, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener$1;

    invoke-direct {v1, p0, v0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener$1;-><init>(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;Lorg/chromium/content/browser/DownloadInfo;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 92
    :cond_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    # getter for: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mPendingRequest:Lorg/chromium/content/browser/DownloadInfo;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$100(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;)Lorg/chromium/content/browser/DownloadInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/content/browser/DownloadInfo$Builder;->fromDownloadInfo(Lorg/chromium/content/browser/DownloadInfo;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setIsSuccessful(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/DownloadInfo$Builder;->build()Lorg/chromium/content/browser/DownloadInfo;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    # getter for: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$900(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->getDownloadManagerService(Landroid/content/Context;)Lorg/chromium/chrome/browser/download/DownloadManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->onDownloadCompleted(Lorg/chromium/content/browser/DownloadInfo;)V

    goto :goto_1

    .line 99
    :cond_6
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    # getter for: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mPendingRequest:Lorg/chromium/content/browser/DownloadInfo;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$100(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;)Lorg/chromium/content/browser/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/DownloadInfo;->isGETRequest()Z

    move-result v0

    if-nez v0, :cond_3

    .line 100
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    # getter for: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mPendingRequest:Lorg/chromium/content/browser/DownloadInfo;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$100(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;)Lorg/chromium/content/browser/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    # invokes: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->discardFile(Ljava/lang/String;)V
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$1000(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onInfoBarDismissed()V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    # getter for: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mPendingRequest:Lorg/chromium/content/browser/DownloadInfo;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$100(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;)Lorg/chromium/content/browser/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    # getter for: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mPendingRequest:Lorg/chromium/content/browser/DownloadInfo;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$100(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;)Lorg/chromium/content/browser/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/DownloadInfo;->hasDownloadId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    sget-boolean v0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    # getter for: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$000(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    # getter for: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$000(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    # getter for: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mPendingRequest:Lorg/chromium/content/browser/DownloadInfo;
    invoke-static {v1}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$100(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;)Lorg/chromium/content/browser/DownloadInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/DownloadInfo;->getDownloadId()I

    move-result v1

    const/4 v2, 0x0

    # invokes: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->nativeDangerousDownloadValidated(Ljava/lang/Object;IZ)V
    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$200(Ljava/lang/Object;IZ)V

    .line 118
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mPendingRequest:Lorg/chromium/content/browser/DownloadInfo;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$102(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;Lorg/chromium/content/browser/DownloadInfo;)Lorg/chromium/content/browser/DownloadInfo;

    .line 119
    return-void

    .line 112
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    # getter for: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mPendingRequest:Lorg/chromium/content/browser/DownloadInfo;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$100(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;)Lorg/chromium/content/browser/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/DownloadInfo;->isGETRequest()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate$DangerousDownloadListener;->this$0:Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;

    # getter for: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->mPendingRequest:Lorg/chromium/content/browser/DownloadInfo;
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$100(Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;)Lorg/chromium/content/browser/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    # invokes: Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->discardFile(Ljava/lang/String;)V
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/ChromeDownloadDelegate;->access$1000(Ljava/lang/String;)V

    goto :goto_0
.end method
