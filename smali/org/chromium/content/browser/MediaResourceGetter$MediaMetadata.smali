.class Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;
.super Ljava/lang/Object;
.source "MediaResourceGetter.java"


# instance fields
.field private final mDurationInMilliseconds:I

.field private final mHeight:I

.field private final mSuccess:Z

.field private final mWidth:I


# direct methods
.method constructor <init>(IIIZ)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;->mDurationInMilliseconds:I

    .line 50
    iput p2, p0, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;->mWidth:I

    .line 51
    iput p3, p0, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;->mHeight:I

    .line 52
    iput-boolean p4, p0, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;->mSuccess:Z

    .line 53
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 101
    if-ne p0, p1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 102
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 104
    :cond_3
    check-cast p1, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    .line 105
    iget v2, p0, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;->mDurationInMilliseconds:I

    iget v3, p1, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;->mDurationInMilliseconds:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 106
    :cond_4
    iget v2, p0, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;->mHeight:I

    iget v3, p1, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;->mHeight:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 107
    :cond_5
    iget-boolean v2, p0, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;->mSuccess:Z

    iget-boolean v3, p1, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;->mSuccess:Z

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    .line 108
    :cond_6
    iget v2, p0, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;->mWidth:I

    iget v3, p1, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;->mWidth:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method getDurationInMilliseconds()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;->mDurationInMilliseconds:I

    return v0
.end method

.method getHeight()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;->mHeight:I

    return v0
.end method

.method getWidth()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;->mDurationInMilliseconds:I

    add-int/lit8 v0, v0, 0x1f

    .line 93
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;->mHeight:I

    add-int/2addr v0, v1

    .line 94
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;->mSuccess:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    add-int/2addr v0, v1

    .line 95
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;->mWidth:I

    add-int/2addr v0, v1

    .line 96
    return v0

    .line 94
    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0
.end method

.method isSuccess()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;->mSuccess:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MediaMetadata[durationInMilliseconds="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;->mDurationInMilliseconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;->mSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
