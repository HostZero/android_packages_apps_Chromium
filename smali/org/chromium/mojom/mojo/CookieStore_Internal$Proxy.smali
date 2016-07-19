.class final Lorg/chromium/mojom/mojo/CookieStore_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "CookieStore_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/CookieStore$Proxy;


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    .line 55
    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/String;Lorg/chromium/mojom/mojo/CookieStore$GetResponse;)V
    .locals 8

    .prologue
    .line 63
    new-instance v0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetParams;-><init>()V

    .line 65
    iput-object p1, v0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetParams;->url:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/CookieStore_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/CookieStore_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    new-instance v2, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParamsForwardToCallback;

    invoke-direct {v2, p2}, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/mojo/CookieStore$GetResponse;)V

    invoke-interface {v1, v0, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 77
    return-void
.end method

.method public final set(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/mojom/mojo/CookieStore$SetResponse;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 85
    new-instance v0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetParams;-><init>()V

    .line 87
    iput-object p1, v0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetParams;->url:Ljava/lang/String;

    .line 89
    iput-object p2, v0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetParams;->cookie:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/CookieStore_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/CookieStore_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    new-instance v2, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParamsForwardToCallback;

    invoke-direct {v2, p3}, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/mojo/CookieStore$SetResponse;)V

    invoke-interface {v1, v0, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 101
    return-void
.end method
