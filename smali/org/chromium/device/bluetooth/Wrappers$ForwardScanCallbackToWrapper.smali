.class Lorg/chromium/device/bluetooth/Wrappers$ForwardScanCallbackToWrapper;
.super Landroid/bluetooth/le/ScanCallback;
.source "Wrappers.java"


# instance fields
.field final mWrapperCallback:Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;


# direct methods
.method constructor <init>(Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;)V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    .line 221
    iput-object p1, p0, Lorg/chromium/device/bluetooth/Wrappers$ForwardScanCallbackToWrapper;->mWrapperCallback:Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;

    .line 222
    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .locals 4

    .prologue
    .line 226
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 228
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanResult;

    .line 229
    new-instance v3, Lorg/chromium/device/bluetooth/Wrappers$ScanResultWrapper;

    invoke-direct {v3, v0}, Lorg/chromium/device/bluetooth/Wrappers$ScanResultWrapper;-><init>(Landroid/bluetooth/le/ScanResult;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 231
    :cond_0
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$ForwardScanCallbackToWrapper;->mWrapperCallback:Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;

    invoke-virtual {v0, v1}, Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;->onBatchScanResult(Ljava/util/List;)V

    .line 232
    return-void
.end method

.method public onScanFailed(I)V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$ForwardScanCallbackToWrapper;->mWrapperCallback:Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;

    invoke-virtual {v0, p1}, Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;->onScanFailed(I)V

    .line 242
    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$ForwardScanCallbackToWrapper;->mWrapperCallback:Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;

    new-instance v1, Lorg/chromium/device/bluetooth/Wrappers$ScanResultWrapper;

    invoke-direct {v1, p2}, Lorg/chromium/device/bluetooth/Wrappers$ScanResultWrapper;-><init>(Landroid/bluetooth/le/ScanResult;)V

    invoke-virtual {v0, p1, v1}, Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;->onScanResult(ILorg/chromium/device/bluetooth/Wrappers$ScanResultWrapper;)V

    .line 237
    return-void
.end method
