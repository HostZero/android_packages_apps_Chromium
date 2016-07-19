.class Lorg/chromium/chrome/browser/SSLClientCertificateRequest$CertAsyncTaskKeyChain;
.super Landroid/os/AsyncTask;
.source "SSLClientCertificateRequest.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final mAlias:Ljava/lang/String;

.field final mContext:Landroid/content/Context;

.field private mEncodedChain:[[B

.field private final mNativePtr:J

.field private mPrivateKey:Ljava/security/PrivateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$CertAsyncTaskKeyChain;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;JLjava/lang/String;)V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 65
    iput-wide p2, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$CertAsyncTaskKeyChain;->mNativePtr:J

    .line 66
    iput-object p1, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$CertAsyncTaskKeyChain;->mContext:Landroid/content/Context;

    .line 67
    sget-boolean v0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$CertAsyncTaskKeyChain;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 68
    :cond_0
    iput-object p4, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$CertAsyncTaskKeyChain;->mAlias:Ljava/lang/String;

    .line 69
    return-void
.end method

.method private getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$CertAsyncTaskKeyChain;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method private getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 124
    :try_start_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$CertAsyncTaskKeyChain;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/security/KeyChain;->getCertificateChain(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Landroid/security/KeyChainException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    .line 126
    :catch_0
    move-exception v1

    const-string/jumbo v1, "SSLClientCertificateRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "KeyChainException when looking for \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' certificate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    :catch_1
    move-exception v1

    const-string/jumbo v1, "SSLClientCertificateRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "InterruptedException when looking for \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'certificate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 112
    :try_start_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$CertAsyncTaskKeyChain;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/security/KeyChain;->getPrivateKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Landroid/security/KeyChainException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    .line 114
    :catch_0
    move-exception v1

    const-string/jumbo v1, "SSLClientCertificateRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "KeyChainException when looking for \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' certificate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    :catch_1
    move-exception v1

    const-string/jumbo v1, "SSLClientCertificateRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "InterruptedException when looking for \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'certificate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$CertAsyncTaskKeyChain;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 73
    invoke-direct {p0}, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$CertAsyncTaskKeyChain;->getAlias()Ljava/lang/String;

    move-result-object v0

    .line 74
    if-nez v0, :cond_0

    .line 97
    :goto_0
    return-object v5

    .line 76
    :cond_0
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$CertAsyncTaskKeyChain;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v1

    .line 77
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$CertAsyncTaskKeyChain;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 79
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    array-length v0, v2

    if-nez v0, :cond_2

    .line 80
    :cond_1
    const-string/jumbo v0, "SSLClientCertificateRequest"

    const-string/jumbo v1, "Empty client certificate chain?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :cond_2
    array-length v0, v2

    new-array v3, v0, [[B

    .line 87
    const/4 v0, 0x0

    :goto_1
    :try_start_0
    array-length v4, v2

    if-ge v0, v4, :cond_3

    .line 88
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    aput-object v4, v3, v0
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    const-string/jumbo v1, "SSLClientCertificateRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Could not retrieve encoded certificate chain: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    :cond_3
    iput-object v3, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$CertAsyncTaskKeyChain;->mEncodedChain:[[B

    .line 96
    iput-object v1, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$CertAsyncTaskKeyChain;->mPrivateKey:Ljava/security/PrivateKey;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$CertAsyncTaskKeyChain;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4

    .prologue
    .line 102
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 103
    iget-wide v0, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$CertAsyncTaskKeyChain;->mNativePtr:J

    iget-object v2, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$CertAsyncTaskKeyChain;->mEncodedChain:[[B

    iget-object v3, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$CertAsyncTaskKeyChain;->mPrivateKey:Ljava/security/PrivateKey;

    # invokes: Lorg/chromium/chrome/browser/SSLClientCertificateRequest;->nativeOnSystemRequestCompletion(J[[BLjava/security/PrivateKey;)V
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/SSLClientCertificateRequest;->access$000(J[[BLjava/security/PrivateKey;)V

    .line 104
    return-void
.end method
