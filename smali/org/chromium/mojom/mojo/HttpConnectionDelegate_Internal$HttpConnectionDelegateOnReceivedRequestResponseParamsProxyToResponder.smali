.class Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedRequestResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "HttpConnectionDelegate_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/HttpConnectionDelegate$OnReceivedRequestResponse;


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 1

    .prologue
    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    iput-object p1, p0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedRequestResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    .line 502
    iput-object p2, p0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedRequestResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 503
    iput-wide p3, p0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedRequestResponseParamsProxyToResponder;->mRequestId:J

    .line 504
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 491
    check-cast p1, Lorg/chromium/mojom/mojo/HttpResponse;

    invoke-virtual {p0, p1}, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedRequestResponseParamsProxyToResponder;->call(Lorg/chromium/mojom/mojo/HttpResponse;)V

    return-void
.end method

.method public call(Lorg/chromium/mojom/mojo/HttpResponse;)V
    .locals 8

    .prologue
    .line 508
    new-instance v0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedRequestResponseParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedRequestResponseParams;-><init>()V

    .line 510
    iput-object p1, v0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedRequestResponseParams;->response:Lorg/chromium/mojom/mojo/HttpResponse;

    .line 512
    iget-object v1, p0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedRequestResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x0

    const/4 v4, 0x2

    iget-wide v6, p0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedRequestResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {v2, v3, v4, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedRequestResponseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 519
    iget-object v1, p0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedRequestResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 520
    return-void
.end method
