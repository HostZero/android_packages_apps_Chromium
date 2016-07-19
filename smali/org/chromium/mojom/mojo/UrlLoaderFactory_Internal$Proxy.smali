.class final Lorg/chromium/mojom/mojo/UrlLoaderFactory_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "UrlLoaderFactory_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/UrlLoaderFactory$Proxy;


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
.method public final createUrlLoader(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 5

    .prologue
    .line 60
    new-instance v0, Lorg/chromium/mojom/mojo/UrlLoaderFactory_Internal$UrlLoaderFactoryCreateUrlLoaderParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/UrlLoaderFactory_Internal$UrlLoaderFactoryCreateUrlLoaderParams;-><init>()V

    .line 62
    iput-object p1, v0, Lorg/chromium/mojom/mojo/UrlLoaderFactory_Internal$UrlLoaderFactoryCreateUrlLoaderParams;->loader:Lorg/chromium/mojo/bindings/InterfaceRequest;

    .line 65
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UrlLoaderFactory_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UrlLoaderFactory_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/UrlLoaderFactory_Internal$UrlLoaderFactoryCreateUrlLoaderParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 70
    return-void
.end method
