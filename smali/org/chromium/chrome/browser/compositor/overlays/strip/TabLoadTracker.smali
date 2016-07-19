.class public Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;
.super Ljava/lang/Object;
.source "TabLoadTracker.java"


# instance fields
.field private final mCallback:Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker$TabLoadTrackerCallback;

.field private final mHandler:Landroid/os/Handler;

.field private final mId:I

.field private mLoadFinishedRunnable:Ljava/lang/Runnable;

.field private mLoading:Z

.field private mPageLoadFinishedRunnable:Ljava/lang/Runnable;

.field private mPageLoading:Z


# direct methods
.method public constructor <init>(ILorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker$TabLoadTrackerCallback;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->mHandler:Landroid/os/Handler;

    .line 94
    new-instance v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker$1;-><init>(Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->mLoadFinishedRunnable:Ljava/lang/Runnable;

    .line 102
    new-instance v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker$2;-><init>(Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->mPageLoadFinishedRunnable:Ljava/lang/Runnable;

    .line 43
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->mId:I

    .line 44
    iput-object p2, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->mCallback:Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker$TabLoadTrackerCallback;

    .line 45
    return-void
.end method

.method static synthetic access$002(Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;Z)Z
    .locals 0

    .prologue
    .line 13
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->mLoading:Z

    return p1
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;)I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->mId:I

    return v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;)Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker$TabLoadTrackerCallback;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->mCallback:Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker$TabLoadTrackerCallback;

    return-object v0
.end method

.method static synthetic access$302(Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;Z)Z
    .locals 0

    .prologue
    .line 13
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->mPageLoading:Z

    return p1
.end method


# virtual methods
.method public isLoading()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->mLoading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->mPageLoading:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadingFinished()V
    .locals 4

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->mLoading:Z

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->mLoadFinishedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 84
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->mLoadFinishedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public loadingStarted()V
    .locals 2

    .prologue
    .line 71
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->mLoading:Z

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->mLoading:Z

    .line 73
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->mCallback:Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker$TabLoadTrackerCallback;

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->mId:I

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker$TabLoadTrackerCallback;->loadStateChanged(I)V

    .line 75
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->mLoadFinishedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method

.method public pageLoadingFinished()V
    .locals 4

    .prologue
    .line 62
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->mPageLoading:Z

    if-nez v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->mPageLoadFinishedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 64
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->mPageLoadFinishedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public pageLoadingStarted()V
    .locals 2

    .prologue
    .line 51
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->mPageLoading:Z

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->mPageLoading:Z

    .line 53
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->mCallback:Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker$TabLoadTrackerCallback;

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->mId:I

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker$TabLoadTrackerCallback;->loadStateChanged(I)V

    .line 55
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/TabLoadTracker;->mPageLoadFinishedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method
