.class final Lorg/chromium/mojom/mojo/UrlLoader_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "UrlLoader_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/UrlLoader$Proxy;


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    .line 57
    return-void
.end method


# virtual methods
.method public final followRedirect(Lorg/chromium/mojom/mojo/UrlLoader$FollowRedirectResponse;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 87
    new-instance v0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectParams;-><init>()V

    .line 90
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UrlLoader_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UrlLoader_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    new-instance v2, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectResponseParamsForwardToCallback;

    invoke-direct {v2, p1}, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/mojo/UrlLoader$FollowRedirectResponse;)V

    invoke-interface {v1, v0, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 99
    return-void
.end method

.method public final queryStatus(Lorg/chromium/mojom/mojo/UrlLoader$QueryStatusResponse;)V
    .locals 8

    .prologue
    .line 107
    new-instance v0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderQueryStatusParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderQueryStatusParams;-><init>()V

    .line 110
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UrlLoader_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UrlLoader_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderQueryStatusParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    new-instance v2, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderQueryStatusResponseParamsForwardToCallback;

    invoke-direct {v2, p1}, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderQueryStatusResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/mojo/UrlLoader$QueryStatusResponse;)V

    invoke-interface {v1, v0, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 119
    return-void
.end method

.method public final start(Lorg/chromium/mojom/mojo/UrlRequest;Lorg/chromium/mojom/mojo/UrlLoader$StartResponse;)V
    .locals 8

    .prologue
    .line 65
    new-instance v0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderStartParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderStartParams;-><init>()V

    .line 67
    iput-object p1, v0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderStartParams;->request:Lorg/chromium/mojom/mojo/UrlRequest;

    .line 70
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UrlLoader_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UrlLoader_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderStartParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    new-instance v2, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderStartResponseParamsForwardToCallback;

    invoke-direct {v2, p2}, Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderStartResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/mojo/UrlLoader$StartResponse;)V

    invoke-interface {v1, v0, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 79
    return-void
.end method
