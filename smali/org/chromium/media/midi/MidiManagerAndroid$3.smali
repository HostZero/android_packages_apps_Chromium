.class Lorg/chromium/media/midi/MidiManagerAndroid$3;
.super Ljava/lang/Object;
.source "MidiManagerAndroid.java"

# interfaces
.implements Landroid/media/midi/MidiManager$OnDeviceOpenedListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/media/midi/MidiManagerAndroid;

.field final synthetic val$info:Landroid/media/midi/MidiDeviceInfo;


# direct methods
.method constructor <init>(Lorg/chromium/media/midi/MidiManagerAndroid;Landroid/media/midi/MidiDeviceInfo;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lorg/chromium/media/midi/MidiManagerAndroid$3;->this$0:Lorg/chromium/media/midi/MidiManagerAndroid;

    iput-object p2, p0, Lorg/chromium/media/midi/MidiManagerAndroid$3;->val$info:Landroid/media/midi/MidiDeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceOpened(Landroid/media/midi/MidiDevice;)V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lorg/chromium/media/midi/MidiManagerAndroid$3;->this$0:Lorg/chromium/media/midi/MidiManagerAndroid;

    iget-object v1, p0, Lorg/chromium/media/midi/MidiManagerAndroid$3;->val$info:Landroid/media/midi/MidiDeviceInfo;

    # invokes: Lorg/chromium/media/midi/MidiManagerAndroid;->onDeviceOpened(Landroid/media/midi/MidiDevice;Landroid/media/midi/MidiDeviceInfo;)V
    invoke-static {v0, p1, v1}, Lorg/chromium/media/midi/MidiManagerAndroid;->access$600(Lorg/chromium/media/midi/MidiManagerAndroid;Landroid/media/midi/MidiDevice;Landroid/media/midi/MidiDeviceInfo;)V

    .line 117
    return-void
.end method
