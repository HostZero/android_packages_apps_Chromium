.class Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketStartListeningResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "TcpBoundSocket_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/TcpBoundSocket$StartListeningResponse;


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 1

    .prologue
    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    iput-object p1, p0, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketStartListeningResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    .line 505
    iput-object p2, p0, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketStartListeningResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 506
    iput-wide p3, p0, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketStartListeningResponseParamsProxyToResponder;->mRequestId:J

    .line 507
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 494
    check-cast p1, Lorg/chromium/mojom/mojo/NetworkError;

    invoke-virtual {p0, p1}, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketStartListeningResponseParamsProxyToResponder;->call(Lorg/chromium/mojom/mojo/NetworkError;)V

    return-void
.end method

.method public call(Lorg/chromium/mojom/mojo/NetworkError;)V
    .locals 8

    .prologue
    .line 511
    new-instance v0, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketStartListeningResponseParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketStartListeningResponseParams;-><init>()V

    .line 513
    iput-object p1, v0, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketStartListeningResponseParams;->result:Lorg/chromium/mojom/mojo/NetworkError;

    .line 515
    iget-object v1, p0, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketStartListeningResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x0

    const/4 v4, 0x2

    iget-wide v6, p0, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketStartListeningResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {v2, v3, v4, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketStartListeningResponseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 522
    iget-object v1, p0, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketStartListeningResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 523
    return-void
.end method
