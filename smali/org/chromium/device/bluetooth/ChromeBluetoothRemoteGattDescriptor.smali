.class final Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattDescriptor;
.super Ljava/lang/Object;
.source "ChromeBluetoothRemoteGattDescriptor.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# instance fields
.field final mChromeDevice:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

.field final mDescriptor:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;

.field private mNativeBluetoothRemoteGattDescriptorAndroid:J


# direct methods
.method private constructor <init>(JLorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattDescriptor;->mNativeBluetoothRemoteGattDescriptorAndroid:J

    .line 29
    iput-object p3, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattDescriptor;->mDescriptor:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;

    .line 30
    iput-object p4, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattDescriptor;->mChromeDevice:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    .line 32
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattDescriptor;->mChromeDevice:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    iget-object v0, v0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mWrapperToChromeDescriptorsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method

.method private static create(JLjava/lang/Object;Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;)Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattDescriptor;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattDescriptor;

    check-cast p2, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattDescriptor;-><init>(JLorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;)V

    return-object v0
.end method

.method private getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattDescriptor;->mDescriptor:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onBluetoothRemoteGattDescriptorAndroidDestruction()V
    .locals 2

    .prologue
    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattDescriptor;->mNativeBluetoothRemoteGattDescriptorAndroid:J

    .line 44
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattDescriptor;->mChromeDevice:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    iget-object v0, v0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mWrapperToChromeDescriptorsMap:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattDescriptor;->mDescriptor:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method private readRemoteDescriptor()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 87
    iget-object v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattDescriptor;->mChromeDevice:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    iget-object v1, v1, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mBluetoothGatt:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;

    iget-object v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattDescriptor;->mDescriptor:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;

    invoke-virtual {v1, v2}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;->readDescriptor(Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    const-string/jumbo v1, "Bluetooth"

    const-string/jumbo v2, "readRemoteDescriptor readDescriptor failed."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private writeRemoteDescriptor([B)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 97
    iget-object v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattDescriptor;->mDescriptor:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;

    invoke-virtual {v1, p1}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;->setValue([B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    const-string/jumbo v1, "Bluetooth"

    const-string/jumbo v2, "writeRemoteDescriptor setValue failed."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    :goto_0
    return v0

    .line 101
    :cond_0
    iget-object v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattDescriptor;->mChromeDevice:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    iget-object v1, v1, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mBluetoothGatt:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;

    iget-object v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattDescriptor;->mDescriptor:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;

    invoke-virtual {v1, v2}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;->writeDescriptor(Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 102
    const-string/jumbo v1, "Bluetooth"

    const-string/jumbo v2, "writeRemoteDescriptor writeDescriptor failed."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 105
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method final native nativeOnRead(JI[B)V
.end method

.method final native nativeOnWrite(JI)V
.end method

.method final onDescriptorRead(I)V
    .locals 5

    .prologue
    .line 48
    const-string/jumbo v1, "Bluetooth"

    const-string/jumbo v2, "onDescriptorRead status:%d==%s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    if-nez p1, :cond_1

    const-string/jumbo v0, "OK"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    iget-wide v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattDescriptor;->mNativeBluetoothRemoteGattDescriptorAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 51
    iget-wide v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattDescriptor;->mNativeBluetoothRemoteGattDescriptorAndroid:J

    iget-object v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattDescriptor;->mDescriptor:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;

    invoke-virtual {v2}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;->getValue()[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattDescriptor;->nativeOnRead(JI[B)V

    .line 54
    :cond_0
    return-void

    .line 48
    :cond_1
    const-string/jumbo v0, "Error"

    goto :goto_0
.end method

.method final onDescriptorWrite(I)V
    .locals 5

    .prologue
    .line 57
    const-string/jumbo v1, "Bluetooth"

    const-string/jumbo v2, "onDescriptorWrite status:%d==%s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    if-nez p1, :cond_1

    const-string/jumbo v0, "OK"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    iget-wide v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattDescriptor;->mNativeBluetoothRemoteGattDescriptorAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 60
    iget-wide v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattDescriptor;->mNativeBluetoothRemoteGattDescriptorAndroid:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattDescriptor;->nativeOnWrite(JI)V

    .line 62
    :cond_0
    return-void

    .line 57
    :cond_1
    const-string/jumbo v0, "Error"

    goto :goto_0
.end method
