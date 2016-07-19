.class public abstract Lorg/chromium/media/VideoCapture;
.super Ljava/lang/Object;
.source "VideoCapture.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# instance fields
.field protected mCameraNativeOrientation:I

.field protected mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

.field protected final mContext:Landroid/content/Context;

.field protected final mId:I

.field protected mInvertDeviceOrientationReadings:Z

.field protected final mNativeVideoCaptureDeviceAndroid:J


# direct methods
.method constructor <init>(Landroid/content/Context;IJ)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/media/VideoCapture;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    .line 36
    iput-object p1, p0, Lorg/chromium/media/VideoCapture;->mContext:Landroid/content/Context;

    .line 37
    iput p2, p0, Lorg/chromium/media/VideoCapture;->mId:I

    .line 38
    iput-wide p3, p0, Lorg/chromium/media/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    .line 39
    return-void
.end method


# virtual methods
.method public abstract allocate(III)Z
.end method

.method public abstract deallocate()V
.end method

.method protected final getCameraRotation()I
    .locals 2

    .prologue
    .line 87
    iget-boolean v0, p0, Lorg/chromium/media/VideoCapture;->mInvertDeviceOrientationReadings:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/media/VideoCapture;->getDeviceRotation()I

    move-result v0

    rsub-int v0, v0, 0x168

    .line 89
    :goto_0
    iget v1, p0, Lorg/chromium/media/VideoCapture;->mCameraNativeOrientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    return v0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/media/VideoCapture;->getDeviceRotation()I

    move-result v0

    goto :goto_0
.end method

.method public final getColorspace()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/chromium/media/VideoCapture;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    iget v0, v0, Lorg/chromium/media/VideoCaptureFormat;->mPixelFormat:I

    sparse-switch v0, :sswitch_data_0

    .line 82
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 75
    :sswitch_0
    const v0, 0x32315659

    goto :goto_0

    .line 77
    :sswitch_1
    const/16 v0, 0x23

    goto :goto_0

    .line 79
    :sswitch_2
    const/16 v0, 0x11

    goto :goto_0

    .line 73
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x23 -> :sswitch_1
        0x32315659 -> :sswitch_0
    .end sparse-switch
.end method

.method protected final getDeviceRotation()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lorg/chromium/media/VideoCapture;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 111
    :goto_0
    return v1

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/chromium/media/VideoCapture;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 96
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_1
    move v1, v0

    .line 111
    goto :goto_0

    .line 98
    :pswitch_0
    const/16 v0, 0x5a

    .line 99
    goto :goto_1

    .line 101
    :pswitch_1
    const/16 v0, 0xb4

    .line 102
    goto :goto_1

    .line 104
    :pswitch_2
    const/16 v0, 0x10e

    .line 105
    goto :goto_1

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public native nativeOnError(JLjava/lang/String;)V
.end method

.method public native nativeOnFrameAvailable(J[BII)V
.end method

.method public final queryFrameRate()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/chromium/media/VideoCapture;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    iget v0, v0, Lorg/chromium/media/VideoCaptureFormat;->mFramerate:I

    return v0
.end method

.method public final queryHeight()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/chromium/media/VideoCapture;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    iget v0, v0, Lorg/chromium/media/VideoCaptureFormat;->mHeight:I

    return v0
.end method

.method public final queryWidth()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/chromium/media/VideoCapture;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    iget v0, v0, Lorg/chromium/media/VideoCaptureFormat;->mWidth:I

    return v0
.end method

.method public abstract startCapture()Z
.end method

.method public abstract stopCapture()Z
.end method
