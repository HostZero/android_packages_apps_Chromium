.class public abstract Lorg/chromium/media/VideoCaptureCamera;
.super Lorg/chromium/media/VideoCapture;
.source "VideoCaptureCamera.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field protected static final GL_TEXTURE_EXTERNAL_OES:I = 0x8d65


# instance fields
.field protected mCamera:Landroid/hardware/Camera;

.field protected mGlTextures:[I

.field protected mIsRunning:Z

.field protected mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected mSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method constructor <init>(Landroid/content/Context;IJ)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/media/VideoCapture;-><init>(Landroid/content/Context;IJ)V

    .line 33
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mIsRunning:Z

    .line 37
    iput-object v1, p0, Lorg/chromium/media/VideoCaptureCamera;->mGlTextures:[I

    .line 38
    iput-object v1, p0, Lorg/chromium/media/VideoCaptureCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 69
    return-void
.end method

.method protected static getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;
    .locals 4

    .prologue
    .line 44
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 46
    :try_start_0
    invoke-static {p0, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-object v0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    const-string/jumbo v1, "cr.media"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getCameraInfo: Camera.getCameraInfo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;
    .locals 4

    .prologue
    .line 58
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string/jumbo v1, "cr.media"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getCameraParameters: android.hardware.Camera.getParameters: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/Camera;->release()V

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public allocate(III)Z
    .locals 11

    .prologue
    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    :try_start_0
    iget v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mId:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    iget v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mId:I

    invoke-static {v0}, Lorg/chromium/media/VideoCaptureCamera;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    .line 82
    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    .line 85
    const/4 v0, 0x0

    .line 206
    :goto_0
    return v0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    const-string/jumbo v1, "cr.media"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "allocate: Camera.open: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    const/4 v0, 0x0

    goto :goto_0

    .line 87
    :cond_0
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iput v1, p0, Lorg/chromium/media/VideoCaptureCamera;->mCameraNativeOrientation:I

    .line 89
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mInvertDeviceOrientationReadings:Z

    .line 91
    invoke-virtual {p0}, Lorg/chromium/media/VideoCaptureCamera;->getDeviceRotation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    iget v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mCameraNativeOrientation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    iget-boolean v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mInvertDeviceOrientationReadings:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 94
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-static {v0}, Lorg/chromium/media/VideoCaptureCamera;->getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v7

    .line 95
    if-nez v7, :cond_2

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    .line 97
    const/4 v0, 0x0

    goto :goto_0

    .line 89
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 102
    :cond_2
    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v3

    .line 103
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 104
    :cond_3
    const-string/jumbo v0, "cr.media"

    const-string/jumbo v1, "allocate: no fps range found"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    const/4 v0, 0x0

    goto :goto_0

    .line 108
    :cond_4
    mul-int/lit16 v4, p3, 0x3e8

    .line 110
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 111
    const/4 v1, 0x0

    aget v1, v0, v1

    sub-int v1, v4, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x1

    aget v2, v0, v2

    sub-int v2, v4, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v1, 0x0

    aget v1, v0, v1

    .line 115
    :goto_2
    add-int/lit16 v1, v1, 0x3e7

    div-int/lit16 v2, v1, 0x3e8

    .line 116
    const v1, 0x7fffffff

    .line 117
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v0

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 118
    const/4 v6, 0x0

    aget v6, v0, v6

    if-gt v6, v4, :cond_c

    const/4 v6, 0x1

    aget v6, v0, v6

    if-gt v4, v6, :cond_c

    const/4 v6, 0x1

    aget v6, v0, v6

    const/4 v8, 0x0

    aget v8, v0, v8

    sub-int/2addr v6, v8

    if-gt v6, v1, :cond_c

    .line 122
    const/4 v1, 0x1

    aget v1, v0, v1

    const/4 v2, 0x0

    aget v2, v0, v2

    sub-int/2addr v1, v2

    move-object v2, v0

    move v0, v1

    move v1, p3

    :goto_4
    move-object v3, v2

    move v2, v1

    move v1, v0

    .line 124
    goto :goto_3

    .line 111
    :cond_5
    const/4 v1, 0x1

    aget v1, v0, v1

    goto :goto_2

    .line 125
    :cond_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    const/4 v0, 0x0

    aget v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    const/4 v0, 0x1

    aget v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 130
    const v4, 0x7fffffff

    .line 133
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v5, p2

    move v6, p1

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 134
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v9, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v9, p2

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v1, v9

    .line 135
    iget v9, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    iget v9, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    if-ge v1, v4, :cond_b

    iget v9, v0, Landroid/hardware/Camera$Size;->width:I

    rem-int/lit8 v9, v9, 0x20

    if-nez v9, :cond_b

    .line 142
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    .line 143
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move v10, v1

    move v1, v0

    move v0, v10

    :goto_6
    move v5, v1

    move v6, v4

    move v4, v0

    .line 145
    goto :goto_5

    .line 146
    :cond_7
    const v0, 0x7fffffff

    if-ne v4, v0, :cond_8

    .line 147
    const-string/jumbo v0, "cr.media"

    const-string/jumbo v1, "allocate: can not find a multiple-of-32 resolution"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 150
    :cond_8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Image stabilization supported, currently: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getVideoStabilization()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", setting it."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 160
    :cond_9
    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "continuous-video"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 162
    const-string/jumbo v0, "continuous-video"

    invoke-virtual {v7, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 167
    :cond_a
    invoke-virtual {p0, v6, v5, v2, v7}, Lorg/chromium/media/VideoCaptureCamera;->setCaptureParameters(IIILandroid/hardware/Camera$Parameters;)V

    .line 168
    invoke-virtual {v7, v6, v5}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 169
    invoke-virtual {v7, v6, v5}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 170
    const/4 v0, 0x0

    aget v0, v3, v0

    const/4 v1, 0x1

    aget v1, v3, v1

    invoke-virtual {v7, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 171
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    iget v0, v0, Lorg/chromium/media/VideoCaptureFormat;->mPixelFormat:I

    invoke-virtual {v7, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 173
    :try_start_1
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mGlTextures:[I

    .line 183
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera;->mGlTextures:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 184
    const v0, 0x8d65

    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera;->mGlTextures:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 186
    const v0, 0x8d65

    const/16 v1, 0x2801

    const v2, 0x46180400    # 9729.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 188
    const v0, 0x8d65

    const/16 v1, 0x2800

    const v2, 0x46180400    # 9729.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 191
    const v0, 0x8d65

    const/16 v1, 0x2802

    const v2, 0x812f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 193
    const v0, 0x8d65

    const/16 v1, 0x2803

    const v2, 0x812f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 196
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera;->mGlTextures:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 197
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 199
    :try_start_2
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 205
    invoke-virtual {p0}, Lorg/chromium/media/VideoCaptureCamera;->allocateBuffers()V

    .line 206
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 174
    :catch_1
    move-exception v0

    .line 175
    const-string/jumbo v1, "cr.media"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setParameters: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 200
    :catch_2
    move-exception v0

    .line 201
    const-string/jumbo v1, "cr.media"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "allocate: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_b
    move v0, v4

    move v1, v5

    move v4, v6

    goto/16 :goto_6

    :cond_c
    move v0, v1

    move v1, v2

    move-object v2, v3

    goto/16 :goto_4
.end method

.method abstract allocateBuffers()V
.end method

.method public deallocate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 259
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/media/VideoCaptureCamera;->stopCapture()Z

    .line 263
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 264
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mGlTextures:[I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera;->mGlTextures:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 265
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    .line 266
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    const-string/jumbo v1, "cr.media"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deallocate: failed to deallocate camera, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method abstract setCaptureParameters(IIILandroid/hardware/Camera$Parameters;)V
.end method

.method abstract setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
.end method

.method public startCapture()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 211
    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-nez v2, :cond_0

    .line 212
    const-string/jumbo v1, "cr.media"

    const-string/jumbo v2, "startCapture: camera is null"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    :goto_0
    return v0

    .line 216
    :cond_0
    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 218
    :try_start_0
    iget-boolean v2, p0, Lorg/chromium/media/VideoCaptureCamera;->mIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 223
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v0, v1

    goto :goto_0

    .line 221
    :cond_1
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lorg/chromium/media/VideoCaptureCamera;->mIsRunning:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 225
    invoke-virtual {p0, p0}, Lorg/chromium/media/VideoCaptureCamera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 227
    :try_start_2
    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v1

    .line 232
    goto :goto_0

    .line 223
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 228
    :catch_0
    move-exception v1

    .line 229
    const-string/jumbo v2, "cr.media"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startCapture: Camera.startPreview: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public stopCapture()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 237
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 238
    const-string/jumbo v0, "cr.media"

    const-string/jumbo v1, "stopCapture: camera is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    :goto_0
    return v3

    .line 242
    :cond_0
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 244
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 249
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 247
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mIsRunning:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 252
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 253
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/media/VideoCaptureCamera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
