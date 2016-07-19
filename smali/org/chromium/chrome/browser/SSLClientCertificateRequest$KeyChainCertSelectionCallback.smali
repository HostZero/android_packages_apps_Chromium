.class Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback;
.super Ljava/lang/Object;
.source "SSLClientCertificateRequest.java"

# interfaces
.implements Landroid/security/KeyChainAliasCallback;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNativePtr:J


# direct methods
.method constructor <init>(Landroid/content/Context;J)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback;->mContext:Landroid/content/Context;

    .line 145
    iput-wide p2, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback;->mNativePtr:J

    .line 146
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback;)J
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback;->mNativePtr:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public alias(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback$1;-><init>(Lorg/chromium/chrome/browser/SSLClientCertificateRequest$KeyChainCertSelectionCallback;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 168
    return-void
.end method
