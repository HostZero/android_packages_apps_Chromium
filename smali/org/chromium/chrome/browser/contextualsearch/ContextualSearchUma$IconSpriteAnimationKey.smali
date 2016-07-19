.class Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$IconSpriteAnimationKey;
.super Ljava/lang/Object;
.source "ContextualSearchUma.java"


# instance fields
.field final mHashCode:I

.field final mWasIconSpriteAnimated:Z

.field final mWasPanelSeen:Z

.field final mWasTap:Z


# direct methods
.method constructor <init>(ZZZ)V
    .locals 4

    .prologue
    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$IconSpriteAnimationKey;->mWasIconSpriteAnimated:Z

    .line 244
    iput-boolean p2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$IconSpriteAnimationKey;->mWasPanelSeen:Z

    .line 245
    iput-boolean p3, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$IconSpriteAnimationKey;->mWasTap:Z

    .line 250
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$IconSpriteAnimationKey;->mWasIconSpriteAnimated:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 251
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$IconSpriteAnimationKey;->mWasPanelSeen:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    .line 252
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$IconSpriteAnimationKey;->mWasTap:Z

    if-eqz v3, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 253
    iput v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$IconSpriteAnimationKey;->mHashCode:I

    .line 254
    return-void

    :cond_0
    move v0, v2

    .line 250
    goto :goto_0

    :cond_1
    move v0, v2

    .line 251
    goto :goto_1

    :cond_2
    move v1, v2

    .line 252
    goto :goto_2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 258
    instance-of v2, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$IconSpriteAnimationKey;

    if-nez v2, :cond_1

    .line 265
    :cond_0
    :goto_0
    return v0

    .line 261
    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    .line 262
    goto :goto_0

    .line 264
    :cond_2
    check-cast p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$IconSpriteAnimationKey;

    .line 265
    iget-boolean v2, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$IconSpriteAnimationKey;->mWasIconSpriteAnimated:Z

    iget-boolean v3, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$IconSpriteAnimationKey;->mWasIconSpriteAnimated:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$IconSpriteAnimationKey;->mWasPanelSeen:Z

    iget-boolean v3, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$IconSpriteAnimationKey;->mWasPanelSeen:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p1, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$IconSpriteAnimationKey;->mWasTap:Z

    iget-boolean v3, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$IconSpriteAnimationKey;->mWasTap:Z

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma$IconSpriteAnimationKey;->mHashCode:I

    return v0
.end method
