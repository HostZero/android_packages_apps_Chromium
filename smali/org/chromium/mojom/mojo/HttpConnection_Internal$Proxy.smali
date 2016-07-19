.class final Lorg/chromium/mojom/mojo/HttpConnection_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "HttpConnection_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/HttpConnection$Proxy;


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
.method public final setReceiveBufferSize(ILorg/chromium/mojom/mojo/HttpConnection$SetReceiveBufferSizeResponse;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 85
    new-instance v0, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetReceiveBufferSizeParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetReceiveBufferSizeParams;-><init>()V

    .line 87
    iput p1, v0, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetReceiveBufferSizeParams;->size:I

    .line 90
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/HttpConnection_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/HttpConnection_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetReceiveBufferSizeParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    new-instance v2, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetReceiveBufferSizeResponseParamsForwardToCallback;

    invoke-direct {v2, p2}, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetReceiveBufferSizeResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/mojo/HttpConnection$SetReceiveBufferSizeResponse;)V

    invoke-interface {v1, v0, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 99
    return-void
.end method

.method public final setSendBufferSize(ILorg/chromium/mojom/mojo/HttpConnection$SetSendBufferSizeResponse;)V
    .locals 8

    .prologue
    .line 63
    new-instance v0, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetSendBufferSizeParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetSendBufferSizeParams;-><init>()V

    .line 65
    iput p1, v0, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetSendBufferSizeParams;->size:I

    .line 68
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/HttpConnection_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/HttpConnection_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetSendBufferSizeParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    new-instance v2, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetSendBufferSizeResponseParamsForwardToCallback;

    invoke-direct {v2, p2}, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetSendBufferSizeResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/mojo/HttpConnection$SetSendBufferSizeResponse;)V

    invoke-interface {v1, v0, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 77
    return-void
.end method
