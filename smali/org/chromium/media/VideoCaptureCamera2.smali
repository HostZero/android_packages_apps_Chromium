.class public Lorg/chromium/media/VideoCaptureCamera2;
.super Lorg/chromium/media/VideoCapture;
.source "VideoCaptureCamera2.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# instance fields
.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraState:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

.field private final mCameraStateLock:Ljava/lang/Object;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mCapturedData:[B

.field private mImageReader:Landroid/media/ImageReader;

.field private mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;


# direct methods
.method constructor <init>(Landroid/content/Context;IJ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 378
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/media/VideoCapture;-><init>(Landroid/content/Context;IJ)V

    .line 128
    iput-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 129
    iput-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 130
    iput-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 131
    iput-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mImageReader:Landroid/media/ImageReader;

    .line 137
    sget-object v0, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->STOPPED:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    iput-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraState:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    .line 379
    return-void
.end method

.method static synthetic access$002(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$100(Lorg/chromium/media/VideoCaptureCamera2;Lorg/chromium/media/VideoCaptureCamera2$CameraState;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/chromium/media/VideoCaptureCamera2;->changeCameraStateAndNotify(Lorg/chromium/media/VideoCaptureCamera2$CameraState;)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/media/VideoCaptureCamera2;)Z
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/chromium/media/VideoCaptureCamera2;->createCaptureObjects()Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$400(Lorg/chromium/media/VideoCaptureCamera2;)Z
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/chromium/media/VideoCaptureCamera2;->createCaptureRequest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/chromium/media/VideoCaptureCamera2;)[B
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCapturedData:[B

    return-object v0
.end method

.method static synthetic access$600(Landroid/media/Image;[B)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0, p1}, Lorg/chromium/media/VideoCaptureCamera2;->readImageIntoBuffer(Landroid/media/Image;[B)V

    return-void
.end method

.method private changeCameraStateAndNotify(Lorg/chromium/media/VideoCaptureCamera2$CameraState;)V
    .locals 2

    .prologue
    .line 279
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 280
    :try_start_0
    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraState:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    .line 281
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 282
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private createCaptureObjects()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 154
    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v2, :cond_0

    .line 213
    :goto_0
    return v0

    .line 159
    :cond_0
    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {v2}, Lorg/chromium/media/VideoCaptureFormat;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {v3}, Lorg/chromium/media/VideoCaptureFormat;->getHeight()I

    move-result v3

    iget-object v4, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {v4}, Lorg/chromium/media/VideoCaptureFormat;->getPixelFormat()I

    move-result v4

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mImageReader:Landroid/media/ImageReader;

    .line 161
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "CameraPreview"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 163
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 164
    new-instance v2, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;

    invoke-direct {v2, p0, v6}, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;-><init>(Lorg/chromium/media/VideoCaptureCamera2;Lorg/chromium/media/VideoCaptureCamera2$1;)V

    .line 165
    iget-object v4, p0, Lorg/chromium/media/VideoCaptureCamera2;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v4, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 170
    :try_start_0
    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 181
    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v2, :cond_1

    .line 182
    const-string/jumbo v1, "cr.media"

    const-string/jumbo v2, "mPreviewBuilder error"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 171
    :catch_0
    move-exception v1

    .line 172
    const-string/jumbo v2, "cr.media"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "createCaptureRequest: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 174
    :catch_1
    move-exception v1

    .line 175
    const-string/jumbo v2, "cr.media"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "createCaptureRequest: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 177
    :catch_2
    move-exception v1

    .line 178
    const-string/jumbo v2, "cr.media"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "createCaptureRequest: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 186
    :cond_1
    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, p0, Lorg/chromium/media/VideoCaptureCamera2;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 189
    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 190
    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 192
    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 193
    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 197
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 198
    iget-object v3, p0, Lorg/chromium/media/VideoCaptureCamera2;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v3, Lorg/chromium/media/VideoCaptureCamera2$CrCaptureSessionListener;

    invoke-direct {v3, p0, v6}, Lorg/chromium/media/VideoCaptureCamera2$CrCaptureSessionListener;-><init>(Lorg/chromium/media/VideoCaptureCamera2;Lorg/chromium/media/VideoCaptureCamera2$1;)V

    .line 201
    :try_start_1
    iget-object v4, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v3, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_5

    move v0, v1

    .line 213
    goto/16 :goto_0

    .line 202
    :catch_3
    move-exception v1

    .line 203
    const-string/jumbo v2, "cr.media"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "createCaptureSession: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 205
    :catch_4
    move-exception v1

    .line 206
    const-string/jumbo v2, "cr.media"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "createCaptureSession: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 208
    :catch_5
    move-exception v1

    .line 209
    const-string/jumbo v2, "cr.media"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "createCaptureSession: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private createCaptureRequest()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 223
    :try_start_0
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 235
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 224
    :catch_0
    move-exception v1

    .line 225
    const-string/jumbo v2, "cr.media"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setRepeatingRequest: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 227
    :catch_1
    move-exception v1

    .line 228
    const-string/jumbo v2, "cr.media"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setRepeatingRequest: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 230
    :catch_2
    move-exception v1

    .line 231
    const-string/jumbo v2, "cr.media"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setRepeatingRequest: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 4

    .prologue
    .line 142
    const-string/jumbo v0, "camera"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 145
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    const-string/jumbo v1, "cr.media"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getNumberOfCameras: getCameraIdList(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getCaptureApiType(ILandroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 305
    invoke-static {p1, p0}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 307
    if-nez v0, :cond_0

    .line 308
    const/4 v0, 0x5

    .line 321
    :goto_0
    return v0

    .line 311
    :cond_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 313
    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 321
    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 315
    goto :goto_0

    .line 317
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 319
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 313
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getDeviceSupportedFormats(Landroid/content/Context;I)[Lorg/chromium/media/VideoCaptureFormat;
    .locals 16

    .prologue
    .line 335
    invoke-static/range {p0 .. p1}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    .line 337
    if-nez v3, :cond_0

    const/4 v0, 0x0

    .line 374
    :goto_0
    return-object v0

    .line 339
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 343
    const/4 v1, 0x0

    .line 344
    array-length v4, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_1

    aget v5, v0, v2

    .line 345
    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 346
    const/4 v0, 0x1

    move v1, v0

    .line 351
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 352
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 354
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object v7

    .line 355
    array-length v8, v7

    const/4 v2, 0x0

    move v5, v2

    :goto_2
    if-ge v5, v8, :cond_6

    aget v9, v7, v5

    .line 356
    invoke-virtual {v0, v9}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v10

    .line 357
    if-eqz v10, :cond_5

    .line 358
    array-length v11, v10

    const/4 v2, 0x0

    move v4, v2

    :goto_3
    if-ge v4, v11, :cond_5

    aget-object v12, v10, v4

    .line 360
    if-eqz v1, :cond_4

    .line 361
    invoke-virtual {v0, v9, v12}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    move-result-wide v2

    .line 362
    const-wide/16 v14, 0x0

    cmp-long v13, v2, v14

    if-nez v13, :cond_3

    const-wide/16 v2, 0x0

    .line 370
    :goto_4
    new-instance v13, Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v14

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v12

    double-to-int v2, v2

    const/4 v3, 0x0

    invoke-direct {v13, v14, v12, v2, v3}, Lorg/chromium/media/VideoCaptureFormat;-><init>(IIII)V

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_3

    .line 344
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 362
    :cond_3
    const-wide v14, 0x41cdcd64ffffffffL    # 9.999999999999999E8

    long-to-double v2, v2

    mul-double/2addr v2, v14

    goto :goto_4

    .line 368
    :cond_4
    const-wide/16 v2, 0x0

    goto :goto_4

    .line 355
    :cond_5
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_2

    .line 374
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/media/VideoCaptureFormat;

    goto :goto_0
.end method

.method static getName(ILandroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 326
    invoke-static {p1, p0}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 328
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 330
    :goto_0
    return-object v0

    .line 329
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "camera2 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", facing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_1

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

.method static getNumberOfCameras(Landroid/content/Context;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 294
    const-string/jumbo v0, "camera"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 297
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_0
    return v0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    const-string/jumbo v2, "cr.media"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getNumberOfCameras: getCameraIdList(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 300
    goto :goto_0
.end method

.method static isLegacyDevice(Landroid/content/Context;I)Z
    .locals 2

    .prologue
    .line 286
    invoke-static {p0, p1}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 288
    if-eqz v0, :cond_0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static readImageIntoBuffer(Landroid/media/Image;[B)V
    .locals 17

    .prologue
    .line 239
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v9

    .line 240
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v7

    .line 241
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v10

    .line 243
    const/4 v2, 0x0

    .line 244
    const/4 v1, 0x0

    :goto_0
    array-length v3, v10

    if-ge v1, v3, :cond_6

    .line 245
    aget-object v3, v10, v1

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 246
    aget-object v3, v10, v1

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v12

    .line 250
    aget-object v3, v10, v1

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v13

    .line 251
    if-nez v1, :cond_1

    move v8, v9

    .line 252
    :goto_1
    if-nez v1, :cond_2

    move v6, v7

    .line 254
    :goto_2
    const/4 v3, 0x1

    if-ne v13, v3, :cond_3

    if-ne v12, v8, :cond_3

    .line 256
    mul-int v3, v8, v6

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 257
    mul-int v3, v8, v6

    add-int/2addr v2, v3

    .line 244
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    :cond_1
    div-int/lit8 v3, v9, 0x2

    move v8, v3

    goto :goto_1

    .line 252
    :cond_2
    div-int/lit8 v3, v7, 0x2

    move v6, v3

    goto :goto_2

    .line 260
    :cond_3
    new-array v14, v12, [B

    .line 261
    const/4 v3, 0x0

    move v5, v3

    move v3, v2

    :goto_3
    add-int/lit8 v2, v6, -0x1

    if-ge v5, v2, :cond_5

    .line 262
    const/4 v2, 0x0

    invoke-virtual {v11, v14, v2, v12}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 263
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v8, :cond_4

    .line 264
    add-int/lit8 v4, v3, 0x1

    mul-int v15, v2, v13

    aget-byte v15, v14, v15

    aput-byte v15, p1, v3

    .line 263
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_4

    .line 261
    :cond_4
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_3

    .line 270
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v12, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v11, v14, v2, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 271
    const/4 v2, 0x0

    move/from16 v16, v2

    move v2, v3

    move/from16 v3, v16

    :goto_5
    if-ge v3, v8, :cond_0

    .line 272
    add-int/lit8 v4, v2, 0x1

    mul-int v5, v3, v13

    aget-byte v5, v14, v5

    aput-byte v5, p1, v2

    .line 271
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_5

    .line 276
    :cond_6
    return-void
.end method


# virtual methods
.method public allocate(III)Z
    .locals 9

    .prologue
    .line 383
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 384
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 385
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraState:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    sget-object v2, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->OPENING:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraState:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    sget-object v2, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->CONFIGURING:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    if-ne v0, v2, :cond_1

    .line 386
    :cond_0
    const-string/jumbo v0, "cr.media"

    const-string/jumbo v2, "allocate() invoked while Camera is busy opening/configuring."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    const/4 v0, 0x0

    monitor-exit v1

    .line 427
    :goto_0
    return v0

    .line 389
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mContext:Landroid/content/Context;

    iget v1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mId:I

    invoke-static {v0, v1}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    .line 391
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 395
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v6

    .line 396
    if-nez v6, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 389
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 397
    :cond_2
    const/4 v3, 0x0

    .line 398
    const v1, 0x7fffffff

    .line 399
    array-length v7, v6

    const/4 v0, 0x0

    move v4, v0

    :goto_1
    if-ge v4, v7, :cond_3

    aget-object v2, v6, v4

    .line 400
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v8

    sub-int/2addr v8, p2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v0, v8

    .line 402
    if-ge v0, v1, :cond_6

    move-object v1, v2

    .line 399
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v1

    move v1, v0

    goto :goto_1

    .line 407
    :cond_3
    const v0, 0x7fffffff

    if-ne v1, v0, :cond_4

    .line 408
    const-string/jumbo v0, "cr.media"

    const-string/jumbo v1, "No supported resolutions."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 409
    const/4 v0, 0x0

    goto :goto_0

    .line 411
    :cond_4
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 415
    new-instance v0, Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/16 v3, 0x23

    invoke-direct {v0, v1, v2, p3, v3}, Lorg/chromium/media/VideoCaptureFormat;-><init>(IIII)V

    iput-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    .line 417
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    iget v0, v0, Lorg/chromium/media/VideoCaptureFormat;->mWidth:I

    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    iget v1, v1, Lorg/chromium/media/VideoCaptureFormat;->mHeight:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    iget v1, v1, Lorg/chromium/media/VideoCaptureFormat;->mPixelFormat:I

    invoke-static {v1}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    .line 419
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCapturedData:[B

    .line 420
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraNativeOrientation:I

    .line 424
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mInvertDeviceOrientationReadings:Z

    .line 427
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 424
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    move v0, v1

    move-object v1, v3

    goto :goto_2
.end method

.method public deallocate()V
    .locals 0

    .prologue
    .line 490
    return-void
.end method

.method public startCapture()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 433
    sget-object v0, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->OPENING:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    invoke-direct {p0, v0}, Lorg/chromium/media/VideoCaptureCamera2;->changeCameraStateAndNotify(Lorg/chromium/media/VideoCaptureCamera2$CameraState;)V

    .line 434
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "camera"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 436
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lorg/chromium/media/VideoCaptureCamera2;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 437
    new-instance v3, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;-><init>(Lorg/chromium/media/VideoCaptureCamera2;Lorg/chromium/media/VideoCaptureCamera2$1;)V

    .line 439
    :try_start_0
    iget v4, p0, Lorg/chromium/media/VideoCaptureCamera2;->mId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3, v2}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 451
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 440
    :catch_0
    move-exception v0

    .line 441
    const-string/jumbo v2, "cr.media"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "allocate: manager.openCamera: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 442
    goto :goto_0

    .line 443
    :catch_1
    move-exception v0

    .line 444
    const-string/jumbo v2, "cr.media"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "allocate: manager.openCamera: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 445
    goto :goto_0

    .line 446
    :catch_2
    move-exception v0

    .line 447
    const-string/jumbo v2, "cr.media"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "allocate: manager.openCamera: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 448
    goto :goto_0
.end method

.method public stopCapture()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 461
    iget-object v3, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 462
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraState:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    sget-object v4, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->STARTED:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraState:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    sget-object v4, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->STOPPED:Lorg/chromium/media/VideoCaptureCamera2$CameraState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v4, :cond_0

    .line 464
    :try_start_1
    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 465
    :catch_0
    move-exception v2

    .line 466
    :try_start_2
    const-string/jumbo v4, "cr.media"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "CaptureStartedEvent: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v2, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 469
    :cond_0
    :try_start_3
    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraState:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    sget-object v4, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->STOPPED:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    if-ne v2, v4, :cond_1

    monitor-exit v3

    .line 484
    :goto_1
    return v0

    .line 470
    :cond_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 473
    :try_start_4
    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2

    .line 481
    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_1

    .line 474
    :catch_1
    move-exception v0

    .line 475
    const-string/jumbo v2, "cr.media"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "abortCaptures: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 476
    goto :goto_1

    .line 477
    :catch_2
    move-exception v0

    .line 478
    const-string/jumbo v2, "cr.media"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "abortCaptures: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 479
    goto :goto_1

    .line 482
    :cond_2
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 483
    sget-object v1, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->STOPPED:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    invoke-direct {p0, v1}, Lorg/chromium/media/VideoCaptureCamera2;->changeCameraStateAndNotify(Lorg/chromium/media/VideoCaptureCamera2$CameraState;)V

    goto :goto_1
.end method
