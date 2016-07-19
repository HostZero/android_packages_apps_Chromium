.class Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "ShellResolver_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver$ResolveMojoNameResponse;


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 1

    .prologue
    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 616
    iput-object p1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    .line 617
    iput-object p2, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 618
    iput-wide p3, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParamsProxyToResponder;->mRequestId:J

    .line 619
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 606
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParamsProxyToResponder;->call(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;Ljava/lang/String;)V

    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 623
    new-instance v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;-><init>()V

    .line 625
    iput-object p1, v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->resolvedMojoName:Ljava/lang/String;

    .line 627
    iput-object p2, v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->qualifier:Ljava/lang/String;

    .line 629
    iput-object p3, v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->capabilitySpec:Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;

    .line 631
    iput-object p4, v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->mojoFileUrl:Ljava/lang/String;

    .line 633
    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x0

    const/4 v4, 0x2

    iget-wide v6, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {v2, v3, v4, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 640
    iget-object v1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 641
    return-void
.end method
