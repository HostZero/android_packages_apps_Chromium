.class public Lorg/chromium/chrome/browser/util/NonThreadSafe;
.super Ljava/lang/Object;
.source "NonThreadSafe.java"


# instance fields
.field private mThreadId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/util/NonThreadSafe;->mThreadId:Ljava/lang/Long;

    .line 18
    invoke-direct {p0}, Lorg/chromium/chrome/browser/util/NonThreadSafe;->ensureThreadIdAssigned()V

    .line 19
    return-void
.end method

.method private ensureThreadIdAssigned()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lorg/chromium/chrome/browser/util/NonThreadSafe;->mThreadId:Ljava/lang/Long;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/util/NonThreadSafe;->mThreadId:Ljava/lang/Long;

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized calledOnValidThread()Z
    .locals 4

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/util/NonThreadSafe;->ensureThreadIdAssigned()V

    .line 39
    iget-object v0, p0, Lorg/chromium/chrome/browser/util/NonThreadSafe;->mThreadId:Ljava/lang/Long;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized detachFromThread()V
    .locals 1

    .prologue
    .line 29
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/chromium/chrome/browser/util/NonThreadSafe;->mThreadId:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
