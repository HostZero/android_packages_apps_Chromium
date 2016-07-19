.class Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderQueryStatusResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "UrlLoader_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/UrlLoader$QueryStatusResponse;


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 1

    .prologue
    .line 1069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1070
    iput-object p1, p0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderQueryStatusResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    .line 1071
    iput-object p2, p0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderQueryStatusResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 1072
    iput-wide p3, p0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderQueryStatusResponseParamsProxyToResponder;->mRequestId:J

    .line 1073
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1060
    check-cast p1, Lorg/chromium/mojom/mojo/UrlLoaderStatus;

    invoke-virtual {p0, p1}, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderQueryStatusResponseParamsProxyToResponder;->call(Lorg/chromium/mojom/mojo/UrlLoaderStatus;)V

    return-void
.end method

.method public call(Lorg/chromium/mojom/mojo/UrlLoaderStatus;)V
    .locals 6

    .prologue
    const/4 v3, 0x2

    .line 1077
    new-instance v0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderQueryStatusResponseParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderQueryStatusResponseParams;-><init>()V

    .line 1079
    iput-object p1, v0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderQueryStatusResponseParams;->status:Lorg/chromium/mojom/mojo/UrlLoaderStatus;

    .line 1081
    iget-object v1, p0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderQueryStatusResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    iget-wide v4, p0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderQueryStatusResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {v2, v3, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderQueryStatusResponseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 1088
    iget-object v1, p0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderQueryStatusResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 1089
    return-void
.end method
