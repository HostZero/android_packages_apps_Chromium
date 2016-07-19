.class public Lorg/chromium/chrome/browser/SSLClientCertificateRequest;
.super Ljava/lang/Object;
.source "SSLClientCertificateRequest.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "SSLClientCertificateRequest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    return-void
.end method

.method static synthetic access$000(J[[BLjava/security/PrivateKey;)V
    .locals 0

    .prologue
    .line 43
    invoke-static {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/SSLClientCertificateRequest;->nativeOnSystemRequestCompletion(J[[BLjava/security/PrivateKey;)V

    return-void
.end method

.method static maybeShowCertSelection(Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;Landroid/security/KeyChainAliasCallback;Lorg/chromium/chrome/browser/SSLClientCertificateRequest$CertSelectionFailureDialog;)V
    .locals 1

    .prologue
    .line 295
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;->choosePrivateKeyAlias()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/security/KeyChainAliasCallback;->alias(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$CertSelectionFailureDialog;->show()V

    goto :goto_0
.end method

.method private static native nativeNotifyClientCertificatesChangedOnIOThread()V
.end method

.method private static native nativeOnSystemRequestCompletion(J[[BLjava/security/PrivateKey;)V
.end method

.method private static selectClientCertificate(JLorg/chromium/ui/base/WindowAndroid;[Ljava/lang/String;[[BLjava/lang/String;I)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 253
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 255
    invoke-virtual {p2}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 256
    if-nez v1, :cond_0

    .line 257
    const-string/jumbo v1, "SSLClientCertificateRequest"

    const-string/jumbo v2, "Certificate request on GC\'d activity."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :goto_0
    return v0

    .line 263
    :cond_0
    array-length v2, p4

    if-lez v2, :cond_1

    .line 264
    array-length v2, p4

    new-array v4, v2, [Ljavax/security/auth/x500/X500Principal;

    move v2, v0

    .line 266
    :goto_1
    :try_start_0
    array-length v3, p4

    if-ge v2, v3, :cond_2

    .line 267
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    aget-object v5, p4, v2

    invoke-direct {v3, v5}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    aput-object v3, v4, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 269
    :catch_0
    move-exception v1

    .line 270
    const-string/jumbo v2, "SSLClientCertificateRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Exception while decoding issuers list: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object v4, v7

    .line 275
    :cond_2
    new-instance v2, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0, p0, p1}, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback;-><init>(Landroid/content/Context;J)V

    .line 278
    new-instance v0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;

    move-object v3, p3

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;-><init>(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Ljava/lang/String;ILjava/lang/String;)V

    .line 280
    new-instance v3, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$CertSelectionFailureDialog;

    invoke-direct {v3, v1}, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$CertSelectionFailureDialog;-><init>(Landroid/app/Activity;)V

    invoke-static {v0, v2, v3}, Lorg/chromium/chrome/browser/SSLClientCertificateRequest;->maybeShowCertSelection(Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;Landroid/security/KeyChainAliasCallback;Lorg/chromium/chrome/browser/SSLClientCertificateRequest$CertSelectionFailureDialog;)V

    .line 284
    const/4 v0, 0x1

    goto :goto_0
.end method
