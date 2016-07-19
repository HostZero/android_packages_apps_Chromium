.class public Lorg/chromium/components/precache/NetworkInfoDelegate;
.super Ljava/lang/Object;
.source "NetworkInfoDelegate.java"


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mNetworkInfo:Landroid/net/NetworkInfo;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Lorg/chromium/components/precache/NetworkInfoDelegate;->getNetworkInfo(Landroid/content/Context;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected getNetworkInfo(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lorg/chromium/components/precache/NetworkInfoDelegate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 30
    iget-object v0, p0, Lorg/chromium/components/precache/NetworkInfoDelegate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/precache/NetworkInfoDelegate;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 31
    return-void
.end method

.method protected getType()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/chromium/components/precache/NetworkInfoDelegate;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    return v0
.end method

.method protected isActiveNetworkMetered()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/chromium/components/precache/NetworkInfoDelegate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    return v0
.end method

.method protected isAvailable()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/chromium/components/precache/NetworkInfoDelegate;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    return v0
.end method

.method protected isConnected()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/chromium/components/precache/NetworkInfoDelegate;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    return v0
.end method

.method protected isRoaming()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/chromium/components/precache/NetworkInfoDelegate;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    return v0
.end method

.method protected isValid()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/chromium/components/precache/NetworkInfoDelegate;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
