.class Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;
.super Ljava/lang/Object;
.source "SSLClientCertificateRequest.java"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mAlias:Ljava/lang/String;

.field private final mCallback:Landroid/security/KeyChainAliasCallback;

.field private final mHostName:Ljava/lang/String;

.field private final mKeyTypes:[Ljava/lang/String;

.field private final mPort:I

.field private final mPrincipalsForCallback:[Ljava/security/Principal;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;->mActivity:Landroid/app/Activity;

    .line 188
    iput-object p2, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;->mCallback:Landroid/security/KeyChainAliasCallback;

    .line 189
    iput-object p3, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;->mKeyTypes:[Ljava/lang/String;

    .line 190
    iput-object p4, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;->mPrincipalsForCallback:[Ljava/security/Principal;

    .line 191
    iput-object p5, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;->mHostName:Ljava/lang/String;

    .line 192
    iput p6, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;->mPort:I

    .line 193
    iput-object p7, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;->mAlias:Ljava/lang/String;

    .line 194
    return-void
.end method


# virtual methods
.method public choosePrivateKeyAlias()V
    .locals 7

    .prologue
    .line 200
    iget-object v0, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;->mCallback:Landroid/security/KeyChainAliasCallback;

    iget-object v2, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;->mKeyTypes:[Ljava/lang/String;

    iget-object v3, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;->mPrincipalsForCallback:[Ljava/security/Principal;

    iget-object v4, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;->mHostName:Ljava/lang/String;

    iget v5, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;->mPort:I

    iget-object v6, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;->mAlias:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Landroid/security/KeyChain;->choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Ljava/lang/String;ILjava/lang/String;)V

    .line 202
    return-void
.end method
