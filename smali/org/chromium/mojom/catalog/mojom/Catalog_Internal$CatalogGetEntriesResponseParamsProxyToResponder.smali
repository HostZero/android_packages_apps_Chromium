.class Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "Catalog_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/catalog/mojom/Catalog$GetEntriesResponse;


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 1

    .prologue
    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    iput-object p1, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    .line 598
    iput-object p2, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 599
    iput-wide p3, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParamsProxyToResponder;->mRequestId:J

    .line 600
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 587
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParamsProxyToResponder;->call(Ljava/util/Map;)V

    return-void
.end method

.method public call(Ljava/util/Map;)V
    .locals 8

    .prologue
    .line 604
    new-instance v0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;

    invoke-direct {v0}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;-><init>()V

    .line 606
    iput-object p1, v0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;->entries:Ljava/util/Map;

    .line 608
    iget-object v1, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x0

    const/4 v4, 0x2

    iget-wide v6, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {v2, v3, v4, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 615
    iget-object v1, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 616
    return-void
.end method
