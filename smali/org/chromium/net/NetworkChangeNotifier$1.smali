.class Lorg/chromium/net/NetworkChangeNotifier$1;
.super Ljava/lang/Object;
.source "NetworkChangeNotifier.java"

# interfaces
.implements Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;


# instance fields
.field final synthetic this$0:Lorg/chromium/net/NetworkChangeNotifier;


# direct methods
.method constructor <init>(Lorg/chromium/net/NetworkChangeNotifier;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifier$1;->this$0:Lorg/chromium/net/NetworkChangeNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionTypeChanged(I)V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier$1;->this$0:Lorg/chromium/net/NetworkChangeNotifier;

    # invokes: Lorg/chromium/net/NetworkChangeNotifier;->updateCurrentConnectionType(I)V
    invoke-static {v0, p1}, Lorg/chromium/net/NetworkChangeNotifier;->access$000(Lorg/chromium/net/NetworkChangeNotifier;I)V

    .line 195
    return-void
.end method

.method public onMaxBandwidthChanged(D)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier$1;->this$0:Lorg/chromium/net/NetworkChangeNotifier;

    # invokes: Lorg/chromium/net/NetworkChangeNotifier;->updateCurrentMaxBandwidth(D)V
    invoke-static {v0, p1, p2}, Lorg/chromium/net/NetworkChangeNotifier;->access$100(Lorg/chromium/net/NetworkChangeNotifier;D)V

    .line 199
    return-void
.end method

.method public onNetworkConnect(II)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier$1;->this$0:Lorg/chromium/net/NetworkChangeNotifier;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/net/NetworkChangeNotifier;->notifyObserversOfNetworkConnect(II)V

    .line 203
    return-void
.end method

.method public onNetworkDisconnect(I)V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier$1;->this$0:Lorg/chromium/net/NetworkChangeNotifier;

    invoke-virtual {v0, p1}, Lorg/chromium/net/NetworkChangeNotifier;->notifyObserversOfNetworkDisconnect(I)V

    .line 211
    return-void
.end method

.method public onNetworkSoonToDisconnect(I)V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier$1;->this$0:Lorg/chromium/net/NetworkChangeNotifier;

    invoke-virtual {v0, p1}, Lorg/chromium/net/NetworkChangeNotifier;->notifyObserversOfNetworkSoonToDisconnect(I)V

    .line 207
    return-void
.end method

.method public updateActiveNetworkList([I)V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier$1;->this$0:Lorg/chromium/net/NetworkChangeNotifier;

    invoke-virtual {v0, p1}, Lorg/chromium/net/NetworkChangeNotifier;->notifyObserversToUpdateActiveNetworkList([I)V

    .line 215
    return-void
.end method
