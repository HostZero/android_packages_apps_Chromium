.class Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;
.super Ljava/lang/Object;
.source "UsbMidiDeviceFactoryAndroid.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mDevices:Ljava/util/List;

.field private mIsEnumeratingDevices:Z

.field private mNativePointer:J

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRequestedDevices:Ljava/util/Set;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->mDevices:Ljava/util/List;

    .line 71
    const-string/jumbo v0, "usb"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 72
    iput-wide p2, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->mNativePointer:J

    .line 73
    new-instance v0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid$1;

    invoke-direct {v0, p0}, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid$1;-><init>(Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;)V

    iput-object v0, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    const-string/jumbo v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string/jumbo v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string/jumbo v1, "org.chromium.media.USB_PERMISSION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->mRequestedDevices:Ljava/util/Set;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->requestDevicePermissionIfNecessary(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->onUsbDeviceDetached(Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->onUsbDevicePermissionRequestDone(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static create(Landroid/content/Context;J)Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;-><init>(Landroid/content/Context;J)V

    return-object v0
.end method

.method private static native nativeOnUsbMidiDeviceAttached(JLjava/lang/Object;)V
.end method

.method private static native nativeOnUsbMidiDeviceDetached(JI)V
.end method

.method private static native nativeOnUsbMidiDeviceRequestDone(J[Ljava/lang/Object;)V
.end method

.method private onUsbDeviceDetached(Landroid/hardware/usb/UsbDevice;)V
    .locals 6

    .prologue
    .line 167
    iget-object v0, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->mRequestedDevices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 168
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v2

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 169
    iget-object v1, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->mRequestedDevices:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 173
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->mDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 174
    iget-object v0, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->mDevices:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;

    .line 175
    invoke-virtual {v0}, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 180
    invoke-virtual {v0}, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->getUsbDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v2

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 181
    invoke-virtual {v0}, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->close()V

    .line 182
    iget-boolean v0, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->mIsEnumeratingDevices:Z

    if-eqz v0, :cond_3

    .line 185
    iget-object v0, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->mDevices:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 194
    :cond_2
    :goto_1
    return-void

    .line 188
    :cond_3
    iget-wide v2, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->mNativePointer:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 189
    iget-wide v2, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->mNativePointer:J

    invoke-static {v2, v3, v1}, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->nativeOnUsbMidiDeviceDetached(JI)V

    goto :goto_1

    .line 173
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private onUsbDevicePermissionRequestDone(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 204
    const-string/jumbo v0, "device"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 206
    iget-object v2, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->mRequestedDevices:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    iget-object v2, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->mRequestedDevices:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 208
    const-string/jumbo v2, "permission"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_0
    move-object v2, v1

    .line 216
    :goto_0
    if-eqz v2, :cond_2

    .line 217
    iget-object v0, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->mDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;

    .line 218
    invoke-virtual {v0}, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->getUsbDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v0

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v4

    if-ne v0, v4, :cond_1

    move-object v2, v1

    .line 227
    :cond_2
    if-eqz v2, :cond_6

    .line 229
    new-instance v0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;

    iget-object v1, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-direct {v0, v1, v2}, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;-><init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)V

    .line 230
    iget-object v1, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->mDevices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    :goto_1
    iget-object v1, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->mRequestedDevices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 246
    :cond_3
    :goto_2
    return-void

    .line 236
    :cond_4
    iget-wide v2, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->mNativePointer:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 240
    iget-boolean v1, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->mIsEnumeratingDevices:Z

    if-eqz v1, :cond_5

    .line 241
    iget-wide v0, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->mNativePointer:J

    iget-object v2, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->mDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->nativeOnUsbMidiDeviceRequestDone(J[Ljava/lang/Object;)V

    .line 242
    iput-boolean v6, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->mIsEnumeratingDevices:Z

    goto :goto_2

    .line 243
    :cond_5
    if-eqz v0, :cond_3

    .line 244
    iget-wide v2, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->mNativePointer:J

    invoke-static {v2, v3, v0}, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->nativeOnUsbMidiDeviceAttached(JLjava/lang/Object;)V

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_1

    :cond_7
    move-object v2, v0

    goto :goto_0
.end method

.method private requestDevicePermissionIfNecessary(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 140
    iget-object v0, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->mRequestedDevices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 141
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v0

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 159
    :cond_1
    :goto_0
    return-void

    :cond_2
    move v0, v1

    .line 147
    :goto_1
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 148
    invoke-virtual {p2, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    .line 149
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 152
    iget-object v0, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->mUsbManager:Landroid/hardware/usb/UsbManager;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "org.chromium.media.USB_PERMISSION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1, v2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    .line 155
    iget-object v0, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->mRequestedDevices:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method close(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 254
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->mNativePointer:J

    .line 255
    iget-object v0, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 256
    return-void
.end method

.method enumerateDevices(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 119
    sget-boolean v0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->mIsEnumeratingDevices:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 120
    :cond_0
    iput-boolean v2, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->mIsEnumeratingDevices:Z

    .line 121
    iget-object v0, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    .line 122
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    iput-boolean v1, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->mIsEnumeratingDevices:Z

    move v0, v1

    .line 130
    :goto_0
    return v0

    .line 127
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 128
    invoke-direct {p0, p1, v0}, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->requestDevicePermissionIfNecessary(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)V

    goto :goto_1

    .line 130
    :cond_2
    iget-object v0, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->mRequestedDevices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
