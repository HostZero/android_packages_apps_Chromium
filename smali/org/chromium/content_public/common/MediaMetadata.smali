.class public Lorg/chromium/content_public/common/MediaMetadata;
.super Ljava/lang/Object;
.source "MediaMetadata.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lorg/chromium/content_public/common/MediaMetadata;->mTitle:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lorg/chromium/content_public/common/MediaMetadata;->mArtist:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lorg/chromium/content_public/common/MediaMetadata;->mAlbum:Ljava/lang/String;

    .line 91
    return-void
.end method

.method private static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/content_public/common/MediaMetadata;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lorg/chromium/content_public/common/MediaMetadata;

    if-nez p0, :cond_0

    const-string/jumbo p0, ""

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo p1, ""

    :cond_1
    if-nez p2, :cond_2

    const-string/jumbo p2, ""

    :cond_2
    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content_public/common/MediaMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 95
    if-ne p1, p0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v0

    .line 96
    :cond_1
    instance-of v2, p1, Lorg/chromium/content_public/common/MediaMetadata;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 98
    :cond_2
    check-cast p1, Lorg/chromium/content_public/common/MediaMetadata;

    .line 99
    iget-object v2, p0, Lorg/chromium/content_public/common/MediaMetadata;->mTitle:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/content_public/common/MediaMetadata;->mTitle:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/chromium/content_public/common/MediaMetadata;->mArtist:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/content_public/common/MediaMetadata;->mArtist:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/chromium/content_public/common/MediaMetadata;->mAlbum:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/content_public/common/MediaMetadata;->mAlbum:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/content_public/common/MediaMetadata;->mAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/content_public/common/MediaMetadata;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/chromium/content_public/common/MediaMetadata;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lorg/chromium/content_public/common/MediaMetadata;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 107
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/content_public/common/MediaMetadata;->mArtist:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/content_public/common/MediaMetadata;->mAlbum:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 109
    return v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lorg/chromium/content_public/common/MediaMetadata;->mTitle:Ljava/lang/String;

    .line 56
    return-void
.end method
