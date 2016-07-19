.class public abstract Lorg/chromium/mojo/bindings/Interface$Manager;
.super Ljava/lang/Object;
.source "Interface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final attachProxy(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Router;)Lorg/chromium/mojo/bindings/Interface$Proxy;
    .locals 1

    .prologue
    .line 390
    new-instance v0, Lorg/chromium/mojo/bindings/AutoCloseableRouter;

    invoke-direct {v0, p1, p2}, Lorg/chromium/mojo/bindings/AutoCloseableRouter;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Router;)V

    invoke-virtual {p0, p1, v0}, Lorg/chromium/mojo/bindings/Interface$Manager;->buildProxy(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    return-object v0
.end method

.method public final attachProxy(Lorg/chromium/mojo/system/MessagePipeHandle;I)Lorg/chromium/mojo/bindings/Interface$Proxy;
    .locals 3

    .prologue
    .line 353
    new-instance v0, Lorg/chromium/mojo/bindings/RouterImpl;

    invoke-direct {v0, p1}, Lorg/chromium/mojo/bindings/RouterImpl;-><init>(Lorg/chromium/mojo/system/MessagePipeHandle;)V

    .line 354
    invoke-interface {p1}, Lorg/chromium/mojo/system/MessagePipeHandle;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/chromium/mojo/bindings/Interface$Manager;->attachProxy(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Router;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v1

    .line 355
    new-instance v2, Lorg/chromium/mojo/bindings/DelegatingConnectionErrorHandler;

    invoke-direct {v2}, Lorg/chromium/mojo/bindings/DelegatingConnectionErrorHandler;-><init>()V

    .line 356
    invoke-virtual {v2, v1}, Lorg/chromium/mojo/bindings/DelegatingConnectionErrorHandler;->addConnectionErrorHandler(Lorg/chromium/mojo/bindings/ConnectionErrorHandler;)V

    .line 357
    invoke-virtual {v0, v2}, Lorg/chromium/mojo/bindings/RouterImpl;->setErrorHandler(Lorg/chromium/mojo/bindings/ConnectionErrorHandler;)V

    .line 358
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/RouterImpl;->start()V

    .line 359
    invoke-interface {v1}, Lorg/chromium/mojo/bindings/Interface$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$Proxy$Handler;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    invoke-virtual {v0, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->setVersion(I)V

    .line 360
    return-object v1
.end method

.method public bind(Lorg/chromium/mojo/bindings/Interface;Lorg/chromium/mojo/system/MessagePipeHandle;)V
    .locals 2

    .prologue
    .line 336
    new-instance v0, Lorg/chromium/mojo/bindings/RouterImpl;

    invoke-direct {v0, p2}, Lorg/chromium/mojo/bindings/RouterImpl;-><init>(Lorg/chromium/mojo/system/MessagePipeHandle;)V

    .line 337
    invoke-interface {p2}, Lorg/chromium/mojo/system/MessagePipeHandle;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v0}, Lorg/chromium/mojo/bindings/Interface$Manager;->bind(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;Lorg/chromium/mojo/bindings/Router;)V

    .line 338
    invoke-interface {v0}, Lorg/chromium/mojo/bindings/Router;->start()V

    .line 339
    return-void
.end method

.method final bind(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;Lorg/chromium/mojo/bindings/Router;)V
    .locals 1

    .prologue
    .line 382
    invoke-interface {p3, p2}, Lorg/chromium/mojo/bindings/Router;->setErrorHandler(Lorg/chromium/mojo/bindings/ConnectionErrorHandler;)V

    .line 383
    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Manager;->buildStub(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)Lorg/chromium/mojo/bindings/Interface$Stub;

    move-result-object v0

    invoke-interface {p3, v0}, Lorg/chromium/mojo/bindings/Router;->setIncomingMessageReceiver(Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    .line 384
    return-void
.end method

.method protected abstract buildProxy(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)Lorg/chromium/mojo/bindings/Interface$Proxy;
.end method

.method protected abstract buildStub(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)Lorg/chromium/mojo/bindings/Interface$Stub;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getVersion()I
.end method
