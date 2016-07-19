.class public Lorg/chromium/content/browser/DownloadInfo$Builder;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mContentDisposition:Ljava/lang/String;

.field private mContentLength:J

.field private mCookie:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mDownloadId:I

.field private mFileName:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mHasDownloadId:Z

.field private mHasUserGesture:Z

.field private mIsGETRequest:Z

.field private mIsPaused:Z

.field private mIsResumable:Z

.field private mIsSuccessful:Z

.field private mMimeType:Ljava/lang/String;

.field private mPercentCompleted:I

.field private mReferer:Ljava/lang/String;

.field private mTimeRemainingInMillis:J

.field private mUrl:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    const-class v0, Lorg/chromium/content/browser/DownloadInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/DownloadInfo$Builder;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mPercentCompleted:I

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mIsResumable:Z

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mIsPaused:Z

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/chromium/content/browser/DownloadInfo$Builder;)I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mDownloadId:I

    return v0
.end method

.method static synthetic access$1100(Lorg/chromium/content/browser/DownloadInfo$Builder;)Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mHasUserGesture:Z

    return v0
.end method

.method static synthetic access$1200(Lorg/chromium/content/browser/DownloadInfo$Builder;)Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mIsSuccessful:Z

    return v0
.end method

.method static synthetic access$1300(Lorg/chromium/content/browser/DownloadInfo$Builder;)Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mIsGETRequest:Z

    return v0
.end method

.method static synthetic access$1400(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mContentDisposition:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/chromium/content/browser/DownloadInfo$Builder;)I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mPercentCompleted:I

    return v0
.end method

.method static synthetic access$1600(Lorg/chromium/content/browser/DownloadInfo$Builder;)J
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mTimeRemainingInMillis:J

    return-wide v0
.end method

.method static synthetic access$1700(Lorg/chromium/content/browser/DownloadInfo$Builder;)Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mIsResumable:Z

    return v0
.end method

.method static synthetic access$1800(Lorg/chromium/content/browser/DownloadInfo$Builder;)Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mCookie:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mReferer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lorg/chromium/content/browser/DownloadInfo$Builder;)J
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mContentLength:J

    return-wide v0
.end method

.method static synthetic access$900(Lorg/chromium/content/browser/DownloadInfo$Builder;)Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mHasDownloadId:Z

    return v0
.end method

.method public static fromDownloadInfo(Lorg/chromium/content/browser/DownloadInfo;)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 4

    .prologue
    .line 262
    new-instance v0, Lorg/chromium/content/browser/DownloadInfo$Builder;

    invoke-direct {v0}, Lorg/chromium/content/browser/DownloadInfo$Builder;-><init>()V

    .line 263
    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setUrl(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setUserAgent(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setMimeType(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->getCookie()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setCookie(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setFileName(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setDescription(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setFilePath(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->getReferer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setReferer(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->getContentLength()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setContentLength(J)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->hasDownloadId()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setHasDownloadId(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->getDownloadId()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setDownloadId(I)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->hasUserGesture()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setHasUserGesture(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->getContentDisposition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setContentDisposition(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->isGETRequest()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setIsGETRequest(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->isSuccessful()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setIsSuccessful(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->getPercentCompleted()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setPercentCompleted(I)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->getTimeRemainingInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setTimeRemainingInMillis(J)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->isResumable()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setIsResumable(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->isPaused()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setIsPaused(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;

    .line 282
    return-object v0
.end method


# virtual methods
.method public build()Lorg/chromium/content/browser/DownloadInfo;
    .locals 2

    .prologue
    .line 253
    new-instance v0, Lorg/chromium/content/browser/DownloadInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/content/browser/DownloadInfo;-><init>(Lorg/chromium/content/browser/DownloadInfo$Builder;Lorg/chromium/content/browser/DownloadInfo$1;)V

    return-object v0
.end method

.method public setContentDisposition(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mContentDisposition:Ljava/lang/String;

    .line 228
    return-object p0
.end method

.method public setContentLength(J)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 1

    .prologue
    .line 197
    iput-wide p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mContentLength:J

    .line 198
    return-object p0
.end method

.method public setCookie(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mCookie:Ljava/lang/String;

    .line 173
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mDescription:Ljava/lang/String;

    .line 183
    return-object p0
.end method

.method public setDownloadId(I)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 0

    .prologue
    .line 212
    iput p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mDownloadId:I

    .line 213
    return-object p0
.end method

.method public setFileName(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mFileName:Ljava/lang/String;

    .line 178
    return-object p0
.end method

.method public setFilePath(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mFilePath:Ljava/lang/String;

    .line 188
    return-object p0
.end method

.method public setHasDownloadId(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 0

    .prologue
    .line 207
    iput-boolean p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mHasDownloadId:Z

    .line 208
    return-object p0
.end method

.method public setHasUserGesture(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 0

    .prologue
    .line 217
    iput-boolean p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mHasUserGesture:Z

    .line 218
    return-object p0
.end method

.method public setIsGETRequest(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 0

    .prologue
    .line 202
    iput-boolean p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mIsGETRequest:Z

    .line 203
    return-object p0
.end method

.method public setIsPaused(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 0

    .prologue
    .line 248
    iput-boolean p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mIsPaused:Z

    .line 249
    return-object p0
.end method

.method public setIsResumable(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 0

    .prologue
    .line 243
    iput-boolean p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mIsResumable:Z

    .line 244
    return-object p0
.end method

.method public setIsSuccessful(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 0

    .prologue
    .line 222
    iput-boolean p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mIsSuccessful:Z

    .line 223
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mMimeType:Ljava/lang/String;

    .line 168
    return-object p0
.end method

.method public setPercentCompleted(I)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 1

    .prologue
    .line 232
    sget-boolean v0, Lorg/chromium/content/browser/DownloadInfo$Builder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 233
    :cond_0
    iput p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mPercentCompleted:I

    .line 234
    return-object p0
.end method

.method public setReferer(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mReferer:Ljava/lang/String;

    .line 193
    return-object p0
.end method

.method public setTimeRemainingInMillis(J)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 1

    .prologue
    .line 238
    iput-wide p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mTimeRemainingInMillis:J

    .line 239
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mUrl:Ljava/lang/String;

    .line 158
    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mUserAgent:Ljava/lang/String;

    .line 163
    return-object p0
.end method
