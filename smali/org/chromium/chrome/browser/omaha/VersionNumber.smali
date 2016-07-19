.class public Lorg/chromium/chrome/browser/omaha/VersionNumber;
.super Ljava/lang/Object;
.source "VersionNumber.java"


# instance fields
.field private final mVersion:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omaha/VersionNumber;->mVersion:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static fromString(Ljava/lang/String;)Lorg/chromium/chrome/browser/omaha/VersionNumber;
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v0, 0x0

    .line 21
    if-nez p0, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-object v0

    .line 26
    :cond_1
    const-string/jumbo v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 27
    array-length v1, v3

    if-ne v1, v6, :cond_0

    .line 31
    new-instance v1, Lorg/chromium/chrome/browser/omaha/VersionNumber;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/omaha/VersionNumber;-><init>()V

    .line 33
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v6, :cond_2

    .line 34
    :try_start_0
    iget-object v4, v1, Lorg/chromium/chrome/browser/omaha/VersionNumber;->mVersion:[I

    aget-object v5, v3, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 40
    goto :goto_0

    .line 37
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public isSmallerThan(Lorg/chromium/chrome/browser/omaha/VersionNumber;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 53
    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 54
    iget-object v2, p0, Lorg/chromium/chrome/browser/omaha/VersionNumber;->mVersion:[I

    aget v2, v2, v1

    iget-object v3, p1, Lorg/chromium/chrome/browser/omaha/VersionNumber;->mVersion:[I

    aget v3, v3, v1

    if-ge v2, v3, :cond_1

    .line 55
    const/4 v0, 0x1

    .line 60
    :cond_0
    return v0

    .line 56
    :cond_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/omaha/VersionNumber;->mVersion:[I

    aget v2, v2, v1

    iget-object v3, p1, Lorg/chromium/chrome/browser/omaha/VersionNumber;->mVersion:[I

    aget v3, v3, v1

    if-gt v2, v3, :cond_0

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 45
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%d.%d.%d.%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/chromium/chrome/browser/omaha/VersionNumber;->mVersion:[I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/chromium/chrome/browser/omaha/VersionNumber;->mVersion:[I

    aget v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lorg/chromium/chrome/browser/omaha/VersionNumber;->mVersion:[I

    aget v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lorg/chromium/chrome/browser/omaha/VersionNumber;->mVersion:[I

    aget v3, v3, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
