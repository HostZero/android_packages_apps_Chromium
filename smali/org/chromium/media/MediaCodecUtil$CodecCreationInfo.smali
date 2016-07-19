.class public Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"


# instance fields
.field public mediaCodec:Landroid/media/MediaCodec;

.field public supportsAdaptivePlayback:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->supportsAdaptivePlayback:Z

    return-void
.end method
