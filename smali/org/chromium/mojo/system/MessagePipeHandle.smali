.class public interface abstract Lorg/chromium/mojo/system/MessagePipeHandle;
.super Ljava/lang/Object;
.source "MessagePipeHandle.java"

# interfaces
.implements Lorg/chromium/mojo/system/Handle;


# virtual methods
.method public abstract pass()Lorg/chromium/mojo/system/MessagePipeHandle;
.end method

.method public abstract readMessage(Ljava/nio/ByteBuffer;ILorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;)Lorg/chromium/mojo/system/ResultAnd;
.end method

.method public abstract writeMessage(Ljava/nio/ByteBuffer;Ljava/util/List;Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;)V
.end method
