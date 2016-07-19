.class Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;
.super Landroid/support/v7/media/g;
.source "AbstractMediaRouteController.java"


# instance fields
.field private mConnectionFailureNotifier:Ljava/lang/Runnable;

.field private mConnectionFailureNotifierQueued:Z

.field final synthetic this$0:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;)V
    .locals 1

    .prologue
    .line 97
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;->this$0:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;

    invoke-direct {p0}, Landroid/support/v7/media/g;-><init>()V

    .line 102
    new-instance v0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback$1;-><init>(Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;->mConnectionFailureNotifier:Ljava/lang/Runnable;

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;->mConnectionFailureNotifierQueued:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$1;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;-><init>(Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;)V

    return-void
.end method

.method static synthetic access$402(Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;Z)Z
    .locals 0

    .prologue
    .line 97
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;->mConnectionFailureNotifierQueued:Z

    return p1
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;->clearConnectionFailureCallback()V

    return-void
.end method

.method private clearConnectionFailureCallback()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;->this$0:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;->mConnectionFailureNotifier:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;->mConnectionFailureNotifierQueued:Z

    .line 116
    return-void
.end method


# virtual methods
.method public onRouteChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;->this$0:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->getCurrentRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;->mConnectionFailureNotifierQueued:Z

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;->mConnectionFailureNotifierQueued:Z

    .line 127
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;->this$0:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;->mConnectionFailureNotifier:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 134
    :cond_2
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;->mConnectionFailureNotifierQueued:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;->this$0:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;->mConnectionFailureNotifier:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;->mConnectionFailureNotifierQueued:Z

    goto :goto_0
.end method

.method public onRouteUnselected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 6

    .prologue
    .line 144
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;->this$0:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->onRouteUnselectedEvent(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 145
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;->this$0:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->getCurrentRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;->this$0:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->getCurrentRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;->this$0:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->getCurrentRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;->this$0:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->getDuration()J

    move-result-wide v0

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;->this$0:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->getDuration()J

    move-result-wide v2

    iget-object v4, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;->this$0:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/media/remote/RecordCastAction;->castEndedTimeRemaining(JJ)V

    .line 149
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;->this$0:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->release()V

    .line 151
    :cond_0
    return-void
.end method
