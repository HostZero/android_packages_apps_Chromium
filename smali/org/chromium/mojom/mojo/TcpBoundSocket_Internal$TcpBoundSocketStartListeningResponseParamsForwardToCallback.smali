.class Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketStartListeningResponseParamsForwardToCallback;
.super Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;
.source "TcpBoundSocket_Internal.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/MessageReceiver;


# instance fields
.field private final mCallback:Lorg/chromium/mojom/mojo/TcpBoundSocket$StartListeningResponse;


# direct methods
.method constructor <init>(Lorg/chromium/mojom/mojo/TcpBoundSocket$StartListeningResponse;)V
    .locals 0

    .prologue
    .line 469
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;-><init>()V

    .line 470
    iput-object p1, p0, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketStartListeningResponseParamsForwardToCallback;->mCallback:Lorg/chromium/mojom/mojo/TcpBoundSocket$StartListeningResponse;

    .line 471
    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 476
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v1

    .line 478
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v2

    .line 479
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 489
    :goto_0
    return v0

    .line 484
    :cond_0
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketStartListeningResponseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketStartListeningResponseParams;

    move-result-object v1

    .line 486
    iget-object v2, p0, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketStartListeningResponseParamsForwardToCallback;->mCallback:Lorg/chromium/mojom/mojo/TcpBoundSocket$StartListeningResponse;

    iget-object v1, v1, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketStartListeningResponseParams;->result:Lorg/chromium/mojom/mojo/NetworkError;

    invoke-interface {v2, v1}, Lorg/chromium/mojom/mojo/TcpBoundSocket$StartListeningResponse;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    const/4 v0, 0x1

    goto :goto_0

    .line 489
    :catch_0
    move-exception v1

    goto :goto_0
.end method
