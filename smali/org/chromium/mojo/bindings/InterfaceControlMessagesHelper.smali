.class public Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;
.super Ljava/lang/Object;
.source "InterfaceControlMessagesHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 6

    .prologue
    .line 67
    new-instance v0, Lorg/chromium/mojo/bindings/RunResponseMessageParams;

    invoke-direct {v0}, Lorg/chromium/mojo/bindings/RunResponseMessageParams;-><init>()V

    .line 68
    const/16 v1, 0x10

    iput v1, v0, Lorg/chromium/mojo/bindings/RunResponseMessageParams;->reserved0:I

    .line 69
    const/4 v1, 0x0

    iput v1, v0, Lorg/chromium/mojo/bindings/RunResponseMessageParams;->reserved1:I

    .line 70
    new-instance v1, Lorg/chromium/mojo/bindings/QueryVersionResult;

    invoke-direct {v1}, Lorg/chromium/mojo/bindings/QueryVersionResult;-><init>()V

    iput-object v1, v0, Lorg/chromium/mojo/bindings/RunResponseMessageParams;->queryVersionResult:Lorg/chromium/mojo/bindings/QueryVersionResult;

    .line 71
    iget-object v1, v0, Lorg/chromium/mojo/bindings/RunResponseMessageParams;->queryVersionResult:Lorg/chromium/mojo/bindings/QueryVersionResult;

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$Manager;->getVersion()I

    move-result v2

    iput v2, v1, Lorg/chromium/mojo/bindings/QueryVersionResult;->version:I

    .line 73
    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, -0x1

    const/4 v3, 0x2

    invoke-virtual {p2}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/RunResponseMessageParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    invoke-interface {p3, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    move-result v0

    return v0
.end method

.method public static handleRunOrClosePipe(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;)Z
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    .line 86
    invoke-static {v0}, Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;

    move-result-object v0

    .line 87
    iget-object v0, v0, Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;->requireVersion:Lorg/chromium/mojo/bindings/RequireVersion;

    iget v0, v0, Lorg/chromium/mojo/bindings/RequireVersion;->version:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Manager;->getVersion()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
