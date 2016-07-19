.class final Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "Catalog_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/catalog/mojom/Catalog$Proxy;


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    .line 53
    return-void
.end method


# virtual methods
.method public final getEntries([Ljava/lang/String;Lorg/chromium/mojom/catalog/mojom/Catalog$GetEntriesResponse;)V
    .locals 8

    .prologue
    .line 61
    new-instance v0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;

    invoke-direct {v0}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;-><init>()V

    .line 63
    iput-object p1, v0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;->urls:[Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    new-instance v2, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParamsForwardToCallback;

    invoke-direct {v2, p2}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/catalog/mojom/Catalog$GetEntriesResponse;)V

    invoke-interface {v1, v0, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 75
    return-void
.end method
