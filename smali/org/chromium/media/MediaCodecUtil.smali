.class Lorg/chromium/media/MediaCodecUtil;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final MEDIA_CODEC_DECODER:I = 0x0

.field static final MEDIA_CODEC_ENCODER:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lorg/chromium/media/MediaCodecUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/media/MediaCodecUtil;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method private static canDecode(Ljava/lang/String;Z)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 129
    invoke-static {p0, p1}, Lorg/chromium/media/MediaCodecUtil;->createDecoder(Ljava/lang/String;Z)Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;

    move-result-object v2

    .line 130
    iget-object v3, v2, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;

    if-nez v3, :cond_0

    .line 137
    :goto_0
    return v0

    .line 133
    :cond_0
    :try_start_0
    iget-object v2, v2, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v0, v1

    .line 137
    goto :goto_0

    .line 134
    :catch_0
    move-exception v2

    .line 135
    const-string/jumbo v3, "MediaCodecUtil"

    const-string/jumbo v4, "Cannot release media codec"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static codecSupportsAdaptivePlayback(Landroid/media/MediaCodec;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 238
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    if-nez p0, :cond_1

    .line 253
    :cond_0
    :goto_0
    return v0

    .line 242
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v2

    .line 243
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v3

    if-nez v3, :cond_0

    .line 246
    invoke-virtual {v2, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v2

    .line 247
    if-eqz v2, :cond_0

    const-string/jumbo v3, "adaptive-playback"

    invoke-virtual {v2, v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 250
    :catch_0
    move-exception v2

    .line 251
    const-string/jumbo v3, "MediaCodecUtil"

    const-string/jumbo v4, "Cannot retrieve codec information"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {v3, v4, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static createDecoder(Ljava/lang/String;Z)Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 149
    new-instance v0, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;

    invoke-direct {v0}, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;-><init>()V

    .line 151
    sget-boolean v2, Lorg/chromium/media/MediaCodecUtil;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, v0, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 155
    :cond_0
    if-eqz p1, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ge v2, v3, :cond_1

    .line 189
    :goto_0
    return-object v0

    .line 158
    :cond_1
    invoke-static {p0}, Lorg/chromium/media/MediaCodecUtil;->isDecoderSupportedForDevice(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 159
    const-string/jumbo v1, "MediaCodecUtil"

    const-string/jumbo v2, "Decoder for type %s is not supported on this device"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 165
    :cond_2
    :try_start_0
    const-string/jumbo v2, "video"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p1, :cond_5

    .line 166
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lorg/chromium/media/MediaCodecUtil;->getDefaultCodecName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 167
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, v1

    goto :goto_0

    .line 168
    :cond_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_4

    .line 174
    invoke-static {v2}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    .line 175
    invoke-static {v3, p0}, Lorg/chromium/media/MediaCodecUtil;->codecSupportsAdaptivePlayback(Landroid/media/MediaCodec;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v0, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->supportsAdaptivePlayback:Z

    .line 177
    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    .line 179
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".secure"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v2

    .line 186
    const-string/jumbo v3, "MediaCodecUtil"

    const-string/jumbo v4, "Failed to create MediaCodec: %s, isSecure: %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x2

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    iput-object v1, v0, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;

    goto :goto_0

    .line 181
    :cond_5
    :try_start_1
    invoke-static {p0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;

    .line 182
    iget-object v2, v0, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;

    invoke-static {v2, p0}, Lorg/chromium/media/MediaCodecUtil;->codecSupportsAdaptivePlayback(Landroid/media/MediaCodec;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->supportsAdaptivePlayback:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private static getDefaultCodecName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 80
    new-instance v4, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;

    invoke-direct {v4}, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;-><init>()V

    .line 81
    invoke-virtual {v4}, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;->getCodecCount()I

    move-result v5

    move v3, v1

    .line 82
    :goto_0
    if-ge v3, v5, :cond_3

    .line 83
    invoke-virtual {v4, v3}, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v6

    .line 85
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 86
    :goto_1
    if-ne v0, p1, :cond_2

    .line 88
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v7

    move v0, v1

    .line 89
    :goto_2
    array-length v8, v7

    if-ge v0, v8, :cond_2

    .line 90
    aget-object v8, v7, v0

    invoke-virtual {v8, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_3
    return-object v0

    :cond_0
    move v0, v1

    .line 85
    goto :goto_1

    .line 89
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 82
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 94
    :cond_3
    const-string/jumbo v0, "MediaCodecUtil"

    const-string/jumbo v3, "Decoder for type %s is not supported on this device"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-static {v0, v3, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    const-string/jumbo v0, ""

    goto :goto_3
.end method

.method private static getEncoderColorFormatsForMime(Ljava/lang/String;)[I
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 105
    new-instance v3, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;

    invoke-direct {v3}, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;-><init>()V

    .line 106
    invoke-virtual {v3}, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;->getCodecCount()I

    move-result v4

    move v2, v1

    .line 107
    :goto_0
    if-ge v2, v4, :cond_2

    .line 108
    invoke-virtual {v3, v2}, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v5

    .line 109
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    move v0, v1

    .line 112
    :goto_1
    array-length v7, v6

    if-ge v0, v7, :cond_1

    .line 113
    aget-object v7, v6, v0

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 114
    aget-object v0, v6, v0

    invoke-virtual {v5, v0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    .line 118
    :goto_2
    return-object v0

    .line 112
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 118
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method static isDecoderSupportedForDevice(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 203
    const-string/jumbo v1, "video/x-vnd.on2.vp8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "samsung"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 210
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "GT-I9505"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "GT-I9500"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v0

    .line 219
    :cond_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "GT-I9190"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "GT-I9195"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
