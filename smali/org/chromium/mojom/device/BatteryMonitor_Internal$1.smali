.class final Lorg/chromium/mojom/device/BatteryMonitor_Internal$1;
.super Lorg/chromium/mojo/bindings/Interface$Manager;
.source "BatteryMonitor_Internal.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/Interface$Manager;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic buildProxy(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)Lorg/chromium/mojo/bindings/Interface$Proxy;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojom/device/BatteryMonitor_Internal$1;->buildProxy(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)Lorg/chromium/mojom/device/BatteryMonitor_Internal$Proxy;

    move-result-object v0

    return-object v0
.end method

.method public final buildProxy(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)Lorg/chromium/mojom/device/BatteryMonitor_Internal$Proxy;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lorg/chromium/mojom/device/BatteryMonitor_Internal$Proxy;

    invoke-direct {v0, p1, p2}, Lorg/chromium/mojom/device/BatteryMonitor_Internal$Proxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    return-object v0
.end method

.method public final bridge synthetic buildStub(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)Lorg/chromium/mojo/bindings/Interface$Stub;
    .locals 1

    .prologue
    .line 20
    check-cast p2, Lorg/chromium/mojom/device/BatteryMonitor;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojom/device/BatteryMonitor_Internal$1;->buildStub(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojom/device/BatteryMonitor;)Lorg/chromium/mojom/device/BatteryMonitor_Internal$Stub;

    move-result-object v0

    return-object v0
.end method

.method public final buildStub(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojom/device/BatteryMonitor;)Lorg/chromium/mojom/device/BatteryMonitor_Internal$Stub;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lorg/chromium/mojom/device/BatteryMonitor_Internal$Stub;

    invoke-direct {v0, p1, p2}, Lorg/chromium/mojom/device/BatteryMonitor_Internal$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojom/device/BatteryMonitor;)V

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "device::BatteryMonitor"

    return-object v0
.end method

.method public final getVersion()I
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method