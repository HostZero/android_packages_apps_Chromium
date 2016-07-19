.class Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;
.super Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;
.source "ChromeBluetoothAdapter.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;


# direct methods
.method private constructor <init>(Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;

    invoke-direct {p0}, Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$1;)V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;-><init>(Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;)V

    return-void
.end method


# virtual methods
.method public onBatchScanResult(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method public onScanFailed(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 292
    const-string/jumbo v0, "Bluetooth"

    const-string/jumbo v1, "onScanFailed: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;

    iget-object v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;

    # getter for: Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNativeBluetoothAdapterAndroid:J
    invoke-static {v1}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->access$100(Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;)J

    move-result-wide v2

    # invokes: Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->nativeOnScanFailed(J)V
    invoke-static {v0, v2, v3}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->access$300(Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;J)V

    .line 294
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;

    # setter for: Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I
    invoke-static {v0, v4}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->access$402(Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;I)I

    .line 295
    return-void
.end method

.method public onScanResult(ILorg/chromium/device/bluetooth/Wrappers$ScanResultWrapper;)V
    .locals 7

    .prologue
    .line 281
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-virtual {p2}, Lorg/chromium/device/bluetooth/Wrappers$ScanResultWrapper;->getDevice()Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    invoke-virtual {p2}, Lorg/chromium/device/bluetooth/Wrappers$ScanResultWrapper;->getDevice()Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->getName()Ljava/lang/String;

    .line 284
    invoke-virtual {p2}, Lorg/chromium/device/bluetooth/Wrappers$ScanResultWrapper;->getScanRecord_getServiceUuids()Ljava/util/List;

    move-result-object v6

    .line 286
    iget-object v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;->this$0:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;

    # getter for: Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNativeBluetoothAdapterAndroid:J
    invoke-static {v0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->access$100(Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;)J

    move-result-wide v2

    invoke-virtual {p2}, Lorg/chromium/device/bluetooth/Wrappers$ScanResultWrapper;->getDevice()Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lorg/chromium/device/bluetooth/Wrappers$ScanResultWrapper;->getDevice()Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    move-result-object v5

    # invokes: Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->nativeCreateOrUpdateDeviceOnScan(JLjava/lang/String;Ljava/lang/Object;Ljava/util/List;)V
    invoke-static/range {v1 .. v6}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->access$200(Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;JLjava/lang/String;Ljava/lang/Object;Ljava/util/List;)V

    .line 288
    return-void
.end method
