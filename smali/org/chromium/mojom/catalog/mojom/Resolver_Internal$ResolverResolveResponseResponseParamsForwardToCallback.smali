.class Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParamsForwardToCallback;
.super Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;
.source "Resolver_Internal.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/MessageReceiver;


# instance fields
.field private final mCallback:Lorg/chromium/mojom/catalog/mojom/Resolver$ResolveResponseResponse;


# direct methods
.method constructor <init>(Lorg/chromium/mojom/catalog/mojom/Resolver$ResolveResponseResponse;)V
    .locals 0

    .prologue
    .line 601
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;-><init>()V

    .line 602
    iput-object p1, p0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParamsForwardToCallback;->mCallback:Lorg/chromium/mojom/catalog/mojom/Resolver$ResolveResponseResponse;

    .line 603
    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 608
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v1

    .line 610
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v2

    .line 611
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 621
    :goto_0
    return v0

    .line 616
    :cond_0
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParams;

    move-result-object v1

    .line 618
    iget-object v2, p0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParamsForwardToCallback;->mCallback:Lorg/chromium/mojom/catalog/mojom/Resolver$ResolveResponseResponse;

    iget-object v3, v1, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParams;->resolvedMojoName:Ljava/lang/String;

    iget-object v1, v1, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParams;->response:Lorg/chromium/mojom/mojo/UrlResponse;

    invoke-interface {v2, v3, v1}, Lorg/chromium/mojom/catalog/mojom/Resolver$ResolveResponseResponse;->call(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    const/4 v0, 0x1

    goto :goto_0

    .line 621
    :catch_0
    move-exception v1

    goto :goto_0
.end method
