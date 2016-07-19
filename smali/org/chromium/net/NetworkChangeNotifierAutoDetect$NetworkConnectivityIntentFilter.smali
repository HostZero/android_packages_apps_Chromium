.class Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;
.super Landroid/content/IntentFilter;
.source "NetworkChangeNotifierAutoDetect.java"


# direct methods
.method constructor <init>(Z)V
    .locals 1

    .prologue
    .line 708
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 709
    const-string/jumbo v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;->addAction(Ljava/lang/String;)V

    .line 710
    if-eqz p1, :cond_0

    const-string/jumbo v0, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;->addAction(Ljava/lang/String;)V

    .line 711
    :cond_0
    return-void
.end method
