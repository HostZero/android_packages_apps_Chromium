.class Lorg/chromium/media/AudioManagerAndroid$5;
.super Landroid/content/BroadcastReceiver;
.source "AudioManagerAndroid.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/media/AudioManagerAndroid;


# direct methods
.method constructor <init>(Lorg/chromium/media/AudioManagerAndroid;)V
    .locals 0

    .prologue
    .line 1244
    iput-object p1, p0, Lorg/chromium/media/AudioManagerAndroid$5;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 1247
    const-string/jumbo v0, "device"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 1254
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid$5;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # invokes: Lorg/chromium/media/AudioManagerAndroid;->hasUsbAudioCommInterface(Landroid/hardware/usb/UsbDevice;)Z
    invoke-static {v1, v0}, Lorg/chromium/media/AudioManagerAndroid;->access$1200(Lorg/chromium/media/AudioManagerAndroid;Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1287
    :cond_0
    :goto_0
    return-void

    .line 1256
    :cond_1
    const-string/jumbo v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1257
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$5;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # getter for: Lorg/chromium/media/AudioManagerAndroid;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->access$100(Lorg/chromium/media/AudioManagerAndroid;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1259
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$5;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # invokes: Lorg/chromium/media/AudioManagerAndroid;->hasWiredHeadset()Z
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->access$1300(Lorg/chromium/media/AudioManagerAndroid;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1260
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$5;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # getter for: Lorg/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->access$200(Lorg/chromium/media/AudioManagerAndroid;)[Z

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 1261
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$5;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # getter for: Lorg/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->access$200(Lorg/chromium/media/AudioManagerAndroid;)[Z

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-boolean v3, v0, v2

    .line 1263
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1282
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$5;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # invokes: Lorg/chromium/media/AudioManagerAndroid;->deviceHasBeenRequested()Z
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->access$600(Lorg/chromium/media/AudioManagerAndroid;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1283
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$5;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # invokes: Lorg/chromium/media/AudioManagerAndroid;->updateDeviceActivation()V
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->access$700(Lorg/chromium/media/AudioManagerAndroid;)V

    goto :goto_0

    .line 1263
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1264
    :cond_4
    const-string/jumbo v0, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$5;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # invokes: Lorg/chromium/media/AudioManagerAndroid;->hasUsbAudio()Z
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->access$300(Lorg/chromium/media/AudioManagerAndroid;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1269
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$5;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # getter for: Lorg/chromium/media/AudioManagerAndroid;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->access$100(Lorg/chromium/media/AudioManagerAndroid;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1270
    :try_start_2
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$5;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # invokes: Lorg/chromium/media/AudioManagerAndroid;->hasWiredHeadset()Z
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->access$1300(Lorg/chromium/media/AudioManagerAndroid;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1271
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$5;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # getter for: Lorg/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->access$200(Lorg/chromium/media/AudioManagerAndroid;)[Z

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    aput-boolean v3, v0, v2

    .line 1273
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$5;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # invokes: Lorg/chromium/media/AudioManagerAndroid;->hasEarpiece()Z
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->access$400(Lorg/chromium/media/AudioManagerAndroid;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1274
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$5;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # getter for: Lorg/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->access$200(Lorg/chromium/media/AudioManagerAndroid;)[Z

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 1277
    :cond_5
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
