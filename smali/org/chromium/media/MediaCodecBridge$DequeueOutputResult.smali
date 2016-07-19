.class Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;
.super Ljava/lang/Object;
.source "MediaCodecBridge.java"


# instance fields
.field private final mFlags:I

.field private final mIndex:I

.field private final mNumBytes:I

.field private final mOffset:I

.field private final mPresentationTimeMicroseconds:J

.field private final mStatus:I


# direct methods
.method private constructor <init>(IIIIJI)V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput p1, p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->mStatus:I

    .line 108
    iput p2, p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->mIndex:I

    .line 109
    iput p3, p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->mFlags:I

    .line 110
    iput p4, p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->mOffset:I

    .line 111
    iput-wide p5, p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->mPresentationTimeMicroseconds:J

    .line 112
    iput p7, p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->mNumBytes:I

    .line 113
    return-void
.end method

.method synthetic constructor <init>(IIIIJILorg/chromium/media/MediaCodecBridge$1;)V
    .locals 1

    .prologue
    .line 97
    invoke-direct/range {p0 .. p7}, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;-><init>(IIIIJI)V

    return-void
.end method

.method private flags()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->mFlags:I

    return v0
.end method

.method private index()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->mIndex:I

    return v0
.end method

.method private numBytes()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->mNumBytes:I

    return v0
.end method

.method private offset()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->mOffset:I

    return v0
.end method

.method private presentationTimeMicroseconds()J
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->mPresentationTimeMicroseconds:J

    return-wide v0
.end method

.method private status()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;->mStatus:I

    return v0
.end method
