.class Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;
.super Ljava/lang/Object;
.source "Wrappers.java"


# instance fields
.field final mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field final mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothGattCharacteristic;Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)V
    .locals 0

    .prologue
    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    iput-object p1, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 517
    iput-object p2, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    .line 518
    return-void
.end method


# virtual methods
.method public getDescriptors()Ljava/util/List;
    .locals 5

    .prologue
    .line 537
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v0

    .line 539
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 542
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattDescriptor;

    .line 543
    iget-object v1, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    # getter for: Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->mDescriptorsToWrappers:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->access$200(Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;

    .line 545
    if-nez v1, :cond_0

    .line 546
    new-instance v1, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;

    iget-object v4, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    invoke-direct {v1, v0, v4}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;-><init>(Landroid/bluetooth/BluetoothGattDescriptor;Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)V

    .line 548
    iget-object v4, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    # getter for: Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->mDescriptorsToWrappers:Ljava/util/HashMap;
    invoke-static {v4}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->access$200(Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 552
    :cond_1
    return-object v2
.end method

.method public getInstanceId()I
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v0

    return v0
.end method

.method public getProperties()I
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public getValue()[B
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    return-object v0
.end method

.method public setValue([B)Z
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    move-result v0

    return v0
.end method
