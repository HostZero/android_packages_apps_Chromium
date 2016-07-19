.class Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceDiscoveryCallback;
.super Landroid/support/v7/media/g;
.source "AbstractMediaRouteController.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceDiscoveryCallback;->this$0:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;

    invoke-direct {p0}, Landroid/support/v7/media/g;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$1;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceDiscoveryCallback;-><init>(Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;)V

    return-void
.end method

.method private updateRouteAvailability()V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceDiscoveryCallback;->this$0:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mediaRouterInitializationFailed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceDiscoveryCallback;->this$0:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->getMediaRouter()Landroid/support/v7/media/MediaRouter;

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceDiscoveryCallback;->this$0:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;

    # getter for: Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaRouteSelector:Landroid/support/v7/media/e;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->access$100(Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;)Landroid/support/v7/media/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/media/MediaRouter;->a(Landroid/support/v7/media/e;I)Z

    move-result v1

    .line 81
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceDiscoveryCallback;->this$0:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;

    # getter for: Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mRoutesAvailable:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->access$200(Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;)Z

    move-result v0

    if-eq v1, v0, :cond_0

    .line 82
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceDiscoveryCallback;->this$0:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;

    # setter for: Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mRoutesAvailable:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->access$202(Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;Z)Z

    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceDiscoveryCallback;->this$0:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;

    # getter for: Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mDebug:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->access$000(Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    const-string/jumbo v0, "AbstractMediaRouteController"

    const-string/jumbo v2, "Remote media route availability changed, updating listeners"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceDiscoveryCallback;->this$0:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;

    # getter for: Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mAvailableRouteListeners:Ljava/util/Set;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->access$300(Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    .line 87
    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;->onRouteAvailabilityChanged(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onProviderAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/s;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceDiscoveryCallback;->updateRouteAvailability()V

    .line 48
    return-void
.end method

.method public onProviderChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/s;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceDiscoveryCallback;->updateRouteAvailability()V

    .line 54
    return-void
.end method

.method public onProviderRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/s;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceDiscoveryCallback;->updateRouteAvailability()V

    .line 60
    return-void
.end method

.method public onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceDiscoveryCallback;->this$0:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;

    # getter for: Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mDebug:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->access$000(Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AbstractMediaRouteController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Added route "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceDiscoveryCallback;->updateRouteAvailability()V

    .line 66
    return-void
.end method

.method public onRouteRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceDiscoveryCallback;->this$0:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;

    # getter for: Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mDebug:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->access$000(Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string/jumbo v0, "AbstractMediaRouteController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Removed route "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceDiscoveryCallback;->updateRouteAvailability()V

    .line 74
    return-void
.end method
