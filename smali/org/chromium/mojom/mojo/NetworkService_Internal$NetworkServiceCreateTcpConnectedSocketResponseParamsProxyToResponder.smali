.class Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "NetworkService_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/NetworkService$CreateTcpConnectedSocketResponse;


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 1

    .prologue
    .line 1253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1254
    iput-object p1, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    .line 1255
    iput-object p2, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 1256
    iput-wide p3, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketResponseParamsProxyToResponder;->mRequestId:J

    .line 1257
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1244
    check-cast p1, Lorg/chromium/mojom/mojo/NetworkError;

    check-cast p2, Lorg/chromium/mojom/mojo/NetAddress;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketResponseParamsProxyToResponder;->call(Lorg/chromium/mojom/mojo/NetworkError;Lorg/chromium/mojom/mojo/NetAddress;)V

    return-void
.end method

.method public call(Lorg/chromium/mojom/mojo/NetworkError;Lorg/chromium/mojom/mojo/NetAddress;)V
    .locals 8

    .prologue
    .line 1261
    new-instance v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketResponseParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketResponseParams;-><init>()V

    .line 1263
    iput-object p1, v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketResponseParams;->result:Lorg/chromium/mojom/mojo/NetworkError;

    .line 1265
    iput-object p2, v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketResponseParams;->localAddress:Lorg/chromium/mojom/mojo/NetAddress;

    .line 1267
    iget-object v1, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x1

    const/4 v4, 0x2

    iget-wide v6, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {v2, v3, v4, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketResponseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 1274
    iget-object v1, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 1275
    return-void
.end method