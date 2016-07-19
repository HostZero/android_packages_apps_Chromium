.class Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesResponseParamsForwardToCallback;
.super Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;
.source "Resolver_Internal.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/MessageReceiver;


# instance fields
.field private final mCallback:Lorg/chromium/mojom/catalog/mojom/Resolver$ResolveInterfacesResponse;


# direct methods
.method constructor <init>(Lorg/chromium/mojom/catalog/mojom/Resolver$ResolveInterfacesResponse;)V
    .locals 0

    .prologue
    .line 958
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;-><init>()V

    .line 959
    iput-object p1, p0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesResponseParamsForwardToCallback;->mCallback:Lorg/chromium/mojom/catalog/mojom/Resolver$ResolveInterfacesResponse;

    .line 960
    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 965
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    .line 967
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v3

    .line 968
    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 978
    :goto_0
    return v0

    .line 973
    :cond_0
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesResponseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesResponseParams;

    move-result-object v2

    .line 975
    iget-object v3, p0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesResponseParamsForwardToCallback;->mCallback:Lorg/chromium/mojom/catalog/mojom/Resolver$ResolveInterfacesResponse;

    iget-object v2, v2, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesResponseParams;->resolvedMojoName:Ljava/lang/String;

    invoke-interface {v3, v2}, Lorg/chromium/mojom/catalog/mojom/Resolver$ResolveInterfacesResponse;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 976
    goto :goto_0

    .line 978
    :catch_0
    move-exception v1

    goto :goto_0
.end method
