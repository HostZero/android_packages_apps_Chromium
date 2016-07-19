.class Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveMimeTypeResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "Resolver_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/catalog/mojom/Resolver$ResolveMimeTypeResponse;


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 1

    .prologue
    .line 1315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1316
    iput-object p1, p0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveMimeTypeResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    .line 1317
    iput-object p2, p0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveMimeTypeResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 1318
    iput-wide p3, p0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveMimeTypeResponseParamsProxyToResponder;->mRequestId:J

    .line 1319
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1306
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveMimeTypeResponseParamsProxyToResponder;->call(Ljava/lang/String;)V

    return-void
.end method

.method public call(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x2

    .line 1323
    new-instance v0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveMimeTypeResponseParams;

    invoke-direct {v0}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveMimeTypeResponseParams;-><init>()V

    .line 1325
    iput-object p1, v0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveMimeTypeResponseParams;->resolvedMojoName:Ljava/lang/String;

    .line 1327
    iget-object v1, p0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveMimeTypeResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    iget-wide v4, p0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveMimeTypeResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {v2, v3, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveMimeTypeResponseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 1334
    iget-object v1, p0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveMimeTypeResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 1335
    return-void
.end method
