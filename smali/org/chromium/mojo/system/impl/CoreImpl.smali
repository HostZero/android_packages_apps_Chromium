.class public Lorg/chromium/mojo/system/impl/CoreImpl;
.super Ljava/lang/Object;
.source "CoreImpl.java"

# interfaces
.implements Lorg/chromium/mojo/system/AsyncWaiter;
.implements Lorg/chromium/mojo/system/Core;


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final INVALID_HANDLE:I


# instance fields
.field private final mByteBufferOffset:I

.field private final mCurrentRunLoop:Ljava/lang/ThreadLocal;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/chromium/mojo/system/impl/CoreImpl;->mCurrentRunLoop:Ljava/lang/ThreadLocal;

    .line 82
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/chromium/mojo/system/impl/CoreImpl;->nativeGetNativeBufferOffset(Ljava/nio/ByteBuffer;I)I

    move-result v0

    iput v0, p0, Lorg/chromium/mojo/system/impl/CoreImpl;->mByteBufferOffset:I

    .line 83
    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/mojo/system/impl/CoreImpl$1;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/chromium/mojo/system/impl/CoreImpl;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/mojo/system/impl/CoreImpl;JJ)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/mojo/system/impl/CoreImpl;->nativeCancelAsyncWait(JJ)V

    return-void
.end method

.method private allocateDirectBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 492
    iget v0, p0, Lorg/chromium/mojo/system/impl/CoreImpl;->mByteBufferOffset:I

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 493
    iget v1, p0, Lorg/chromium/mojo/system/impl/CoreImpl;->mByteBufferOffset:I

    if-eqz v1, :cond_0

    .line 494
    iget v1, p0, Lorg/chromium/mojo/system/impl/CoreImpl;->mByteBufferOffset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 495
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 497
    :cond_0
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lorg/chromium/mojo/system/Core;
    .locals 1

    .prologue
    .line 75
    # getter for: Lorg/chromium/mojo/system/impl/CoreImpl$LazyHolder;->INSTANCE:Lorg/chromium/mojo/system/Core;
    invoke-static {}, Lorg/chromium/mojo/system/impl/CoreImpl$LazyHolder;->access$100()Lorg/chromium/mojo/system/Core;

    move-result-object v0

    return-object v0
.end method

.method private getMojoHandle(Lorg/chromium/mojo/system/Handle;)I
    .locals 1

    .prologue
    .line 466
    invoke-interface {p1}, Lorg/chromium/mojo/system/Handle;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    check-cast p1, Lorg/chromium/mojo/system/impl/HandleBase;

    invoke-virtual {p1}, Lorg/chromium/mojo/system/impl/HandleBase;->getMojoHandle()I

    move-result v0

    .line 469
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isUnrecoverableError(I)Z
    .locals 1

    .prologue
    .line 473
    sparse-switch p0, :sswitch_data_0

    .line 480
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 478
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 473
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x4 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method private native nativeAsyncWait(IIJLorg/chromium/mojo/system/AsyncWaiter$Callback;)Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;
.end method

.method private native nativeBeginReadData(III)Lorg/chromium/mojo/system/ResultAnd;
.end method

.method private native nativeBeginWriteData(III)Lorg/chromium/mojo/system/ResultAnd;
.end method

.method private native nativeCancelAsyncWait(JJ)V
.end method

.method private native nativeClose(I)I
.end method

.method private native nativeCreateDataPipe(Ljava/nio/ByteBuffer;)Lorg/chromium/mojo/system/ResultAnd;
.end method

.method private native nativeCreateMessagePipe(Ljava/nio/ByteBuffer;)Lorg/chromium/mojo/system/ResultAnd;
.end method

.method private native nativeCreateSharedBuffer(Ljava/nio/ByteBuffer;J)Lorg/chromium/mojo/system/ResultAnd;
.end method

.method private native nativeDuplicate(ILjava/nio/ByteBuffer;)Lorg/chromium/mojo/system/ResultAnd;
.end method

.method private native nativeEndReadData(II)I
.end method

.method private native nativeEndWriteData(II)I
.end method

.method private native nativeGetNativeBufferOffset(Ljava/nio/ByteBuffer;I)I
.end method

