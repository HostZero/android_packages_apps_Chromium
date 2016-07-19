.class Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "UdpSocket_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/UdpSocket$SendToResponse;


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 1

    .prologue
    .line 3048
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3049
    iput-object p1, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    .line 3050
    iput-object p2, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 3051
    iput-wide p3, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToResponseParamsProxyToResponder;->mRequestId:J

    .line 3052
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3039
    check-cast p1, Lorg/chromium/mojom/mojo/NetworkError;

    invoke-virtual {p0, p1}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToResponseParamsProxyToResponder;->call(Lorg/chromium/mojom/mojo/NetworkError;)V

    return-void
.end method

.method public call(Lorg/chromium/mojom/mojo/NetworkError;)V
    .locals 8

    .prologue
    .line 3056
    new-instance v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToResponseParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToResponseParams;-><init>()V

    .line 3058
    iput-object p1, v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToResponseParams;->result:Lorg/chromium/mojom/mojo/NetworkError;

    .line 3060
    iget-object v1, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x7

    const/4 v4, 0x2

    iget-wide v6, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {v2, v3, v4, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToResponseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 3067
    iget-object v1, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 3068
    return-void
.end method
