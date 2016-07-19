.class final Lorg/chromium/device/usb/ChromeUsbService;
.super Ljava/lang/Object;
.source "ChromeUsbService.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/chromium/device/usb/ChromeUsbService;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private static create(Landroid/content/Context;)Lorg/chromium/device/usb/ChromeUsbService;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lorg/chromium/device/usb/ChromeUsbService;

    invoke-direct {v0, p0}, Lorg/chromium/device/usb/ChromeUsbService;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getDevices()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 42
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
