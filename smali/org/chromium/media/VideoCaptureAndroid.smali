.class public Lorg/chromium/media/VideoCaptureAndroid;
.super Lorg/chromium/media/VideoCaptureCamera;
.source "VideoCaptureAndroid.java"


# instance fields
.field private mExpectedFrameSize:I


# direct methods
.method constructor <init>(Landroid/content/Context;IJ)V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/media/VideoCaptureCamera;-><init>(Landroid/content/Context;IJ)V

    .line 129
    return-void
.end method

.method static getCaptureApiType(I)I
    .locals 1

    .prologue
    .line 52
    invoke-static {p0}, Lorg/chromium/media/VideoCaptureCamera;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x5

    .line 55
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getDeviceSupportedFormats(I)[Lorg/chromium/media/VideoCaptureFormat;
    .locals 15

    .prologue
    const/4 v0, 0x0

    const v3, 0x32315659

    const/4 v14, 0x1

    const/4 v4, 0x0

    .line 71
    :try_start_0
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 76
    invoke-static {v5}, Lorg/chromium/media/VideoCaptureAndroid;->getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    .line 77
    if-nez v6, :cond_0

    .line 124
    :goto_0
    return-object v0

    .line 72
    :catch_0
    move-exception v1

    .line 73
    const-string/jumbo v2, "cr.media"

    const-string/jumbo v3, "Camera.open: "

    new-array v5, v14, [Ljava/lang/Object;

    aput-object v1, v5, v4

    invoke-static {v2, v3, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 81
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v0

    .line 87
    if-nez v0, :cond_1

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 91
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 95
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_9

    move v2, v3

    .line 101
    :goto_1
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 102
    if-nez v0, :cond_4

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 106
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 109
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 111
    if-nez v1, :cond_7

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 114
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_8

    .line 115
    new-instance v10, Landroid/hardware/Camera$Size;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v10, v5, v4, v4}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 118
    new-instance v11, Lorg/chromium/media/VideoCaptureFormat;

    iget v12, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    aget v13, v0, v14

    add-int/lit16 v13, v13, 0x3e7

    div-int/lit16 v13, v13, 0x3e8

    invoke-direct {v11, v12, v1, v13, v2}, Lorg/chromium/media/VideoCaptureFormat;-><init>(IIII)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 97
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_3

    move v2, v4

    goto :goto_1

    .line 123
    :cond_a
    invoke-virtual {v5}, Landroid/hardware/Camera;->release()V

    .line 124
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/media/VideoCaptureFormat;

    goto/16 :goto_0

    .line 106
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static getName(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 59
    invoke-static {p0}, Lorg/chromium/media/VideoCaptureCamera;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    .line 60
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "camera "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", facing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string/jumbo v0, "front"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "back"

    goto :goto_1
.end method

.method static getNumberOfCameras()I
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected allocateBuffers()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureAndroid;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    iget v0, v0, Lorg/chromium/media/VideoCaptureFormat;->mWidth:I

    iget-object v1, p0, Lorg/chromium/media/VideoCaptureAndroid;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    iget v1, v1, Lorg/chromium/media/VideoCaptureFormat;->mHeight:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lorg/chromium/media/VideoCaptureAndroid;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    iget v1, v1, Lorg/chromium/media/VideoCaptureFormat;->mPixelFormat:I

    invoke-static {v1}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/chromium/media/VideoCaptureAndroid;->mExpectedFrameSize:I

    .line 142
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 143
    iget v1, p0, Lorg/chromium/media/VideoCaptureAndroid;->mExpectedFrameSize:I

    new-array v1, v1, [B

    .line 144
    iget-object v2, p0, Lorg/chromium/media/VideoCaptureAndroid;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_0
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 7

    .prologue
    .line 155
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureAndroid;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 157
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/media/VideoCaptureAndroid;->mIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 165
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureAndroid;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 166
    if-eqz p2, :cond_0

    .line 167
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    :try_start_1
    array-length v0, p1

    iget v1, p0, Lorg/chromium/media/VideoCaptureAndroid;->mExpectedFrameSize:I

    if-ne v0, v1, :cond_2

    .line 161
    iget-wide v2, p0, Lorg/chromium/media/VideoCaptureAndroid;->mNativeVideoCaptureDeviceAndroid:J

    iget v5, p0, Lorg/chromium/media/VideoCaptureAndroid;->mExpectedFrameSize:I

    invoke-virtual {p0}, Lorg/chromium/media/VideoCaptureAndroid;->getCameraRotation()I

    move-result v6

    move-object v1, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/media/VideoCaptureAndroid;->nativeOnFrameAvailable(J[BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :cond_2
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureAndroid;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 166
    if-eqz p2, :cond_0

    .line 167
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/chromium/media/VideoCaptureAndroid;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 166
    if-eqz p2, :cond_3

    .line 167
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    :cond_3
    throw v0
.end method

.method protected setCaptureParameters(IIILandroid/hardware/Camera$Parameters;)V
    .locals 2

    .prologue
    .line 134
    new-instance v0, Lorg/chromium/media/VideoCaptureFormat;

    invoke-static {}, Lorg/chromium/media/VideoCaptureAndroid$BuggyDeviceHack;->getImageFormat()I

    move-result v1

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/chromium/media/VideoCaptureFormat;-><init>(IIII)V

    iput-object v0, p0, Lorg/chromium/media/VideoCaptureAndroid;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    .line 136
    return-void
.end method

.method protected setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureAndroid;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 151
    return-void
.end method
