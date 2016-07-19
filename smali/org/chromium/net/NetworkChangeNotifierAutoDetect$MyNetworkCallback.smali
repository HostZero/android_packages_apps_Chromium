.class Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkChangeNotifierAutoDetect.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;


# direct methods
.method private constructor <init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;Lorg/chromium/net/NetworkChangeNotifierAutoDetect$1;)V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;-><init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .prologue
    .line 249
    # invokes: Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->networkToNetId(Landroid/net/Network;)I
    invoke-static {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->access$000(Landroid/net/Network;)I

    move-result v0

    .line 250
    iget-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    iget-object v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    # getter for: Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;
    invoke-static {v2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->access$100(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getNetworkState(Landroid/net/Network;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentConnectionType(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)I

    move-result v1

    .line 252
    new-instance v2, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$1;

    invoke-direct {v2, p0, v0, v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$1;-><init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;II)V

    invoke-static {v2}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 258
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 3

    .prologue
    .line 265
    # invokes: Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->networkToNetId(Landroid/net/Network;)I
    invoke-static {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->access$000(Landroid/net/Network;)I

    move-result v0

    .line 266
    iget-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    iget-object v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    # getter for: Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;
    invoke-static {v2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->access$100(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getNetworkState(Landroid/net/Network;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentConnectionType(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)I

    move-result v1

    .line 268
    new-instance v2, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$2;

    invoke-direct {v2, p0, v0, v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$2;-><init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;II)V

    invoke-static {v2}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 274
    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 2

    .prologue
    .line 278
    # invokes: Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->networkToNetId(Landroid/net/Network;)I
    invoke-static {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->access$000(Landroid/net/Network;)I

    move-result v0

    .line 279
    new-instance v1, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$3;

    invoke-direct {v1, p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$3;-><init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;I)V

    invoke-static {v1}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 285
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    .prologue
    .line 289
    # invokes: Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->networkToNetId(Landroid/net/Network;)I
    invoke-static {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->access$000(Landroid/net/Network;)I

    move-result v0

    .line 290
    new-instance v1, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$4;

    invoke-direct {v1, p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$4;-><init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;I)V

    invoke-static {v1}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 296
    return-void
.end method