.method private native nativeGetTimeTicksNow()J
.end method

.method private native nativeMap(IJJI)Lorg/chromium/mojo/system/ResultAnd;
.end method

.method private native nativeReadData(ILjava/nio/ByteBuffer;II)Lorg/chromium/mojo/system/ResultAnd;
.end method

.method private native nativeReadMessage(ILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)Lorg/chromium/mojo/system/ResultAnd;
.end method

.method private native nativeUnmap(Ljava/nio/ByteBuffer;)I
.end method

.method private native nativeWait(Ljava/nio/ByteBuffer;IIJ)I
.end method

.method private native nativeWaitMany(Ljava/nio/ByteBuffer;J)I
.end method

.method private native nativeWriteData(ILjava/nio/ByteBuffer;II)Lorg/chromium/mojo/system/ResultAnd;
.end method

.method private native nativeWriteMessage(ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)I
.end method

.method private newAsyncWaiterCancellableImpl(JJ)Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;
    .locals 7

    .prologue
    .line 535
    new-instance v0, Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;JJLorg/chromium/mojo/system/impl/CoreImpl$1;)V

    return-object v0
.end method

.method private static newNativeCreationResult(III)Lorg/chromium/mojo/system/ResultAnd;
    .locals 4

    .prologue
    .line 585
    new-instance v0, Lorg/chromium/mojo/system/ResultAnd;

    new-instance v1, Lorg/chromium/mojo/system/impl/CoreImpl$IntegerPair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/system/impl/CoreImpl$IntegerPair;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-direct {v0, p0, v1}, Lorg/chromium/mojo/system/ResultAnd;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private static newReadMessageResult(III)Lorg/chromium/mojo/system/ResultAnd;
    .locals 2

    .prologue
    .line 571
    new-instance v0, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;

    invoke-direct {v0}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;-><init>()V

    .line 572
    invoke-virtual {v0, p1}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->setMessageSize(I)V

    .line 573
    invoke-virtual {v0, p2}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->setHandlesCount(I)V

    .line 574
    new-instance v1, Lorg/chromium/mojo/system/ResultAnd;

    invoke-direct {v1, p0, v0}, Lorg/chromium/mojo/system/ResultAnd;-><init>(ILjava/lang/Object;)V

    return-object v1
.end method

