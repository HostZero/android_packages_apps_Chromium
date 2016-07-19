.class Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;
.super Ljava/lang/Object;
.source "VideoCaptureCamera2.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/media/VideoCaptureCamera2;


# direct methods
.method private constructor <init>(Lorg/chromium/media/VideoCaptureCamera2;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/media/VideoCaptureCamera2;Lorg/chromium/media/VideoCaptureCamera2$1;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;-><init>(Lorg/chromium/media/VideoCaptureCamera2;)V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 8

    .prologue
    .line 96
    const/4 v1, 0x0

    .line 98
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 99
    if-nez v7, :cond_1

    .line 119
    if-eqz v7, :cond_0

    .line 120
    invoke-virtual {v7}, Landroid/media/Image;->close()V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    :try_start_1
    invoke-virtual {v7}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_2

    invoke-virtual {v7}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 101
    :cond_2
    const-string/jumbo v0, "cr.media"

    const-string/jumbo v1, "Unexpected image format: %d or #planes: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v7}, Landroid/media/Image;->getFormat()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v7}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 119
    if-eqz v7, :cond_0

    .line 120
    invoke-virtual {v7}, Landroid/media/Image;->close()V

    goto :goto_0

    .line 106
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    invoke-virtual {v7}, Landroid/media/Image;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/media/ImageReader;->getHeight()I

    move-result v0

    invoke-virtual {v7}, Landroid/media/Image;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 108
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ImageReader size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/ImageReader;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/ImageReader;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not match Image size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 115
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 116
    :goto_1
    :try_start_3
    const-string/jumbo v2, "cr.media"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "acquireLatestImage():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 119
    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    goto/16 :goto_0

    .line 112
    :cond_5
    :try_start_4
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    # getter for: Lorg/chromium/media/VideoCaptureCamera2;->mCapturedData:[B
    invoke-static {v0}, Lorg/chromium/media/VideoCaptureCamera2;->access$500(Lorg/chromium/media/VideoCaptureCamera2;)[B

    move-result-object v0

    # invokes: Lorg/chromium/media/VideoCaptureCamera2;->readImageIntoBuffer(Landroid/media/Image;[B)V
    invoke-static {v7, v0}, Lorg/chromium/media/VideoCaptureCamera2;->access$600(Landroid/media/Image;[B)V

    .line 113
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-wide v2, v0, Lorg/chromium/media/VideoCaptureCamera2;->mNativeVideoCaptureDeviceAndroid:J

    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    # getter for: Lorg/chromium/media/VideoCaptureCamera2;->mCapturedData:[B
    invoke-static {v0}, Lorg/chromium/media/VideoCaptureCamera2;->access$500(Lorg/chromium/media/VideoCaptureCamera2;)[B

    move-result-object v4

    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    # getter for: Lorg/chromium/media/VideoCaptureCamera2;->mCapturedData:[B
    invoke-static {v0}, Lorg/chromium/media/VideoCaptureCamera2;->access$500(Lorg/chromium/media/VideoCaptureCamera2;)[B

    move-result-object v0

    array-length v5, v0

    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-virtual {v0}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraRotation()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/media/VideoCaptureCamera2;->nativeOnFrameAvailable(J[BII)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 119
    if-eqz v7, :cond_0

    .line 120
    invoke-virtual {v7}, Landroid/media/Image;->close()V

    goto/16 :goto_0

    .line 119
    :catchall_0
    move-exception v0

    move-object v7, v1

    :goto_2
    if-eqz v7, :cond_6

    .line 120
    invoke-virtual {v7}, Landroid/media/Image;->close()V

    :cond_6
    throw v0

    .line 119
    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v7, v1

    goto :goto_2

    .line 115
    :catch_1
    move-exception v0

    goto :goto_1
.end method
