.class Lorg/chromium/media/midi/MidiManagerAndroid$2;
.super Ljava/lang/Object;
.source "MidiManagerAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/media/midi/MidiManagerAndroid;


# direct methods
.method constructor <init>(Lorg/chromium/media/midi/MidiManagerAndroid;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lorg/chromium/media/midi/MidiManagerAndroid$2;->this$0:Lorg/chromium/media/midi/MidiManagerAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 103
    iget-object v0, p0, Lorg/chromium/media/midi/MidiManagerAndroid$2;->this$0:Lorg/chromium/media/midi/MidiManagerAndroid;

    # getter for: Lorg/chromium/media/midi/MidiManagerAndroid;->mPendingDevices:Ljava/util/Set;
    invoke-static {v0}, Lorg/chromium/media/midi/MidiManagerAndroid;->access$200(Lorg/chromium/media/midi/MidiManagerAndroid;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/media/midi/MidiManagerAndroid$2;->this$0:Lorg/chromium/media/midi/MidiManagerAndroid;

    # getter for: Lorg/chromium/media/midi/MidiManagerAndroid;->mIsInitializing:Z
    invoke-static {v0}, Lorg/chromium/media/midi/MidiManagerAndroid;->access$300(Lorg/chromium/media/midi/MidiManagerAndroid;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lorg/chromium/media/midi/MidiManagerAndroid$2;->this$0:Lorg/chromium/media/midi/MidiManagerAndroid;

    # getter for: Lorg/chromium/media/midi/MidiManagerAndroid;->mNativeManagerPointer:J
    invoke-static {v0}, Lorg/chromium/media/midi/MidiManagerAndroid;->access$400(Lorg/chromium/media/midi/MidiManagerAndroid;)J

    move-result-wide v2

    iget-object v0, p0, Lorg/chromium/media/midi/MidiManagerAndroid$2;->this$0:Lorg/chromium/media/midi/MidiManagerAndroid;

    # getter for: Lorg/chromium/media/midi/MidiManagerAndroid;->mDevices:Ljava/util/List;
    invoke-static {v0}, Lorg/chromium/media/midi/MidiManagerAndroid;->access$500(Lorg/chromium/media/midi/MidiManagerAndroid;)Ljava/util/List;

    move-result-object v0

    new-array v1, v4, [Lorg/chromium/media/midi/MidiDeviceAndroid;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/media/midi/MidiDeviceAndroid;

    invoke-static {v2, v3, v0}, Lorg/chromium/media/midi/MidiManagerAndroid;->nativeOnInitialized(J[Lorg/chromium/media/midi/MidiDeviceAndroid;)V

    .line 106
    iget-object v0, p0, Lorg/chromium/media/midi/MidiManagerAndroid$2;->this$0:Lorg/chromium/media/midi/MidiManagerAndroid;

    # setter for: Lorg/chromium/media/midi/MidiManagerAndroid;->mIsInitializing:Z
    invoke-static {v0, v4}, Lorg/chromium/media/midi/MidiManagerAndroid;->access$302(Lorg/chromium/media/midi/MidiManagerAndroid;Z)Z

    .line 108
    :cond_0
    return-void
.end method
