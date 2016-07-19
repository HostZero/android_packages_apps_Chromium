.class Lorg/chromium/media/AudioManagerAndroid$1;
.super Landroid/content/BroadcastReceiver;
.source "AudioManagerAndroid.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/media/AudioManagerAndroid;


# direct methods
.method constructor <init>(Lorg/chromium/media/AudioManagerAndroid;)V
    .locals 0

    .prologue
    .line 777
    iput-object p1, p0, Lorg/chromium/media/AudioManagerAndroid$1;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 785
    const-string/jumbo v0, "state"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 795
    packed-switch v0, :pswitch_data_0

    .line 818
    const-string/jumbo v0, "Invalid state"

    # invokes: Lorg/chromium/media/AudioManagerAndroid;->loge(Ljava/lang/String;)V
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->access$500(Ljava/lang/String;)V

    .line 824
    :goto_0
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$1;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # invokes: Lorg/chromium/media/AudioManagerAndroid;->deviceHasBeenRequested()Z
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->access$600(Lorg/chromium/media/AudioManagerAndroid;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$1;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # invokes: Lorg/chromium/media/AudioManagerAndroid;->updateDeviceActivation()V
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->access$700(Lorg/chromium/media/AudioManagerAndroid;)V

    .line 829
    :cond_0
    return-void

    .line 797
    :pswitch_0
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$1;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # getter for: Lorg/chromium/media/AudioManagerAndroid;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->access$100(Lorg/chromium/media/AudioManagerAndroid;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 799
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$1;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # getter for: Lorg/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->access$200(Lorg/chromium/media/AudioManagerAndroid;)[Z

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-boolean v3, v0, v2

    .line 800
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$1;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # invokes: Lorg/chromium/media/AudioManagerAndroid;->hasUsbAudio()Z
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->access$300(Lorg/chromium/media/AudioManagerAndroid;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 801
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$1;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # getter for: Lorg/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->access$200(Lorg/chromium/media/AudioManagerAndroid;)[Z

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 802
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$1;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # getter for: Lorg/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->access$200(Lorg/chromium/media/AudioManagerAndroid;)[Z

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-boolean v3, v0, v2

    .line 807
    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 803
    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$1;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # invokes: Lorg/chromium/media/AudioManagerAndroid;->hasEarpiece()Z
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->access$400(Lorg/chromium/media/AudioManagerAndroid;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 804
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$1;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # getter for: Lorg/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->access$200(Lorg/chromium/media/AudioManagerAndroid;)[Z

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 805
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$1;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # getter for: Lorg/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->access$200(Lorg/chromium/media/AudioManagerAndroid;)[Z

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    aput-boolean v3, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 810
    :pswitch_1
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$1;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # getter for: Lorg/chromium/media/AudioManagerAndroid;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->access$100(Lorg/chromium/media/AudioManagerAndroid;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 812
    :try_start_2
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$1;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # getter for: Lorg/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->access$200(Lorg/chromium/media/AudioManagerAndroid;)[Z

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 813
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$1;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # getter for: Lorg/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->access$200(Lorg/chromium/media/AudioManagerAndroid;)[Z

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-boolean v3, v0, v2

    .line 814
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$1;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # getter for: Lorg/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->access$200(Lorg/chromium/media/AudioManagerAndroid;)[Z

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    aput-boolean v3, v0, v2

    .line 815
    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 795
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
