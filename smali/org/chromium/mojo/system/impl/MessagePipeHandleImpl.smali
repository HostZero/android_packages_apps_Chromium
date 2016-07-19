.class Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;
.super Lorg/chromium/mojo/system/impl/HandleBase;
.source "MessagePipeHandleImpl.java"

# interfaces
.implements Lorg/chromium/mojo/system/MessagePipeHandle;


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/impl/CoreImpl;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/system/impl/HandleBase;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;I)V

    .line 24
    return-void
.end method

.method constructor <init>(Lorg/chromium/mojo/system/impl/HandleBase;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/chromium/mojo/system/impl/HandleBase;-><init>(Lorg/chromium/mojo/system/impl/HandleBase;)V

    .line 31
    return-void
.end method


# virtual methods
.method public pass()Lorg/chromium/mojo/system/MessagePipeHandle;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;-><init>(Lorg/chromium/mojo/system/impl/HandleBase;)V

    return-object v0
.end method

.method public readMessage(Ljava/nio/ByteBuffer;ILorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;)Lorg/chromium/mojo/system/ResultAnd;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;->mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/chromium/mojo/system/impl/CoreImpl;->readMessage(Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;Ljava/nio/ByteBuffer;ILorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;)Lorg/chromium/mojo/system/ResultAnd;

    move-result-object v0

    return-object v0
.end method

.method public writeMessage(Ljava/nio/ByteBuffer;Ljava/util/List;Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;->mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/chromium/mojo/system/impl/CoreImpl;->writeMessage(Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;Ljava/nio/ByteBuffer;Ljava/util/List;Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;)V

    .line 47
    return-void
.end method
