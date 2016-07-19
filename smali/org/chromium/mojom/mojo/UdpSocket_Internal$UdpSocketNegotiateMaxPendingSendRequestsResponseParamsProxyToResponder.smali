.class Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketNegotiateMaxPendingSendRequestsResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "UdpSocket_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/UdpSocket$NegotiateMaxPendingSendRequestsResponse;


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 1

    .prologue
    .line 2535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2536
    iput-object p1, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketNegotiateMaxPendingSendRequestsResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    .line 2537
    iput-object p2, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketNegotiateMaxPendingSendRequestsResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 2538
    iput-wide p3, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketNegotiateMaxPendingSendRequestsResponseParamsProxyToResponder;->mRequestId:J

    .line 2539
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 8

    .prologue
    .line 2543
    new-instance v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketNegotiateMaxPendingSendRequestsResponseParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketNegotiateMaxPendingSendRequestsResponseParams;-><init>()V

    .line 2545
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketNegotiateMaxPendingSendRequestsResponseParams;->actualSize:I

    .line 2547
    iget-object v1, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketNegotiateMaxPendingSendRequestsResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x5

    const/4 v4, 0x2

    iget-wide v6, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketNegotiateMaxPendingSendRequestsResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {v2, v3, v4, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketNegotiateMaxPendingSendRequestsResponseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 2554
    iget-object v1, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketNegotiateMaxPendingSendRequestsResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 2555
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2526
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketNegotiateMaxPendingSendRequestsResponseParamsProxyToResponder;->call(Ljava/lang/Integer;)V

    return-void
.end method
