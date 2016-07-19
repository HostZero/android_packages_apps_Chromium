.class final Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "Resolver_Internal.java"


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojom/catalog/mojom/Resolver;)V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    .line 156
    return-void
.end method


# virtual methods
.method public final accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 161
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v2

    .line 164
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 187
    :goto_0
    return v0

    .line 167
    :cond_0
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 170
    :pswitch_0
    sget-object v2, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v2, v1}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRunOrClosePipe(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;)Z
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    .line 186
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/DeserializationException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 194
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v3

    .line 197
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    .line 272
    :goto_0
    return v0

    .line 200
    :cond_0
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    move v0, v1

    .line 268
    goto :goto_0

    .line 203
    :pswitch_0
    invoke-virtual {p0}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    sget-object v3, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v2, v3, v0, p2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    move-result v0

    goto :goto_0

    .line 214
    :pswitch_1
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseParams;

    move-result-object v4

    .line 217
    invoke-virtual {p0}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/catalog/mojom/Resolver;

    iget-object v4, v4, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseParams;->response:Lorg/chromium/mojom/mojo/UrlResponse;

    new-instance v5, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v6

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v8

    invoke-direct {v5, v6, p2, v8, v9}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveResponseResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v0, v4, v5}, Lorg/chromium/mojom/catalog/mojom/Resolver;->resolveResponse(Lorg/chromium/mojom/mojo/UrlResponse;Lorg/chromium/mojom/catalog/mojom/Resolver$ResolveResponseResponse;)V

    move v0, v2

    .line 218
    goto :goto_0

    .line 229
    :pswitch_2
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesParams;

    move-result-object v4

    .line 232
    invoke-virtual {p0}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/catalog/mojom/Resolver;

    iget-object v4, v4, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesParams;->interfaces:[Ljava/lang/String;

    new-instance v5, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v6

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v8

    invoke-direct {v5, v6, p2, v8, v9}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveInterfacesResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v0, v4, v5}, Lorg/chromium/mojom/catalog/mojom/Resolver;->resolveInterfaces([Ljava/lang/String;Lorg/chromium/mojom/catalog/mojom/Resolver$ResolveInterfacesResponse;)V

    move v0, v2

    .line 233
    goto :goto_0

    .line 244
    :pswitch_3
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveMimeTypeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveMimeTypeParams;

    move-result-object v4

    .line 247
    invoke-virtual {p0}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/catalog/mojom/Resolver;

    iget-object v4, v4, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveMimeTypeParams;->mimeType:Ljava/lang/String;

    new-instance v5, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveMimeTypeResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v6

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v8

    invoke-direct {v5, v6, p2, v8, v9}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveMimeTypeResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v0, v4, v5}, Lorg/chromium/mojom/catalog/mojom/Resolver;->resolveMimeType(Ljava/lang/String;Lorg/chromium/mojom/catalog/mojom/Resolver$ResolveMimeTypeResponse;)V

    move v0, v2

    .line 248
    goto :goto_0

    .line 259
    :pswitch_4
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveProtocolSchemeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveProtocolSchemeParams;

    move-result-object v4

    .line 262
    invoke-virtual {p0}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/catalog/mojom/Resolver;

    iget-object v4, v4, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveProtocolSchemeParams;->protocolScheme:Ljava/lang/String;

    new-instance v5, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveProtocolSchemeResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v6

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v8

    invoke-direct {v5, v6, p2, v8, v9}, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal$ResolverResolveProtocolSchemeResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v0, v4, v5}, Lorg/chromium/mojom/catalog/mojom/Resolver;->resolveProtocolScheme(Ljava/lang/String;Lorg/chromium/mojom/catalog/mojom/Resolver$ResolveProtocolSchemeResponse;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 263
    goto/16 :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/DeserializationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    .line 272
    goto/16 :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
