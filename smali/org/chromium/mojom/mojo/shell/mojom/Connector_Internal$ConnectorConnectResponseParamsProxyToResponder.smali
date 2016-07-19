.class Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "Connector_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/shell/mojom/Connector$ConnectResponse;


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 1

    .prologue
    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 733
    iput-object p1, p0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    .line 734
    iput-object p2, p0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 735
    iput-wide p3, p0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParamsProxyToResponder;->mRequestId:J

    .line 736
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 8

    .prologue
    .line 740
    new-instance v0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;-><init>()V

    .line 742
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->result:I

    .line 744
    iput-object p2, v0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->userId:Ljava/lang/String;

    .line 746
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->applicationId:I

    .line 748
    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x0

    const/4 v4, 0x2

    iget-wide v6, p0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {v2, v3, v4, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 755
    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 756
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 723
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParamsProxyToResponder;->call(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
