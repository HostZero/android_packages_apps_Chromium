.class final Lorg/chromium/device/usb/ChromeUsbConfiguration;
.super Ljava/lang/Object;
.source "ChromeUsbConfiguration.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# instance fields
.field final mConfiguration:Landroid/hardware/usb/UsbConfiguration;


# direct methods
.method private constructor <init>(Landroid/hardware/usb/UsbConfiguration;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/chromium/device/usb/ChromeUsbConfiguration;->mConfiguration:Landroid/hardware/usb/UsbConfiguration;

    .line 32
    return-void
.end method

.method private static create(Landroid/hardware/usb/UsbConfiguration;)Lorg/chromium/device/usb/ChromeUsbConfiguration;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lorg/chromium/device/usb/ChromeUsbConfiguration;

    invoke-direct {v0, p0}, Lorg/chromium/device/usb/ChromeUsbConfiguration;-><init>(Landroid/hardware/usb/UsbConfiguration;)V

    return-object v0
.end method

.method private getConfigurationValue()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbConfiguration;->mConfiguration:Landroid/hardware/usb/UsbConfiguration;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbConfiguration;->getId()I

    move-result v0

    return v0
.end method

.method private getInterfaces()[Landroid/hardware/usb/UsbInterface;
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbConfiguration;->mConfiguration:Landroid/hardware/usb/UsbConfiguration;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbConfiguration;->getInterfaceCount()I

    move-result v1

    .line 62
    new-array v2, v1, [Landroid/hardware/usb/UsbInterface;

    .line 63
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 64
    iget-object v3, p0, Lorg/chromium/device/usb/ChromeUsbConfiguration;->mConfiguration:Landroid/hardware/usb/UsbConfiguration;

    invoke-virtual {v3, v0}, Landroid/hardware/usb/UsbConfiguration;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v3

    aput-object v3, v2, v0

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    return-object v2
.end method

.method private getMaxPower()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbConfiguration;->mConfiguration:Landroid/hardware/usb/UsbConfiguration;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbConfiguration;->getMaxPower()I

    move-result v0

    return v0
.end method

.method private isRemoteWakeup()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbConfiguration;->mConfiguration:Landroid/hardware/usb/UsbConfiguration;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbConfiguration;->isRemoteWakeup()Z

    move-result v0

    return v0
.end method

.method private isSelfPowered()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbConfiguration;->mConfiguration:Landroid/hardware/usb/UsbConfiguration;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbConfiguration;->isSelfPowered()Z

    move-result v0

    return v0
.end method
