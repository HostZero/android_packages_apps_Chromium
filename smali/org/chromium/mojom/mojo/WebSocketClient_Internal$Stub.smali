.class final Lorg/chromium/mojom/mojo/WebSocketClient_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "WebSocketClient_Internal.java"


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojom/mojo/WebSocketClient;)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    .line 167
    return-void
.end method


# virtual methods
.method public final accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 172
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v3

    .line 175
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    .line 255
    :goto_0
    return v0

    .line 178
    :cond_0
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 251
    goto :goto_0

    .line 181
    :pswitch_1
    sget-object v2, Lorg/chromium/mojom/mojo/WebSocketClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v2, v0}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRunOrClosePipe(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;)Z

    move-result v0

    goto :goto_0

    .line 190
    :pswitch_2
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;

    move-result-object v3

    .line 193
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/WebSocketClient;

    iget-object v4, v3, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;->selectedSubprotocol:Ljava/lang/String;

    iget-object v5, v3, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;->extensions:Ljava/lang/String;

    iget-object v3, v3, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidConnectParams;->receiveStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    invoke-interface {v0, v4, v5, v3}, Lorg/chromium/mojom/mojo/WebSocketClient;->didConnect(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;)V

    move v0, v2

    .line 194
    goto :goto_0

    .line 203
    :pswitch_3
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveDataParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveDataParams;

    move-result-object v3

    .line 206
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/WebSocketClient;

    iget-boolean v4, v3, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveDataParams;->fin:Z

    iget v5, v3, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveDataParams;->type:I

    iget v3, v3, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveDataParams;->numBytes:I

    invoke-interface {v0, v4, v5, v3}, Lorg/chromium/mojom/mojo/WebSocketClient;->didReceiveData(ZII)V

    move v0, v2

    .line 207
    goto :goto_0

    .line 216
    :pswitch_4
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveFlowControlParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveFlowControlParams;

    move-result-object v3

    .line 219
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/WebSocketClient;

    iget-wide v4, v3, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidReceiveFlowControlParams;->quota:J

    invoke-interface {v0, v4, v5}, Lorg/chromium/mojom/mojo/WebSocketClient;->didReceiveFlowControl(J)V

    move v0, v2

    .line 220
    goto :goto_0

    .line 229
    :pswitch_5
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidFailParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidFailParams;

    move-result-object v3

    .line 232
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/WebSocketClient;

    iget-object v3, v3, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidFailParams;->message:Ljava/lang/String;

    invoke-interface {v0, v3}, Lorg/chromium/mojom/mojo/WebSocketClient;->didFail(Ljava/lang/String;)V

    move v0, v2

    .line 233
    goto :goto_0

    .line 242
    :pswitch_6
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;

    move-result-object v3

    .line 245
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/WebSocketClient;

    iget-boolean v4, v3, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;->wasClean:Z

    iget-short v5, v3, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;->code:S

    iget-object v3, v3, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$WebSocketClientDidCloseParams;->reason:Ljava/lang/String;

    invoke-interface {v0, v4, v5, v3}, Lorg/chromium/mojom/mojo/WebSocketClient;->didClose(ZSLjava/lang/String;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 246
    goto/16 :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/DeserializationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    .line 255
    goto/16 :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 262
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v1

    .line 264
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v2

    .line 265
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 290
    :goto_0
    return v0

    .line 268
    :cond_0
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 271
    :pswitch_0
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocketClient_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    sget-object v3, Lorg/chromium/mojom/mojo/WebSocketClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v2, v3, v1, p2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 288
    :catch_0
    move-exception v1

    .line 289
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/DeserializationException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
