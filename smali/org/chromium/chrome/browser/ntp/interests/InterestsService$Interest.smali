.class public Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;
.super Ljava/lang/Object;
.source "InterestsService.java"


# instance fields
.field private final mImageUrl:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mRelevance:D


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;->mName:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;->mImageUrl:Ljava/lang/String;

    .line 31
    iput-wide p3, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;->mRelevance:D

    .line 32
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 52
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    .line 53
    :cond_0
    instance-of v0, p1, Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 44
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;->mImageUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 45
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;->mName:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 46
    iget-wide v2, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;->mRelevance:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 47
    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v4, v2, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0

    .line 44
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 45
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Interest [mName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mImageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRelevance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;->mRelevance:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
