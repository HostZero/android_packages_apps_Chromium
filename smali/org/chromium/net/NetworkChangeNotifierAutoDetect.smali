.class public Lorg/chromium/net/NetworkChangeNotifierAutoDetect;
.super Landroid/content/BroadcastReceiver;
.source "NetworkChangeNotifierAutoDetect.java"


# instance fields
.field private mConnectionType:I

.field private mConnectivityManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;

.field private mMaxBandwidthConnectionType:I

.field private mMaxBandwidthMbps:D

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;

.field private final mObserver:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

.field private mRegistered:Z

.field private final mRegistrationPolicy:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;

.field private mWifiManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;

.field private mWifiSSID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;Landroid/content/Context;Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 404
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 407
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 408
    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mObserver:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    .line 409
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mContext:Landroid/content/Context;

    .line 410
    new-instance v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    invoke-direct {v0, p2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    .line 411
    new-instance v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;

    invoke-direct {v0, p2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mWifiManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;

    .line 412
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 413
    new-instance v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;

    invoke-direct {v0, p0, v2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;-><init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;Lorg/chromium/net/NetworkChangeNotifierAutoDetect$1;)V

    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 414
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 420
    :goto_0
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getNetworkState()Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    move-result-object v0

    .line 421
    invoke-virtual {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentConnectionType(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)I

    move-result v1

    iput v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectionType:I

    .line 422
    invoke-direct {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentWifiSSID(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mWifiSSID:Ljava/lang/String;

    .line 423
    invoke-virtual {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentMaxBandwidthInMbps(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mMaxBandwidthMbps:D

    .line 424
    iget v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectionType:I

    iput v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mMaxBandwidthConnectionType:I

    .line 425
    new-instance v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;

    iget-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mWifiManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;

    invoke-virtual {v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->getHasWifiPermission()Z

    move-result v1

    invoke-direct {v0, v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;-><init>(Z)V

    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mIntentFilter:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;

    .line 427
    iput-object p3, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistrationPolicy:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;

    .line 428
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistrationPolicy:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;

    invoke-virtual {v0, p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;->init(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)V

    .line 429
    return-void

    .line 417
    :cond_0
    iput-object v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 418
    iput-object v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkRequest:Landroid/net/NetworkRequest;

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/net/Network;)I
    .locals 1

    .prologue
    .line 36
    invoke-static {p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->networkToNetId(Landroid/net/Network;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mObserver:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    return-object v0
.end method

.method private connectionTypeChanged(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)V
    .locals 4

    .prologue
    .line 686
    invoke-virtual {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentConnectionType(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)I

    move-result v0

    .line 687
    invoke-direct {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentWifiSSID(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)Ljava/lang/String;

    move-result-object v1

    .line 688
    iget v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectionType:I

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mWifiSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 694
    :goto_0
    return-void

    .line 690
    :cond_0
    iput v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectionType:I

    .line 691
    iput-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mWifiSSID:Ljava/lang/String;

    .line 692
    const-string/jumbo v1, "NetworkChangeNotifierAutoDetect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Network connectivity changed, type is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectionType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mObserver:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    invoke-interface {v1, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;->onConnectionTypeChanged(I)V

    goto :goto_0
.end method

.method private getCurrentWifiSSID(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 669
    invoke-virtual {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentConnectionType(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, ""

    .line 670
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mWifiManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;

    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->getWifiSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private maxBandwidthChanged(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)V
    .locals 4

    .prologue
    .line 697
    invoke-virtual {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentMaxBandwidthInMbps(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)D

    move-result-wide v0

    .line 698
    iget-wide v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mMaxBandwidthMbps:D

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    iget v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectionType:I

    iget v3, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mMaxBandwidthConnectionType:I

    if-ne v2, v3, :cond_0

    .line 705
    :goto_0
    return-void

    .line 702
    :cond_0
    iput-wide v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mMaxBandwidthMbps:D

    .line 703
    iget v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectionType:I

    iput v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mMaxBandwidthConnectionType:I

    .line 704
    iget-object v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mObserver:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    invoke-interface {v2, v0, v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;->onMaxBandwidthChanged(D)V

    goto :goto_0
.end method

.method private static networkToNetId(Landroid/net/Network;)I
    .locals 1

    .prologue
    .line 722
    invoke-virtual {p0}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistrationPolicy:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;

    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;->destroy()V

    .line 460
    invoke-virtual {p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->unregister()V

    .line 461
    return-void
.end method

.method public getCurrentConnectionSubtype(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 599
    invoke-virtual {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 600
    const/4 v0, 0x1

    .line 646
    :goto_0
    :pswitch_0
    return v0

    .line 603
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getNetworkType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 611
    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getNetworkSubType()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 613
    :pswitch_3
    const/4 v0, 0x7

    goto :goto_0

    .line 615
    :pswitch_4
    const/16 v0, 0x8

    goto :goto_0

    .line 617
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 619
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 621
    :pswitch_7
    const/4 v0, 0x4

    goto :goto_0

    .line 623
    :pswitch_8
    const/16 v0, 0x9

    goto :goto_0

    .line 625
    :pswitch_9
    const/16 v0, 0xa

    goto :goto_0

    .line 627
    :pswitch_a
    const/16 v0, 0xb

    goto :goto_0

    .line 629
    :pswitch_b
    const/16 v0, 0xe

    goto :goto_0

    .line 631
    :pswitch_c
    const/16 v0, 0xf

    goto :goto_0

    .line 633
    :pswitch_d
    const/16 v0, 0xc

    goto :goto_0

    .line 635
    :pswitch_e
    const/16 v0, 0xd

    goto :goto_0

    .line 637
    :pswitch_f
    const/16 v0, 0x10

    goto :goto_0

    .line 639
    :pswitch_10
    const/16 v0, 0x11

    goto :goto_0

    .line 641
    :pswitch_11
    const/16 v0, 0x12

    goto :goto_0

    .line 603
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 611
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_5
        :pswitch_9
        :pswitch_a
        :pswitch_6
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_7
        :pswitch_e
        :pswitch_11
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public getCurrentConnectionType(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)I
    .locals 3

    .prologue
    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 553
    invoke-virtual {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 554
    const/4 v0, 0x6

    .line 591
    :goto_0
    :pswitch_0
    return v0

    .line 557
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getNetworkType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_1
    move v0, v1

    .line 591
    goto :goto_0

    .line 559
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 561
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 565
    :pswitch_4
    const/4 v0, 0x7

    goto :goto_0

    .line 568
    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getNetworkSubType()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    move v0, v1

    .line 588
    goto :goto_0

    .line 574
    :pswitch_6
    const/4 v0, 0x3

    goto :goto_0

    .line 584
    :pswitch_7
    const/4 v0, 0x4

    goto :goto_0

    .line 557
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 568
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public getCurrentMaxBandwidthInMbps(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)D
    .locals 2

    .prologue
    .line 657
    invoke-virtual {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentConnectionType(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 658
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mWifiManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;

    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->getLinkSpeedInMbps()I

    move-result v0

    .line 659
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 660
    int-to-double v0, v0

    .line 664
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentConnectionSubtype(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)I

    move-result v0

    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifier;->getMaxBandwidthForConnectionSubtype(I)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getCurrentNetworkState()Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getNetworkState()Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultNetId()I
    .locals 2

    .prologue
    .line 543
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 544
    const/4 v0, -0x1

    .line 546
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getDefaultNetId()I

    move-result v0

    goto :goto_0
.end method

.method public getNetworksAndTypes()[I
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 517
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 518
    new-array v0, v2, [I

    .line 533
    :goto_0
    return-object v0

    .line 520
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getAllNetworks()[Landroid/net/Network;

    move-result-object v3

    .line 521
    array-length v0, v3

    shl-int/lit8 v0, v0, 0x1

    new-array v4, v0, [I

    .line 523
    array-length v5, v3

    move v1, v2

    move v0, v2

    :goto_1
    if-ge v1, v5, :cond_2

    aget-object v6, v3, v1

    .line 524
    iget-object v7, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v7, v6}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->hasInternetCapability(Landroid/net/Network;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 527
    add-int/lit8 v7, v0, 0x1

    invoke-static {v6}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->networkToNetId(Landroid/net/Network;)I

    move-result v8

    aput v8, v4, v0

    .line 528
    add-int/lit8 v0, v7, 0x1

    iget-object v8, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v8, v6}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getNetworkState(Landroid/net/Network;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentConnectionType(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)I

    move-result v6

    aput v6, v4, v7

    .line 523
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 531
    :cond_2
    new-array v1, v0, [I

    .line 532
    invoke-static {v4, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 533
    goto :goto_0
.end method

.method getRegistrationPolicy()Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistrationPolicy:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;

    return-object v0
.end method

.method isReceiverRegisteredForTesting()Z
    .locals 1

    .prologue
    .line 455
    iget-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistered:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 676
    invoke-virtual {p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentNetworkState()Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    move-result-object v0

    .line 677
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 678
    invoke-direct {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->connectionTypeChanged(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)V

    .line 679
    invoke-direct {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->maxBandwidthChanged(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)V

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 680
    :cond_1
    const-string/jumbo v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 681
    invoke-direct {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->maxBandwidthChanged(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)V

    goto :goto_0
.end method

.method public register()V
    .locals 4

    .prologue
    .line 467
    iget-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistered:Z

    if-eqz v0, :cond_1

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentNetworkState()Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    move-result-object v0

    .line 470
    invoke-direct {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->connectionTypeChanged(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)V

    .line 471
    invoke-direct {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->maxBandwidthChanged(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)V

    .line 472
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mIntentFilter:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 473
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistered:Z

    .line 475
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    iget-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 482
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    .line 484
    array-length v0, v1

    new-array v2, v0, [I

    .line 485
    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 486
    aget-object v3, v1, v0

    invoke-static {v3}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->networkToNetId(Landroid/net/Network;)I

    move-result v3

    aput v3, v2, v0

    .line 485
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 488
    :cond_2
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mObserver:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    invoke-interface {v0, v2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;->updateActiveNetworkList([I)V

    goto :goto_0
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 496
    iget-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistered:Z

    if-nez v0, :cond_1

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 498
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistered:Z

    .line 499
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    iget-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0
.end method
