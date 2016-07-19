.class final Lorg/chromium/mojom/mojo/WebSocket_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "WebSocket_Internal.java"


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojom/mojo/WebSocket;)V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    .line 150
    return-void
.end method


# virtual methods
.method public final accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 155
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    .line 158
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v6

    .line 225
    :goto_0
    return v0

    .line 161
    :cond_0
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v0, v6

    .line 221
    goto :goto_0

    .line 164
    :pswitch_1
    sget-object v1, Lorg/chromium/mojom/mojo/WebSocket_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v1, v0}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRunOrClosePipe(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;)Z

    move-result v0

    goto :goto_0

    .line 173
    :pswitch_2
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;

    move-result-object v5

    .line 176
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/WebSocket;

    iget-object v1, v5, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->url:Ljava/lang/String;

    iget-object v2, v5, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->protocols:[Ljava/lang/String;

    iget-object v3, v5, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->origin:Ljava/lang/String;

    iget-object v4, v5, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    iget-object v5, v5, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;->client:Lorg/chromium/mojom/mojo/WebSocketClient;

    invoke-interface/range {v0 .. v5}, Lorg/chromium/mojom/mojo/WebSocket;->connect(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;Lorg/chromium/mojom/mojo/WebSocketClient;)V

    move v0, v7

    .line 177
    goto :goto_0

    .line 186
    :pswitch_3
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;

    move-result-object v1

    .line 189
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/WebSocket;

    iget-boolean v2, v1, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->fin:Z

    iget v3, v1, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->type:I

    iget v1, v1, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;->numBytes:I

    invoke-interface {v0, v2, v3, v1}, Lorg/chromium/mojom/mojo/WebSocket;->send(ZII)V

    move v0, v7

    .line 190
    goto :goto_0

    .line 199
    :pswitch_4
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketFlowControlParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketFlowControlParams;

    move-result-object v1

    .line 202
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/WebSocket;

    iget-wide v2, v1, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketFlowControlParams;->quota:J

    invoke-interface {v0, v2, v3}, Lorg/chromium/mojom/mojo/WebSocket;->flowControl(J)V

    move v0, v7

    .line 203
    goto :goto_0

    .line 212
    :pswitch_5
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;

    move-result-object v1

    .line 215
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/WebSocket;

    iget-short v2, v1, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;->code:S

    iget-object v1, v1, Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;->reason:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lorg/chromium/mojom/mojo/WebSocket;->close(SLjava/lang/String;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v7

    .line 216
    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/DeserializationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v6

    .line 225
    goto :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 232
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v1

    .line 234
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v2

    .line 235
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 258
    :goto_0
    return v0

    .line 238
    :cond_0
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 241
    :pswitch_0
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    sget-object v3, Lorg/chromium/mojom/mojo/WebSocket_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v2, v3, v1, p2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v1

    .line 257
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/DeserializationException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
