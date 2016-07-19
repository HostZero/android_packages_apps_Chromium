.class Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetReceiveBufferSizeResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "HttpConnection_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/HttpConnection$SetReceiveBufferSizeResponse;


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 1

    .prologue
    .line 823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 824
    iput-object p1, p0, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetReceiveBufferSizeResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    .line 825
    iput-object p2, p0, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetReceiveBufferSizeResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 826
    iput-wide p3, p0, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetReceiveBufferSizeResponseParamsProxyToResponder;->mRequestId:J

    .line 827
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 814
    check-cast p1, Lorg/chromium/mojom/mojo/NetworkError;

    invoke-virtual {p0, p1}, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetReceiveBufferSizeResponseParamsProxyToResponder;->call(Lorg/chromium/mojom/mojo/NetworkError;)V

    return-void
.end method

.method public call(Lorg/chromium/mojom/mojo/NetworkError;)V
    .locals 8

    .prologue
    .line 831
    new-instance v0, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetReceiveBufferSizeResponseParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetReceiveBufferSizeResponseParams;-><init>()V

    .line 833
    iput-object p1, v0, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetReceiveBufferSizeResponseParams;->result:Lorg/chromium/mojom/mojo/NetworkError;

    .line 835
    iget-object v1, p0, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetReceiveBufferSizeResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x1

    const/4 v4, 0x2

    iget-wide v6, p0, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetReceiveBufferSizeResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {v2, v3, v4, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetReceiveBufferSizeResponseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 842
    iget-object v1, p0, Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetReceiveBufferSizeResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 843
    return-void
.end method
