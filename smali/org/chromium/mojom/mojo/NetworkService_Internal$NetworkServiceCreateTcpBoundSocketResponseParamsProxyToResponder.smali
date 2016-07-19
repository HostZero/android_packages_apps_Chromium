.class Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "NetworkService_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/NetworkService$CreateTcpBoundSocketResponse;


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 1

    .prologue
    .line 735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 736
    iput-object p1, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    .line 737
    iput-object p2, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 738
    iput-wide p3, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParamsProxyToResponder;->mRequestId:J

    .line 739
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 726
    check-cast p1, Lorg/chromium/mojom/mojo/NetworkError;

    check-cast p2, Lorg/chromium/mojom/mojo/NetAddress;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParamsProxyToResponder;->call(Lorg/chromium/mojom/mojo/NetworkError;Lorg/chromium/mojom/mojo/NetAddress;)V

    return-void
.end method

.method public call(Lorg/chromium/mojom/mojo/NetworkError;Lorg/chromium/mojom/mojo/NetAddress;)V
    .locals 8

    .prologue
    .line 743
    new-instance v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParams;-><init>()V

    .line 745
    iput-object p1, v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParams;->result:Lorg/chromium/mojom/mojo/NetworkError;

    .line 747
    iput-object p2, v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParams;->boundTo:Lorg/chromium/mojom/mojo/NetAddress;

    .line 749
    iget-object v1, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x0

    const/4 v4, 0x2

    iget-wide v6, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {v2, v3, v4, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 756
    iget-object v1, p0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 757
    return-void
.end method
