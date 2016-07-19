.class final Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "HttpConnectionDelegate_Internal.java"


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojom/mojo/HttpConnectionDelegate;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    .line 108
    return-void
.end method


# virtual methods
.method public final accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 113
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v2

    .line 116
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 135
    :goto_0
    return v0

    .line 119
    :cond_0
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 122
    :pswitch_0
    sget-object v2, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v2, v1}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRunOrClosePipe(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;)Z
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v1

    .line 134
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/DeserializationException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 142
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v3

    .line 145
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    .line 190
    :goto_0
    return v0

    .line 148
    :cond_0
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    move v0, v1

    .line 186
    goto :goto_0

    .line 151
    :pswitch_0
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    sget-object v3, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v2, v3, v0, p2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    move-result v0

    goto :goto_0

    .line 162
    :pswitch_1
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedRequestParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedRequestParams;

    move-result-object v4

    .line 165
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate;

    iget-object v4, v4, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedRequestParams;->request:Lorg/chromium/mojom/mojo/HttpRequest;

    new-instance v5, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedRequestResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v6

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v8

    invoke-direct {v5, v6, p2, v8, v9}, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedRequestResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v0, v4, v5}, Lorg/chromium/mojom/mojo/HttpConnectionDelegate;->onReceivedRequest(Lorg/chromium/mojom/mojo/HttpRequest;Lorg/chromium/mojom/mojo/HttpConnectionDelegate$OnReceivedRequestResponse;)V

    move v0, v2

    .line 166
    goto :goto_0

    .line 177
    :pswitch_2
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestParams;

    move-result-object v4

    .line 180
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate;

    iget-object v4, v4, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestParams;->request:Lorg/chromium/mojom/mojo/HttpRequest;

    new-instance v5, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v6

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v8

    invoke-direct {v5, v6, p2, v8, v9}, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v0, v4, v5}, Lorg/chromium/mojom/mojo/HttpConnectionDelegate;->onReceivedWebSocketRequest(Lorg/chromium/mojom/mojo/HttpRequest;Lorg/chromium/mojom/mojo/HttpConnectionDelegate$OnReceivedWebSocketRequestResponse;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 181
    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/DeserializationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    .line 190
    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