.method private static newResultAndBuffer(ILjava/nio/ByteBuffer;)Lorg/chromium/mojo/system/ResultAnd;
    .locals 1

    .prologue
    .line 555
    new-instance v0, Lorg/chromium/mojo/system/ResultAnd;

    invoke-direct {v0, p0, p1}, Lorg/chromium/mojo/system/ResultAnd;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private static newResultAndInteger(II)Lorg/chromium/mojo/system/ResultAnd;
    .locals 2

    .prologue
    .line 579
    new-instance v0, Lorg/chromium/mojo/system/ResultAnd;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/chromium/mojo/system/ResultAnd;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private onAsyncWaitResult(ILorg/chromium/mojo/system/AsyncWaiter$Callback;Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;)V
    .locals 1

    .prologue
    .line 541
    # invokes: Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;->isActive()Z
    invoke-static {p3}, Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;->access$400(Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    :goto_0
    return-void

    .line 545
    :cond_0
    # invokes: Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;->deactivate()V
    invoke-static {p3}, Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;->access$500(Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;)V

    .line 546
    invoke-static {p1}, Lorg/chromium/mojo/system/impl/CoreImpl;->isUnrecoverableError(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    new-instance v0, Lorg/chromium/mojo/system/MojoException;

    invoke-direct {v0, p1}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    invoke-interface {p2, v0}, Lorg/chromium/mojo/system/AsyncWaiter$Callback;->onError(Lorg/chromium/mojo/system/MojoException;)V

    goto :goto_0

    .line 550
    :cond_1
    invoke-interface {p2, p1}, Lorg/chromium/mojo/system/AsyncWaiter$Callback;->onResult(I)V

    goto :goto_0
.end method


# virtual methods
.method public acquireNativeHandle(I)Lorg/chromium/mojo/system/UntypedHandle;
    .locals 1

    .prologue
    .line 215
    new-instance v0, Lorg/chromium/mojo/system/impl/UntypedHandleImpl;

    invoke-direct {v0, p0, p1}, Lorg/chromium/mojo/system/impl/UntypedHandleImpl;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;I)V

    return-object v0
.end method

.method public asyncWait(Lorg/chromium/mojo/system/Handle;Lorg/chromium/mojo/system/Core$HandleSignals;JLorg/chromium/mojo/system/AsyncWaiter$Callback;)Lorg/chromium/mojo/system/AsyncWaiter$Cancellable;
    .locals 7

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lorg/chromium/mojo/system/impl/CoreImpl;->getMojoHandle(Lorg/chromium/mojo/system/Handle;)I

    move-result v2

    invoke-virtual {p2}, Lorg/chromium/mojo/system/Core$HandleSignals;->getFlags()I

    move-result v3

    move-object v1, p0

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/chromium/mojo/system/impl/CoreImpl;->nativeAsyncWait(IIJLorg/chromium/mojo/system/AsyncWaiter$Callback;)Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;

    move-result-object v0

    return-object v0
.end method

.method clearCurrentRunLoop()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lorg/chromium/mojo/system/impl/CoreImpl;->mCurrentRunLoop:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 252
    return-void
.end method

.method close(I)V
    .locals 2

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lorg/chromium/mojo/system/impl/CoreImpl;->nativeClose(I)I

    move-result v0

    .line 269
    if-eqz v0, :cond_0

    .line 270
    new-instance v1, Lorg/chromium/mojo/system/MojoException;

    invoke-direct {v1, v0}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v1

    .line 272
    :cond_0
    return-void
.end method

.method closeWithResult(I)I
    .locals 1

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lorg/chromium/mojo/system/impl/CoreImpl;->nativeClose(I)I

    move-result v0

    return v0
.end method

.method public createMessagePipe(Lorg/chromium/mojo/system/MessagePipeHandle$CreateOptions;)Lorg/chromium/mojo/system/Pair;
    .locals 4

    .prologue
    const/16 v2, 0x8

    .line 154
    const/4 v0, 0x0

    .line 155
    if-eqz p1, :cond_0

    .line 156
    invoke-direct {p0, v2}, Lorg/chromium/mojo/system/impl/CoreImpl;->allocateDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 157
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 158
    const/4 v1, 0x4

    invoke-virtual {p1}, Lorg/chromium/mojo/system/MessagePipeHandle$CreateOptions;->getFlags()Lorg/chromium/mojo/system/MessagePipeHandle$CreateFlags;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/system/MessagePipeHandle$CreateFlags;->getFlags()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 160
    :cond_0
    invoke-direct {p0, v0}, Lorg/chromium/mojo/system/impl/CoreImpl;->nativeCreateMessagePipe(Ljava/nio/ByteBuffer;)Lorg/chromium/mojo/system/ResultAnd;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Lorg/chromium/mojo/system/ResultAnd;->getMojoResult()I

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    new-instance v0, Lorg/chromium/mojo/system/MojoException;

    invoke-virtual {v1}, Lorg/chromium/mojo/system/ResultAnd;->getMojoResult()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v0

    .line 164
    :cond_1
    new-instance v2, Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;

    invoke-virtual {v1}, Lorg/chromium/mojo/system/ResultAnd;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojo/system/impl/CoreImpl$IntegerPair;

    iget-object v0, v0, Lorg/chromium/mojo/system/impl/CoreImpl$IntegerPair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, p0, v0}, Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;I)V

    new-instance v3, Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;

    invoke-virtual {v1}, Lorg/chromium/mojo/system/ResultAnd;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojo/system/impl/CoreImpl$IntegerPair;

    iget-object v0, v0, Lorg/chromium/mojo/system/impl/CoreImpl$IntegerPair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, p0, v0}, Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;I)V

    invoke-static {v2, v3}, Lorg/chromium/mojo/system/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lorg/chromium/mojo/system/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentRunLoop()Lorg/chromium/mojo/system/RunLoop;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lorg/chromium/mojo/system/impl/CoreImpl;->mCurrentRunLoop:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojo/system/RunLoop;

    return-object v0
.end method

