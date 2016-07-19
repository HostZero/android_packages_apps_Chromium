.class Lorg/chromium/media/AudioRecordInput;
.super Ljava/lang/Object;
.source "AudioRecordInput.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# instance fields
.field private mAEC:Landroid/media/audiofx/AcousticEchoCanceler;

.field private mAudioRecord:Landroid/media/AudioRecord;

.field private mAudioRecordThread:Lorg/chromium/media/AudioRecordInput$AudioRecordThread;

.field private final mBitsPerSample:I

.field private mBuffer:Ljava/nio/ByteBuffer;

.field private final mChannels:I

.field private final mHardwareDelayBytes:I

.field private final mNativeAudioRecordInputStream:J

.field private final mSampleRate:I

.field private final mUsePlatformAEC:Z


# direct methods
.method private constructor <init>(JIIIIZ)V
    .locals 3

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-wide p1, p0, Lorg/chromium/media/AudioRecordInput;->mNativeAudioRecordInputStream:J

    .line 107
    iput p3, p0, Lorg/chromium/media/AudioRecordInput;->mSampleRate:I

    .line 108
    iput p4, p0, Lorg/chromium/media/AudioRecordInput;->mChannels:I

    .line 109
    iput p5, p0, Lorg/chromium/media/AudioRecordInput;->mBitsPerSample:I

    .line 110
    mul-int/lit8 v0, p3, 0x64

    div-int/lit16 v0, v0, 0x3e8

    mul-int/2addr v0, p5

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/chromium/media/AudioRecordInput;->mHardwareDelayBytes:I

    .line 111
    iput-boolean p7, p0, Lorg/chromium/media/AudioRecordInput;->mUsePlatformAEC:Z

    .line 117
    invoke-static {p6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/media/AudioRecordInput;->mBuffer:Ljava/nio/ByteBuffer;

    .line 125
    iget-wide v0, p0, Lorg/chromium/media/AudioRecordInput;->mNativeAudioRecordInputStream:J

    iget-object v2, p0, Lorg/chromium/media/AudioRecordInput;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/media/AudioRecordInput;->nativeCacheDirectBufferAddress(JLjava/nio/ByteBuffer;)V

    .line 126
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/media/AudioRecordInput;)Landroid/media/AudioRecord;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lorg/chromium/media/AudioRecordInput;->mAudioRecord:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/media/AudioRecordInput;)Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lorg/chromium/media/AudioRecordInput;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/media/AudioRecordInput;)J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lorg/chromium/media/AudioRecordInput;->mNativeAudioRecordInputStream:J

    return-wide v0
.end method

