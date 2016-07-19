.class Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbMidiDeviceFactoryAndroid.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;


# direct methods
.method constructor <init>(Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid$1;->this$0:Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 76
    const-string/jumbo v0, "device"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 77
    const-string/jumbo v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v2, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid$1;->this$0:Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;

    move-object v0, v1

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    # invokes: Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->requestDevicePermissionIfNecessary(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)V
    invoke-static {v2, p1, v0}, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->access$000(Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)V

    .line 80
    :cond_0
    const-string/jumbo v0, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid$1;->this$0:Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    # invokes: Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->onUsbDeviceDetached(Landroid/hardware/usb/UsbDevice;)V
    invoke-static {v0, v1}, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->access$100(Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;Landroid/hardware/usb/UsbDevice;)V

    .line 83
    :cond_1
    const-string/jumbo v0, "org.chromium.media.USB_PERMISSION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    iget-object v0, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid$1;->this$0:Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;

    # invokes: Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->onUsbDevicePermissionRequestDone(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, p1, p2}, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->access$200(Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;Landroid/content/Context;Landroid/content/Intent;)V

    .line 86
    :cond_2
    return-void
.end method
