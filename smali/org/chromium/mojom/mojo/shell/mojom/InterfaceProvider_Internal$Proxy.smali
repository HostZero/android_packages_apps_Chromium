.class final Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "InterfaceProvider_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider$Proxy;


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    .line 53
    return-void
.end method


# virtual methods
.method public final getInterface(Ljava/lang/String;Lorg/chromium/mojo/system/MessagePipeHandle;)V
    .locals 5

    .prologue
    .line 60
    new-instance v0, Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider_Internal$InterfaceProviderGetInterfaceParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider_Internal$InterfaceProviderGetInterfaceParams;-><init>()V

    .line 62
    iput-object p1, v0, Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider_Internal$InterfaceProviderGetInterfaceParams;->interfaceName:Ljava/lang/String;

    .line 64
    iput-object p2, v0, Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider_Internal$InterfaceProviderGetInterfaceParams;->pipe:Lorg/chromium/mojo/system/MessagePipeHandle;

    .line 67
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider_Internal$InterfaceProviderGetInterfaceParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 72
    return-void
.end method
