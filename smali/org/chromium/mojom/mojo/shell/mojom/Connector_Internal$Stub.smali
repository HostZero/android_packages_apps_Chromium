.class final Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "Connector_Internal.java"


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojom/mojo/shell/mojom/Connector;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    .line 109
    return-void
.end method


# virtual methods
.method public final accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 114
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v2

    .line 117
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 147
    :goto_0
    return v0

    .line 120
    :cond_0
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 143
    goto :goto_0

    .line 123
    :pswitch_1
    sget-object v2, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v2, v0}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRunOrClosePipe(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;)Z

    move-result v0

    goto :goto_0

    .line 134
    :pswitch_2
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorCloneParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorCloneParams;

    move-result-object v2

    .line 137
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/shell/mojom/Connector;

    iget-object v2, v2, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorCloneParams;->request:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-interface {v0, v2}, Lorg/chromium/mojom/mojo/shell/mojom/Connector;->clone(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    const/4 v0, 0x1

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/DeserializationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    .line 147
    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 154
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v8

    .line 157
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v6

    .line 189
    :goto_0
    return v0

    .line 160
    :cond_0
    invoke-virtual {v8}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v0, v6

    .line 185
    goto :goto_0

    .line 163
    :pswitch_0
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v1

    sget-object v2, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v1, v2, v0, p2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    move-result v0

    goto :goto_0

    .line 174
    :pswitch_1
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;

    move-result-object v4

    .line 177
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/shell/mojom/Connector;

    iget-object v1, v4, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;->target:Lorg/chromium/mojom/mojo/shell/mojom/Identity;

    iget-object v2, v4, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;->remoteInterfaces:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v3, v4, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;->localInterfaces:Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider;

    iget-object v4, v4, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectParams;->clientProcessConnection:Lorg/chromium/mojom/mojo/shell/mojom/ClientProcessConnection;

    new-instance v5, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v9

    invoke-virtual {v8}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v10

    invoke-direct {v5, v9, p2, v10, v11}, Lorg/chromium/mojom/mojo/shell/mojom/Connector_Internal$ConnectorConnectResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v0 .. v5}, Lorg/chromium/mojom/mojo/shell/mojom/Connector;->connect(Lorg/chromium/mojom/mojo/shell/mojom/Identity;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider;Lorg/chromium/mojom/mojo/shell/mojom/ClientProcessConnection;Lorg/chromium/mojom/mojo/shell/mojom/Connector$ConnectResponse;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v7

    .line 178
    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/DeserializationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v6

    .line 189
    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