.method public getDefaultAsyncWaiter()Lorg/chromium/mojo/system/AsyncWaiter;
    .locals 0

    .prologue
    .line 223
    return-object p0
.end method

.method readMessage(Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;Ljava/nio/ByteBuffer;ILorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;)Lorg/chromium/mojo/system/ResultAnd;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 307
    const/4 v0, 0x0

    .line 308
    if-lez p3, :cond_4

    .line 309
    shl-int/lit8 v0, p3, 0x2

    invoke-direct {p0, v0}, Lorg/chromium/mojo/system/impl/CoreImpl;->allocateDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v1, v0

    .line 311
    :goto_0
    invoke-virtual {p1}, Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;->getMojoHandle()I

    move-result v0

    invoke-virtual {p4}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;->getFlags()I

    move-result v3

    invoke-direct {p0, v0, p2, v1, v3}, Lorg/chromium/mojo/system/impl/CoreImpl;->nativeReadMessage(ILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)Lorg/chromium/mojo/system/ResultAnd;

    move-result-object v3

    .line 313
    invoke-virtual {v3}, Lorg/chromium/mojo/system/ResultAnd;->getMojoResult()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lorg/chromium/mojo/system/ResultAnd;->getMojoResult()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    invoke-virtual {v3}, Lorg/chromium/mojo/system/ResultAnd;->getMojoResult()I

    move-result v0

    const/16 v4, 0x11

    if-eq v0, v4, :cond_0

    .line 316
    new-instance v0, Lorg/chromium/mojo/system/MojoException;

    invoke-virtual {v3}, Lorg/chromium/mojo/system/ResultAnd;->getMojoResult()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v0

    .line 319
    :cond_0
    invoke-virtual {v3}, Lorg/chromium/mojo/system/ResultAnd;->getMojoResult()I

    move-result v0

    if-nez v0, :cond_3

    .line 320
    invoke-virtual {v3}, Lorg/chromium/mojo/system/ResultAnd;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;

    .line 321
    if-eqz p2, :cond_1

    .line 322
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 323
    invoke-virtual {v0}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->getMessageSize()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 326
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->getHandlesCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 328
    :goto_1
    invoke-virtual {v0}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->getHandlesCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 329
    mul-int/lit8 v5, v2, 0x4

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    .line 330
    new-instance v6, Lorg/chromium/mojo/system/impl/UntypedHandleImpl;

    invoke-direct {v6, p0, v5}, Lorg/chromium/mojo/system/impl/UntypedHandleImpl;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;I)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 332
    :cond_2
    invoke-virtual {v0, v4}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->setHandles(Ljava/util/List;)V

    .line 334
    :cond_3
    return-object v3

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method writeMessage(Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;Ljava/nio/ByteBuffer;Ljava/util/List;Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 279
    const/4 v4, 0x0

    .line 280
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lorg/chromium/mojo/system/impl/CoreImpl;->allocateDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 282
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojo/system/Handle;

    .line 283
    invoke-direct {p0, v0}, Lorg/chromium/mojo/system/impl/CoreImpl;->getMojoHandle(Lorg/chromium/mojo/system/Handle;)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 287
    :cond_1
    invoke-virtual {p1}, Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;->getMojoHandle()I

    move-result v1

    if-nez p2, :cond_2

    :goto_1
    invoke-virtual {p4}, Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;->getFlags()I

    move-result v5

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/chromium/mojo/system/impl/CoreImpl;->nativeWriteMessage(ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)I

    move-result v0

    .line 289
    if-eqz v0, :cond_3

    .line 290
    new-instance v1, Lorg/chromium/mojo/system/MojoException;

    invoke-direct {v1, v0}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v1

    .line 287
    :cond_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    goto :goto_1

    .line 293
    :cond_3
    if-eqz p3, :cond_5

    .line 294
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojo/system/Handle;

    .line 295
    invoke-interface {v0}, Lorg/chromium/mojo/system/Handle;->isValid()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 296
    check-cast v0, Lorg/chromium/mojo/system/impl/HandleBase;

    invoke-virtual {v0}, Lorg/chromium/mojo/system/impl/HandleBase;->invalidateHandle()V

    goto :goto_2

    .line 300
    :cond_5
    return-void
.end method
