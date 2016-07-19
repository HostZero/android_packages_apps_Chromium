.class public Lorg/chromium/chrome/browser/PowerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerBroadcastReceiver.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mIsRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPowerManagerHelper:Lorg/chromium/chrome/browser/PowerBroadcastReceiver$PowerManagerHelper;

.field private mServiceRunnable:Lorg/chromium/chrome/browser/PowerBroadcastReceiver$ServiceRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/chromium/chrome/browser/PowerBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/PowerBroadcastReceiver;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/PowerBroadcastReceiver;->mIsRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    new-instance v0, Lorg/chromium/chrome/browser/PowerBroadcastReceiver$ServiceRunnable;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/PowerBroadcastReceiver$ServiceRunnable;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/PowerBroadcastReceiver;->mServiceRunnable:Lorg/chromium/chrome/browser/PowerBroadcastReceiver$ServiceRunnable;

    .line 111
    new-instance v0, Lorg/chromium/chrome/browser/PowerBroadcastReceiver$PowerManagerHelper;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/PowerBroadcastReceiver$PowerManagerHelper;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/PowerBroadcastReceiver;->mPowerManagerHelper:Lorg/chromium/chrome/browser/PowerBroadcastReceiver$PowerManagerHelper;

    .line 112
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 165
    sget-boolean v0, Lorg/chromium/chrome/browser/PowerBroadcastReceiver;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 166
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/PowerBroadcastReceiver;->mIsRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_1
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lorg/chromium/chrome/browser/PowerBroadcastReceiver;->mIsRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 159
    :cond_0
    return-void
.end method


# virtual methods
.method public isRegistered()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/chromium/chrome/browser/PowerBroadcastReceiver;->mIsRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onForegroundSessionEnd()V
    .locals 2

    .prologue
    .line 128
    sget-boolean v0, Lorg/chromium/chrome/browser/PowerBroadcastReceiver;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 130
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/PowerBroadcastReceiver;->mServiceRunnable:Lorg/chromium/chrome/browser/PowerBroadcastReceiver$ServiceRunnable;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/PowerBroadcastReceiver$ServiceRunnable;->cancel()V

    .line 131
    invoke-direct {p0}, Lorg/chromium/chrome/browser/PowerBroadcastReceiver;->unregisterReceiver()V

    .line 132
    return-void
.end method

.method public onForegroundSessionStart()V
    .locals 2

    .prologue
    .line 116
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 117
    sget-boolean v0, Lorg/chromium/chrome/browser/PowerBroadcastReceiver;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/PowerBroadcastReceiver;->mPowerManagerHelper:Lorg/chromium/chrome/browser/PowerBroadcastReceiver$PowerManagerHelper;

    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/PowerBroadcastReceiver$PowerManagerHelper;->isScreenOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lorg/chromium/chrome/browser/PowerBroadcastReceiver;->mServiceRunnable:Lorg/chromium/chrome/browser/PowerBroadcastReceiver$ServiceRunnable;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/PowerBroadcastReceiver$ServiceRunnable;->post()V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/PowerBroadcastReceiver;->registerReceiver()V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 136
    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->hasVisibleActivities()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lorg/chromium/chrome/browser/PowerBroadcastReceiver;->mServiceRunnable:Lorg/chromium/chrome/browser/PowerBroadcastReceiver$ServiceRunnable;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/PowerBroadcastReceiver$ServiceRunnable;->post()V

    .line 139
    invoke-direct {p0}, Lorg/chromium/chrome/browser/PowerBroadcastReceiver;->unregisterReceiver()V

    .line 141
    :cond_0
    return-void
.end method

.method setPowerManagerHelperForTests(Lorg/chromium/chrome/browser/PowerBroadcastReceiver$PowerManagerHelper;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lorg/chromium/chrome/browser/PowerBroadcastReceiver;->mPowerManagerHelper:Lorg/chromium/chrome/browser/PowerBroadcastReceiver$PowerManagerHelper;

    .line 187
    return-void
.end method

.method setServiceRunnableForTests(Lorg/chromium/chrome/browser/PowerBroadcastReceiver$ServiceRunnable;)V
    .locals 1

    .prologue
    .line 176
    sget-boolean v0, Lorg/chromium/chrome/browser/PowerBroadcastReceiver;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/PowerBroadcastReceiver;->mServiceRunnable:Lorg/chromium/chrome/browser/PowerBroadcastReceiver$ServiceRunnable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 177
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/PowerBroadcastReceiver;->mServiceRunnable:Lorg/chromium/chrome/browser/PowerBroadcastReceiver$ServiceRunnable;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/PowerBroadcastReceiver$ServiceRunnable;->cancel()V

    .line 178
    iput-object p1, p0, Lorg/chromium/chrome/browser/PowerBroadcastReceiver;->mServiceRunnable:Lorg/chromium/chrome/browser/PowerBroadcastReceiver$ServiceRunnable;

    .line 179
    return-void
.end method
