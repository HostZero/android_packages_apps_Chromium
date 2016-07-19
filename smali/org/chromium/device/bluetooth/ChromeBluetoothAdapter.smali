.class final Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;
.super Landroid/content/BroadcastReceiver;
.source "ChromeBluetoothAdapter.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

.field private mNativeBluetoothAdapterAndroid:J

.field private mNumDiscoverySessions:I

.field private mScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(JLorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 55
    iput-wide p1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNativeBluetoothAdapterAndroid:J

    .line 56
    iput-object p3, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    .line 57
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->registerBroadcastReceiver()V

    .line 58
    if-nez p3, :cond_0

    .line 59
    const-string/jumbo v0, "Bluetooth"

    const-string/jumbo v1, "ChromeBluetoothAdapter created with no adapterWrapper."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    const-string/jumbo v0, "Bluetooth"

    const-string/jumbo v1, "ChromeBluetoothAdapter created with provided adapterWrapper."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$100(Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;)J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNativeBluetoothAdapterAndroid:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;JLjava/lang/String;Ljava/lang/Object;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct/range {p0 .. p5}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->nativeCreateOrUpdateDeviceOnScan(JLjava/lang/String;Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;J)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->nativeOnScanFailed(J)V

    return-void
.end method

.method static synthetic access$402(Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;I)I
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I

    return p1
.end method

.method private addDiscoverySession()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 147
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->isPowered()Z

    move-result v2

    if-nez v2, :cond_0

    .line 162
    :goto_0
    return v0

    .line 152
    :cond_0
    iget v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I

    .line 153
    iget v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    iget v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I

    if-le v2, v1, :cond_1

    move v0, v1

    .line 155
    goto :goto_0

    .line 158
    :cond_1
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->startScan()Z

    move-result v2

    if-nez v2, :cond_2

    .line 159
    iget v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 162
    goto :goto_0
.end method

.method private canScan()Z
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->getContext()Lorg/chromium/device/bluetooth/Wrappers$ContextWrapper;

    move-result-object v0

    .line 193
    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Lorg/chromium/device/bluetooth/Wrappers$ContextWrapper;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Lorg/chromium/device/bluetooth/Wrappers$ContextWrapper;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static create(JLjava/lang/Object;)Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;

    check-cast p2, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;-><init>(JLorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;)V

    return-object v0
.end method

.method private getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private getBluetoothStateString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 322
    packed-switch p1, :pswitch_data_0

    .line 332
    sget-boolean v0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 324
    :pswitch_0
    const-string/jumbo v0, "STATE_OFF"

    .line 333
    :goto_0
    return-object v0

    .line 326
    :pswitch_1
    const-string/jumbo v0, "STATE_ON"

    goto :goto_0

    .line 328
    :pswitch_2
    const-string/jumbo v0, "STATE_TURNING_OFF"

    goto :goto_0

    .line 330
    :pswitch_3
    const-string/jumbo v0, "STATE_TURNING_ON"

    goto :goto_0

    .line 333
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "illegal state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 322
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->getName()Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private isDiscoverable()Z
    .locals 2

    .prologue
    .line 134
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->getScanMode()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDiscovering()Z
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPowered()Z
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPresent()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeCreateOrUpdateDeviceOnScan(JLjava/lang/String;Ljava/lang/Object;Ljava/util/List;)V
.end method

.method private native nativeOnAdapterStateChanged(JZ)V
.end method

.method private native nativeOnScanFailed(J)V
.end method

.method private onBluetoothAdapterAndroidDestruction()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->stopScan()Z

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNativeBluetoothAdapterAndroid:J

    .line 72
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->unregisterBroadcastReceiver()V

    .line 73
    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->getContext()Lorg/chromium/device/bluetooth/Wrappers$ContextWrapper;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/device/bluetooth/Wrappers$ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 202
    :cond_0
    return-void
.end method

.method private removeDiscoverySession()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 168
    iget v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I

    if-nez v1, :cond_1

    .line 169
    sget-boolean v1, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 170
    :cond_0
    const-string/jumbo v1, "Bluetooth"

    const-string/jumbo v2, "removeDiscoverySession: No scan in progress."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :goto_0
    return v0

    .line 174
    :cond_1
    iget v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I

    .line 176
    iget v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I

    if-nez v0, :cond_2

    .line 178
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->stopScan()Z

    move-result v0

    goto :goto_0

    .line 181
    :cond_2
    iget v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setPowered(Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 124
    if-eqz p1, :cond_2

    .line 125
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    invoke-virtual {v2}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->enable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 125
    goto :goto_0

    .line 127
    :cond_2
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    invoke-virtual {v2}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->disable()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private startScan()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 215
    iget-object v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    invoke-virtual {v1}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->getBluetoothLeScanner()Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;

    move-result-object v1

    .line 217
    if-nez v1, :cond_1

    .line 243
    :cond_0
    :goto_0
    return v0

    .line 221
    :cond_1
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->canScan()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    sget-boolean v2, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 230
    :cond_2
    new-instance v2, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;

    invoke-direct {v2, p0, v5}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;-><init>(Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$1;)V

    iput-object v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;

    .line 233
    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;->startScan(Ljava/util/List;ILorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 243
    const/4 v0, 0x1

    goto :goto_0

    .line 234
    :catch_0
    move-exception v1

    .line 235
    const-string/jumbo v2, "Bluetooth"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Cannot start scan: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    iput-object v5, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;

    goto :goto_0

    .line 238
    :catch_1
    move-exception v1

    .line 239
    const-string/jumbo v2, "Bluetooth"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Adapter is off. Cannot start scan: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    iput-object v5, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;

    goto :goto_0
.end method

.method private stopScan()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 251
    iget-object v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;

    if-nez v1, :cond_0

    .line 266
    :goto_0
    return v0

    .line 256
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    invoke-virtual {v1}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->getBluetoothLeScanner()Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;

    move-result-object v1

    .line 257
    if-eqz v1, :cond_1

    .line 258
    iget-object v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;

    invoke-virtual {v1, v2}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;->stopScan(Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 265
    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;

    .line 266
    const/4 v0, 0x1

    goto :goto_0

    .line 260
    :catch_0
    move-exception v1

    .line 261
    const-string/jumbo v2, "Bluetooth"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Cannot stop scan: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 262
    :catch_1
    move-exception v1

    .line 263
    const-string/jumbo v2, "Bluetooth"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Adapter is off. Cannot stop scan: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private unregisterBroadcastReceiver()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->getContext()Lorg/chromium/device/bluetooth/Wrappers$ContextWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/device/bluetooth/Wrappers$ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 208
    :cond_0
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 300
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    const-string/jumbo v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 305
    const-string/jumbo v1, "Bluetooth"

    const-string/jumbo v2, "onReceive: BluetoothAdapter.ACTION_STATE_CHANGED: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->getBluetoothStateString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    packed-switch v0, :pswitch_data_0

    .line 319
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 310
    :pswitch_1
    iget-wide v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNativeBluetoothAdapterAndroid:J

    invoke-direct {p0, v0, v1, v6}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->nativeOnAdapterStateChanged(JZ)V

    goto :goto_0

    .line 313
    :pswitch_2
    iget-wide v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNativeBluetoothAdapterAndroid:J

    invoke-direct {p0, v0, v1, v5}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->nativeOnAdapterStateChanged(JZ)V

    goto :goto_0

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
