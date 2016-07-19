.class final Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "InstanceListener_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener$Proxy;


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    .line 59
    return-void
.end method


# virtual methods
.method public final instanceCreated(Lorg/chromium/mojom/mojo/shell/mojom/InstanceInfo;)V
    .locals 5

    .prologue
    .line 83
    new-instance v0, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstanceCreatedParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstanceCreatedParams;-><init>()V

    .line 85
    iput-object p1, v0, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstanceCreatedParams;->instance:Lorg/chromium/mojom/mojo/shell/mojom/InstanceInfo;

    .line 88
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstanceCreatedParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 93
    return-void
.end method

.method public final instanceDestroyed(I)V
    .locals 5

    .prologue
    .line 100
    new-instance v0, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstanceDestroyedParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstanceDestroyedParams;-><init>()V

    .line 102
    iput p1, v0, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstanceDestroyedParams;->id:I

    .line 105
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstanceDestroyedParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 110
    return-void
.end method

.method public final instancePidAvailable(II)V
    .locals 5

    .prologue
    .line 117
    new-instance v0, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;-><init>()V

    .line 119
    iput p1, v0, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;->id:I

    .line 121
    iput p2, v0, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;->pid:I

    .line 124
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 129
    return-void
.end method

.method public final setExistingInstances([Lorg/chromium/mojom/mojo/shell/mojom/InstanceInfo;)V
    .locals 5

    .prologue
    .line 66
    new-instance v0, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerSetExistingInstancesParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerSetExistingInstancesParams;-><init>()V

    .line 68
    iput-object p1, v0, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerSetExistingInstancesParams;->instances:[Lorg/chromium/mojom/mojo/shell/mojom/InstanceInfo;

    .line 71
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerSetExistingInstancesParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 76
    return-void
.end method
