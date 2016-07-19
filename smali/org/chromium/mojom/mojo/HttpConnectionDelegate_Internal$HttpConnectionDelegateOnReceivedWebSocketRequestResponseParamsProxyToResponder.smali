.class Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "HttpConnectionDelegate_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/HttpConnectionDelegate$OnReceivedWebSocketRequestResponse;


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 1

    .prologue
    .line 902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 903
    iput-object p1, p0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    .line 904
    iput-object p2, p0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 905
    iput-wide p3, p0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParamsProxyToResponder;->mRequestId:J

    .line 906
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 893
    check-cast p1, Lorg/chromium/mojo/bindings/InterfaceRequest;

    check-cast p2, Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    check-cast p3, Lorg/chromium/mojom/mojo/WebSocketClient;

    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParamsProxyToResponder;->call(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;Lorg/chromium/mojom/mojo/WebSocketClient;)V

    return-void
.end method

.method public call(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;Lorg/chromium/mojom/mojo/WebSocketClient;)V
    .locals 8

    .prologue
    .line 910
    new-instance v0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams;-><init>()V

    .line 912
    iput-object p1, v0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams;->webSocket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    .line 914
    iput-object p2, v0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    .line 916
    iput-object p3, v0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams;->client:Lorg/chromium/mojom/mojo/WebSocketClient;

    .line 918
    iget-object v1, p0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x1

    const/4 v4, 0x2

    iget-wide v6, p0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {v2, v3, v4, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 925
    iget-object v1, p0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 926
    return-void
.end method
