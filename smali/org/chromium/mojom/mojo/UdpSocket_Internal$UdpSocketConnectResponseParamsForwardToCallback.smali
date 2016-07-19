.class Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParamsForwardToCallback;
.super Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;
.source "UdpSocket_Internal.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/MessageReceiver;


# instance fields
.field private final mCallback:Lorg/chromium/mojom/mojo/UdpSocket$ConnectResponse;


# direct methods
.method constructor <init>(Lorg/chromium/mojom/mojo/UdpSocket$ConnectResponse;)V
    .locals 0

    .prologue
    .line 1522
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;-><init>()V

    .line 1523
    iput-object p1, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParamsForwardToCallback;->mCallback:Lorg/chromium/mojom/mojo/UdpSocket$ConnectResponse;

    .line 1524
    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1529
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v1

    .line 1531
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v2

    .line 1532
    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1542
    :goto_0
    return v0

    .line 1537
    :cond_0
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;

    move-result-object v1

    .line 1539
    iget-object v2, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParamsForwardToCallback;->mCallback:Lorg/chromium/mojom/mojo/UdpSocket$ConnectResponse;

    iget-object v3, v1, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;->result:Lorg/chromium/mojom/mojo/NetworkError;

    iget-object v4, v1, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;->localAddr:Lorg/chromium/mojom/mojo/NetAddress;

    iget-object v1, v1, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParams;->receiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-interface {v2, v3, v4, v1}, Lorg/chromium/mojom/mojo/UdpSocket$ConnectResponse;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1540
    const/4 v0, 0x1

    goto :goto_0

    .line 1542
    :catch_0
    move-exception v1

    goto :goto_0
.end method
