.class final Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "TcpBoundSocket_Internal.java"


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojom/mojo/TcpBoundSocket;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    .line 114
    return-void
.end method


# virtual methods
.method public final accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 119
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v2

    .line 122
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 141
    :goto_0
    return v0

    .line 125
    :cond_0
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 128
    :pswitch_0
    sget-object v2, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v2, v1}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRunOrClosePipe(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;)Z
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v1

    .line 140
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/DeserializationException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 148
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v8

    .line 151
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v6

    .line 196
    :goto_0
    return v0

    .line 154
    :cond_0
    invoke-virtual {v8}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v0, v6

    .line 192
    goto :goto_0

    .line 157
    :pswitch_0
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v1

    sget-object v2, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v1, v2, v0, p2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    move-result v0

    goto :goto_0

    .line 168
    :pswitch_1
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketStartListeningParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketStartListeningParams;

    move-result-object v1

    .line 171
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/TcpBoundSocket;

    iget-object v1, v1, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketStartListeningParams;->server:Lorg/chromium/mojo/bindings/InterfaceRequest;

    new-instance v2, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketStartListeningResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v3

    invoke-virtual {v8}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, v3, p2, v4, v5}, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketStartListeningResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v0, v1, v2}, Lorg/chromium/mojom/mojo/TcpBoundSocket;->startListening(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojom/mojo/TcpBoundSocket$StartListeningResponse;)V

    move v0, v7

    .line 172
    goto :goto_0

    .line 183
    :pswitch_2
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketConnectParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketConnectParams;

    move-result-object v4

    .line 186
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/TcpBoundSocket;

    iget-object v1, v4, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketConnectParams;->remoteAddress:Lorg/chromium/mojom/mojo/NetAddress;

    iget-object v2, v4, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketConnectParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    iget-object v3, v4, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketConnectParams;->receiveStream:Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    iget-object v4, v4, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketConnectParams;->clientSocket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    new-instance v5, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketConnectResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v9

    invoke-virtual {v8}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v10

    invoke-direct {v5, v9, p2, v10, v11}, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal$TcpBoundSocketConnectResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v0 .. v5}, Lorg/chromium/mojom/mojo/TcpBoundSocket;->connect(Lorg/chromium/mojom/mojo/NetAddress;Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;Lorg/chromium/mojo/system/DataPipe$ProducerHandle;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojom/mojo/TcpBoundSocket$ConnectResponse;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v7

    .line 187
    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/DeserializationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v6

    .line 196
    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
