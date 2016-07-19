.class public Lorg/chromium/content_public/browser/LoadUrlParams;
.super Ljava/lang/Object;
.source "LoadUrlParams.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# instance fields
.field mBaseUrlForDataUrl:Ljava/lang/String;

.field mCanLoadLocalResources:Z

.field mDataUrlAsString:Ljava/lang/String;

.field private mExtraHeaders:Ljava/util/Map;

.field mHasUserGesture:Z

.field mIntentReceivedTimestamp:J

.field mIsRendererInitiated:Z

.field mLoadUrlType:I

.field mPostData:[B

.field mReferrer:Lorg/chromium/content_public/common/Referrer;

.field mShouldReplaceCurrentEntry:Z

.field mTransitionType:I

.field mUaOverrideOption:I

.field mUrl:Ljava/lang/String;

.field private mVerbatimHeaders:Ljava/lang/String;

.field mVirtualUrlForDataUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mUrl:Ljava/lang/String;

    .line 61
    iput p2, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mTransitionType:I

    .line 65
    iput v1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mLoadUrlType:I

    .line 66
    iput v1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mUaOverrideOption:I

    .line 67
    iput-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mPostData:[B

    .line 68
    iput-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mBaseUrlForDataUrl:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mVirtualUrlForDataUrl:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mDataUrlAsString:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public static createLoadHttpPostParams(Ljava/lang/String;[B)Lorg/chromium/content_public/browser/LoadUrlParams;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 179
    new-instance v0, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-direct {v0, p0}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/LoadUrlParams;->setLoadType(I)V

    .line 181
    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/LoadUrlParams;->setTransitionType(I)V

    .line 182
    invoke-virtual {v0, p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->setPostData([B)V

    .line 183
    return-object v0
.end method

.method private getExtraHeadersString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    .prologue
    .line 281
    iget-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mExtraHeaders:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 294
    :goto_0
    return-object v0

    .line 283
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    iget-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mExtraHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 285
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const-string/jumbo v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 292
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static native nativeIsDataScheme(Ljava/lang/String;)Z
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mBaseUrlForDataUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCanLoadLocalResources()Z
    .locals 1

    .prologue
    .line 405
    iget-boolean v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mCanLoadLocalResources:Z

    return v0
.end method

.method public getDataUrlAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mDataUrlAsString:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraHeadersString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 268
    const-string/jumbo v0, "\n"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getExtraHeadersString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHasUserGesture()Z
    .locals 1

    .prologue
    .line 470
    iget-boolean v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mHasUserGesture:Z

    return v0
.end method

.method public getIntentReceivedTimestamp()J
    .locals 2

    .prologue
    .line 454
    iget-wide v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mIntentReceivedTimestamp:J

    return-wide v0
.end method

.method public getIsRendererInitiated()Z
    .locals 1

    .prologue
    .line 423
    iget-boolean v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mIsRendererInitiated:Z

    return v0
.end method

.method public getLoadUrlType()I
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mLoadUrlType:I

    return v0
.end method

.method public getPostData()[B
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mPostData:[B

    return-object v0
.end method

.method public getReferrer()Lorg/chromium/content_public/common/Referrer;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mReferrer:Lorg/chromium/content_public/common/Referrer;

    return-object v0
.end method

.method public getShouldReplaceCurrentEntry()Z
    .locals 1

    .prologue
    .line 439
    iget-boolean v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mShouldReplaceCurrentEntry:Z

    return v0
.end method

.method public getTransitionType()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mTransitionType:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgentOverrideOption()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mUaOverrideOption:I

    return v0
.end method

.method public getVerbatimHeaders()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mVerbatimHeaders:Ljava/lang/String;

    return-object v0
.end method

.method public getVirtualUrlForDataUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mVirtualUrlForDataUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setHasUserGesture(Z)V
    .locals 0

    .prologue
    .line 463
    iput-boolean p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mHasUserGesture:Z

    .line 464
    return-void
.end method

.method public setIntentReceivedTimestamp(J)V
    .locals 1

    .prologue
    .line 447
    iput-wide p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mIntentReceivedTimestamp:J

    .line 448
    return-void
.end method

.method public setIsRendererInitiated(Z)V
    .locals 0

    .prologue
    .line 416
    iput-boolean p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mIsRendererInitiated:Z

    .line 417
    return-void
.end method

.method public setLoadType(I)V
    .locals 0

    .prologue
    .line 212
    iput p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mLoadUrlType:I

    .line 213
    return-void
.end method

.method public setPostData([B)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mPostData:[B

    .line 336
    return-void
.end method

.method public setReferrer(Lorg/chromium/content_public/common/Referrer;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mReferrer:Lorg/chromium/content_public/common/Referrer;

    .line 235
    return-void
.end method

.method public setShouldReplaceCurrentEntry(Z)V
    .locals 0

    .prologue
    .line 431
    iput-boolean p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mShouldReplaceCurrentEntry:Z

    .line 432
    return-void
.end method

.method public setTransitionType(I)V
    .locals 0

    .prologue
    .line 220
    iput p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mTransitionType:I

    .line 221
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mUrl:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setVerbatimHeaders(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->mVerbatimHeaders:Ljava/lang/String;

    .line 303
    return-void
.end method
