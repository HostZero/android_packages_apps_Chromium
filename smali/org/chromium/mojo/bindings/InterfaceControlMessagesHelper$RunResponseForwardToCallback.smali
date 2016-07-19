.class Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper$RunResponseForwardToCallback;
.super Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;
.source "InterfaceControlMessagesHelper.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/MessageReceiver;


# instance fields
.field private final mCallback:Lorg/chromium/mojo/bindings/Callbacks$Callback1;


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo/bindings/RunResponseMessageParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojo/bindings/RunResponseMessageParams;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper$RunResponseForwardToCallback;->mCallback:Lorg/chromium/mojo/bindings/Callbacks$Callback1;

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/Callbacks$Callback1;->call(Ljava/lang/Object;)V

    .line 37
    const/4 v0, 0x1

    return v0
.end method
