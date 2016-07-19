.class Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;
.super Ljava/lang/Object;
.source "InvalidationController.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHandlerRunnable:Ljava/lang/Runnable;

.field private mRunnable:Ljava/lang/Runnable;

.field private mScheduledTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;->mHandler:Landroid/os/Handler;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$002(Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$102(Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;->mHandlerRunnable:Ljava/lang/Runnable;

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;->pause()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;->mRunnable:Ljava/lang/Runnable;

    .line 107
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;->mHandlerRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;->mHandlerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;->mHandlerRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;->mHandlerRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;->mScheduledTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 89
    new-instance v2, Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer$1;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer$1;-><init>(Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;)V

    iput-object v2, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;->mHandlerRunnable:Ljava/lang/Runnable;

    .line 98
    iget-object v2, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;->mHandlerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setRunnable(Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;->cancel()V

    .line 67
    iput-object p1, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;->mRunnable:Ljava/lang/Runnable;

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p2

    iput-wide v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;->mScheduledTime:J

    .line 69
    return-void
.end method
