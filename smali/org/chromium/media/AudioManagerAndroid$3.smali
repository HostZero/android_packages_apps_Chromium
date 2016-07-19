.class Lorg/chromium/media/AudioManagerAndroid$3;
.super Landroid/content/BroadcastReceiver;
.source "AudioManagerAndroid.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/media/AudioManagerAndroid;


# direct methods
.method constructor <init>(Lorg/chromium/media/AudioManagerAndroid;)V
    .locals 0

    .prologue
    .line 920
    iput-object p1, p0, Lorg/chromium/media/AudioManagerAndroid$3;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 923
    const-string/jumbo v0, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 932
    packed-switch v0, :pswitch_data_0

    .line 951
    const-string/jumbo v0, "Invalid state"

    # invokes: Lorg/chromium/media/AudioManagerAndroid;->loge(Ljava/lang/String;)V
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->access$500(Ljava/lang/String;)V

    .line 956
    :goto_0
    :pswitch_0
    return-void

    .line 934
    :pswitch_1
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$3;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    const/4 v1, 0x1

    # setter for: Lorg/chromium/media/AudioManagerAndroid;->mBluetoothScoState:I
    invoke-static {v0, v1}, Lorg/chromium/media/AudioManagerAndroid;->access$802(Lorg/chromium/media/AudioManagerAndroid;I)I

    goto :goto_0

    .line 937
    :pswitch_2
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$3;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # getter for: Lorg/chromium/media/AudioManagerAndroid;->mBluetoothScoState:I
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->access$800(Lorg/chromium/media/AudioManagerAndroid;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 941
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$3;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # invokes: Lorg/chromium/media/AudioManagerAndroid;->deviceHasBeenRequested()Z
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->access$600(Lorg/chromium/media/AudioManagerAndroid;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$3;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # invokes: Lorg/chromium/media/AudioManagerAndroid;->updateDeviceActivation()V
    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->access$700(Lorg/chromium/media/AudioManagerAndroid;)V

    .line 945
    :cond_0
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$3;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # setter for: Lorg/chromium/media/AudioManagerAndroid;->mBluetoothScoState:I
    invoke-static {v0, v2}, Lorg/chromium/media/AudioManagerAndroid;->access$802(Lorg/chromium/media/AudioManagerAndroid;I)I

    goto :goto_0

    .line 932
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
