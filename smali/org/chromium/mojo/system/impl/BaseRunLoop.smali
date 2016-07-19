.class Lorg/chromium/mojo/system/impl/BaseRunLoop;
.super Ljava/lang/Object;
.source "BaseRunLoop.java"

# interfaces
.implements Lorg/chromium/mojo/system/RunLoop;


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

.field private mRunLoopID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lorg/chromium/mojo/system/impl/BaseRunLoop;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/mojo/system/impl/BaseRunLoop;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeCreateBaseRunLoop()J
.end method

.method private native nativeDeleteMessageLoop(J)V
.end method

.method private native nativePostDelayedTask(JLjava/lang/Runnable;J)V
.end method

.method private native nativeQuit(J)V
.end method

.method private native nativeRun(J)V
.end method

.method private native nativeRunUntilIdle(J)V
.end method

.method private static runRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 65
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 66
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 53
    iget-wide v0, p0, Lorg/chromium/mojo/system/impl/BaseRunLoop;->mRunLoopID:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 57
    :cond_0
    sget-boolean v0, Lorg/chromium/mojo/system/impl/BaseRunLoop;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/mojo/system/impl/BaseRunLoop;->mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

    invoke-virtual {v0}, Lorg/chromium/mojo/system/impl/CoreImpl;->getCurrentRunLoop()Lorg/chromium/mojo/system/RunLoop;

    move-result-object v0

    if-eq v0, p0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Only the current run loop can be closed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 58
    :cond_1
    iget-object v0, p0, Lorg/chromium/mojo/system/impl/BaseRunLoop;->mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

    invoke-virtual {v0}, Lorg/chromium/mojo/system/impl/CoreImpl;->clearCurrentRunLoop()V

    .line 59
    iget-wide v0, p0, Lorg/chromium/mojo/system/impl/BaseRunLoop;->mRunLoopID:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/mojo/system/impl/BaseRunLoop;->nativeDeleteMessageLoop(J)V

    .line 60
    iput-wide v2, p0, Lorg/chromium/mojo/system/impl/BaseRunLoop;->mRunLoopID:J

    goto :goto_0
.end method
