.class Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParamsForwardToCallback;
.super Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;
.source "Connector_Internal.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/MessageReceiver;


# instance fields
.field private final mCallback:Lorg/chromium/mojom/mojo/shell/mojom/Connector$ConnectResponse;


# direct methods
.method constructor <init>(Lorg/chromium/mojom/mojo/shell/mojom/Connector$ConnectResponse;)V
    .locals 0

    .prologue
    .line 698
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;-><init>()V

    .line 699
    iput-object p1, p0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParamsForwardToCallback;->mCallback:Lorg/chromium/mojom/mojo/shell/mojom/Connector$ConnectResponse;

    .line 700
    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 705
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v1

    .line 707
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v2

    .line 708
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 718
    :goto_0
    return v0

    .line 713
    :cond_0
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;

    move-result-object v1

    .line 715
    iget-object v2, p0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParamsForwardToCallback;->mCallback:Lorg/chromium/mojom/mojo/shell/mojom/Connector$ConnectResponse;

    iget v3, v1, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->result:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v1, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->userId:Ljava/lang/String;

    iget v1, v1, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->applicationId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v4, v1}, Lorg/chromium/mojom/mojo/shell/mojom/Connector$ConnectResponse;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    const/4 v0, 0x1

    goto :goto_0

    .line 718
    :catch_0
    move-exception v1

    goto :goto_0
.end method
