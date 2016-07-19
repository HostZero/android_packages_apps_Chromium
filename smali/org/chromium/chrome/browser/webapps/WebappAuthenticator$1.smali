.class final Lorg/chromium/chrome/browser/webapps/WebappAuthenticator$1;
.super Ljava/lang/Object;
.source "WebappAuthenticator.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappAuthenticator$1;->call()Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public final call()Ljavax/crypto/SecretKey;
    .locals 3

    .prologue
    .line 210
    const-string/jumbo v0, "HmacSHA256"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 211
    const-string/jumbo v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    .line 212
    invoke-static {v1}, Lorg/chromium/base/SecureRandomInitializer;->initialize(Ljava/security/SecureRandom;)V

    .line 213
    const/16 v2, 0x100

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 214
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method
