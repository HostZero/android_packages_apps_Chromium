.class Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;
.super Ljava/lang/Object;
.source "MediaDrmBridge.java"


# instance fields
.field private final mInitData:[B

.field private final mMimeType:Ljava/lang/String;

.field private final mOptionalParameters:Ljava/util/HashMap;

.field private final mPromiseId:J


# direct methods
.method private constructor <init>([BLjava/lang/String;Ljava/util/HashMap;J)V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->mInitData:[B

    .line 130
    iput-object p2, p0, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->mMimeType:Ljava/lang/String;

    .line 131
    iput-object p3, p0, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->mOptionalParameters:Ljava/util/HashMap;

    .line 132
    iput-wide p4, p0, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->mPromiseId:J

    .line 133
    return-void
.end method

.method synthetic constructor <init>([BLjava/lang/String;Ljava/util/HashMap;JLorg/chromium/media/MediaDrmBridge$1;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct/range {p0 .. p5}, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;-><init>([BLjava/lang/String;Ljava/util/HashMap;J)V

    return-void
.end method

.method static synthetic access$400(Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;)J
    .locals 2

    .prologue
    .line 121
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->promiseId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;)[B
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->initData()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->mimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->optionalParameters()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private initData()[B
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->mInitData:[B

    return-object v0
.end method

.method private mimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method private optionalParameters()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->mOptionalParameters:Ljava/util/HashMap;

    return-object v0
.end method

.method private promiseId()J
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->mPromiseId:J

    return-wide v0
.end method
