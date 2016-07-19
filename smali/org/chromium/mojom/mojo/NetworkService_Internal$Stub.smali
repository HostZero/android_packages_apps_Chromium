.class final Lorg/chromium/mojom/mojo/NetworkService_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "NetworkService_Internal.java"


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojom/mojo/NetworkService;)V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    .line 185
    return-void
.end method


# virtual methods
.method public final accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 190
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v2

    .line 193
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 229
    :goto_0
    return v0

    .line 196
    :cond_0
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 225
    goto :goto_0

    .line 199
    :sswitch_0
    sget-object v2, Lorg/chromium/mojom/mojo/NetworkService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v2, v0}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRunOrClosePipe(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;)Z

    move-result v0

    goto :goto_0

    .line 212
    :sswitch_1
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateUdpSocketParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateUdpSocketParams;

    move-result-object v2

    .line 215
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/NetworkService;

    iget-object v2, v2, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateUdpSocketParams;->socket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-interface {v0, v2}, Lorg/chromium/mojom/mojo/NetworkService;->createUdpSocket(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    const/4 v0, 0x1

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/DeserializationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    .line 229
    goto :goto_0

    .line 196
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_0
        0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method public final acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 236
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v8

    .line 239
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v6

    .line 316
    :goto_0
    return v0

    .line 242
    :cond_0
    invoke-virtual {v8}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v0, v6

    .line 312
    goto :goto_0

    .line 245
    :pswitch_1
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v1

    sget-object v2, Lorg/chromium/mojom/mojo/NetworkService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v1, v2, v0, p2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    move-result v0

    goto :goto_0

    .line 256
    :pswitch_2
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;

    move-result-object v1

    .line 259
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/NetworkService;

    iget-object v2, v1, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;->localAddress:Lorg/chromium/mojom/mojo/NetAddress;

    iget-object v1, v1, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;->boundSocket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    new-instance v3, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v4

    invoke-virtual {v8}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v8

    invoke-direct {v3, v4, p2, v8, v9}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v0, v2, v1, v3}, Lorg/chromium/mojom/mojo/NetworkService;->createTcpBoundSocket(Lorg/chromium/mojom/mojo/NetAddress;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojom/mojo/NetworkService$CreateTcpBoundSocketResponse;)V

    move v0, v7

    .line 260
    goto :goto_0

    .line 271
    :pswitch_3
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;

    move-result-object v4

    .line 274
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/NetworkService;

    iget-object v1, v4, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->remoteAddress:Lorg/chromium/mojom/mojo/NetAddress;

    iget-object v2, v4, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    iget-object v3, v4, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->receiveStream:Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    iget-object v4, v4, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->clientSocket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    new-instance v5, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v9

    invoke-virtual {v8}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v10

    invoke-direct {v5, v9, p2, v10, v11}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v0 .. v5}, Lorg/chromium/mojom/mojo/NetworkService;->createTcpConnectedSocket(Lorg/chromium/mojom/mojo/NetAddress;Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;Lorg/chromium/mojo/system/DataPipe$ProducerHandle;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojom/mojo/NetworkService$CreateTcpConnectedSocketResponse;)V

    move v0, v7

    .line 275
    goto :goto_0

    .line 288
    :pswitch_4
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;

    move-result-object v1

    .line 291
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/NetworkService;

    iget-object v2, v1, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;->localAddress:Lorg/chromium/mojom/mojo/NetAddress;

    iget-object v1, v1, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;->delegate:Lorg/chromium/mojom/mojo/HttpServerDelegate;

    new-instance v3, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v4

    invoke-virtual {v8}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v8

    invoke-direct {v3, v4, p2, v8, v9}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v0, v2, v1, v3}, Lorg/chromium/mojom/mojo/NetworkService;->createHttpServer(Lorg/chromium/mojom/mojo/NetAddress;Lorg/chromium/mojom/mojo/HttpServerDelegate;Lorg/chromium/mojom/mojo/NetworkService$CreateHttpServerResponse;)V

    move v0, v7

    .line 292
    goto/16 :goto_0

    .line 303
    :pswitch_5
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileParams;

    move-result-object v1

    .line 306
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/NetworkService;

    iget-object v1, v1, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileParams;->filePath:Ljava/lang/String;

    new-instance v2, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v3

    invoke-virtual {v8}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, v3, p2, v4, v5}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v0, v1, v2}, Lorg/chromium/mojom/mojo/NetworkService;->getMimeTypeFromFile(Ljava/lang/String;Lorg/chromium/mojom/mojo/NetworkService$GetMimeTypeFromFileResponse;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v7

    .line 307
    goto/16 :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/DeserializationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v6

    .line 316
    goto/16 :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
