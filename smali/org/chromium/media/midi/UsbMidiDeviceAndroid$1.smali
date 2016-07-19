.class Lorg/chromium/media/midi/UsbMidiDeviceAndroid$1;
.super Ljava/lang/Thread;
.source "UsbMidiDeviceAndroid.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/media/midi/UsbMidiDeviceAndroid;

.field final synthetic val$bufferForEndpoints:Ljava/util/Map;


# direct methods
.method constructor <init>(Lorg/chromium/media/midi/UsbMidiDeviceAndroid;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid$1;->this$0:Lorg/chromium/media/midi/UsbMidiDeviceAndroid;

    iput-object p2, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid$1;->val$bufferForEndpoints:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 158
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid$1;->this$0:Lorg/chromium/media/midi/UsbMidiDeviceAndroid;

    # getter for: Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;
    invoke-static {v0}, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->access$000(Lorg/chromium/media/midi/UsbMidiDeviceAndroid;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->requestWait()Landroid/hardware/usb/UsbRequest;

    move-result-object v1

    .line 159
    if-eqz v1, :cond_2

    .line 163
    invoke-virtual {v1}, Landroid/hardware/usb/UsbRequest;->getEndpoint()Landroid/hardware/usb/UsbEndpoint;

    move-result-object v2

    .line 164
    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v0

    const/16 v3, 0x80

    if-ne v0, v3, :cond_0

    .line 167
    iget-object v0, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid$1;->val$bufferForEndpoints:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 168
    # invokes: Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->getInputDataLength(Ljava/nio/ByteBuffer;)I
    invoke-static {v0}, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->access$100(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 169
    if-lez v3, :cond_1

    .line 170
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 171
    new-array v4, v3, [B

    .line 172
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 173
    iget-object v3, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid$1;->this$0:Lorg/chromium/media/midi/UsbMidiDeviceAndroid;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getEndpointNumber()I

    move-result v2

    # invokes: Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->postOnDataEvent(I[B)V
    invoke-static {v3, v2, v4}, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->access$200(Lorg/chromium/media/midi/UsbMidiDeviceAndroid;I[B)V

    .line 175
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 176
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/usb/UsbRequest;->queue(Ljava/nio/ByteBuffer;I)Z

    goto :goto_0

    .line 178
    :cond_2
    return-void
.end method
