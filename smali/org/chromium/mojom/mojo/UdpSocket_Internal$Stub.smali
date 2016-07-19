.class final Lorg/chromium/mojom/mojo/UdpSocket_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "UdpSocket_Internal.java"


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojom/mojo/UdpSocket;)V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    .line 247
    return-void
.end method


# virtual methods
.method public final accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 252
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v2

    .line 255
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 297
    :goto_0
    return v0

    .line 258
    :cond_0
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 293
    goto :goto_0

    .line 261
    :sswitch_0
    sget-object v2, Lorg/chromium/mojom/mojo/UdpSocket_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v2, v0}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRunOrClosePipe(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;)Z

    move-result v0

    goto :goto_0

    .line 282
    :sswitch_1
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketReceiveMoreParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketReceiveMoreParams;

    move-result-object v2

    .line 285
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/UdpSocket;

    iget v2, v2, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketReceiveMoreParams;->datagramNumber:I

    invoke-interface {v0, v2}, Lorg/chromium/mojom/mojo/UdpSocket;->receiveMore(I)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    const/4 v0, 0x1

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/DeserializationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    .line 297
    goto :goto_0

    .line 258
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public final acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 304
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v3

    .line 307
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    .line 428
    :goto_0
    return v0

    .line 310
    :cond_0
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 424
    goto :goto_0

    .line 313
    :pswitch_1
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    sget-object v3, Lorg/chromium/mojom/mojo/UdpSocket_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v2, v3, v0, p2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    move-result v0

    goto :goto_0

    .line 324
    :pswitch_2
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketAllowAddressReuseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketAllowAddressReuseParams;

    .line 326
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/UdpSocket;

    new-instance v4, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketAllowAddressReuseResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v5

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v4, v5, p2, v6, v7}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketAllowAddressReuseResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v0, v4}, Lorg/chromium/mojom/mojo/UdpSocket;->allowAddressReuse(Lorg/chromium/mojom/mojo/UdpSocket$AllowAddressReuseResponse;)V

    move v0, v2

    .line 327
    goto :goto_0

    .line 338
    :pswitch_3
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindParams;

    move-result-object v4

    .line 341
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/UdpSocket;

    iget-object v4, v4, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindParams;->addr:Lorg/chromium/mojom/mojo/NetAddress;

    new-instance v5, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v6

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v8

    invoke-direct {v5, v6, p2, v8, v9}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketBindResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v0, v4, v5}, Lorg/chromium/mojom/mojo/UdpSocket;->bind(Lorg/chromium/mojom/mojo/NetAddress;Lorg/chromium/mojom/mojo/UdpSocket$BindResponse;)V

    move v0, v2

    .line 342
    goto :goto_0

    .line 353
    :pswitch_4
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectParams;

    move-result-object v4

    .line 356
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/UdpSocket;

    iget-object v4, v4, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectParams;->remoteAddr:Lorg/chromium/mojom/mojo/NetAddress;

    new-instance v5, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v6

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v8

    invoke-direct {v5, v6, p2, v8, v9}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketConnectResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v0, v4, v5}, Lorg/chromium/mojom/mojo/UdpSocket;->connect(Lorg/chromium/mojom/mojo/NetAddress;Lorg/chromium/mojom/mojo/UdpSocket$ConnectResponse;)V

    move v0, v2

    .line 357
    goto :goto_0

    .line 368
    :pswitch_5
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetSendBufferSizeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetSendBufferSizeParams;

    move-result-object v4

    .line 371
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/UdpSocket;

    iget v4, v4, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetSendBufferSizeParams;->size:I

    new-instance v5, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetSendBufferSizeResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v6

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v8

    invoke-direct {v5, v6, p2, v8, v9}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetSendBufferSizeResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v0, v4, v5}, Lorg/chromium/mojom/mojo/UdpSocket;->setSendBufferSize(ILorg/chromium/mojom/mojo/UdpSocket$SetSendBufferSizeResponse;)V

    move v0, v2

    .line 372
    goto/16 :goto_0

    .line 383
    :pswitch_6
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetReceiveBufferSizeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetReceiveBufferSizeParams;

    move-result-object v4

    .line 386
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/UdpSocket;

    iget v4, v4, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetReceiveBufferSizeParams;->size:I

    new-instance v5, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetReceiveBufferSizeResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v6

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v8

    invoke-direct {v5, v6, p2, v8, v9}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSetReceiveBufferSizeResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v0, v4, v5}, Lorg/chromium/mojom/mojo/UdpSocket;->setReceiveBufferSize(ILorg/chromium/mojom/mojo/UdpSocket$SetReceiveBufferSizeResponse;)V

    move v0, v2

    .line 387
    goto/16 :goto_0

    .line 398
    :pswitch_7
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketNegotiateMaxPendingSendRequestsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketNegotiateMaxPendingSendRequestsParams;

    move-result-object v4

    .line 401
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/UdpSocket;

    iget v4, v4, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketNegotiateMaxPendingSendRequestsParams;->requestedSize:I

    new-instance v5, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketNegotiateMaxPendingSendRequestsResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v6

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v8

    invoke-direct {v5, v6, p2, v8, v9}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketNegotiateMaxPendingSendRequestsResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v0, v4, v5}, Lorg/chromium/mojom/mojo/UdpSocket;->negotiateMaxPendingSendRequests(ILorg/chromium/mojom/mojo/UdpSocket$NegotiateMaxPendingSendRequestsResponse;)V

    move v0, v2

    .line 402
    goto/16 :goto_0

    .line 415
    :pswitch_8
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToParams;

    move-result-object v4

    .line 418
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/UdpSocket;

    iget-object v5, v4, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToParams;->destAddr:Lorg/chromium/mojom/mojo/NetAddress;

    iget-object v4, v4, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToParams;->data:[B

    new-instance v6, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v7

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v8

    invoke-direct {v6, v7, p2, v8, v9}, Lorg/chromium/mojom/mojo/UdpSocket_Internal$UdpSocketSendToResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v0, v5, v4, v6}, Lorg/chromium/mojom/mojo/UdpSocket;->sendTo(Lorg/chromium/mojom/mojo/NetAddress;[BLorg/chromium/mojom/mojo/UdpSocket$SendToResponse;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 419
    goto/16 :goto_0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/DeserializationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    .line 428
    goto/16 :goto_0

    .line 310
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method
