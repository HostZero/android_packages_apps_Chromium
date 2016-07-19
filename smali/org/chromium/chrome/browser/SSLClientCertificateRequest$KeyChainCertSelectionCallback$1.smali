.class Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback$1;
.super Ljava/lang/Object;
.source "SSLClientCertificateRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback;

.field final synthetic val$alias:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback$1;->this$0:Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback;

    iput-object p2, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback$1;->val$alias:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 155
    iget-object v0, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback$1;->val$alias:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback$1$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback$1$1;-><init>(Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback$1;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$CertAsyncTaskKeyChain;

    iget-object v1, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback$1;->this$0:Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback;

    # getter for: Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback;->access$200(Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback$1;->this$0:Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback;

    # getter for: Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback;->mNativePtr:J
    invoke-static {v2}, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback;->access$100(Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback;)J

    move-result-wide v2

    iget-object v4, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback$1;->val$alias:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$CertAsyncTaskKeyChain;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$CertAsyncTaskKeyChain;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
