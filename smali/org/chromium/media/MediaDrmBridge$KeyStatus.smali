.class Lorg/chromium/media/MediaDrmBridge$KeyStatus;
.super Ljava/lang/Object;
.source "MediaDrmBridge.java"


# instance fields
.field private final mKeyId:[B

.field private final mStatusCode:I


# direct methods
.method private constructor <init>([BI)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$KeyStatus;->mKeyId:[B

    .line 94
    iput p2, p0, Lorg/chromium/media/MediaDrmBridge$KeyStatus;->mStatusCode:I

    .line 95
    return-void
.end method

.method synthetic constructor <init>([BILorg/chromium/media/MediaDrmBridge$1;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lorg/chromium/media/MediaDrmBridge$KeyStatus;-><init>([BI)V

    return-void
.end method

.method private getKeyId()[B
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$KeyStatus;->mKeyId:[B

    return-object v0
.end method

.method private getStatusCode()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lorg/chromium/media/MediaDrmBridge$KeyStatus;->mStatusCode:I

    return v0
.end method
