.class final Lorg/chromium/mojom/mojo/WebSocket_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "WebSocket_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/WebSocket$Proxy;


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    .line 59
    return-void
.end method


# virtual methods
.method public final close(SLjava/lang/String;)V
    .locals 5

    .prologue
    .line 129
    new-instance v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;-><init>()V

    .line 131
    iput-short p1, v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;->code:S

    .line 133
    iput-object p2, v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;->reason:Ljava/lang/String;

    .line 136
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 141
    return-void
.end method

.method public final connect(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;Lorg/chromium/mojom/mojo/WebSocketClient;)V
    .locals 5

    .prologue
    .line 66
    new-instance v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;-><init>()V

    .line 68
    iput-object p1, v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->url:Ljava/lang/String;

    .line 70
    iput-object p2, v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->protocols:[Ljava/lang/String;

    .line 72
    iput-object p3, v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->origin:Ljava/lang/String;

    .line 74
    iput-object p4, v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    .line 76
    iput-object p5, v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->client:Lorg/chromium/mojom/mojo/WebSocketClient;

    .line 79
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 84
    return-void
.end method

.method public final flowControl(J)V
    .locals 5

    .prologue
    .line 112
    new-instance v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketFlowControlParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketFlowControlParams;-><init>()V

    .line 114
    iput-wide p1, v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketFlowControlParams;->quota:J

    .line 117
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketFlowControlParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 122
    return-void
.end method

.method public final send(ZII)V
    .locals 5

    .prologue
    .line 91
    new-instance v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;-><init>()V

    .line 93
    iput-boolean p1, v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->fin:Z

    .line 95
    iput p2, v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->type:I

    .line 97
    iput p3, v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->numBytes:I

    .line 100
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 105
    return-void
.end method
