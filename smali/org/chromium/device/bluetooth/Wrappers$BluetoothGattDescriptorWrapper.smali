.class Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;
.super Ljava/lang/Object;
.source "Wrappers.java"


# instance fields
.field private final mDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

.field final mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothGattDescriptor;Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)V
    .locals 0

    .prologue
    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    iput-object p1, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;->mDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    .line 586
    iput-object p2, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    .line 587
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;)Landroid/bluetooth/BluetoothGattDescriptor;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;->mDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    return-object v0
.end method


# virtual methods
.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;->mDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public getValue()[B
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;->mDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v0

    return-object v0
.end method

.method public setValue([B)Z
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;->mDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    move-result v0

    return v0
.end method
