.class final Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "ShellClient_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/shell/mojom/ShellClient$Proxy;


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
.method public final acceptConnection(Lorg/chromium/mojom/mojo/shell/mojom/Identity;ILorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider;Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 86
    new-instance v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;-><init>()V

    .line 88
    iput-object p1, v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->source:Lorg/chromium/mojom/mojo/shell/mojom/Identity;

    .line 90
    iput p2, v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->sourceId:I

    .line 92
    iput-object p3, v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->localInterfaces:Lorg/chromium/mojo/bindings/InterfaceRequest;

    .line 94
    iput-object p4, v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->remoteInterfaces:Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider;

    .line 96
    iput-object p5, v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->allowedCapabilities:Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;

    .line 98
    iput-object p6, v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->resolvedName:Ljava/lang/String;

    .line 101
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 106
    return-void
.end method

.method public final initialize(Lorg/chromium/mojom/mojo/shell/mojom/Identity;ILorg/chromium/mojom/mojo/shell/mojom/ShellClient$InitializeResponse;)V
    .locals 8

    .prologue
    .line 63
    new-instance v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;-><init>()V

    .line 65
    iput-object p1, v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;->identity:Lorg/chromium/mojom/mojo/shell/mojom/Identity;

    .line 67
    iput p2, v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;->id:I

    .line 70
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    new-instance v2, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParamsForwardToCallback;

    invoke-direct {v2, p3}, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/mojo/shell/mojom/ShellClient$InitializeResponse;)V

    invoke-interface {v1, v0, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 79
    return-void
.end method
