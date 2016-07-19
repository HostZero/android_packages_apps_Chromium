.class Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "ShellClient_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/shell/mojom/ShellClient$InitializeResponse;


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 1

    .prologue
    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    iput-object p1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    .line 557
    iput-object p2, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 558
    iput-wide p3, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParamsProxyToResponder;->mRequestId:J

    .line 559
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 546
    check-cast p1, Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-virtual {p0, p1}, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParamsProxyToResponder;->call(Lorg/chromium/mojo/bindings/InterfaceRequest;)V

    return-void
.end method

.method public call(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 8

    .prologue
    .line 563
    new-instance v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParams;-><init>()V

    .line 565
    iput-object p1, v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParams;->connectorRequest:Lorg/chromium/mojo/bindings/InterfaceRequest;

    .line 567
    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x0

    const/4 v4, 0x2

    iget-wide v6, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {v2, v3, v4, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 574
    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 575
    return-void
.end method
