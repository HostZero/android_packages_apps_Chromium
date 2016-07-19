.class Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;
.super Ljava/lang/Object;
.source "Wrappers.java"


# instance fields
.field private final mCallbacks:Ljava/util/HashMap;

.field protected final mScanner:Landroid/bluetooth/le/BluetoothLeScanner;


# direct methods
.method public constructor <init>(Landroid/bluetooth/le/BluetoothLeScanner;)V
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;->mScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;->mCallbacks:Ljava/util/HashMap;

    .line 189
    return-void
.end method


# virtual methods
.method public startScan(Ljava/util/List;ILorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;)V
    .locals 3

    .prologue
    .line 193
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    invoke-virtual {v0, p2}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    .line 196
    new-instance v1, Lorg/chromium/device/bluetooth/Wrappers$ForwardScanCallbackToWrapper;

    invoke-direct {v1, p3}, Lorg/chromium/device/bluetooth/Wrappers$ForwardScanCallbackToWrapper;-><init>(Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;)V

    .line 198
    iget-object v2, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v2, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;->mScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-virtual {v2, p1, v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 201
    return-void
.end method

.method public stopScan(Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;)V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/device/bluetooth/Wrappers$ForwardScanCallbackToWrapper;

    .line 205
    iget-object v1, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;->mScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-virtual {v1, v0}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 206
    return-void
.end method
