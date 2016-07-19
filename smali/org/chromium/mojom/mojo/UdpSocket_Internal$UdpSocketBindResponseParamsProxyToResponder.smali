.class Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "UdpSocket_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/UdpSocket$BindResponse;


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 1

    .prologue
    .line 1114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1115
    iput-object p1, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    .line 1116
    iput-object p2, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 1117
    iput-wide p3, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindResponseParamsProxyToResponder;->mRequestId:J

    .line 1118
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1105
    check-cast p1, Lorg/chromium/mojom/mojo/NetworkError;

    check-cast p2, Lorg/chromium/mojom/mojo/NetAddress;

    check-cast p3, Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindResponseParamsProxyToResponder;->call(Lorg/chromium/mojom/mojo/NetworkError;Lorg/chromium/mojom/mojo/NetAddress;Lorg/chromium/mojo/bindings/InterfaceRequest;)V

    return-void
.end method

.method public call(Lorg/chromium/mojom/mojo/NetworkError;Lorg/chromium/mojom/mojo/NetAddress;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 8

    .prologue
    .line 1122
    new-instance v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindResponseParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindResponseParams;-><init>()V

    .line 1124
    iput-object p1, v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindResponseParams;->result:Lorg/chromium/mojom/mojo/NetworkError;

    .line 1126
    iput-object p2, v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindResponseParams;->boundAddr:Lorg/chromium/mojom/mojo/NetAddress;

    .line 1128
    iput-object p3, v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindResponseParams;->receiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    .line 1130
    iget-object v1, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x1

    const/4 v4, 0x2

    iget-wide v6, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {v2, v3, v4, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindResponseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 1137
    iget-object v1, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 1138
    return-void
.end method
