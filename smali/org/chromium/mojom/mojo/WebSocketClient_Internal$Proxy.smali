.class final Lorg/chromium/mojom/mojo/WebSocketClient_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "WebSocketClient_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/WebSocketClient$Proxy;


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
.method public final didClose(ZSLjava/lang/String;)V
    .locals 5

    .prologue
    .line 144
    new-instance v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;-><init>()V

    .line 146
    iput-boolean p1, v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;->wasClean:Z

    .line 148
    iput-short p2, v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;->code:S

    .line 150
    iput-object p3, v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;->reason:Ljava/lang/String;

    .line 153
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 158
    return-void
.end method

.method public final didConnect(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;)V
    .locals 5

    .prologue
    .line 68
    new-instance v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;-><init>()V

    .line 70
    iput-object p1, v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;->selectedSubprotocol:Ljava/lang/String;

    .line 72
    iput-object p2, v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;->extensions:Ljava/lang/String;

    .line 74
    iput-object p3, v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;->receiveStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    .line 77
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 82
    return-void
.end method

.method public final didFail(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 127
    new-instance v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidFailParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidFailParams;-><init>()V

    .line 129
    iput-object p1, v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidFailParams;->message:Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidFailParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 137
    return-void
.end method

.method public final didReceiveData(ZII)V
    .locals 5

    .prologue
    .line 89
    new-instance v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveDataParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveDataParams;-><init>()V

    .line 91
    iput-boolean p1, v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveDataParams;->fin:Z

    .line 93
    iput p2, v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveDataParams;->type:I

    .line 95
    iput p3, v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveDataParams;->numBytes:I

    .line 98
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveDataParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 103
    return-void
.end method

.method public final didReceiveFlowControl(J)V
    .locals 5

    .prologue
    .line 110
    new-instance v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveFlowControlParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveFlowControlParams;-><init>()V

    .line 112
    iput-wide p1, v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveFlowControlParams;->quota:J

    .line 115
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveFlowControlParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 120
    return-void
.end method
