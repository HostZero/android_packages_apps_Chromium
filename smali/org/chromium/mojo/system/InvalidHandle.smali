.class public Lorg/chromium/mojo/system/InvalidHandle;
.super Ljava/lang/Object;
.source "InvalidHandle.java"

# interfaces
.implements Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;
.implements Lorg/chromium/mojo/system/DataPipe$ProducerHandle;
.implements Lorg/chromium/mojo/system/MessagePipeHandle;
.implements Lorg/chromium/mojo/system/SharedBufferHandle;
.implements Lorg/chromium/mojo/system/UntypedHandle;


# static fields
.field public static final INSTANCE:Lorg/chromium/mojo/system/InvalidHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lorg/chromium/mojo/system/InvalidHandle;

    invoke-direct {v0}, Lorg/chromium/mojo/system/InvalidHandle;-><init>()V

    sput-object v0, Lorg/chromium/mojo/system/InvalidHandle;->INSTANCE:Lorg/chromium/mojo/system/InvalidHandle;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public getCore()Lorg/chromium/mojo/system/Core;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public pass()Lorg/chromium/mojo/system/InvalidHandle;
    .locals 0

    .prologue
    .line 69
    return-object p0
.end method

.method public bridge synthetic pass()Lorg/chromium/mojo/system/MessagePipeHandle;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lorg/chromium/mojo/system/InvalidHandle;->pass()Lorg/chromium/mojo/system/InvalidHandle;

    move-result-object v0

    return-object v0
.end method

.method public readMessage(Ljava/nio/ByteBuffer;ILorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;)Lorg/chromium/mojo/system/ResultAnd;
    .locals 2

    .prologue
    .line 217
    new-instance v0, Lorg/chromium/mojo/system/MojoException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v0
.end method

.method public toDataPipeConsumerHandle()Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;
    .locals 0

    .prologue
    .line 101
    return-object p0
.end method

.method public toDataPipeProducerHandle()Lorg/chromium/mojo/system/DataPipe$ProducerHandle;
    .locals 0

    .prologue
    .line 109
    return-object p0
.end method

.method public toMessagePipeHandle()Lorg/chromium/mojo/system/MessagePipeHandle;
    .locals 0

    .prologue
    .line 93
    return-object p0
.end method

.method public toUntypedHandle()Lorg/chromium/mojo/system/UntypedHandle;
    .locals 0

    .prologue
    .line 77
    return-object p0
.end method

.method public writeMessage(Ljava/nio/ByteBuffer;Ljava/util/List;Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;)V
    .locals 2

    .prologue
    .line 208
    new-instance v0, Lorg/chromium/mojo/system/MojoException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v0
.end method
