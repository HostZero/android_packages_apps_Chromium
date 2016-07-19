.class Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback$1$1;
.super Ljava/lang/Object;
.source "SSLClientCertificateRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback$1;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback$1;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback$1$1;->this$1:Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 160
    iget-object v0, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback$1$1;->this$1:Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback$1;

    iget-object v0, v0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback$1;->this$0:Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback;

    # getter for: Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback;->mNativePtr:J
    invoke-static {v0}, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback;->access$100(Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback;)J

    move-result-wide v0

    # invokes: Lorg/chromium/chrome/browser/SSLClientCertificateRequest;->nativeOnSystemRequestCompletion(J[[BLjava/security/PrivateKey;)V
    invoke-static {v0, v1, v2, v2}, Lorg/chromium/chrome/browser/SSLClientCertificateRequest;->access$000(J[[BLjava/security/PrivateKey;)V

    .line 161
    return-void
.end method
