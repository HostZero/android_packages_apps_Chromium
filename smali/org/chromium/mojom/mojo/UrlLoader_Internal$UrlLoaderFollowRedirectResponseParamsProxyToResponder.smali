.class Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "UrlLoader_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/UrlLoader$FollowRedirectResponse;


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 1

    .prologue
    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 803
    iput-object p1, p0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    .line 804
    iput-object p2, p0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 805
    iput-wide p3, p0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectResponseParamsProxyToResponder;->mRequestId:J

    .line 806
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 793
    check-cast p1, Lorg/chromium/mojom/mojo/UrlResponse;

    invoke-virtual {p0, p1}, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectResponseParamsProxyToResponder;->call(Lorg/chromium/mojom/mojo/UrlResponse;)V

    return-void
.end method

.method public call(Lorg/chromium/mojom/mojo/UrlResponse;)V
    .locals 8

    .prologue
    .line 810
    new-instance v0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectResponseParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectResponseParams;-><init>()V

    .line 812
    iput-object p1, v0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectResponseParams;->response:Lorg/chromium/mojom/mojo/UrlResponse;

    .line 814
    iget-object v1, p0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x1

    const/4 v4, 0x2

    iget-wide v6, p0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {v2, v3, v4, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectResponseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 821
    iget-object v1, p0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 822
    return-void
.end method
