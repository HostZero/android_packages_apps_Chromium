.class public Lorg/chromium/chrome/browser/preferences/ConnectionChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionChangeReceiver.java"


# instance fields
.field private mIsRegistered:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/ConnectionChangeReceiver;->mIsRegistered:Z

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->updatePrecachingEnabled(Landroid/content/Context;)V

    .line 41
    :cond_0
    return-void
.end method

.method public registerReceiver(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/ConnectionChangeReceiver;->mIsRegistered:Z

    .line 25
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 27
    return-void
.end method

.method public unregisterReceiver(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/ConnectionChangeReceiver;->mIsRegistered:Z

    .line 31
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 32
    return-void
.end method
