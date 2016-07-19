.class final Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;
.super Ljava/lang/Object;
.source "ChromeBluetoothDevice.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# instance fields
.field mBluetoothGatt:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;

.field private final mBluetoothGattCallbackImpl:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;

.field final mDevice:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

.field private mNativeBluetoothDeviceAndroid:J

.field private mUuidsFromScan:Ljava/util/HashSet;

.field final mWrapperToChromeCharacteristicsMap:Ljava/util/HashMap;

.field final mWrapperToChromeDescriptorsMap:Ljava/util/HashMap;


# direct methods
.method private constructor <init>(JLorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)V
    .locals 3

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mNativeBluetoothDeviceAndroid:J

    .line 46
    iput-object p3, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mDevice:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mUuidsFromScan:Ljava/util/HashSet;

    .line 48
    new-instance v0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;-><init>(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$1;)V

    iput-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mBluetoothGattCallbackImpl:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mWrapperToChromeCharacteristicsMap:Ljava/util/HashMap;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mWrapperToChromeDescriptorsMap:Ljava/util/HashMap;

    .line 55
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;)J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mNativeBluetoothDeviceAndroid:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;JIZ)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->nativeOnConnectionStateChange(JIZ)V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;JLjava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->nativeCreateGattRemoteService(JLjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;J)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->nativeOnGattServicesDiscovered(J)V

    return-void
.end method

.method private static create(JLjava/lang/Object;)Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    check-cast p2, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;-><init>(JLorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)V

    return-object v0
.end method

.method private createGattConnectionImpl(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 124
    const-string/jumbo v0, "Bluetooth"

    const-string/jumbo v1, "connectGatt"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mBluetoothGatt:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mBluetoothGatt:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;->close()V

    .line 130
    :cond_0
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mDevice:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    iget-object v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mBluetoothGattCallbackImpl:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice$BluetoothGattCallbackImpl;

    invoke-virtual {v0, p1, v3, v1}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->connectGatt(Landroid/content/Context;ZLorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;)Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mBluetoothGatt:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;

    .line 132
    return-void
.end method

.method private disconnectGatt()V
    .locals 3

    .prologue
    .line 137
    const-string/jumbo v0, "Bluetooth"

    const-string/jumbo v1, "BluetoothGatt.disconnect"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mBluetoothGatt:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mBluetoothGatt:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;->disconnect()V

    .line 139
    :cond_0
    return-void
.end method

.method private getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mDevice:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBluetoothClass()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mDevice:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->getBluetoothClass_getDeviceClass()I

    move-result v0

    return v0
.end method

.method private getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mDevice:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUuids()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mUuidsFromScan:Ljava/util/HashSet;

    iget-object v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mUuidsFromScan:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private isPaired()Z
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mDevice:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeCreateGattRemoteService(JLjava/lang/String;Ljava/lang/Object;)V
.end method

.method private native nativeOnConnectionStateChange(JIZ)V
.end method

.method private native nativeOnGattServicesDiscovered(J)V
.end method

.method private onBluetoothDeviceAndroidDestruction()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mBluetoothGatt:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mBluetoothGatt:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;->close()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mBluetoothGatt:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;

    .line 66
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mNativeBluetoothDeviceAndroid:J

    .line 67
    return-void
.end method

.method private updateAdvertisedUUIDs(Ljava/util/List;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 85
    if-nez p1, :cond_0

    .line 92
    :goto_0
    return v0

    .line 89
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 90
    iget-object v3, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mUuidsFromScan:Ljava/util/HashSet;

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    .line 91
    goto :goto_1

    :cond_1
    move v0, v1

    .line 92
    goto :goto_0
.end method
