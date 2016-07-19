.class final Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "Connector_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/shell/mojom/Connector$Proxy;


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    .line 55
    return-void
.end method


# virtual methods
.method public final clone(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 5

    .prologue
    .line 90
    new-instance v0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorCloneParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorCloneParams;-><init>()V

    .line 92
    iput-object p1, v0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorCloneParams;->request:Lorg/chromium/mojo/bindings/InterfaceRequest;

    .line 95
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorCloneParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 100
    return-void
.end method

.method public final connect(Lorg/chromium/mojom/mojo/shell/mojom/Identity;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider;Lorg/chromium/mojom/mojo/shell/mojom/ClientProcessConnection;Lorg/chromium/mojom/mojo/shell/mojom/Connector$ConnectResponse;)V
    .locals 8

    .prologue
    .line 63
    new-instance v0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;-><init>()V

    .line 65
    iput-object p1, v0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;->target:Lorg/chromium/mojom/mojo/shell/mojom/Identity;

    .line 67
    iput-object p2, v0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;->remoteInterfaces:Lorg/chromium/mojo/bindings/InterfaceRequest;

    .line 69
    iput-object p3, v0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;->localInterfaces:Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider;

    .line 71
    iput-object p4, v0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;->clientProcessConnection:Lorg/chromium/mojom/mojo/shell/mojom/ClientProcessConnection;

    .line 74
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    new-instance v2, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParamsForwardToCallback;

    invoke-direct {v2, p5}, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/mojo/shell/mojom/Connector$ConnectResponse;)V

    invoke-interface {v1, v0, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 83
    return-void
.end method
