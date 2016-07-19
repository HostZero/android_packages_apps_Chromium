.class final Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "ShellClient_Internal.java"


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojom/mojo/shell/mojom/ShellClient;)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    .line 115
    return-void
.end method


# virtual methods
.method public final accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 120
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    .line 123
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v7

    .line 153
    :goto_0
    return v0

    .line 126
    :cond_0
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v0, v7

    .line 149
    goto :goto_0

    .line 129
    :pswitch_1
    sget-object v1, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v1, v0}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRunOrClosePipe(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;)Z

    move-result v0

    goto :goto_0

    .line 140
    :pswitch_2
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;

    move-result-object v6

    .line 143
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient;

    iget-object v1, v6, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->source:Lorg/chromium/mojom/mojo/shell/mojom/Identity;

    iget v2, v6, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->sourceId:I

    iget-object v3, v6, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->localInterfaces:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v4, v6, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->remoteInterfaces:Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider;

    iget-object v5, v6, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->allowedCapabilities:Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;

    iget-object v6, v6, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->resolvedName:Ljava/lang/String;

    invoke-interface/range {v0 .. v6}, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient;->acceptConnection(Lorg/chromium/mojom/mojo/shell/mojom/Identity;ILorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider;Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    const/4 v0, 0x1

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/DeserializationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v7

    .line 153
    goto :goto_0

    .line 126
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
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 160
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v3

    .line 163
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    .line 195
    :goto_0
    return v0

    .line 166
    :cond_0
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    move v0, v1

    .line 191
    goto :goto_0

    .line 169
    :pswitch_0
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    sget-object v3, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v2, v3, v0, p2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    move-result v0

    goto :goto_0

    .line 180
    :pswitch_1
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;

    move-result-object v4

    .line 183
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient;

    iget-object v5, v4, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;->identity:Lorg/chromium/mojom/mojo/shell/mojom/Identity;

    iget v4, v4, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;->id:I

    new-instance v6, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v7

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v8

    invoke-direct {v6, v7, p2, v8, v9}, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v0, v5, v4, v6}, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient;->initialize(Lorg/chromium/mojom/mojo/shell/mojom/Identity;ILorg/chromium/mojom/mojo/shell/mojom/ShellClient$InitializeResponse;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 184
    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/DeserializationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    .line 195
    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
