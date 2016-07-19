.class final Lorg/chromium/mojom/mojo/UdpSocket_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "UdpSocket_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/UdpSocket$Proxy;


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    .line 67
    return-void
.end method


# virtual methods
.method public final allowAddressReuse(Lorg/chromium/mojom/mojo/UdpSocket$AllowAddressReuseResponse;)V
    .locals 8

    .prologue
    .line 75
    new-instance v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketAllowAddressReuseParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketAllowAddressReuseParams;-><init>()V

    .line 78
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketAllowAddressReuseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    new-instance v2, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketAllowAddressReuseResponseParamsForwardToCallback;

    invoke-direct {v2, p1}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketAllowAddressReuseResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/mojo/UdpSocket$AllowAddressReuseResponse;)V

    invoke-interface {v1, v0, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 87
    return-void
.end method

.method public final bind(Lorg/chromium/mojom/mojo/NetAddress;Lorg/chromium/mojom/mojo/UdpSocket$BindResponse;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 95
    new-instance v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindParams;-><init>()V

    .line 97
    iput-object p1, v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindParams;->addr:Lorg/chromium/mojom/mojo/NetAddress;

    .line 100
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    new-instance v2, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindResponseParamsForwardToCallback;

    invoke-direct {v2, p2}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/mojo/UdpSocket$BindResponse;)V

    invoke-interface {v1, v0, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 109
    return-void
.end method

.method public final connect(Lorg/chromium/mojom/mojo/NetAddress;Lorg/chromium/mojom/mojo/UdpSocket$ConnectResponse;)V
    .locals 8

    .prologue
    .line 117
    new-instance v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectParams;-><init>()V

    .line 119
    iput-object p1, v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectParams;->remoteAddr:Lorg/chromium/mojom/mojo/NetAddress;

    .line 122
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    new-instance v2, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParamsForwardToCallback;

    invoke-direct {v2, p2}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/mojo/UdpSocket$ConnectResponse;)V

    invoke-interface {v1, v0, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 131
    return-void
.end method

.method public final negotiateMaxPendingSendRequests(ILorg/chromium/mojom/mojo/UdpSocket$NegotiateMaxPendingSendRequestsResponse;)V
    .locals 8

    .prologue
    .line 183
    new-instance v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketNegotiateMaxPendingSendRequestsParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketNegotiateMaxPendingSendRequestsParams;-><init>()V

    .line 185
    iput p1, v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketNegotiateMaxPendingSendRequestsParams;->requestedSize:I

    .line 188
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x5

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketNegotiateMaxPendingSendRequestsParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    new-instance v2, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketNegotiateMaxPendingSendRequestsResponseParamsForwardToCallback;

    invoke-direct {v2, p2}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketNegotiateMaxPendingSendRequestsResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/mojo/UdpSocket$NegotiateMaxPendingSendRequestsResponse;)V

    invoke-interface {v1, v0, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 197
    return-void
.end method

.method public final receiveMore(I)V
    .locals 5

    .prologue
    .line 204
    new-instance v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketReceiveMoreParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketReceiveMoreParams;-><init>()V

    .line 206
    iput p1, v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketReceiveMoreParams;->datagramNumber:I

    .line 209
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketReceiveMoreParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 214
    return-void
.end method

.method public final sendTo(Lorg/chromium/mojom/mojo/NetAddress;[BLorg/chromium/mojom/mojo/UdpSocket$SendToResponse;)V
    .locals 8

    .prologue
    .line 222
    new-instance v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToParams;-><init>()V

    .line 224
    iput-object p1, v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToParams;->destAddr:Lorg/chromium/mojom/mojo/NetAddress;

    .line 226
    iput-object p2, v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToParams;->data:[B

    .line 229
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x7

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    new-instance v2, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToResponseParamsForwardToCallback;

    invoke-direct {v2, p3}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/mojo/UdpSocket$SendToResponse;)V

    invoke-interface {v1, v0, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 238
    return-void
.end method

.method public final setReceiveBufferSize(ILorg/chromium/mojom/mojo/UdpSocket$SetReceiveBufferSizeResponse;)V
    .locals 8

    .prologue
    .line 161
    new-instance v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetReceiveBufferSizeParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetReceiveBufferSizeParams;-><init>()V

    .line 163
    iput p1, v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetReceiveBufferSizeParams;->size:I

    .line 166
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x4

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetReceiveBufferSizeParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    new-instance v2, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetReceiveBufferSizeResponseParamsForwardToCallback;

    invoke-direct {v2, p2}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetReceiveBufferSizeResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/mojo/UdpSocket$SetReceiveBufferSizeResponse;)V

    invoke-interface {v1, v0, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 175
    return-void
.end method

.method public final setSendBufferSize(ILorg/chromium/mojom/mojo/UdpSocket$SetSendBufferSizeResponse;)V
    .locals 8

    .prologue
    .line 139
    new-instance v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetSendBufferSizeParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetSendBufferSizeParams;-><init>()V

    .line 141
    iput p1, v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetSendBufferSizeParams;->size:I

    .line 144
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x3

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetSendBufferSizeParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    new-instance v2, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetSendBufferSizeResponseParamsForwardToCallback;

    invoke-direct {v2, p2}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetSendBufferSizeResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/mojo/UdpSocket$SetSendBufferSizeResponse;)V

    invoke-interface {v1, v0, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 153
    return-void
.end method
