.class public Lorg/chromium/chrome/browser/PowerBroadcastReceiver$ServiceRunnable;
.super Ljava/lang/Object;
.source "PowerBroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final STATE_CANCELED:I = 0x2

.field static final STATE_COMPLETED:I = 0x3

.field static final STATE_POSTED:I = 0x1

.field static final STATE_UNINITIALIZED:I


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/PowerBroadcastReceiver$ServiceRunnable;->mHandler:Landroid/os/Handler;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/PowerBroadcastReceiver$ServiceRunnable;->mState:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 78
    iget v0, p0, Lorg/chromium/chrome/browser/PowerBroadcastReceiver$ServiceRunnable;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/PowerBroadcastReceiver$ServiceRunnable;->setState(I)V

    .line 80
    iget-object v0, p0, Lorg/chromium/chrome/browser/PowerBroadcastReceiver$ServiceRunnable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getDelayToRun()J
    .locals 2

    .prologue
    .line 105
    const-wide/16 v0, 0x1388

    return-wide v0
.end method

.method public post()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 72
    iget v0, p0, Lorg/chromium/chrome/browser/PowerBroadcastReceiver$ServiceRunnable;->mState:I

    if-ne v0, v1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/PowerBroadcastReceiver$ServiceRunnable;->setState(I)V

    .line 74
    iget-object v0, p0, Lorg/chromium/chrome/browser/PowerBroadcastReceiver$ServiceRunnable;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/PowerBroadcastReceiver$ServiceRunnable;->getDelayToRun()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 86
    iget v0, p0, Lorg/chromium/chrome/browser/PowerBroadcastReceiver$ServiceRunnable;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/PowerBroadcastReceiver$ServiceRunnable;->setState(I)V

    .line 88
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/PowerBroadcastReceiver$ServiceRunnable;->runActions()V

    goto :goto_0
.end method

.method public runActions()V
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lorg/chromium/chrome/browser/omaha/OmahaClient;->onForegroundSessionStart(Landroid/content/Context;)V

    .line 101
    invoke-static {}, Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController;->getInstance()Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController;->notifyPendingInvalidations(Landroid/content/Context;)Z

    .line 102
    return-void
.end method

.method public setState(I)V
    .locals 0

    .prologue
    .line 92
    iput p1, p0, Lorg/chromium/chrome/browser/PowerBroadcastReceiver$ServiceRunnable;->mState:I

    .line 93
    return-void
.end method