.method static synthetic access$300(Lorg/chromium/media/AudioRecordInput;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lorg/chromium/media/AudioRecordInput;->mHardwareDelayBytes:I

    return v0
.end method

.method static synthetic access$400(Lorg/chromium/media/AudioRecordInput;JII)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/media/AudioRecordInput;->nativeOnData(JII)V

    return-void
.end method

.method private close()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 227
    iget-object v0, p0, Lorg/chromium/media/AudioRecordInput;->mAudioRecordThread:Lorg/chromium/media/AudioRecordInput$AudioRecordThread;

    if-eqz v0, :cond_1

    .line 228
    const-string/jumbo v0, "cr.media"

    const-string/jumbo v1, "close() called before stop()."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lorg/chromium/media/AudioRecordInput;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lorg/chromium/media/AudioRecordInput;->mAEC:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lorg/chromium/media/AudioRecordInput;->mAEC:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->release()V

    .line 238
    iput-object v1, p0, Lorg/chromium/media/AudioRecordInput;->mAEC:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 240
    :cond_2
    iget-object v0, p0, Lorg/chromium/media/AudioRecordInput;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 241
    iput-object v1, p0, Lorg/chromium/media/AudioRecordInput;->mAudioRecord:Landroid/media/AudioRecord;

    goto :goto_0
.end method

.method private static createAudioRecordInput(JIIIIZ)Lorg/chromium/media/AudioRecordInput;
    .locals 10

    .prologue
    .line 100
    new-instance v1, Lorg/chromium/media/AudioRecordInput;

    move-wide v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lorg/chromium/media/AudioRecordInput;-><init>(JIIIIZ)V

    return-object v1
.end method

.method private native nativeCacheDirectBufferAddress(JLjava/nio/ByteBuffer;)V
.end method

.method private native nativeOnData(JII)V
.end method

.method private open()Z
    .locals 8

    .prologue
    const/16 v0, 0x10

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 131
    iget-object v1, p0, Lorg/chromium/media/AudioRecordInput;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_0

    .line 132
    const-string/jumbo v0, "cr.media"

    const-string/jumbo v1, "open() called twice without a close()"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v6

    .line 197
    :goto_0
    return v0

    .line 136
    :cond_0
    iget v1, p0, Lorg/chromium/media/AudioRecordInput;->mChannels:I

    if-ne v1, v7, :cond_2

    move v3, v0

    .line 146
    :goto_1
    iget v1, p0, Lorg/chromium/media/AudioRecordInput;->mBitsPerSample:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 147
    const/4 v4, 0x3

    .line 158
    :cond_1
    iget v0, p0, Lorg/chromium/media/AudioRecordInput;->mSampleRate:I

    invoke-static {v0, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    .line 159
    if-gez v0, :cond_5

    .line 160
    const-string/jumbo v1, "cr.media"

    const-string/jumbo v2, "getMinBufferSize error: %d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v6

    .line 161
    goto :goto_0

    .line 138
    :cond_2
    iget v1, p0, Lorg/chromium/media/AudioRecordInput;->mChannels:I

    if-ne v1, v4, :cond_3

    .line 139
    const/16 v3, 0xc

    goto :goto_1

    .line 141
    :cond_3
    const-string/jumbo v0, "cr.media"

    const-string/jumbo v1, "Unsupported number of channels: %d"

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Lorg/chromium/media/AudioRecordInput;->mChannels:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v6

    .line 142
    goto :goto_0

    .line 148
    :cond_4
    iget v1, p0, Lorg/chromium/media/AudioRecordInput;->mBitsPerSample:I

    if-eq v1, v0, :cond_1

    .line 151
    const-string/jumbo v0, "cr.media"

    const-string/jumbo v1, "Unsupported bits per sample: %d"

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Lorg/chromium/media/AudioRecordInput;->mBitsPerSample:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v6

    .line 152
    goto :goto_0

    .line 166
    :cond_5
    iget-object v1, p0, Lorg/chromium/media/AudioRecordInput;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 169
    :try_start_0
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x7

    iget v2, p0, Lorg/chromium/media/AudioRecordInput;->mSampleRate:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lorg/chromium/media/AudioRecordInput;->mAudioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 180
    iget-object v0, p0, Lorg/chromium/media/AudioRecordInput;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v0

    invoke-static {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/media/AudioRecordInput;->mAEC:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 181
    iget-object v0, p0, Lorg/chromium/media/AudioRecordInput;->mAEC:Landroid/media/audiofx/AcousticEchoCanceler;

    if-nez v0, :cond_6

    .line 182
    const-string/jumbo v0, "cr.media"

    const-string/jumbo v1, "AcousticEchoCanceler.create failed"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v6

    .line 183
    goto/16 :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    const-string/jumbo v1, "cr.media"

    const-string/jumbo v2, "AudioRecord failed"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v6

    .line 176
    goto/16 :goto_0

    .line 185
    :cond_6
    iget-object v0, p0, Lorg/chromium/media/AudioRecordInput;->mAEC:Landroid/media/audiofx/AcousticEchoCanceler;

    iget-boolean v1, p0, Lorg/chromium/media/AudioRecordInput;->mUsePlatformAEC:Z

    invoke-virtual {v0, v1}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    move-result v0

    .line 186
    if-eqz v0, :cond_7

    .line 187
    const-string/jumbo v1, "cr.media"

    const-string/jumbo v2, "setEnabled error: %d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v6

    .line 188
    goto/16 :goto_0

    :cond_7
    move v0, v7

    .line 197
    goto/16 :goto_0
.end method

.method private start()V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lorg/chromium/media/AudioRecordInput;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_1

    .line 203
    const-string/jumbo v0, "cr.media"

    const-string/jumbo v1, "start() called before open()."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lorg/chromium/media/AudioRecordInput;->mAudioRecordThread:Lorg/chromium/media/AudioRecordInput$AudioRecordThread;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Lorg/chromium/media/AudioRecordInput$AudioRecordThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/media/AudioRecordInput$AudioRecordThread;-><init>(Lorg/chromium/media/AudioRecordInput;Lorg/chromium/media/AudioRecordInput$1;)V

    iput-object v0, p0, Lorg/chromium/media/AudioRecordInput;->mAudioRecordThread:Lorg/chromium/media/AudioRecordInput$AudioRecordThread;

    .line 211
    iget-object v0, p0, Lorg/chromium/media/AudioRecordInput;->mAudioRecordThread:Lorg/chromium/media/AudioRecordInput$AudioRecordThread;

    invoke-virtual {v0}, Lorg/chromium/media/AudioRecordInput$AudioRecordThread;->start()V

    goto :goto_0
.end method

.method private stop()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/chromium/media/AudioRecordInput;->mAudioRecordThread:Lorg/chromium/media/AudioRecordInput$AudioRecordThread;

    if-nez v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lorg/chromium/media/AudioRecordInput;->mAudioRecordThread:Lorg/chromium/media/AudioRecordInput$AudioRecordThread;

    invoke-virtual {v0}, Lorg/chromium/media/AudioRecordInput$AudioRecordThread;->joinRecordThread()V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/media/AudioRecordInput;->mAudioRecordThread:Lorg/chromium/media/AudioRecordInput$AudioRecordThread;

    goto :goto_0
.end method
