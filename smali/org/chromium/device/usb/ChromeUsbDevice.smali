.class final Lorg/chromium/device/usb/ChromeUsbDevice;
.super Ljava/lang/Object;
.source "ChromeUsbDevice.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# instance fields
.field final mDevice:Landroid/hardware/usb/UsbDevice;


# direct methods
.method private constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 32
    return-void
.end method

.method private static create(Landroid/hardware/usb/UsbDevice;)Lorg/chromium/device/usb/ChromeUsbDevice;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lorg/chromium/device/usb/ChromeUsbDevice;

    invoke-direct {v0, p0}, Lorg/chromium/device/usb/ChromeUsbDevice;-><init>(Landroid/hardware/usb/UsbDevice;)V

    return-object v0
.end method

.method private getConfigurations()[Landroid/hardware/usb/UsbConfiguration;
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    move-result v1

    .line 68
    new-array v2, v1, [Landroid/hardware/usb/UsbConfiguration;

    .line 69
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 70
    iget-object v3, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3, v0}, Landroid/hardware/usb/UsbDevice;->getConfiguration(I)Landroid/hardware/usb/UsbConfiguration;

    move-result-object v3

    aput-object v3, v2, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    return-object v2
.end method

.method private getInterfaces()[Landroid/hardware/usb/UsbInterface;
    .locals 4

    .prologue
    .line 77
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    .line 78
    new-array v2, v1, [Landroid/hardware/usb/UsbInterface;

    .line 79
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 80
    iget-object v3, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v3

    aput-object v3, v2, v0

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    return-object v2
.end method

.method private getManufacturerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getProductId()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    return v0
.end method

.method private getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVendorId()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    return v0
.end method
