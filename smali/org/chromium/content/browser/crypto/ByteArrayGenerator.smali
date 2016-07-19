.class public Lorg/chromium/content/browser/crypto/ByteArrayGenerator;
.super Ljava/lang/Object;
.source "ByteArrayGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBytes(I)[B
    .locals 3

    .prologue
    .line 22
    const/4 v2, 0x0

    .line 24
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    const-string/jumbo v0, "/dev/urandom"

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    :try_start_1
    new-array v0, p1, [B

    .line 26
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-eq p1, v2, :cond_1

    .line 27
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v2, "Not enough random data available"

    invoke-direct {v0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :catchall_0
    move-exception v0

    :goto_0
    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_0
    throw v0

    :cond_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-object v0

    .line 31
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method
