.class Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "Resolver_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/catalog/mojom/Resolver$ResolveInterfacesResponse;


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 1

    .prologue
    .line 992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 993
    iput-object p1, p0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    .line 994
    iput-object p2, p0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 995
    iput-wide p3, p0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesResponseParamsProxyToResponder;->mRequestId:J

    .line 996
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 983
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesResponseParamsProxyToResponder;->call(Ljava/lang/String;)V

    return-void
.end method

.method public call(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 1000
    new-instance v0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesResponseParams;

    invoke-direct {v0}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesResponseParams;-><init>()V

    .line 1002
    iput-object p1, v0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesResponseParams;->resolvedMojoName:Ljava/lang/String;

    .line 1004
    iget-object v1, p0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x1

    const/4 v4, 0x2

    iget-wide v6, p0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {v2, v3, v4, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesResponseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 1011
    iget-object v1, p0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 1012
    return-void
.end method
