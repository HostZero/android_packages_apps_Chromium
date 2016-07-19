.class Lorg/chromium/device/bluetooth/Wrappers$ForwardBluetoothGattCallbackToWrapper;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "Wrappers.java"


# instance fields
.field final mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

.field final mWrapperCallback:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;


# direct methods
.method constructor <init>(Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)V
    .locals 0

    .prologue
    .line 390
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 391
    iput-object p1, p0, Lorg/chromium/device/bluetooth/Wrappers$ForwardBluetoothGattCallbackToWrapper;->mWrapperCallback:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;

    .line 392
    iput-object p2, p0, Lorg/chromium/device/bluetooth/Wrappers$ForwardBluetoothGattCallbackToWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    .line 393
    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 3

    .prologue
    .line 398
    const-string/jumbo v0, "Bluetooth"

    const-string/jumbo v1, "wrapper onCharacteristicChanged."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    iget-object v1, p0, Lorg/chromium/device/bluetooth/Wrappers$ForwardBluetoothGattCallbackToWrapper;->mWrapperCallback:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;

    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$ForwardBluetoothGattCallbackToWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    # getter for: Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->mCharacteristicsToWrappers:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->access$100(Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;

    invoke-virtual {v1, v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;->onCharacteristicChanged(Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;)V

    .line 401
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 2

    .prologue
    .line 406
    iget-object v1, p0, Lorg/chromium/device/bluetooth/Wrappers$ForwardBluetoothGattCallbackToWrapper;->mWrapperCallback:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;

    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$ForwardBluetoothGattCallbackToWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    # getter for: Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->mCharacteristicsToWrappers:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->access$100(Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;

    invoke-virtual {v1, v0, p3}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;->onCharacteristicRead(Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;I)V

    .line 408
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 2

    .prologue
    .line 413
    iget-object v1, p0, Lorg/chromium/device/bluetooth/Wrappers$ForwardBluetoothGattCallbackToWrapper;->mWrapperCallback:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;

    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$ForwardBluetoothGattCallbackToWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    # getter for: Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->mCharacteristicsToWrappers:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->access$100(Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;

    invoke-virtual {v1, v0, p3}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;->onCharacteristicWrite(Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;I)V

    .line 415
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$ForwardBluetoothGattCallbackToWrapper;->mWrapperCallback:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;

    invoke-virtual {v0, p2, p3}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;->onConnectionStateChange(II)V

    .line 434
    return-void
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 2

    .prologue
    .line 420
    iget-object v1, p0, Lorg/chromium/device/bluetooth/Wrappers$ForwardBluetoothGattCallbackToWrapper;->mWrapperCallback:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;

    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$ForwardBluetoothGattCallbackToWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    # getter for: Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->mDescriptorsToWrappers:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->access$200(Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;

    invoke-virtual {v1, v0, p3}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;->onDescriptorRead(Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;I)V

    .line 422
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 2

    .prologue
    .line 427
    iget-object v1, p0, Lorg/chromium/device/bluetooth/Wrappers$ForwardBluetoothGattCallbackToWrapper;->mWrapperCallback:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;

    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$ForwardBluetoothGattCallbackToWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    # getter for: Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->mDescriptorsToWrappers:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->access$200(Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;

    invoke-virtual {v1, v0, p3}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;->onDescriptorWrite(Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;I)V

    .line 429
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$ForwardBluetoothGattCallbackToWrapper;->mWrapperCallback:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;

    invoke-virtual {v0, p2}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;->onServicesDiscovered(I)V

    .line 439
    return-void
.end method
