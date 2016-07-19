.class abstract Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;
.super Ljava/lang/Object;
.source "Wrappers.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onBatchScanResult(Ljava/util/List;)V
.end method

.method public abstract onScanFailed(I)V
.end method

.method public abstract onScanResult(ILorg/chromium/device/bluetooth/Wrappers$ScanResultWrapper;)V
.end method
