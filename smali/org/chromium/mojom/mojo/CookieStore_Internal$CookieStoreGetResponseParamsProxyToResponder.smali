.class Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "CookieStore_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/CookieStore$GetResponse;


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 1

    .prologue
    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    iput-object p1, p0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    .line 498
    iput-object p2, p0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 499
    iput-wide p3, p0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParamsProxyToResponder;->mRequestId:J

    .line 500
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 487
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParamsProxyToResponder;->call(Ljava/lang/String;)V

    return-void
.end method

.method public call(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 504
    new-instance v0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParams;-><init>()V

    .line 506
    iput-object p1, v0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParams;->cookies:Ljava/lang/String;

    .line 508
    iget-object v1, p0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x0

    const/4 v4, 0x2

    iget-wide v6, p0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {v2, v3, v4, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 515
    iget-object v1, p0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 516
    return-void
.end method
