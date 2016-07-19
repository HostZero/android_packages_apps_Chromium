.class Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;
.super Ljava/lang/Object;
.source "ChromeApplication.java"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mSuspendRunnable:Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing$SuspendRunnable;

.field private mWebKitTimersAreSuspended:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;->mHandler:Landroid/os/Handler;

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;->mWebKitTimersAreSuspended:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/ChromeApplication$1;)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing$SuspendRunnable;)Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing$SuspendRunnable;
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;->mSuspendRunnable:Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing$SuspendRunnable;

    return-object p1
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;)Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;->mWebKitTimersAreSuspended:Z

    return v0
.end method

.method static synthetic access$102(Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;Z)Z
    .locals 0

    .prologue
    .line 134
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;->mWebKitTimersAreSuspended:Z

    return p1
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;->startTimers()V

    return-void
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;->suspendTimers()V

    return-void
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;->onDestroy()V

    return-void
.end method

.method private onDestroy()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;->mSuspendRunnable:Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing$SuspendRunnable;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;->mSuspendRunnable:Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing$SuspendRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;->mSuspendRunnable:Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing$SuspendRunnable;

    .line 155
    :cond_0
    return-void
.end method

.method private startTimers()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 165
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;->mSuspendRunnable:Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing$SuspendRunnable;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;->mSuspendRunnable:Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing$SuspendRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;->mSuspendRunnable:Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing$SuspendRunnable;

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;->mWebKitTimersAreSuspended:Z

    if-eqz v0, :cond_0

    .line 169
    invoke-static {v1}, Lorg/chromium/content/browser/ContentViewStatics;->setWebKitSharedTimersSuspended(Z)V

    .line 170
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;->mWebKitTimersAreSuspended:Z

    goto :goto_0
.end method

.method private suspendTimers()V
    .locals 4

    .prologue
    .line 158
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;->mSuspendRunnable:Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing$SuspendRunnable;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing$SuspendRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing$SuspendRunnable;-><init>(Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;Lorg/chromium/chrome/browser/ChromeApplication$1;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;->mSuspendRunnable:Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing$SuspendRunnable;

    .line 160
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;->mSuspendRunnable:Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing$SuspendRunnable;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    :cond_0
    return-void
.end method
