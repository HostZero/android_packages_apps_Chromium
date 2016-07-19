.class final Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattService;
.super Ljava/lang/Object;
.source "ChromeBluetoothRemoteGattService.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# instance fields
.field mChromeDevice:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

.field final mInstanceId:Ljava/lang/String;

.field private mNativeBluetoothRemoteGattServiceAndroid:J

.field final mService:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattServiceWrapper;


# direct methods
.method private constructor <init>(JLorg/chromium/device/bluetooth/Wrappers$BluetoothGattServiceWrapper;Ljava/lang/String;Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattService;->mNativeBluetoothRemoteGattServiceAndroid:J

    .line 33
    iput-object p3, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattService;->mService:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattServiceWrapper;

    .line 34
    iput-object p4, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattService;->mInstanceId:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattService;->mChromeDevice:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    .line 37
    return-void
.end method

.method private static create(JLjava/lang/Object;Ljava/lang/String;Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;)Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattService;
    .locals 8

    .prologue
    .line 56
    new-instance v1, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattService;

    move-object v4, p2

    check-cast v4, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattServiceWrapper;

    move-wide v2, p0

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattService;-><init>(JLorg/chromium/device/bluetooth/Wrappers$BluetoothGattServiceWrapper;Ljava/lang/String;Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;)V

    return-object v1
.end method

.method private createCharacteristics()V
    .locals 7

    .prologue
    .line 71
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattService;->mService:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattServiceWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattServiceWrapper;->getCharacteristics()Ljava/util/List;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattService;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;->getInstanceId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 78
    iget-wide v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattService;->mNativeBluetoothRemoteGattServiceAndroid:J

    iget-object v6, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattService;->mChromeDevice:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattService;->nativeCreateGattRemoteCharacteristic(JLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method

.method private getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattService;->mService:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattServiceWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattServiceWrapper;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private native nativeCreateGattRemoteCharacteristic(JLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method private onBluetoothRemoteGattServiceAndroidDestruction()V
    .locals 2

    .prologue
    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattService;->mNativeBluetoothRemoteGattServiceAndroid:J

    .line 45
    return-void
.end method
