.class public final Lorg/chromium/content/browser/DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# instance fields
.field private final mContentDisposition:Ljava/lang/String;

.field private final mContentLength:J

.field private final mCookie:Ljava/lang/String;

.field private final mDescription:Ljava/lang/String;

.field private final mDownloadId:I

.field private final mFileName:Ljava/lang/String;

.field private final mFilePath:Ljava/lang/String;

.field private final mHasDownloadId:Z

.field private final mHasUserGesture:Z

.field private final mIsGETRequest:Z

.field private final mIsPaused:Z

.field private final mIsResumable:Z

.field private final mIsSuccessful:Z

.field private final mMimeType:Ljava/lang/String;

.field private final mPercentCompleted:I

.field private final mReferer:Ljava/lang/String;

.field private final mTimeRemainingInMillis:J

.field private final mUrl:Ljava/lang/String;

.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/chromium/content/browser/DownloadInfo$Builder;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    # getter for: Lorg/chromium/content/browser/DownloadInfo$Builder;->mUrl:Ljava/lang/String;
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$000(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mUrl:Ljava/lang/String;

    .line 33
    # getter for: Lorg/chromium/content/browser/DownloadInfo$Builder;->mUserAgent:Ljava/lang/String;
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$100(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mUserAgent:Ljava/lang/String;

    .line 34
    # getter for: Lorg/chromium/content/browser/DownloadInfo$Builder;->mMimeType:Ljava/lang/String;
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$200(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mMimeType:Ljava/lang/String;

    .line 35
    # getter for: Lorg/chromium/content/browser/DownloadInfo$Builder;->mCookie:Ljava/lang/String;
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$300(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mCookie:Ljava/lang/String;

    .line 36
    # getter for: Lorg/chromium/content/browser/DownloadInfo$Builder;->mFileName:Ljava/lang/String;
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$400(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mFileName:Ljava/lang/String;

    .line 37
    # getter for: Lorg/chromium/content/browser/DownloadInfo$Builder;->mDescription:Ljava/lang/String;
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$500(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mDescription:Ljava/lang/String;

    .line 38
    # getter for: Lorg/chromium/content/browser/DownloadInfo$Builder;->mFilePath:Ljava/lang/String;
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$600(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mFilePath:Ljava/lang/String;

    .line 39
    # getter for: Lorg/chromium/content/browser/DownloadInfo$Builder;->mReferer:Ljava/lang/String;
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$700(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mReferer:Ljava/lang/String;

    .line 40
    # getter for: Lorg/chromium/content/browser/DownloadInfo$Builder;->mContentLength:J
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$800(Lorg/chromium/content/browser/DownloadInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mContentLength:J

    .line 41
    # getter for: Lorg/chromium/content/browser/DownloadInfo$Builder;->mHasDownloadId:Z
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$900(Lorg/chromium/content/browser/DownloadInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mHasDownloadId:Z

    .line 42
    # getter for: Lorg/chromium/content/browser/DownloadInfo$Builder;->mDownloadId:I
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$1000(Lorg/chromium/content/browser/DownloadInfo$Builder;)I

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mDownloadId:I

    .line 43
    # getter for: Lorg/chromium/content/browser/DownloadInfo$Builder;->mHasUserGesture:Z
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$1100(Lorg/chromium/content/browser/DownloadInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mHasUserGesture:Z

    .line 44
    # getter for: Lorg/chromium/content/browser/DownloadInfo$Builder;->mIsSuccessful:Z
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$1200(Lorg/chromium/content/browser/DownloadInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mIsSuccessful:Z

    .line 45
    # getter for: Lorg/chromium/content/browser/DownloadInfo$Builder;->mIsGETRequest:Z
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$1300(Lorg/chromium/content/browser/DownloadInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mIsGETRequest:Z

    .line 46
    # getter for: Lorg/chromium/content/browser/DownloadInfo$Builder;->mContentDisposition:Ljava/lang/String;
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$1400(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mContentDisposition:Ljava/lang/String;

    .line 47
    # getter for: Lorg/chromium/content/browser/DownloadInfo$Builder;->mPercentCompleted:I
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$1500(Lorg/chromium/content/browser/DownloadInfo$Builder;)I

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mPercentCompleted:I

    .line 48
    # getter for: Lorg/chromium/content/browser/DownloadInfo$Builder;->mTimeRemainingInMillis:J
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$1600(Lorg/chromium/content/browser/DownloadInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mTimeRemainingInMillis:J

    .line 49
    # getter for: Lorg/chromium/content/browser/DownloadInfo$Builder;->mIsResumable:Z
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$1700(Lorg/chromium/content/browser/DownloadInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mIsResumable:Z

    .line 50
    # getter for: Lorg/chromium/content/browser/DownloadInfo$Builder;->mIsPaused:Z
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$1800(Lorg/chromium/content/browser/DownloadInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mIsPaused:Z

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/content/browser/DownloadInfo$Builder;Lorg/chromium/content/browser/DownloadInfo$1;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/DownloadInfo;-><init>(Lorg/chromium/content/browser/DownloadInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public final getContentDisposition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mContentDisposition:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentLength()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mContentLength:J

    return-wide v0
.end method

.method public final getCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mCookie:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getDownloadId()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mDownloadId:I

    return v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public final getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public final getPercentCompleted()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mPercentCompleted:I

    return v0
.end method

.method public final getReferer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mReferer:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimeRemainingInMillis()J
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mTimeRemainingInMillis:J

    return-wide v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public final hasDownloadId()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mHasDownloadId:Z

    return v0
.end method

.method public final hasUserGesture()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mHasUserGesture:Z

    return v0
.end method

.method public final isGETRequest()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mIsGETRequest:Z

    return v0
.end method

.method public final isPaused()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mIsPaused:Z

    return v0
.end method

.method public final isResumable()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mIsResumable:Z

    return v0
.end method

.method public final isSuccessful()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mIsSuccessful:Z

    return v0
.end method
