.class Lorg/chromium/media/midi/MidiInputPortAndroid$1;
.super Landroid/media/midi/MidiReceiver;
.source "MidiInputPortAndroid.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/media/midi/MidiInputPortAndroid;


# direct methods
.method constructor <init>(Lorg/chromium/media/midi/MidiInputPortAndroid;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lorg/chromium/media/midi/MidiInputPortAndroid$1;->this$0:Lorg/chromium/media/midi/MidiInputPortAndroid;

    invoke-direct {p0}, Landroid/media/midi/MidiReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onSend([BIIJ)V
    .locals 8

    .prologue
    .line 72
    iget-object v0, p0, Lorg/chromium/media/midi/MidiInputPortAndroid$1;->this$0:Lorg/chromium/media/midi/MidiInputPortAndroid;

    # getter for: Lorg/chromium/media/midi/MidiInputPortAndroid;->mNativeReceiverPointer:J
    invoke-static {v0}, Lorg/chromium/media/midi/MidiInputPortAndroid;->access$000(Lorg/chromium/media/midi/MidiInputPortAndroid;)J

    move-result-wide v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    # invokes: Lorg/chromium/media/midi/MidiInputPortAndroid;->nativeOnData(J[BIIJ)V
    invoke-static/range {v0 .. v6}, Lorg/chromium/media/midi/MidiInputPortAndroid;->access$100(J[BIIJ)V

    .line 73
    return-void
.end method
