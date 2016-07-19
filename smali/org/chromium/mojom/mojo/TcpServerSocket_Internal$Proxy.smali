.class final Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "TcpServerSocket_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/TcpServerSocket$Proxy;


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
.method public final accept(Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;Lorg/chromium/mojo/system/DataPipe$ProducerHandle;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojom/mojo/TcpServerSocket$AcceptResponse;)V
    .locals 8

    .prologue
    .line 61
    new-instance v0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;-><init>()V

    .line 63
    iput-object p1, v0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    .line 65
    iput-object p2, v0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;->receiveStream:Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    .line 67
    iput-object p3, v0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;->clientSocket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    .line 70
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    new-instance v2, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptResponseParamsForwardToCallback;

    invoke-direct {v2, p4}, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal$TcpServerSocketAcceptResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/mojo/TcpServerSocket$AcceptResponse;)V

    invoke-interface {v1, v0, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 79
    return-void
.end method
