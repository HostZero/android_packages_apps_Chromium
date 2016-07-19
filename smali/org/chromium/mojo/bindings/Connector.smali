.class public Lorg/chromium/mojo/bindings/Connector;
.super Ljava/lang/Object;
.source "Connector.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/HandleOwner;
.implements Lorg/chromium/mojo/bindings/MessageReceiver;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAsyncWaiter:Lorg/chromium/mojo/system/AsyncWaiter;

.field private final mAsyncWaiterCallback:Lorg/chromium/mojo/bindings/Connector$AsyncWaiterCallback;

.field private mCancellable:Lorg/chromium/mojo/system/AsyncWaiter$Cancellable;

.field private mErrorHandler:Lorg/chromium/mojo/bindings/ConnectionErrorHandler;

.field private mIncomingMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mMessagePipeHandle:Lorg/chromium/mojo/system/MessagePipeHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lorg/chromium/mojo/bindings/Connector;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/mojo/bindings/Connector;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/mojo/system/MessagePipeHandle;Lorg/chromium/mojo/system/AsyncWaiter;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lorg/chromium/mojo/bindings/Connector$AsyncWaiterCallback;

    invoke-direct {v0, p0, v1}, Lorg/chromium/mojo/bindings/Connector$AsyncWaiterCallback;-><init>(Lorg/chromium/mojo/bindings/Connector;Lorg/chromium/mojo/bindings/Connector$1;)V

    iput-object v0, p0, Lorg/chromium/mojo/bindings/Connector;->mAsyncWaiterCallback:Lorg/chromium/mojo/bindings/Connector$AsyncWaiterCallback;

    .line 70
    iput-object v1, p0, Lorg/chromium/mojo/bindings/Connector;->mCancellable:Lorg/chromium/mojo/system/AsyncWaiter$Cancellable;

    .line 71
    iput-object p1, p0, Lorg/chromium/mojo/bindings/Connector;->mMessagePipeHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    .line 72
    iput-object p2, p0, Lorg/chromium/mojo/bindings/Connector;->mAsyncWaiter:Lorg/chromium/mojo/system/AsyncWaiter;

    .line 73
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/mojo/bindings/Connector;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/Connector;->onAsyncWaiterResult(I)V

    return-void
.end method

.method static synthetic access$202(Lorg/chromium/mojo/bindings/Connector;Lorg/chromium/mojo/system/AsyncWaiter$Cancellable;)Lorg/chromium/mojo/system/AsyncWaiter$Cancellable;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lorg/chromium/mojo/bindings/Connector;->mCancellable:Lorg/chromium/mojo/system/AsyncWaiter$Cancellable;

    return-object p1
.end method

