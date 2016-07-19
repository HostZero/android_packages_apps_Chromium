.class public Lorg/chromium/base/SecureRandomInitializer;
.super Ljava/lang/Object;
.source "SecureRandomInitializer.java"


# static fields
.field private static sSeedBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Lorg/chromium/base/SecureRandomInitializer;->sSeedBytes:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Ljava/security/SecureRandom;)V
    .locals 3

    .prologue
    .line 25
    const/4 v2, 0x0

    .line 27
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    const-string/jumbo v0, "/dev/urandom"

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    :try_start_1
    sget-object v0, Lorg/chromium/base/SecureRandomInitializer;->sSeedBytes:[B

    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    sget-object v2, Lorg/chromium/base/SecureRandomInitializer;->sSeedBytes:[B

    array-length v2, v2

    if-eq v0, v2, :cond_1

    .line 29
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "Failed to get enough random data."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    :goto_0
    if-eqz v1, :cond_0

    .line 35
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 39
    :cond_0
    :goto_1
    throw v0

    .line 31
    :cond_1
    :try_start_3
    sget-object v0, Lorg/chromium/base/SecureRandomInitializer;->sSeedBytes:[B

    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->setSeed([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 35
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 40
    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    .line 33
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method
