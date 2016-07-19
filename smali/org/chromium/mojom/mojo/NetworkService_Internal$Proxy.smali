.class final Lorg/chromium/mojom/mojo/NetworkService_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "NetworkService_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/NetworkService$Proxy;


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    .line 61
    return-void
.end method


# virtual methods
.method public final createHttpServer(Lorg/chromium/mojom/mojo/NetAddress;Lorg/chromium/mojom/mojo/HttpServerDelegate;Lorg/chromium/mojom/mojo/NetworkService$CreateHttpServerResponse;)V
    .locals 8

    .prologue
    .line 138
    new-instance v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;-><init>()V

    .line 140
    iput-object p1, v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;->localAddress:Lorg/chromium/mojom/mojo/NetAddress;

    .line 142
    iput-object p2, v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;->delegate:Lorg/chromium/mojom/mojo/HttpServerDelegate;

    .line 145
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x3

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    new-instance v2, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerResponseParamsForwardToCallback;

    invoke-direct {v2, p3}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/mojo/NetworkService$CreateHttpServerResponse;)V

    invoke-interface {v1, v0, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 154
    return-void
.end method

.method public final createTcpBoundSocket(Lorg/chromium/mojom/mojo/NetAddress;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojom/mojo/NetworkService$CreateTcpBoundSocketResponse;)V
    .locals 8

    .prologue
    .line 69
    new-instance v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;-><init>()V

    .line 71
    iput-object p1, v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;->localAddress:Lorg/chromium/mojom/mojo/NetAddress;

    .line 73
    iput-object p2, v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;->boundSocket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    .line 76
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    new-instance v2, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParamsForwardToCallback;

    invoke-direct {v2, p3}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/mojo/NetworkService$CreateTcpBoundSocketResponse;)V

    invoke-interface {v1, v0, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 85
    return-void
.end method

.method public final createTcpConnectedSocket(Lorg/chromium/mojom/mojo/NetAddress;Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;Lorg/chromium/mojo/system/DataPipe$ProducerHandle;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojom/mojo/NetworkService$CreateTcpConnectedSocketResponse;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 93
    new-instance v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;-><init>()V

    .line 95
    iput-object p1, v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->remoteAddress:Lorg/chromium/mojom/mojo/NetAddress;

    .line 97
    iput-object p2, v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    .line 99
    iput-object p3, v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->receiveStream:Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    .line 101
    iput-object p4, v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->clientSocket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    .line 104
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    new-instance v2, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketResponseParamsForwardToCallback;

    invoke-direct {v2, p5}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/mojo/NetworkService$CreateTcpConnectedSocketResponse;)V

    invoke-interface {v1, v0, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 113
    return-void
.end method

.method public final createUdpSocket(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 5

    .prologue
    .line 120
    new-instance v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateUdpSocketParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateUdpSocketParams;-><init>()V

    .line 122
    iput-object p1, v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateUdpSocketParams;->socket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    .line 125
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateUdpSocketParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 130
    return-void
.end method

.method public final getMimeTypeFromFile(Ljava/lang/String;Lorg/chromium/mojom/mojo/NetworkService$GetMimeTypeFromFileResponse;)V
    .locals 8

    .prologue
    .line 162
    new-instance v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileParams;-><init>()V

    .line 164
    iput-object p1, v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileParams;->filePath:Ljava/lang/String;

    .line 167
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x4

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    new-instance v2, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileResponseParamsForwardToCallback;

    invoke-direct {v2, p2}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/mojo/NetworkService$GetMimeTypeFromFileResponse;)V

    invoke-interface {v1, v0, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 176
    return-void
.end method
