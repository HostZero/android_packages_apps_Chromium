.class public Lorg/chromium/media/VideoCaptureTango;
.super Lorg/chromium/media/VideoCaptureCamera;
.source "VideoCaptureTango.java"


# static fields
.field private static final CAM_PARAMS:[Lorg/chromium/media/VideoCaptureTango$CamParams;


# instance fields
.field private mFrameBuffer:Ljava/nio/ByteBuffer;

.field private final mTangoCameraId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/chromium/media/VideoCaptureTango$CamParams;

    new-instance v1, Lorg/chromium/media/VideoCaptureTango$CamParams;

    const-string/jumbo v2, "depth"

    const/16 v3, 0x140

    const/16 v4, 0xf0

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/media/VideoCaptureTango$CamParams;-><init>(ILjava/lang/String;II)V

    aput-object v1, v0, v5

    new-instance v1, Lorg/chromium/media/VideoCaptureTango$CamParams;

    const-string/jumbo v2, "fisheye"

    const/16 v3, 0x280

    const/16 v4, 0x1e0

    invoke-direct {v1, v6, v2, v3, v4}, Lorg/chromium/media/VideoCaptureTango$CamParams;-><init>(ILjava/lang/String;II)V

    aput-object v1, v0, v6

    new-instance v1, Lorg/chromium/media/VideoCaptureTango$CamParams;

    const-string/jumbo v2, "4MP"

    const/16 v3, 0x500

    const/16 v4, 0x2d0

    invoke-direct {v1, v7, v2, v3, v4}, Lorg/chromium/media/VideoCaptureTango$CamParams;-><init>(ILjava/lang/String;II)V

    aput-object v1, v0, v7

    sput-object v0, Lorg/chromium/media/VideoCaptureTango;->CAM_PARAMS:[Lorg/chromium/media/VideoCaptureTango$CamParams;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;IJ)V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3, p4}, Lorg/chromium/media/VideoCaptureCamera;-><init>(Landroid/content/Context;IJ)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/media/VideoCaptureTango;->mFrameBuffer:Ljava/nio/ByteBuffer;

    .line 97
    iput p2, p0, Lorg/chromium/media/VideoCaptureTango;->mTangoCameraId:I

    .line 98
    return-void
.end method

