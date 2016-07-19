.class public Lorg/chromium/components/precache/DeviceState;
.super Ljava/lang/Object;
.source "DeviceState.java"


# static fields
.field private static sDeviceState:Lorg/chromium/components/precache/DeviceState;


# instance fields
.field protected mNetworkInfoDelegateFactory:Lorg/chromium/components/precache/NetworkInfoDelegateFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/components/precache/DeviceState;->sDeviceState:Lorg/chromium/components/precache/DeviceState;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lorg/chromium/components/precache/NetworkInfoDelegateFactory;

    invoke-direct {v0}, Lorg/chromium/components/precache/NetworkInfoDelegateFactory;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/precache/DeviceState;->mNetworkInfoDelegateFactory:Lorg/chromium/components/precache/NetworkInfoDelegateFactory;

    .line 24
    return-void
.end method

.method public static getInstance()Lorg/chromium/components/precache/DeviceState;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/chromium/components/precache/DeviceState;->sDeviceState:Lorg/chromium/components/precache/DeviceState;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/components/precache/DeviceState;

    invoke-direct {v0}, Lorg/chromium/components/precache/DeviceState;-><init>()V

    sput-object v0, Lorg/chromium/components/precache/DeviceState;->sDeviceState:Lorg/chromium/components/precache/DeviceState;

    .line 28
    :cond_0
    sget-object v0, Lorg/chromium/components/precache/DeviceState;->sDeviceState:Lorg/chromium/components/precache/DeviceState;

    return-object v0
.end method


# virtual methods
.method getStickyBatteryStatus(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 42
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 48
    if-nez v1, :cond_0

    .line 51
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public isPowerConnected(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lorg/chromium/components/precache/DeviceState;->getStickyBatteryStatus(Landroid/content/Context;)I

    move-result v0

    .line 58
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWifiAvailable(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 64
    iget-object v1, p0, Lorg/chromium/components/precache/DeviceState;->mNetworkInfoDelegateFactory:Lorg/chromium/components/precache/NetworkInfoDelegateFactory;

    invoke-virtual {v1, p1}, Lorg/chromium/components/precache/NetworkInfoDelegateFactory;->getNetworkInfoDelegate(Landroid/content/Context;)Lorg/chromium/components/precache/NetworkInfoDelegate;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lorg/chromium/components/precache/NetworkInfoDelegate;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/chromium/components/precache/NetworkInfoDelegate;->getType()I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {v1}, Lorg/chromium/components/precache/NetworkInfoDelegate;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/chromium/components/precache/NetworkInfoDelegate;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/chromium/components/precache/NetworkInfoDelegate;->isRoaming()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/chromium/components/precache/NetworkInfoDelegate;->isActiveNetworkMetered()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setNetworkInfoDelegateFactory(Lorg/chromium/components/precache/NetworkInfoDelegateFactory;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lorg/chromium/components/precache/DeviceState;->mNetworkInfoDelegateFactory:Lorg/chromium/components/precache/NetworkInfoDelegateFactory;

    .line 37
    return-void
.end method
