.class Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetReceiveBufferSizeResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "UdpSocket_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/UdpSocket$SetReceiveBufferSizeResponse;


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 1

    .prologue
    .line 2212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2213
    iput-object p1, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetReceiveBufferSizeResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    .line 2214
    iput-object p2, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetReceiveBufferSizeResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 2215
    iput-wide p3, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetReceiveBufferSizeResponseParamsProxyToResponder;->mRequestId:J

    .line 2216
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2203
    check-cast p1, Lorg/chromium/mojom/mojo/NetworkError;

    invoke-virtual {p0, p1}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetReceiveBufferSizeResponseParamsProxyToResponder;->call(Lorg/chromium/mojom/mojo/NetworkError;)V

    return-void
.end method

.method public call(Lorg/chromium/mojom/mojo/NetworkError;)V
    .locals 8

    .prologue
    .line 2220
    new-instance v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetReceiveBufferSizeResponseParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetReceiveBufferSizeResponseParams;-><init>()V

    .line 2222
    iput-object p1, v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetReceiveBufferSizeResponseParams;->result:Lorg/chromium/mojom/mojo/NetworkError;

    .line 2224
    iget-object v1, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetReceiveBufferSizeResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x4

    const/4 v4, 0x2

    iget-wide v6, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetReceiveBufferSizeResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {v2, v3, v4, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetReceiveBufferSizeResponseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 2231
    iget-object v1, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetReceiveBufferSizeResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 2232
    return-void
.end method