.method static getCaptureApiType(I)I
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lorg/chromium/media/VideoCaptureTango;->CAM_PARAMS:[Lorg/chromium/media/VideoCaptureTango$CamParams;

    array-length v0, v0

    if-lt p0, v0, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 74
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method static getDeviceSupportedFormats(I)[Lorg/chromium/media/VideoCaptureFormat;
    .locals 6

    .prologue
    const v5, 0x32315659

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    if-nez p0, :cond_1

    .line 85
    new-instance v1, Lorg/chromium/media/VideoCaptureFormat;

    const/16 v2, 0x140

    const/16 v3, 0xb4

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/chromium/media/VideoCaptureFormat;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/media/VideoCaptureFormat;

    return-object v0

    .line 86
    :cond_1
    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    .line 87
    new-instance v1, Lorg/chromium/media/VideoCaptureFormat;

    const/16 v2, 0x280

    const/16 v3, 0x1e0

    const/16 v4, 0x1e

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/chromium/media/VideoCaptureFormat;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    :cond_2
    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 89
    new-instance v1, Lorg/chromium/media/VideoCaptureFormat;

    const/16 v2, 0x500

    const/16 v3, 0x2d0

    const/16 v4, 0x14

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/chromium/media/VideoCaptureFormat;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static getName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lorg/chromium/media/VideoCaptureTango;->CAM_PARAMS:[Lorg/chromium/media/VideoCaptureTango$CamParams;

    array-length v0, v0

    if-lt p0, v0, :cond_0

    const-string/jumbo v0, ""

    .line 79
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/chromium/media/VideoCaptureTango;->CAM_PARAMS:[Lorg/chromium/media/VideoCaptureTango$CamParams;

    aget-object v0, v0, p0

    iget-object v0, v0, Lorg/chromium/media/VideoCaptureTango$CamParams;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method static numberOfCameras()I
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lorg/chromium/media/VideoCaptureTango;->CAM_PARAMS:[Lorg/chromium/media/VideoCaptureTango$CamParams;

    array-length v0, v0

    return v0
.end method


# virtual methods
.method protected allocateBuffers()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureTango;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    iget v0, v0, Lorg/chromium/media/VideoCaptureFormat;->mWidth:I

    iget-object v1, p0, Lorg/chromium/media/VideoCaptureTango;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    iget v1, v1, Lorg/chromium/media/VideoCaptureFormat;->mHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/media/VideoCaptureTango;->mFrameBuffer:Ljava/nio/ByteBuffer;

    .line 116
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureTango;->mFrameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/16 v1, 0x7f

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 117
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 126
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureTango;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 128
    :try_start_0
    iget-boolean v1, p0, Lorg/chromium/media/VideoCaptureTango;->mIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 182
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureTango;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 183
    :goto_0
    return-void

    .line 129
    :cond_0
    :try_start_1
    array-length v1, p1

    const v2, 0x223800

    if-ne v1, v2, :cond_4

    .line 130
    iget v1, p0, Lorg/chromium/media/VideoCaptureTango;->mTangoCameraId:I

    if-nez v1, :cond_2

    .line 140
    const v1, 0x69000

    :goto_1
    const v2, 0x8e800

    if-ge v1, v2, :cond_1

    .line 141
    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x4

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 142
    iget-object v3, p0, Lorg/chromium/media/VideoCaptureTango;->mFrameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 140
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 144
    :cond_1
    :goto_2
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureTango;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    iget v1, v1, Lorg/chromium/media/VideoCaptureFormat;->mWidth:I

    iget-object v2, p0, Lorg/chromium/media/VideoCaptureTango;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    iget v2, v2, Lorg/chromium/media/VideoCaptureFormat;->mHeight:I

    mul-int/2addr v1, v2

    const v2, 0x12c00

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_3

    .line 146
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureTango;->mFrameBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 148
    :cond_2
    iget v0, p0, Lorg/chromium/media/VideoCaptureTango;->mTangoCameraId:I

    if-ne v0, v3, :cond_5

    .line 153
    const/16 v0, 0x5000

    const v1, 0x4b000

    invoke-static {p1, v0, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/media/VideoCaptureTango;->mFrameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x4b000

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 177
    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureTango;->mFrameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 178
    iget-wide v2, p0, Lorg/chromium/media/VideoCaptureTango;->mNativeVideoCaptureDeviceAndroid:J

    iget-object v0, p0, Lorg/chromium/media/VideoCaptureTango;->mFrameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    iget-object v0, p0, Lorg/chromium/media/VideoCaptureTango;->mFrameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {p0}, Lorg/chromium/media/VideoCaptureTango;->getCameraRotation()I

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/media/VideoCaptureTango;->nativeOnFrameAvailable(J[BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    :cond_4
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureTango;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 154
    :cond_5
    :try_start_2
    iget v0, p0, Lorg/chromium/media/VideoCaptureTango;->mTangoCameraId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 169
    const v0, 0x8c000

    const v1, 0xe1000

    invoke-static {p1, v0, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/media/VideoCaptureTango;->mFrameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0xe1000

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 170
    const/high16 v0, 0x190000

    const v1, 0x38400

    invoke-static {p1, v0, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/media/VideoCaptureTango;->mFrameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const v2, 0xe1000

    const v3, 0x38400

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 171
    const v0, 0x1eb400

    const v1, 0x38400

    invoke-static {p1, v0, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/media/VideoCaptureTango;->mFrameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const v2, 0x119400

    const v3, 0x38400

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 182
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/chromium/media/VideoCaptureTango;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 174
    :cond_6
    :try_start_3
    const-string/jumbo v0, "cr.media"

    const-string/jumbo v1, "Unknown camera, #id: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lorg/chromium/media/VideoCaptureTango;->mTangoCameraId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 182
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureTango;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0
.end method

.method protected setCaptureParameters(IIILandroid/hardware/Camera$Parameters;)V
    .locals 4

    .prologue
    .line 103
    new-instance v0, Lorg/chromium/media/VideoCaptureFormat;

    sget-object v1, Lorg/chromium/media/VideoCaptureTango;->CAM_PARAMS:[Lorg/chromium/media/VideoCaptureTango$CamParams;

    iget v2, p0, Lorg/chromium/media/VideoCaptureTango;->mTangoCameraId:I

    aget-object v1, v1, v2

    iget v1, v1, Lorg/chromium/media/VideoCaptureTango$CamParams;->mWidth:I

    sget-object v2, Lorg/chromium/media/VideoCaptureTango;->CAM_PARAMS:[Lorg/chromium/media/VideoCaptureTango$CamParams;

    iget v3, p0, Lorg/chromium/media/VideoCaptureTango;->mTangoCameraId:I

    aget-object v2, v2, v3

    iget v2, v2, Lorg/chromium/media/VideoCaptureTango$CamParams;->mHeight:I

    const v3, 0x32315659

    invoke-direct {v0, v1, v2, p3, v3}, Lorg/chromium/media/VideoCaptureFormat;-><init>(IIII)V

    iput-object v0, p0, Lorg/chromium/media/VideoCaptureTango;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    .line 107
    const-string/jumbo v0, "sf-mode"

    const-string/jumbo v1, "all"

    invoke-virtual {p4, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method protected setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureTango;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 122
    return-void
.end method
