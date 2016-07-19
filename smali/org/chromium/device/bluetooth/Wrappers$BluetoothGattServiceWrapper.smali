.class Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattServiceWrapper;
.super Ljava/lang/Object;
.source "Wrappers.java"


# instance fields
.field private final mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

.field private final mService:Landroid/bluetooth/BluetoothGattService;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothGattService;Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)V
    .locals 0

    .prologue
    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    iput-object p1, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattServiceWrapper;->mService:Landroid/bluetooth/BluetoothGattService;

    .line 477
    iput-object p2, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattServiceWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    .line 478
    return-void
.end method


# virtual methods
.method public getCharacteristics()Ljava/util/List;
    .locals 5

    .prologue
    .line 481
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattServiceWrapper;->mService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v0

    .line 482
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 484
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 485
    iget-object v1, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattServiceWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    # getter for: Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->mCharacteristicsToWrappers:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->access$100(Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;

    .line 487
    if-nez v1, :cond_0

    .line 488
    new-instance v1, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;

    iget-object v4, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattServiceWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    invoke-direct {v1, v0, v4}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;-><init>(Landroid/bluetooth/BluetoothGattCharacteristic;Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)V

    .line 490
    iget-object v4, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattServiceWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    # getter for: Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->mCharacteristicsToWrappers:Ljava/util/HashMap;
    invoke-static {v4}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->access$100(Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 495
    :cond_1
    return-object v2
.end method

.method public getInstanceId()I
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattServiceWrapper;->mService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattServiceWrapper;->mService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method
