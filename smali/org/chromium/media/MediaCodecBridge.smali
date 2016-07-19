.class Lorg/chromium/media/MediaCodecBridge;
.super Ljava/lang/Object;
.source "MediaCodecBridge.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAdaptivePlaybackSupported:Z

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mFlushed:Z

.field private mInputBuffers:[Ljava/nio/ByteBuffer;

.field private mLastPresentationTimeUs:J

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mMime:Ljava/lang/String;

.field private mOutputBuffers:[Ljava/nio/ByteBuffer;

.field private mPendingAudioBuffer:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/chromium/media/MediaCodecBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/media/MediaCodecBridge;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/media/MediaCodec;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    sget-boolean v0, Lorg/chromium/media/MediaCodecBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 191
    :cond_0
    iput-object p1, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingAudioBuffer:[B

    .line 193
    iput-object p2, p0, Lorg/chromium/media/MediaCodecBridge;->mMime:Ljava/lang/String;

    .line 194
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/media/MediaCodecBridge;->mLastPresentationTimeUs:J

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/media/MediaCodecBridge;->mFlushed:Z

    .line 196
    iput-boolean p3, p0, Lorg/chromium/media/MediaCodecBridge;->mAdaptivePlaybackSupported:Z

    .line 197
    return-void
.end method

.method private configureAudio(Landroid/media/MediaFormat;Landroid/media/MediaCrypto;IZ)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 534
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 535
    if-eqz p4, :cond_0

    .line 536
    const-string/jumbo v0, "sample-rate"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 537
    const-string/jumbo v0, "channel-count"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 538
    invoke-direct {p0, v0}, Lorg/chromium/media/MediaCodecBridge;->getAudioFormat(I)I

    move-result v3

    .line 541
    const/4 v0, 0x2

    invoke-static {v2, v3, v0}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 543
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    .line 545
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 546
    const-string/jumbo v0, "cr_media"

    const-string/jumbo v1, "Cannot create AudioTrack"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 547
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move v0, v7

    .line 561
    :goto_0
    return v0

    :cond_0
    move v0, v8

    .line 551
    goto :goto_0

    .line 552
    :catch_0
    move-exception v0

    .line 553
    const-string/jumbo v1, "cr_media"

    const-string/jumbo v2, "Cannot configure the audio codec"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    move v0, v7

    .line 561
    goto :goto_0

    .line 554
    :catch_1
    move-exception v0

    .line 555
    const-string/jumbo v1, "cr_media"

    const-string/jumbo v2, "Cannot configure the audio codec"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 556
    :catch_2
    move-exception v0

    .line 557
    const-string/jumbo v1, "cr_media"

    const-string/jumbo v2, "Cannot configure the audio codec: DRM error"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 558
    :catch_3
    move-exception v0

    .line 559
    const-string/jumbo v1, "cr_media"

    const-string/jumbo v2, "Cannot configure the audio codec"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private configureVideo(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;IZ)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 455
    :try_start_0
    iget-boolean v2, p0, Lorg/chromium/media/MediaCodecBridge;->mAdaptivePlaybackSupported:Z

    if-eqz v2, :cond_0

    if-eqz p5, :cond_0

    .line 456
    const-string/jumbo v2, "max-width"

    const/16 v3, 0x780

    invoke-virtual {p1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 457
    const-string/jumbo v2, "max-height"

    const/16 v3, 0x438

    invoke-virtual {p1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 459
    :cond_0
    iget-object v2, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 470
    :goto_0
    return v0

    .line 461
    :catch_0
    move-exception v2

    .line 462
    const-string/jumbo v3, "cr_media"

    const-string/jumbo v4, "Cannot configure the video codec, wrong format or surface"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v3, v4, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    move v0, v1

    .line 470
    goto :goto_0

    .line 463
    :catch_1
    move-exception v2

    .line 464
    const-string/jumbo v3, "cr_media"

    const-string/jumbo v4, "Cannot configure the video codec"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v3, v4, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 465
    :catch_2
    move-exception v2

    .line 466
    const-string/jumbo v3, "cr_media"

    const-string/jumbo v4, "Cannot configure the video codec: DRM error"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v3, v4, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 467
    :catch_3
    move-exception v2

    .line 468
    const-string/jumbo v3, "cr_media"

    const-string/jumbo v4, "Cannot configure the video codec"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v3, v4, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static create(Ljava/lang/String;ZI)Lorg/chromium/media/MediaCodecBridge;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 201
    new-instance v0, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;

    invoke-direct {v0}, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;-><init>()V

    .line 203
    if-ne p2, v6, :cond_0

    .line 204
    :try_start_0
    invoke-static {p0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;

    .line 205
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->supportsAdaptivePlayback:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    iget-object v1, v0, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 217
    :goto_1
    return-object v0

    .line 208
    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Lorg/chromium/media/MediaCodecUtil;->createDecoder(Ljava/lang/String;Z)Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v1

    .line 211
    const-string/jumbo v2, "cr_media"

    const-string/jumbo v3, "Failed to create MediaCodec: %s, isSecure: %s, direction: %d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 217
    :cond_1
    new-instance v1, Lorg/chromium/media/MediaCodecBridge;

    iget-object v2, v0, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;

    iget-boolean v0, v0, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->supportsAdaptivePlayback:Z

    invoke-direct {v1, v2, p0, v0}, Lorg/chromium/media/MediaCodecBridge;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;Z)V

    move-object v0, v1

    goto :goto_1
.end method

.method private static createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;
    .locals 1

    .prologue
    .line 475
    invoke-static {p0, p1, p2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method private static createVideoDecoderFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;
    .locals 1

    .prologue
    .line 480
    invoke-static {p0, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method private static createVideoEncoderFormat(Ljava/lang/String;IIIIII)Landroid/media/MediaFormat;
    .locals 2

    .prologue
    .line 486
    invoke-static {p0, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 487
    const-string/jumbo v1, "bitrate"

    invoke-virtual {v0, v1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 488
    const-string/jumbo v1, "frame-rate"

    invoke-virtual {v0, v1, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 489
    const-string/jumbo v1, "i-frame-interval"

    invoke-virtual {v0, v1, p5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 490
    const-string/jumbo v1, "color-format"

    invoke-virtual {v0, v1, p6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 491
    return-object v0
.end method

.method private dequeueInputBuffer(J)Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 255
    const/16 v4, 0x9

    .line 258
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 259
    if-ltz v0, :cond_0

    move v1, v2

    .line 271
    :goto_0
    new-instance v2, Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;-><init>(IILorg/chromium/media/MediaCodecBridge$1;)V

    return-object v2

    .line 262
    :cond_0
    if-ne v0, v1, :cond_1

    move v0, v1

    move v1, v3

    .line 263
    goto :goto_0

    .line 265
    :cond_1
    :try_start_1
    const-string/jumbo v5, "cr_media"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Unexpected index_or_status: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v0, v6}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    sget-boolean v0, Lorg/chromium/media/MediaCodecBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    const-string/jumbo v5, "cr_media"

    const-string/jumbo v6, "Failed to dequeue input buffer"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v5, v6, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    move v1, v4

    goto :goto_0

    :cond_2
    move v0, v1

    move v1, v4

    .line 270
    goto :goto_0
.end method

.method private dequeueOutputBuffer(J)Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;
    .locals 13

    .prologue
    const/16 v0, 0x9

    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 408
    new-instance v8, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v8}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 412
    :try_start_0
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v8, p1, p2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    .line 413
    iget-wide v6, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v10, p0, Lorg/chromium/media/MediaCodecBridge;->mLastPresentationTimeUs:J

    cmp-long v1, v6, v10

    if-gez v1, :cond_0

    .line 417
    iget-wide v6, p0, Lorg/chromium/media/MediaCodecBridge;->mLastPresentationTimeUs:J

    iput-wide v6, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 419
    :cond_0
    iget-wide v6, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v6, p0, Lorg/chromium/media/MediaCodecBridge;->mLastPresentationTimeUs:J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    if-ltz v3, :cond_1

    move v2, v4

    .line 447
    :goto_0
    new-instance v1, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;

    iget v4, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget v5, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-wide v6, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;-><init>(IIIIJILorg/chromium/media/MediaCodecBridge$1;)V

    return-object v1

    .line 424
    :cond_1
    const/4 v1, -0x3

    if-ne v3, v1, :cond_3

    .line 425
    :try_start_1
    sget-boolean v1, Lorg/chromium/media/MediaCodecBridge;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-le v1, v3, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 443
    :catch_0
    move-exception v1

    .line 444
    :goto_1
    const-string/jumbo v3, "cr_media"

    const-string/jumbo v5, "Failed to dequeue output buffer"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v4

    invoke-static {v3, v5, v6}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v2

    move v2, v0

    goto :goto_0

    .line 426
    :cond_2
    :try_start_2
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mOutputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 427
    const/4 v0, 0x3

    move v3, v2

    move v2, v0

    goto :goto_0

    .line 428
    :cond_3
    const/4 v1, -0x2

    if-ne v3, v1, :cond_4

    .line 429
    const/4 v1, 0x4

    .line 430
    :try_start_3
    iget-object v3, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    .line 431
    iget-object v5, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v5, :cond_7

    const-string/jumbo v5, "sample-rate"

    invoke-virtual {v3, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 432
    const-string/jumbo v5, "sample-rate"

    invoke-virtual {v3, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 433
    iget-object v5, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v5, v3}, Landroid/media/AudioTrack;->setPlaybackRate(I)I
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v3

    if-eqz v3, :cond_7

    :goto_2
    move v3, v2

    move v2, v0

    .line 437
    goto :goto_0

    :cond_4
    if-ne v3, v2, :cond_5

    .line 438
    const/4 v0, 0x2

    move v3, v2

    move v2, v0

    goto :goto_0

    .line 440
    :cond_5
    :try_start_4
    const-string/jumbo v1, "cr_media"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Unexpected index_or_status: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v3, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 441
    sget-boolean v1, Lorg/chromium/media/MediaCodecBridge;->$assertionsDisabled:Z

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_6
    move v3, v2

    move v2, v0

    .line 445
    goto/16 :goto_0

    .line 443
    :catch_1
    move-exception v0

    move-object v12, v0

    move v0, v1

    move-object v1, v12

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_2
.end method

.method private flush()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 277
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/chromium/media/MediaCodecBridge;->mFlushed:Z

    .line 278
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->pause()V

    .line 281
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->flush()V

    .line 282
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingAudioBuffer:[B

    .line 284
    :cond_0
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->flush()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    return v0

    .line 285
    :catch_0
    move-exception v1

    .line 286
    const-string/jumbo v2, "cr_media"

    const-string/jumbo v3, "Failed to flush MediaCodec"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    const/16 v0, 0x9

    goto :goto_0
.end method

.method private getAudioFormat(I)I
    .locals 2

    .prologue
    .line 638
    packed-switch p1, :pswitch_data_0

    .line 654
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 640
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 642
    :pswitch_2
    const/16 v0, 0xc

    goto :goto_0

    .line 644
    :pswitch_3
    const/16 v0, 0xcc

    goto :goto_0

    .line 646
    :pswitch_4
    const/16 v0, 0xfc

    goto :goto_0

    .line 648
    :pswitch_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 649
    const/16 v0, 0x18fc

    goto :goto_0

    .line 651
    :cond_0
    const/16 v0, 0x3fc

    goto :goto_0

    .line 638
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 5

    .prologue
    .line 316
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    .line 318
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 324
    :goto_0
    return-object v0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    const-string/jumbo v1, "cr_media"

    const-string/jumbo v2, "Failed to get input buffer"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    const/4 v0, 0x0

    goto :goto_0

    .line 324
    :cond_0
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method private getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 5

    .prologue
    .line 330
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    .line 332
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 338
    :goto_0
    return-object v0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    const-string/jumbo v1, "cr_media"

    const-string/jumbo v2, "Failed to get output buffer"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    const/4 v0, 0x0

    goto :goto_0

    .line 338
    :cond_0
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method private getOutputFormat()Lorg/chromium/media/MediaCodecBridge$GetOutputFormatResult;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 302
    .line 305
    :try_start_0
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 310
    :goto_0
    new-instance v3, Lorg/chromium/media/MediaCodecBridge$GetOutputFormatResult;

    invoke-direct {v3, v0, v1, v2}, Lorg/chromium/media/MediaCodecBridge$GetOutputFormatResult;-><init>(ILandroid/media/MediaFormat;Lorg/chromium/media/MediaCodecBridge$1;)V

    return-object v3

    .line 306
    :catch_0
    move-exception v1

    .line 307
    const-string/jumbo v3, "cr_media"

    const-string/jumbo v4, "Failed to get output format"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v0

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    const/16 v0, 0x9

    move-object v1, v2

    goto :goto_0
.end method

.method private isAdaptivePlaybackSupported(II)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 496
    iget-boolean v1, p0, Lorg/chromium/media/MediaCodecBridge;->mAdaptivePlaybackSupported:Z

    if-nez v1, :cond_1

    .line 497
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x780

    if-gt p1, v1, :cond_0

    const/16 v1, 0x438

    if-gt p2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private playOutputBuffer([BZ)J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    const/4 v4, 0x0

    .line 576
    iget-object v2, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v2, :cond_0

    .line 617
    :goto_0
    return-wide v0

    .line 580
    :cond_0
    if-eqz p2, :cond_2

    .line 581
    sget-boolean v2, Lorg/chromium/media/MediaCodecBridge;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingAudioBuffer:[B

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 582
    :cond_1
    iput-object p1, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingAudioBuffer:[B

    goto :goto_0

    .line 586
    :cond_2
    const/4 v0, 0x3

    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 587
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 591
    :cond_3
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingAudioBuffer:[B

    if-eqz v0, :cond_5

    .line 592
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingAudioBuffer:[B

    iget-object v2, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingAudioBuffer:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/media/AudioTrack;->write([BII)I

    move-result v0

    .line 593
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingAudioBuffer:[B

    array-length v1, v1

    if-eq v1, v0, :cond_4

    .line 594
    const-string/jumbo v1, "cr_media"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed to send all data to audio output, expected size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingAudioBuffer:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", actual size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 597
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingAudioBuffer:[B

    .line 600
    :cond_5
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    array-length v1, p1

    invoke-virtual {v0, p1, v4, v1}, Landroid/media/AudioTrack;->write([BII)I

    move-result v0

    .line 601
    array-length v1, p1

    if-eq v1, v0, :cond_6

    .line 602
    const-string/jumbo v1, "cr_media"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed to send all data to audio output, expected size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", actual size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 617
    :cond_6
    const-wide v0, 0xffffffffL

    iget-object v2, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v0, v2

    goto/16 :goto_0
.end method

.method private queueInputBuffer(IIIJI)I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 344
    invoke-direct {p0, p4, p5}, Lorg/chromium/media/MediaCodecBridge;->resetLastPresentationTimeIfNeeded(J)V

    .line 346
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v7

    .line 351
    :goto_0
    return v0

    .line 347
    :catch_0
    move-exception v0

    .line 348
    const-string/jumbo v1, "cr_media"

    const-string/jumbo v2, "Failed to queue input buffer"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    const/16 v0, 0x9

    goto :goto_0
.end method

.method private queueSecureInputBuffer(II[B[B[I[IIJ)I
    .locals 12

    .prologue
    .line 374
    move-wide/from16 v0, p8

    invoke-direct {p0, v0, v1}, Lorg/chromium/media/MediaCodecBridge;->resetLastPresentationTimeIfNeeded(J)V

    .line 376
    :try_start_0
    new-instance v2, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    .line 377
    const/4 v8, 0x1

    move/from16 v3, p7

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p4

    move-object v7, p3

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec$CryptoInfo;->set(I[I[I[B[BI)V

    .line 379
    iget-object v4, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v10, 0x0

    move v5, p1

    move v6, p2

    move-object v7, v2

    move-wide/from16 v8, p8

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 392
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 380
    :catch_0
    move-exception v2

    .line 381
    invoke-virtual {v2}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 383
    const/4 v2, 0x7

    goto :goto_0

    .line 385
    :cond_0
    const-string/jumbo v3, "cr_media"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Failed to queue secure input buffer, CryptoException with error code "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    const/16 v2, 0x9

    goto :goto_0

    .line 388
    :catch_1
    move-exception v2

    .line 389
    const-string/jumbo v3, "cr_media"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Failed to queue secure input buffer, IllegalStateException "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    const/16 v2, 0x9

    goto :goto_0
.end method

.method private release()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 223
    :try_start_0
    const-string/jumbo v0, "cr_media"

    const-string/jumbo v1, "calling MediaCodec.release()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    iput-object v5, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    .line 231
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 234
    :cond_0
    iput-object v5, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingAudioBuffer:[B

    .line 235
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 228
    const-string/jumbo v1, "cr_media"

    const-string/jumbo v2, "Cannot release media codec"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private releaseOutputBuffer(IZ)V
    .locals 5

    .prologue
    .line 398
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :goto_0
    return-void

    .line 399
    :catch_0
    move-exception v0

    .line 401
    const-string/jumbo v1, "cr_media"

    const-string/jumbo v2, "Failed to release output buffer"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private requestKeyFrameSoon()V
    .locals 3

    .prologue
    .line 365
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 366
    const-string/jumbo v1, "request-sync"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 367
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 368
    return-void
.end method

.method private resetLastPresentationTimeIfNeeded(J)V
    .locals 5

    .prologue
    .line 629
    iget-boolean v0, p0, Lorg/chromium/media/MediaCodecBridge;->mFlushed:Z

    if-eqz v0, :cond_0

    .line 630
    const-wide/32 v0, 0x186a0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/media/MediaCodecBridge;->mLastPresentationTimeUs:J

    .line 632
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/media/MediaCodecBridge;->mFlushed:Z

    .line 634
    :cond_0
    return-void
.end method

.method private static setCodecSpecificData(Landroid/media/MediaFormat;I[B)V
    .locals 2

    .prologue
    .line 506
    packed-switch p1, :pswitch_data_0

    .line 517
    const/4 v0, 0x0

    .line 520
    :goto_0
    if-eqz v0, :cond_0

    .line 521
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 523
    :cond_0
    return-void

    .line 508
    :pswitch_0
    const-string/jumbo v0, "csd-0"

    goto :goto_0

    .line 511
    :pswitch_1
    const-string/jumbo v0, "csd-1"

    goto :goto_0

    .line 514
    :pswitch_2
    const-string/jumbo v0, "csd-2"

    goto :goto_0

    .line 506
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static setFrameHasADTSHeader(Landroid/media/MediaFormat;)V
    .locals 2

    .prologue
    .line 527
    const-string/jumbo v0, "is-adts"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 528
    return-void
.end method

.method private setVideoBitrate(I)V
    .locals 2

    .prologue
    .line 357
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 358
    const-string/jumbo v1, "video-bitrate"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 359
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 360
    return-void
.end method

.method private setVolume(D)V
    .locals 3

    .prologue
    .line 623
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    double-to-float v1, p1

    double-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 626
    :cond_0
    return-void
.end method

.method private start()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 241
    :try_start_0
    iget-object v2, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    .line 242
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-gt v2, v3, :cond_0

    .line 243
    iget-object v2, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/media/MediaCodecBridge;->mInputBuffers:[Ljava/nio/ByteBuffer;

    .line 244
    iget-object v2, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/media/MediaCodecBridge;->mOutputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_0
    :goto_0
    return v0

    .line 246
    :catch_0
    move-exception v2

    .line 247
    const-string/jumbo v3, "cr_media"

    const-string/jumbo v4, "Cannot start the media codec"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v3, v4, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 248
    goto :goto_0
.end method

.method private stop()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 295
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 298
    :cond_0
    return-void
.end method
