.class public final Lorg/chromium/chrome/browser/util/HashUtil;
.super Ljava/lang/Object;
.source "HashUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method private static encodeHex([B)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v0, p0

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 54
    new-instance v3, Ljava/util/Formatter;

    invoke-direct {v3, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 55
    array-length v4, p0

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-byte v5, p0, v0

    .line 56
    const-string/jumbo v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v7, v1

    invoke-virtual {v3, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getHash(Lorg/chromium/chrome/browser/util/HashUtil$Params;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 42
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lorg/chromium/chrome/browser/util/HashUtil$Params;->mText:Ljava/lang/String;
    invoke-static {p0}, Lorg/chromium/chrome/browser/util/HashUtil$Params;->access$000(Lorg/chromium/chrome/browser/util/HashUtil$Params;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lorg/chromium/chrome/browser/util/HashUtil$Params;->mSalt:Ljava/lang/String;
    invoke-static {p0}, Lorg/chromium/chrome/browser/util/HashUtil$Params;->access$100(Lorg/chromium/chrome/browser/util/HashUtil$Params;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 45
    invoke-static {v0}, Lorg/chromium/chrome/browser/util/HashUtil;->encodeHex([B)Ljava/lang/String;

    move-result-object v0

    .line 48
    :goto_1
    return-object v0

    .line 42
    :cond_0
    # getter for: Lorg/chromium/chrome/browser/util/HashUtil$Params;->mSalt:Ljava/lang/String;
    invoke-static {p0}, Lorg/chromium/chrome/browser/util/HashUtil$Params;->access$100(Lorg/chromium/chrome/browser/util/HashUtil$Params;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    const-string/jumbo v0, "HashUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unable to find digest algorithm "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getMd5Hash(Lorg/chromium/chrome/browser/util/HashUtil$Params;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "MD5"

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/util/HashUtil;->getHash(Lorg/chromium/chrome/browser/util/HashUtil$Params;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
