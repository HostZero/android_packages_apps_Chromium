.class final Lorg/chromium/net/X509Util$X509TrustManagerIceCreamSandwich;
.super Ljava/lang/Object;
.source "X509Util.java"

# interfaces
.implements Lorg/chromium/net/X509Util$X509TrustManagerImplementation;


# instance fields
.field private final mTrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/X509TrustManager;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lorg/chromium/net/X509Util$X509TrustManagerIceCreamSandwich;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 88
    return-void
.end method


# virtual methods
.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/chromium/net/X509Util$X509TrustManagerIceCreamSandwich;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
