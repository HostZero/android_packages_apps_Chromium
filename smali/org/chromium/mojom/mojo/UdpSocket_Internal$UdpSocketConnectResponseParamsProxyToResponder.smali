.class Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "UdpSocket_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/UdpSocket$ConnectResponse;


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 1

    .prologue
    .line 1556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1557
    iput-object p1, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    .line 1558
    iput-object p2, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 1559
    iput-wide p3, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParamsProxyToResponder;->mRequestId:J

    .line 1560
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1547
    check-cast p1, Lorg/chromium/mojom/mojo/NetworkError;

    check-cast p2, Lorg/chromium/mojom/mojo/NetAddress;

    check-cast p3, Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParamsProxyToResponder;->call(Lorg/chromium/mojom/mojo/NetworkError;Lorg/chromium/mojom/mojo/NetAddress;Lorg/chromium/mojo/bindings/InterfaceRequest;)V

    return-void
.end method

.method public call(Lorg/chromium/mojom/mojo/NetworkError;Lorg/chromium/mojom/mojo/NetAddress;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 6

    .prologue
    const/4 v3, 0x2

    .line 1564
    new-instance v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;-><init>()V

    .line 1566
    iput-object p1, v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;->result:Lorg/chromium/mojom/mojo/NetworkError;

    .line 1568
    iput-object p2, v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;->localAddr:Lorg/chromium/mojom/mojo/NetAddress;

    .line 1570
    iput-object p3, v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;->receiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    .line 1572
    iget-object v1, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    iget-wide v4, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {v2, v3, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 1579
    iget-object v1, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 1580
    return-void
.end method
