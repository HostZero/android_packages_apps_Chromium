.class Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParamsForwardToCallback;
.super Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;
.source "ShellResolver_Internal.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/MessageReceiver;


# instance fields
.field private final mCallback:Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver$ResolveMojoNameResponse;


# direct methods
.method constructor <init>(Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver$ResolveMojoNameResponse;)V
    .locals 0

    .prologue
    .line 581
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;-><init>()V

    .line 582
    iput-object p1, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParamsForwardToCallback;->mCallback:Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver$ResolveMojoNameResponse;

    .line 583
    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 588
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v1

    .line 590
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v2

    .line 591
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 601
    :goto_0
    return v0

    .line 596
    :cond_0
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;

    move-result-object v1

    .line 598
    iget-object v2, p0, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParamsForwardToCallback;->mCallback:Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver$ResolveMojoNameResponse;

    iget-object v3, v1, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->resolvedMojoName:Ljava/lang/String;

    iget-object v4, v1, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->qualifier:Ljava/lang/String;

    iget-object v5, v1, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->capabilitySpec:Lorg/chromium/mojom/mojo/shell/mojom/CapabilitySpec;

    iget-object v1, v1, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->mojoFileUrl:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5, v1}, Lorg/chromium/mojom/mojo/shell/mojom/ShellResolver$ResolveMojoNameResponse;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    const/4 v0, 0x1

    goto :goto_0

    .line 601
    :catch_0
    move-exception v1

    goto :goto_0
.end method
