.class Lorg/chromium/media/AudioManagerAndroid$2;
.super Landroid/content/BroadcastReceiver;
.source "AudioManagerAndroid.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/media/AudioManagerAndroid;


# direct methods
.method constructor <init>(Lorg/chromium/media/AudioManagerAndroid;)V
    .locals 0

    .prologue
    .line 855
    iput-object p1, p0, Lorg/chromium/media/AudioManagerAndroid$2;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 861
    const-string/jumbo v0, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 870
    packed-switch v0, :pswitch_data_0

    .line 893
    const-string/jumbo v0, "Invalid state"

    # invokes: Lorg/chromium/media/AudioManagerAndroid;->loge(Ljava/lang/String;)V
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->access$500(Ljava/lang/String;)V

    .line 900
    :goto_0
    :pswitch_0
    return-void

    .line 875
    :pswitch_1
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$2;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # getter for: Lorg/chromium/media/AudioManagerAndroid;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->access$100(Lorg/chromium/media/AudioManagerAndroid;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 877
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$2;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # getter for: Lorg/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->access$200(Lorg/chromium/media/AudioManagerAndroid;)[Z

    move-result-object v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    aput-boolean v3, v0, v2

    .line 878
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 881
    :pswitch_2
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$2;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # getter for: Lorg/chromium/media/AudioManagerAndroid;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->access$100(Lorg/chromium/media/AudioManagerAndroid;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 883
    :try_start_1
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$2;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # getter for: Lorg/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->access$200(Lorg/chromium/media/AudioManagerAndroid;)[Z

    move-result-object v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 884
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 870
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
