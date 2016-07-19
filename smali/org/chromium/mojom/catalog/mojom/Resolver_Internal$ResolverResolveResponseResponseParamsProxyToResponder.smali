.class Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "Resolver_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/catalog/mojom/Resolver$ResolveResponseResponse;


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 1

    .prologue
    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    iput-object p1, p0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    .line 637
    iput-object p2, p0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 638
    iput-wide p3, p0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParamsProxyToResponder;->mRequestId:J

    .line 639
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 626
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lorg/chromium/mojom/mojo/UrlResponse;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParamsProxyToResponder;->call(Ljava/lang/String;Lorg/chromium/mojom/mojo/UrlResponse;)V

    return-void
.end method

.method public call(Ljava/lang/String;Lorg/chromium/mojom/mojo/UrlResponse;)V
    .locals 8

    .prologue
    .line 643
    new-instance v0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParams;

    invoke-direct {v0}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParams;-><init>()V

    .line 645
    iput-object p1, v0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParams;->resolvedMojoName:Ljava/lang/String;

    .line 647
    iput-object p2, v0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParams;->response:Lorg/chromium/mojom/mojo/UrlResponse;

    .line 649
    iget-object v1, p0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x0

    const/4 v4, 0x2

    iget-wide v6, p0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {v2, v3, v4, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 656
    iget-object v1, p0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 657
    return-void
.end method
