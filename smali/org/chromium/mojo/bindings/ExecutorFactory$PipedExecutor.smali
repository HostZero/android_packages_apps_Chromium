.class Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;
.super Ljava/lang/Object;
.source "ExecutorFactory.java"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Lorg/chromium/mojo/system/AsyncWaiter$Callback;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mPendingActions:Ljava/util/List;

.field private final mReadHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

.field private final mWaiter:Lorg/chromium/mojo/system/AsyncWaiter;

.field private final mWriteHandle:Lorg/chromium/mojo/system/MessagePipeHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lorg/chromium/mojo/bindings/ExecutorFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/mojo/system/Core;)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-interface {p1}, Lorg/chromium/mojo/system/Core;->getDefaultAsyncWaiter()Lorg/chromium/mojo/system/AsyncWaiter;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mWaiter:Lorg/chromium/mojo/system/AsyncWaiter;

    .line 70
    sget-boolean v0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mWaiter:Lorg/chromium/mojo/system/AsyncWaiter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Lorg/chromium/mojo/system/MessagePipeHandle$CreateOptions;

    invoke-direct {v0}, Lorg/chromium/mojo/system/MessagePipeHandle$CreateOptions;-><init>()V

    invoke-interface {p1, v0}, Lorg/chromium/mojo/system/Core;->createMessagePipe(Lorg/chromium/mojo/system/MessagePipeHandle$CreateOptions;)Lorg/chromium/mojo/system/Pair;

    move-result-object v1

    .line 74
    iget-object v0, v1, Lorg/chromium/mojo/system/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/mojo/system/MessagePipeHandle;

    iput-object v0, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mReadHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    .line 75
    iget-object v0, v1, Lorg/chromium/mojo/system/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/mojo/system/MessagePipeHandle;

    iput-object v0, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mWriteHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mPendingActions:Ljava/util/List;

    .line 77
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->asyncWait()V

    .line 78
    return-void
.end method

.method private asyncWait()V
    .locals 7

    .prologue
    .line 85
    iget-object v1, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mWaiter:Lorg/chromium/mojo/system/AsyncWaiter;

    iget-object v2, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mReadHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    sget-object v3, Lorg/chromium/mojo/system/Core$HandleSignals;->READABLE:Lorg/chromium/mojo/system/Core$HandleSignals;

    const-wide/16 v4, -0x1

    move-object v6, p0

    invoke-interface/range {v1 .. v6}, Lorg/chromium/mojo/system/AsyncWaiter;->asyncWait(Lorg/chromium/mojo/system/Handle;Lorg/chromium/mojo/system/Core$HandleSignals;JLorg/chromium/mojo/system/AsyncWaiter$Callback;)Lorg/chromium/mojo/system/AsyncWaiter$Cancellable;

    .line 87
    return-void
.end method

.method private close()V
    .locals 2

    .prologue
    .line 113
    iget-object v1, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 114
    :try_start_0
    iget-object v0, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mWriteHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-interface {v0}, Lorg/chromium/mojo/system/MessagePipeHandle;->close()V

    .line 115
    iget-object v0, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mPendingActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 116
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iget-object v0, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mReadHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-interface {v0}, Lorg/chromium/mojo/system/MessagePipeHandle;->close()V

    .line 118
    return-void

    .line 116
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private readNotifyBufferMessage()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 126
    :try_start_0
    iget-object v1, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mReadHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    # getter for: Lorg/chromium/mojo/bindings/ExecutorFactory;->NOTIFY_BUFFER:Ljava/nio/ByteBuffer;
    invoke-static {}, Lorg/chromium/mojo/bindings/ExecutorFactory;->access$000()Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;->NONE:Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;

    invoke-interface {v1, v2, v3, v4}, Lorg/chromium/mojo/system/MessagePipeHandle;->readMessage(Ljava/nio/ByteBuffer;ILorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;)Lorg/chromium/mojo/system/ResultAnd;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Lorg/chromium/mojo/system/ResultAnd;->getMojoResult()I

    move-result v1

    if-nez v1, :cond_0

    .line 129
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->asyncWait()V
    :try_end_0
    .catch Lorg/chromium/mojo/system/MojoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    const/4 v0, 0x1

    .line 135
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private runNextAction()V
    .locals 3

    .prologue
    .line 143
    iget-object v1, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    :try_start_0
    iget-object v0, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mPendingActions:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 145
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 147
    return-void

    .line 145
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    .line 158
    iget-object v1, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_0
    iget-object v0, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mWriteHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-interface {v0}, Lorg/chromium/mojo/system/MessagePipeHandle;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Trying to execute an action on a closed executor."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 163
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mPendingActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mWriteHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    # getter for: Lorg/chromium/mojo/bindings/ExecutorFactory;->NOTIFY_BUFFER:Ljava/nio/ByteBuffer;
    invoke-static {}, Lorg/chromium/mojo/bindings/ExecutorFactory;->access$000()Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;->NONE:Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;

    invoke-interface {v0, v2, v3, v4}, Lorg/chromium/mojo/system/MessagePipeHandle;->writeMessage(Ljava/nio/ByteBuffer;Ljava/util/List;Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;)V

    .line 165
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public onError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->close()V

    .line 107
    return-void
.end method

.method public onResult(I)V
    .locals 1

    .prologue
    .line 94
    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->readNotifyBufferMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->runNextAction()V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->close()V

    goto :goto_0
.end method
