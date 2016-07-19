.class final Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "Resolver_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/catalog/mojom/Resolver$Proxy;


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    .line 59
    return-void
.end method


# virtual methods
.method public final resolveInterfaces([Ljava/lang/String;Lorg/chromium/mojom/catalog/mojom/Resolver$ResolveInterfacesResponse;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 89
    new-instance v0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesParams;

    invoke-direct {v0}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesParams;-><init>()V

    .line 91
    iput-object p1, v0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesParams;->interfaces:[Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    new-instance v2, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesResponseParamsForwardToCallback;

    invoke-direct {v2, p2}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/catalog/mojom/Resolver$ResolveInterfacesResponse;)V

    invoke-interface {v1, v0, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 103
    return-void
.end method

.method public final resolveMimeType(Ljava/lang/String;Lorg/chromium/mojom/catalog/mojom/Resolver$ResolveMimeTypeResponse;)V
    .locals 8

    .prologue
    .line 111
    new-instance v0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveMimeTypeParams;

    invoke-direct {v0}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveMimeTypeParams;-><init>()V

    .line 113
    iput-object p1, v0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveMimeTypeParams;->mimeType:Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveMimeTypeParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    new-instance v2, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveMimeTypeResponseParamsForwardToCallback;

    invoke-direct {v2, p2}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveMimeTypeResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/catalog/mojom/Resolver$ResolveMimeTypeResponse;)V

    invoke-interface {v1, v0, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 125
    return-void
.end method

.method public final resolveProtocolScheme(Ljava/lang/String;Lorg/chromium/mojom/catalog/mojom/Resolver$ResolveProtocolSchemeResponse;)V
    .locals 8

    .prologue
    .line 133
    new-instance v0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveProtocolSchemeParams;

    invoke-direct {v0}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveProtocolSchemeParams;-><init>()V

    .line 135
    iput-object p1, v0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveProtocolSchemeParams;->protocolScheme:Ljava/lang/String;

    .line 138
    invoke-virtual {p0}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x3

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveProtocolSchemeParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    new-instance v2, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveProtocolSchemeResponseParamsForwardToCallback;

    invoke-direct {v2, p2}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveProtocolSchemeResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/catalog/mojom/Resolver$ResolveProtocolSchemeResponse;)V

    invoke-interface {v1, v0, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 147
    return-void
.end method

.method public final resolveResponse(Lorg/chromium/mojom/mojo/UrlResponse;Lorg/chromium/mojom/catalog/mojom/Resolver$ResolveResponseResponse;)V
    .locals 8

    .prologue
    .line 67
    new-instance v0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseParams;

    invoke-direct {v0}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseParams;-><init>()V

    .line 69
    iput-object p1, v0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseParams;->response:Lorg/chromium/mojom/mojo/UrlResponse;

    .line 72
    invoke-virtual {p0}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    new-instance v2, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParamsForwardToCallback;

    invoke-direct {v2, p2}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/catalog/mojom/Resolver$ResolveResponseResponse;)V

    invoke-interface {v1, v0, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 81
    return-void
.end method