.method static synthetic access$300(Lorg/chromium/mojo/bindings/Connector;Lorg/chromium/mojo/system/MojoException;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/Connector;->onError(Lorg/chromium/mojo/system/MojoException;)V

    return-void
.end method

.method private cancelIfActive()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Connector;->mCancellable:Lorg/chromium/mojo/system/AsyncWaiter$Cancellable;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Connector;->mCancellable:Lorg/chromium/mojo/system/AsyncWaiter$Cancellable;

    invoke-interface {v0}, Lorg/chromium/mojo/system/AsyncWaiter$Cancellable;->cancel()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/mojo/bindings/Connector;->mCancellable:Lorg/chromium/mojo/system/AsyncWaiter$Cancellable;

    .line 222
    :cond_0
    return-void
.end method

.method private onAsyncWaiterResult(I)V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/mojo/bindings/Connector;->mCancellable:Lorg/chromium/mojo/system/AsyncWaiter$Cancellable;

    .line 169
    if-nez p1, :cond_0

    .line 170
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/Connector;->readOutstandingMessages()V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    new-instance v0, Lorg/chromium/mojo/system/MojoException;

    invoke-direct {v0, p1}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/Connector;->onError(Lorg/chromium/mojo/system/MojoException;)V

    goto :goto_0
.end method

.method private onError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Connector;->close()V

    .line 178
    sget-boolean v0, Lorg/chromium/mojo/bindings/Connector;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/mojo/bindings/Connector;->mCancellable:Lorg/chromium/mojo/system/AsyncWaiter$Cancellable;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 179
    :cond_0
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Connector;->mErrorHandler:Lorg/chromium/mojo/bindings/ConnectionErrorHandler;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Connector;->mErrorHandler:Lorg/chromium/mojo/bindings/ConnectionErrorHandler;

    invoke-interface {v0, p1}, Lorg/chromium/mojo/bindings/ConnectionErrorHandler;->onConnectionError(Lorg/chromium/mojo/system/MojoException;)V

    .line 182
    :cond_1
    return-void
.end method

.method static readAndDispatchMessage(Lorg/chromium/mojo/system/MessagePipeHandle;Lorg/chromium/mojo/bindings/MessageReceiver;)Lorg/chromium/mojo/system/ResultAnd;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 234
    const/4 v0, 0x0

    sget-object v1, Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;->NONE:Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;

    invoke-interface {p0, v0, v3, v1}, Lorg/chromium/mojo/system/MessagePipeHandle;->readMessage(Ljava/nio/ByteBuffer;ILorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;)Lorg/chromium/mojo/system/ResultAnd;

    move-result-object v1

    .line 236
    invoke-virtual {v1}, Lorg/chromium/mojo/system/ResultAnd;->getMojoResult()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    .line 237
    new-instance v0, Lorg/chromium/mojo/system/ResultAnd;

    invoke-virtual {v1}, Lorg/chromium/mojo/system/ResultAnd;->getMojoResult()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/system/ResultAnd;-><init>(ILjava/lang/Object;)V

    .line 248
    :goto_0
    return-object v0

    .line 239
    :cond_0
    invoke-virtual {v1}, Lorg/chromium/mojo/system/ResultAnd;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;

    .line 240
    sget-boolean v1, Lorg/chromium/mojo/bindings/Connector;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 241
    :cond_1
    invoke-virtual {v0}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->getMessageSize()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 242
    invoke-virtual {v0}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->getHandlesCount()I

    move-result v0

    sget-object v2, Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;->NONE:Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;

    invoke-interface {p0, v1, v0, v2}, Lorg/chromium/mojo/system/MessagePipeHandle;->readMessage(Ljava/nio/ByteBuffer;ILorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;)Lorg/chromium/mojo/system/ResultAnd;

    move-result-object v2

    .line 244
    if-eqz p1, :cond_2

    invoke-virtual {v2}, Lorg/chromium/mojo/system/ResultAnd;->getMojoResult()I

    move-result v0

    if-nez v0, :cond_2

    .line 245
    new-instance v3, Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v2}, Lorg/chromium/mojo/system/ResultAnd;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;

    invoke-virtual {v0}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->getHandles()Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lorg/chromium/mojo/bindings/Message;-><init>(Ljava/nio/ByteBuffer;Ljava/util/List;)V

    invoke-interface {p1, v3}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    move-result v1

    .line 246
    new-instance v0, Lorg/chromium/mojo/system/ResultAnd;

    invoke-virtual {v2}, Lorg/chromium/mojo/system/ResultAnd;->getMojoResult()I

    move-result v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/chromium/mojo/system/ResultAnd;-><init>(ILjava/lang/Object;)V

    goto :goto_0

    .line 248
    :cond_2
    new-instance v0, Lorg/chromium/mojo/system/ResultAnd;

    invoke-virtual {v2}, Lorg/chromium/mojo/system/ResultAnd;->getMojoResult()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/system/ResultAnd;-><init>(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private readOutstandingMessages()V
    .locals 3

    .prologue
    .line 204
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Connector;->mMessagePipeHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    iget-object v1, p0, Lorg/chromium/mojo/bindings/Connector;->mIncomingMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-static {v0, v1}, Lorg/chromium/mojo/bindings/Connector;->readAndDispatchMessage(Lorg/chromium/mojo/system/MessagePipeHandle;Lorg/chromium/mojo/bindings/MessageReceiver;)Lorg/chromium/mojo/system/ResultAnd;
    :try_end_0
    .catch Lorg/chromium/mojo/system/MojoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 209
    invoke-virtual {v1}, Lorg/chromium/mojo/system/ResultAnd;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-virtual {v1}, Lorg/chromium/mojo/system/ResultAnd;->getMojoResult()I

    move-result v0

    const/16 v2, 0x11

    if-ne v0, v2, :cond_1

    .line 211
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/Connector;->registerAsyncWaiterForRead()V

    .line 215
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/Connector;->onError(Lorg/chromium/mojo/system/MojoException;)V

    goto :goto_0

    .line 213
    :cond_1
    new-instance v0, Lorg/chromium/mojo/system/MojoException;

    invoke-virtual {v1}, Lorg/chromium/mojo/system/ResultAnd;->getMojoResult()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/Connector;->onError(Lorg/chromium/mojo/system/MojoException;)V

    goto :goto_0
.end method

.method private registerAsyncWaiterForRead()V
    .locals 7

    .prologue
    .line 188
    sget-boolean v0, Lorg/chromium/mojo/bindings/Connector;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/mojo/bindings/Connector;->mCancellable:Lorg/chromium/mojo/system/AsyncWaiter$Cancellable;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 189
    :cond_0
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Connector;->mAsyncWaiter:Lorg/chromium/mojo/system/AsyncWaiter;

    if-eqz v0, :cond_1

    .line 190
    iget-object v1, p0, Lorg/chromium/mojo/bindings/Connector;->mAsyncWaiter:Lorg/chromium/mojo/system/AsyncWaiter;

    iget-object v2, p0, Lorg/chromium/mojo/bindings/Connector;->mMessagePipeHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    sget-object v3, Lorg/chromium/mojo/system/Core$HandleSignals;->READABLE:Lorg/chromium/mojo/system/Core$HandleSignals;

    const-wide/16 v4, -0x1

    iget-object v6, p0, Lorg/chromium/mojo/bindings/Connector;->mAsyncWaiterCallback:Lorg/chromium/mojo/bindings/Connector$AsyncWaiterCallback;

    invoke-interface/range {v1 .. v6}, Lorg/chromium/mojo/system/AsyncWaiter;->asyncWait(Lorg/chromium/mojo/system/Handle;Lorg/chromium/mojo/system/Core$HandleSignals;JLorg/chromium/mojo/system/AsyncWaiter$Callback;)Lorg/chromium/mojo/system/AsyncWaiter$Cancellable;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/mojo/bindings/Connector;->mCancellable:Lorg/chromium/mojo/system/AsyncWaiter$Cancellable;

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_1
    new-instance v0, Lorg/chromium/mojo/system/MojoException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/Connector;->onError(Lorg/chromium/mojo/system/MojoException;)V

    goto :goto_0
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 4

    .prologue
    .line 104
    :try_start_0
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Connector;->mMessagePipeHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->getHandles()Ljava/util/List;

    move-result-object v2

    sget-object v3, Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;->NONE:Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;

    invoke-interface {v0, v1, v2, v3}, Lorg/chromium/mojo/system/MessagePipeHandle;->writeMessage(Ljava/nio/ByteBuffer;Ljava/util/List;Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;)V
    :try_end_0
    .catch Lorg/chromium/mojo/system/MojoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    const/4 v0, 0x1

    .line 109
    :goto_0
    return v0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/Connector;->onError(Lorg/chromium/mojo/system/MojoException;)V

    .line 109
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 134
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/Connector;->cancelIfActive()V

    .line 135
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Connector;->mMessagePipeHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-interface {v0}, Lorg/chromium/mojo/system/MessagePipeHandle;->close()V

    .line 136
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Connector;->mIncomingMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Connector;->mIncomingMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 138
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/mojo/bindings/Connector;->mIncomingMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 139
    invoke-interface {v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->close()V

    .line 141
    :cond_0
    return-void
.end method

.method public bridge synthetic passHandle()Lorg/chromium/mojo/system/Handle;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Connector;->passHandle()Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v0

    return-object v0
.end method

.method public passHandle()Lorg/chromium/mojo/system/MessagePipeHandle;
    .locals 2

    .prologue
    .line 121
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/Connector;->cancelIfActive()V

    .line 122
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Connector;->mMessagePipeHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-interface {v0}, Lorg/chromium/mojo/system/MessagePipeHandle;->pass()Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lorg/chromium/mojo/bindings/Connector;->mIncomingMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lorg/chromium/mojo/bindings/Connector;->mIncomingMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v1}, Lorg/chromium/mojo/bindings/MessageReceiver;->close()V

    .line 126
    :cond_0
    return-object v0
.end method

.method public setErrorHandler(Lorg/chromium/mojo/bindings/ConnectionErrorHandler;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lorg/chromium/mojo/bindings/Connector;->mErrorHandler:Lorg/chromium/mojo/bindings/ConnectionErrorHandler;

    .line 88
    return-void
.end method

.method public setIncomingMessageReceiver(Lorg/chromium/mojo/bindings/MessageReceiver;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lorg/chromium/mojo/bindings/Connector;->mIncomingMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 80
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 94
    sget-boolean v0, Lorg/chromium/mojo/bindings/Connector;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/mojo/bindings/Connector;->mCancellable:Lorg/chromium/mojo/system/AsyncWaiter$Cancellable;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 95
    :cond_0
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/Connector;->registerAsyncWaiterForRead()V

    .line 96
    return-void
.end method
