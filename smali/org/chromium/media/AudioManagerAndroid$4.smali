.class Lorg/chromium/media/AudioManagerAndroid$4;
.super Landroid/database/ContentObserver;
.source "AudioManagerAndroid.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/media/AudioManagerAndroid;


# direct methods
.method constructor <init>(Lorg/chromium/media/AudioManagerAndroid;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1165
    iput-object p1, p0, Lorg/chromium/media/AudioManagerAndroid$4;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1170
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1186
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid$4;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # getter for: Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lorg/chromium/media/AudioManagerAndroid;->access$900(Lorg/chromium/media/AudioManagerAndroid;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1188
    iget-object v2, p0, Lorg/chromium/media/AudioManagerAndroid$4;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    iget-object v3, p0, Lorg/chromium/media/AudioManagerAndroid$4;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    # getter for: Lorg/chromium/media/AudioManagerAndroid;->mNativeAudioManagerAndroid:J
    invoke-static {v3}, Lorg/chromium/media/AudioManagerAndroid;->access$1000(Lorg/chromium/media/AudioManagerAndroid;)J

    move-result-wide v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    # invokes: Lorg/chromium/media/AudioManagerAndroid;->nativeSetMute(JZ)V
    invoke-static {v2, v4, v5, v0}, Lorg/chromium/media/AudioManagerAndroid;->access$1100(Lorg/chromium/media/AudioManagerAndroid;JZ)V

    .line 1189
    return-void
.end method
