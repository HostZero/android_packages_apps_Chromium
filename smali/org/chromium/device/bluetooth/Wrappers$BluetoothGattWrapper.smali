.class Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;
.super Ljava/lang/Object;
.source "Wrappers.java"


# instance fields
.field private final mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

.field private final mGatt:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothGatt;Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-object p1, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 330
    iput-object p2, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    .line 331
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 339
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 335
    return-void
.end method

.method public discoverServices()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 343
    return-void
.end method

.method public getServices()Ljava/util/List;
    .locals 5

    .prologue
    .line 346
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    .line 347
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 349
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 350
    new-instance v3, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattServiceWrapper;

    iget-object v4, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    invoke-direct {v3, v0, v4}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattServiceWrapper;-><init>(Landroid/bluetooth/BluetoothGattService;Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 352
    :cond_0
    return-object v1
.end method

.method readCharacteristic(Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;)Z
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;->mGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p1, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    return v0
.end method

.method readDescriptor(Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;)Z
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;->mGatt:Landroid/bluetooth/BluetoothGatt;

    # getter for: Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;->mDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;
    invoke-static {p1}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;->access$000(Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v0

    return v0
.end method

.method setCharacteristicNotification(Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;Z)Z
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;->mGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p1, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1, p2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v0

    return v0
.end method

.method writeCharacteristic(Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;)Z
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;->mGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p1, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    return v0
.end method

.method writeDescriptor(Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;)Z
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;->mGatt:Landroid/bluetooth/BluetoothGatt;

    # getter for: Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;->mDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;
    invoke-static {p1}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;->access$000(Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v0

    return v0
.end method
