.class Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;
.super Ljava/lang/Object;
.source "NetworkChangeNotifierAutoDetect.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 74
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 68
    return-void
.end method


# virtual methods
.method getAllNetworks()[Landroid/net/Network;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method getDefaultNetId()I
    .locals 9

    .prologue
    const/4 v1, -0x1

    .line 143
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 144
    if-nez v3, :cond_1

    move v0, v1

    .line 166
    :cond_0
    return v0

    .line 147
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getAllNetworks()[Landroid/net/Network;

    move-result-object v4

    .line 149
    array-length v5, v4

    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v6, v4, v2

    .line 150
    invoke-virtual {p0, v6}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->hasInternetCapability(Landroid/net/Network;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 153
    iget-object v7, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v7, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v7

    .line 154
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-ne v7, v8, :cond_3

    .line 162
    sget-boolean v7, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->$assertionsDisabled:Z

    if-nez v7, :cond_2

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 163
    :cond_2
    # invokes: Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->networkToNetId(Landroid/net/Network;)I
    invoke-static {v6}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->access$000(Landroid/net/Network;)I

    move-result v0

    .line 149
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method getNetworkState()Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getNetworkState(Landroid/net/NetworkInfo;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    move-result-object v0

    return-object v0
.end method

.method getNetworkState(Landroid/net/Network;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getNetworkState(Landroid/net/NetworkInfo;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    move-result-object v0

    return-object v0
.end method

.method getNetworkState(Landroid/net/NetworkInfo;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 97
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    :cond_0
    new-instance v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;-><init>(ZII)V

    .line 100
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;-><init>(ZII)V

    goto :goto_0
.end method

.method hasInternetCapability(Landroid/net/Network;)Z
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 121
    return-void
.end method

.method unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 130
    return-void
.end method
