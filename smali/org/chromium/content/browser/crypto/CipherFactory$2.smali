.class Lorg/chromium/content/browser/crypto/CipherFactory$2;
.super Ljava/lang/Object;
.source "CipherFactory.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/crypto/CipherFactory;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/crypto/CipherFactory;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lorg/chromium/content/browser/crypto/CipherFactory$2;->this$0:Lorg/chromium/content/browser/crypto/CipherFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lorg/chromium/content/browser/crypto/CipherFactory$2;->call()Lorg/chromium/content/browser/crypto/CipherFactory$CipherData;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/chromium/content/browser/crypto/CipherFactory$CipherData;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 195
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/crypto/CipherFactory$2;->this$0:Lorg/chromium/content/browser/crypto/CipherFactory;

    # getter for: Lorg/chromium/content/browser/crypto/CipherFactory;->mRandomNumberProvider:Lorg/chromium/content/browser/crypto/ByteArrayGenerator;
    invoke-static {v0}, Lorg/chromium/content/browser/crypto/CipherFactory;->access$300(Lorg/chromium/content/browser/crypto/CipherFactory;)Lorg/chromium/content/browser/crypto/ByteArrayGenerator;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lorg/chromium/content/browser/crypto/ByteArrayGenerator;->getBytes(I)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 205
    :try_start_1
    const-string/jumbo v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    .line 206
    invoke-static {v0}, Lorg/chromium/base/SecureRandomInitializer;->initialize(Ljava/security/SecureRandom;)V

    .line 208
    const-string/jumbo v3, "AES"

    invoke-static {v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v3

    .line 209
    const/16 v4, 0x80

    invoke-virtual {v3, v4, v0}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 210
    new-instance v0, Lorg/chromium/content/browser/crypto/CipherFactory$CipherData;

    invoke-virtual {v3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lorg/chromium/content/browser/crypto/CipherFactory$CipherData;-><init>(Ljava/security/Key;[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_3

    .line 216
    :goto_0
    return-object v0

    .line 197
    :catch_0
    move-exception v0

    const-string/jumbo v0, "cr.CipherFactory"

    const-string/jumbo v2, "Couldn\'t get generator data."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 198
    goto :goto_0

    .line 200
    :catch_1
    move-exception v0

    const-string/jumbo v0, "cr.CipherFactory"

    const-string/jumbo v2, "Couldn\'t get generator data."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 201
    goto :goto_0

    .line 212
    :catch_2
    move-exception v0

    const-string/jumbo v0, "cr.CipherFactory"

    const-string/jumbo v2, "Couldn\'t get generator data."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 213
    goto :goto_0

    .line 215
    :catch_3
    move-exception v0

    const-string/jumbo v0, "cr.CipherFactory"

    const-string/jumbo v2, "Couldn\'t get generator instances."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 216
    goto :goto_0
.end method
