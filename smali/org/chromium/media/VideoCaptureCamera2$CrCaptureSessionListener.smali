.class Lorg/chromium/media/VideoCaptureCamera2$CrCaptureSessionListener;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "VideoCaptureCamera2.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/media/VideoCaptureCamera2;


# direct methods
.method private constructor <init>(Lorg/chromium/media/VideoCaptureCamera2;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrCaptureSessionListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/media/VideoCaptureCamera2;Lorg/chromium/media/VideoCaptureCamera2$1;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lorg/chromium/media/VideoCaptureCamera2$CrCaptureSessionListener;-><init>(Lorg/chromium/media/VideoCaptureCamera2;)V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrCaptureSessionListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    sget-object v1, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->STOPPED:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    # invokes: Lorg/chromium/media/VideoCaptureCamera2;->changeCameraStateAndNotify(Lorg/chromium/media/VideoCaptureCamera2$CameraState;)V
    invoke-static {v0, v1}, Lorg/chromium/media/VideoCaptureCamera2;->access$100(Lorg/chromium/media/VideoCaptureCamera2;Lorg/chromium/media/VideoCaptureCamera2$CameraState;)V

    .line 87
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrCaptureSessionListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrCaptureSessionListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-wide v2, v1, Lorg/chromium/media/VideoCaptureCamera2;->mNativeVideoCaptureDeviceAndroid:J

    const-string/jumbo v1, "Camera session configuration error"

    invoke-virtual {v0, v2, v3, v1}, Lorg/chromium/media/VideoCaptureCamera2;->nativeOnError(JLjava/lang/String;)V

    .line 88
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrCaptureSessionListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    # setter for: Lorg/chromium/media/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v0, p1}, Lorg/chromium/media/VideoCaptureCamera2;->access$302(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 78
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrCaptureSessionListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    # invokes: Lorg/chromium/media/VideoCaptureCamera2;->createCaptureRequest()Z
    invoke-static {v0}, Lorg/chromium/media/VideoCaptureCamera2;->access$400(Lorg/chromium/media/VideoCaptureCamera2;)Z

    .line 79
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrCaptureSessionListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    sget-object v1, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->STARTED:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    # invokes: Lorg/chromium/media/VideoCaptureCamera2;->changeCameraStateAndNotify(Lorg/chromium/media/VideoCaptureCamera2$CameraState;)V
    invoke-static {v0, v1}, Lorg/chromium/media/VideoCaptureCamera2;->access$100(Lorg/chromium/media/VideoCaptureCamera2;Lorg/chromium/media/VideoCaptureCamera2$CameraState;)V

    .line 80
    return-void
.end method
