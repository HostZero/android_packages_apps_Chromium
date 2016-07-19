.class Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindResponseParamsForwardToCallback;
.super Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;
.source "UdpSocket_Internal.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/MessageReceiver;


# instance fields
.field private final mCallback:Lorg/chromium/mojom/mojo/UdpSocket$BindResponse;


# direct methods
.method constructor <init>(Lorg/chromium/mojom/mojo/UdpSocket$BindResponse;)V
    .locals 0

    .prologue
    .line 1080
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;-><init>()V

    .line 1081
    iput-object p1, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindResponseParamsForwardToCallback;->mCallback:Lorg/chromium/mojom/mojo/UdpSocket$BindResponse;

    .line 1082
    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1087
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    .line 1089
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v3

    .line 1090
    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1100
    :goto_0
    return v0

    .line 1095
    :cond_0
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindResponseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindResponseParams;

    move-result-object v2

    .line 1097
    iget-object v3, p0, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindResponseParamsForwardToCallback;->mCallback:Lorg/chromium/mojom/mojo/UdpSocket$BindResponse;

    iget-object v4, v2, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindResponseParams;->result:Lorg/chromium/mojom/mojo/NetworkError;

    iget-object v5, v2, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindResponseParams;->boundAddr:Lorg/chromium/mojom/mojo/NetAddress;

    iget-object v2, v2, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindResponseParams;->receiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-interface {v3, v4, v5, v2}, Lorg/chromium/mojom/mojo/UdpSocket$BindResponse;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1098
    goto :goto_0

    .line 1100
    :catch_0
    move-exception v1

    goto :goto_0
.end method
