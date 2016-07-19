.class final Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "InstanceListener_Internal.java"


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener;)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    .line 138
    return-void
.end method


# virtual methods
.method public final accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 143
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v3

    .line 146
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    .line 213
    :goto_0
    return v0

    .line 149
    :cond_0
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 209
    goto :goto_0

    .line 152
    :pswitch_1
    sget-object v2, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v2, v0}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRunOrClosePipe(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;)Z

    move-result v0

    goto :goto_0

    .line 161
    :pswitch_2
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerSetExistingInstancesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerSetExistingInstancesParams;

    move-result-object v3

    .line 164
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener;

    iget-object v3, v3, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerSetExistingInstancesParams;->instances:[Lorg/chromium/mojom/mojo/shell/mojom/InstanceInfo;

    invoke-interface {v0, v3}, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener;->setExistingInstances([Lorg/chromium/mojom/mojo/shell/mojom/InstanceInfo;)V

    move v0, v2

    .line 165
    goto :goto_0

    .line 174
    :pswitch_3
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstanceCreatedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstanceCreatedParams;

    move-result-object v3

    .line 177
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener;

    iget-object v3, v3, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstanceCreatedParams;->instance:Lorg/chromium/mojom/mojo/shell/mojom/InstanceInfo;

    invoke-interface {v0, v3}, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener;->instanceCreated(Lorg/chromium/mojom/mojo/shell/mojom/InstanceInfo;)V

    move v0, v2

    .line 178
    goto :goto_0

    .line 187
    :pswitch_4
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstanceDestroyedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstanceDestroyedParams;

    move-result-object v3

    .line 190
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener;

    iget v3, v3, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstanceDestroyedParams;->id:I

    invoke-interface {v0, v3}, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener;->instanceDestroyed(I)V

    move v0, v2

    .line 191
    goto :goto_0

    .line 200
    :pswitch_5
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;

    move-result-object v3

    .line 203
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener;

    iget v4, v3, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;->id:I

    iget v3, v3, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;->pid:I

    invoke-interface {v0, v4, v3}, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener;->instancePidAvailable(II)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 204
    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/DeserializationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    .line 213
    goto :goto_0

    .line 149
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

    .line 220
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v1

    .line 222
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v2

    .line 223
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 246
    :goto_0
    return v0

    .line 226
    :cond_0
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 229
    :pswitch_0
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    sget-object v3, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v2, v3, v1, p2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v1

    .line 245
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/DeserializationException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
