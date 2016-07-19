.class public abstract Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;
.super Ljava/lang/Object;
.source "AbstractMediaRouteController.java"

# interfaces
.implements Lorg/chromium/chrome/browser/media/remote/MediaRouteController;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static final CONNECTION_FAILURE_NOTIFICATION_DELAY_MS:J = 0x2710L


# instance fields
.field private final mAvailableRouteListeners:Ljava/util/Set;

.field private final mContext:Landroid/content/Context;

.field private mCurrentRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

.field private mDebug:Z

.field private final mDeviceDiscoveryCallback:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceDiscoveryCallback;

.field private final mDeviceSelectionCallback:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mIsPrepared:Z

.field private mMediaElementAttachedTimestampMs:J

.field private mMediaElementDetachedTimestampMs:J

.field private final mMediaRouteSelector:Landroid/support/v7/media/e;

.field private final mMediaRouter:Landroid/support/v7/media/MediaRouter;

.field private mMediaStateListener:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

.field private mPlaybackState:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

.field private mRoutesAvailable:Z

.field private final mUiListeners:Ljava/util/Set;

.field private mWatchingRouteSelection:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mIsPrepared:Z

    .line 177
    sget-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->FINISHED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mPlaybackState:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    .line 178
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mRoutesAvailable:Z

    .line 180
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mWatchingRouteSelection:Z

    .line 182
    iput-wide v4, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaElementAttachedTimestampMs:J

    .line 183
    iput-wide v4, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaElementDetachedTimestampMs:J

    .line 187
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string/jumbo v2, "enable-cast-debug"

    invoke-virtual {v0, v2}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mDebug:Z

    .line 189
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mContext:Landroid/content/Context;

    .line 190
    sget-boolean v0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 192
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mHandler:Landroid/os/Handler;

    .line 194
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->buildMediaRouteSelector()Landroid/support/v7/media/e;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaRouteSelector:Landroid/support/v7/media/e;

    .line 201
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/media/MediaRouter;->a(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 207
    :goto_0
    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    .line 209
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mAvailableRouteListeners:Ljava/util/Set;

    .line 213
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mUiListeners:Ljava/util/Set;

    .line 215
    new-instance v0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceDiscoveryCallback;

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceDiscoveryCallback;-><init>(Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$1;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mDeviceDiscoveryCallback:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceDiscoveryCallback;

    .line 216
    new-instance v0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;-><init>(Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$1;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mDeviceSelectionCallback:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;

    .line 217
    return-void

    .line 203
    :catch_0
    move-exception v0

    const-string/jumbo v0, "AbstractMediaRouteController"

    const-string/jumbo v2, "Can\'t get an instance of MediaRouter, casting is not supported. Are you still on JB (JVP15S)?"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 205
    goto :goto_0
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mDebug:Z

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;)Landroid/support/v7/media/e;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaRouteSelector:Landroid/support/v7/media/e;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mRoutesAvailable:Z

    return v0
.end method

.method static synthetic access$202(Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;Z)Z
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mRoutesAvailable:Z

    return p1
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mAvailableRouteListeners:Ljava/util/Set;

    return-object v0
.end method

.method private canCastMedia()Z
    .locals 1

    .prologue
    .line 355
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->isRemotePlaybackAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->routeIsDefaultRoute()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->currentRouteSupportsRemotePlayback()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final isAtEndOfVideo(JJ)Z
    .locals 5

    .prologue
    .line 306
    sub-long v0, p3, p1

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCasting()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 469
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mIsPrepared:Z

    if-nez v0, :cond_3

    .line 470
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mUiListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$UiListener;

    .line 471
    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$UiListener;->onPrepared(Lorg/chromium/chrome/browser/media/remote/MediaRouteController;)V

    goto :goto_0

    .line 473
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaStateListener:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    if-eqz v0, :cond_2

    .line 474
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaStateListener:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;->isPauseRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->pause()V

    .line 475
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaStateListener:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;->isSeekRequested()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 476
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaStateListener:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;->getSeekLocation()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->seekTo(J)V

    .line 481
    :cond_2
    :goto_1
    invoke-static {v2}, Lorg/chromium/chrome/browser/media/remote/RecordCastAction;->castDefaultPlayerResult(Z)V

    .line 482
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mIsPrepared:Z

    .line 484
    :cond_3
    return-void

    .line 478
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaStateListener:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;->getLocalPosition()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->seekTo(J)V

    goto :goto_1
.end method

.method private recordEndOfSessionUMA()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 387
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 390
    iget-wide v2, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaElementAttachedTimestampMs:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    .line 406
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-wide v2, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaElementAttachedTimestampMs:J

    sub-long v2, v0, v2

    .line 395
    iget-wide v4, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaElementDetachedTimestampMs:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 396
    iput-wide v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaElementDetachedTimestampMs:J

    .line 399
    :cond_1
    iget-wide v4, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaElementDetachedTimestampMs:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x64

    mul-long/2addr v0, v4

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 402
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/RecordCastAction;->recordRemoteSessionTimeWithoutMediaElementPercentage(I)V

    .line 404
    iput-wide v6, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaElementAttachedTimestampMs:J

    .line 405
    iput-wide v6, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaElementDetachedTimestampMs:J

    goto :goto_0
.end method

.method private startWatchingRouteSelection()V
    .locals 4

    .prologue
    .line 504
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mWatchingRouteSelection:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mediaRouterInitializationFailed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mWatchingRouteSelection:Z

    .line 508
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->getMediaRouter()Landroid/support/v7/media/MediaRouter;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaRouteSelector:Landroid/support/v7/media/e;

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mDeviceSelectionCallback:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/media/MediaRouter;->a(Landroid/support/v7/media/e;Landroid/support/v7/media/g;I)V

    .line 510
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mDebug:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AbstractMediaRouteController"

    const-string/jumbo v1, "Started route selection discovery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addMediaStateListener(Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;)V
    .locals 4

    .prologue
    .line 221
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mediaRouterInitializationFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mAvailableRouteListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->getMediaRouter()Landroid/support/v7/media/MediaRouter;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaRouteSelector:Landroid/support/v7/media/e;

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mDeviceDiscoveryCallback:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceDiscoveryCallback;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/media/MediaRouter;->a(Landroid/support/v7/media/e;Landroid/support/v7/media/g;I)V

    .line 226
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mDebug:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "AbstractMediaRouteController"

    const-string/jumbo v1, "Started device discovery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->getMediaRouter()Landroid/support/v7/media/MediaRouter;

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaRouteSelector:Landroid/support/v7/media/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/media/MediaRouter;->a(Landroid/support/v7/media/e;I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mRoutesAvailable:Z

    .line 232
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mAvailableRouteListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mRoutesAvailable:Z

    invoke-interface {p1, v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;->onRouteAvailabilityChanged(Z)V

    goto :goto_0
.end method

.method public addUiListener(Lorg/chromium/chrome/browser/media/remote/MediaRouteController$UiListener;)V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mUiListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 240
    return-void
.end method

.method public checkIfPlayableRemotely(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaValidationCallback;)V
    .locals 1

    .prologue
    .line 627
    const/4 v0, 0x1

    invoke-interface {p5, v0, p1, p2}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaValidationCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V

    .line 628
    return-void
.end method

.method protected clearConnectionFailureCallback()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mDeviceSelectionCallback:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;

    # invokes: Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;->clearConnectionFailureCallback()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;->access$700(Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;)V

    .line 244
    return-void
.end method

.method protected clearItemState()V
    .locals 1

    .prologue
    .line 250
    sget-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->FINISHED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mPlaybackState:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    .line 251
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->updateTitle(Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method protected clearMediaRoute()V
    .locals 1

    .prologue
    .line 258
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->getMediaRouter()Landroid/support/v7/media/MediaRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->getMediaRouter()Landroid/support/v7/media/MediaRouter;

    invoke-static {}, Landroid/support/v7/media/MediaRouter;->b()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->v()V

    .line 260
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->getMediaRouter()Landroid/support/v7/media/MediaRouter;

    invoke-static {}, Landroid/support/v7/media/MediaRouter;->b()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->registerRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 262
    :cond_0
    return-void
.end method

.method public currentRouteSupportsRemotePlayback()Z
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mCurrentRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mCurrentRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    const-string/jumbo v1, "android.media.intent.category.REMOTE_PLAYBACK"

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected final getCurrentRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mCurrentRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method protected final getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected final getMediaRouter()Landroid/support/v7/media/MediaRouter;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaRouter:Landroid/support/v7/media/MediaRouter;

    return-object v0
.end method

.method public final getMediaStateListener()Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaStateListener:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    return-object v0
.end method

.method public final getPlayerState()Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mPlaybackState:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    return-object v0
.end method

.method public getPoster()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 607
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->getMediaStateListener()Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 608
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->getMediaStateListener()Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;->getPosterBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public final getRouteName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mCurrentRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mCurrentRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final getUiListeners()Ljava/util/Set;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mUiListeners:Ljava/util/Set;

    return-object v0
.end method

.method public getUriPlaying()Ljava/lang/String;
    .locals 1

    .prologue
    .line 632
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isBeingCast()Z
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mPlaybackState:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    sget-object v1, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->INVALIDATED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mPlaybackState:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    sget-object v1, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->ERROR:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mPlaybackState:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    sget-object v1, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->FINISHED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isPlaying()Z
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mPlaybackState:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    sget-object v1, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->PLAYING:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mPlaybackState:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    sget-object v1, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->LOADING:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isRemotePlaybackAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 322
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mediaRouterInitializationFailed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 324
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->getMediaRouter()Landroid/support/v7/media/MediaRouter;

    invoke-static {}, Landroid/support/v7/media/MediaRouter;->c()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->m()I

    move-result v2

    if-eq v2, v1, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->getMediaRouter()Landroid/support/v7/media/MediaRouter;

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaRouteSelector:Landroid/support/v7/media/e;

    invoke-static {v2, v1}, Landroid/support/v7/media/MediaRouter;->a(Landroid/support/v7/media/e;I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected final mediaRouterInitializationFailed()Z
    .locals 1

    .prologue
    .line 330
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->getMediaRouter()Landroid/support/v7/media/MediaRouter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final notifyRouteSelected(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 3

    .prologue
    .line 334
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mUiListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$UiListener;

    .line 335
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$UiListener;->onRouteSelected(Ljava/lang/String;Lorg/chromium/chrome/browser/media/remote/MediaRouteController;)V

    goto :goto_0

    .line 337
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->canCastMedia()Z

    move-result v0

    if-nez v0, :cond_2

    .line 342
    :cond_1
    :goto_1
    return-void

    .line 338
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaStateListener:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaStateListener:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;->pauseLocal()V

    .line 340
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaStateListener:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;->onCastStarting(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->startCastingVideo()V

    goto :goto_1
.end method

.method public onRouteSelected(Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaStateListener:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaStateListener:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;->onCastStopping()V

    .line 370
    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->setMediaStateListener(Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;)V

    .line 371
    invoke-virtual {p0, p2, p3}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->onRouteSelectedEvent(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 372
    return-void
.end method

.method protected onRouteSelectedEvent(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    .prologue
    .line 365
    return-void
.end method

.method protected abstract onRouteUnselectedEvent(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
.end method

.method protected prepareAsync(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 613
    return-void
.end method

.method public prepareMediaRoute()V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->startWatchingRouteSelection()V

    .line 379
    return-void
.end method

.method protected final registerRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 3

    .prologue
    .line 409
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mCurrentRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 411
    if-eqz p1, :cond_0

    .line 412
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mDebug:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AbstractMediaRouteController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Selected route "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_0
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->recordEndOfSessionUMA()V

    .line 384
    return-void
.end method

.method protected removeAllListeners()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mUiListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 418
    return-void
.end method

.method public removeMediaStateListener(Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;)V
    .locals 2

    .prologue
    .line 422
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mediaRouterInitializationFailed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mAvailableRouteListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 425
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mAvailableRouteListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->getMediaRouter()Landroid/support/v7/media/MediaRouter;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mDeviceDiscoveryCallback:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceDiscoveryCallback;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->a(Landroid/support/v7/media/g;)V

    .line 427
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mDebug:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AbstractMediaRouteController"

    const-string/jumbo v1, "Stopped device discovery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeUiListener(Lorg/chromium/chrome/browser/media/remote/MediaRouteController$UiListener;)V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mUiListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 434
    return-void
.end method

.method public routeIsDefaultRoute()Z
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mCurrentRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mCurrentRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected sendErrorToListeners(I)V
    .locals 5

    .prologue
    .line 442
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->cast_error_playing_video:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mCurrentRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v4}, Landroid/support/v7/media/MediaRouter$RouteInfo;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 445
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mUiListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$UiListener;

    .line 446
    invoke-interface {v0, p1, v1}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$UiListener;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 449
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaStateListener:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaStateListener:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;->onError()V

    .line 450
    :cond_1
    return-void
.end method

.method protected setDataSource(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 617
    return-void
.end method

.method public setMediaStateListener(Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 454
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaStateListener:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaElementAttachedTimestampMs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 456
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaElementDetachedTimestampMs:J

    .line 465
    :cond_0
    :goto_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaStateListener:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    .line 466
    return-void

    .line 457
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaStateListener:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 459
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaElementDetachedTimestampMs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->recordEndOfSessionUMA()V

    .line 461
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaElementAttachedTimestampMs:J

    .line 462
    iput-wide v2, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaElementDetachedTimestampMs:J

    goto :goto_0
.end method

.method setPlayerStateForMediaItemState(I)V
    .locals 4

    .prologue
    .line 523
    sget-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->STOPPED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    .line 524
    packed-switch p1, :pswitch_data_0

    .line 557
    :goto_0
    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mPlaybackState:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    .line 558
    return-void

    .line 526
    :pswitch_0
    sget-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->LOADING:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    goto :goto_0

    .line 529
    :pswitch_1
    sget-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->FINISHED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    goto :goto_0

    .line 532
    :pswitch_2
    sget-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->ERROR:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    goto :goto_0

    .line 535
    :pswitch_3
    sget-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->FINISHED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    goto :goto_0

    .line 538
    :pswitch_4
    sget-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->INVALIDATED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    goto :goto_0

    .line 541
    :pswitch_5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->getPosition()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->getDuration()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->isAtEndOfVideo(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    sget-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->FINISHED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    goto :goto_0

    .line 544
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->PAUSED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    goto :goto_0

    .line 548
    :pswitch_6
    sget-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->PAUSED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    goto :goto_0

    .line 551
    :pswitch_7
    sget-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->PLAYING:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    goto :goto_0

    .line 524
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method protected setUnprepared()V
    .locals 1

    .prologue
    .line 487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mIsPrepared:Z

    .line 488
    return-void
.end method

.method public shouldResetState(Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;)Z
    .locals 1

    .prologue
    .line 492
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->isBeingCast()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->getMediaStateListener()Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    move-result-object v0

    if-eq p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected showCastError(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 496
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->cast_error_playing_video:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lorg/chromium/ui/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lorg/chromium/ui/widget/Toast;

    move-result-object v0

    .line 500
    invoke-virtual {v0}, Lorg/chromium/ui/widget/Toast;->show()V

    .line 501
    return-void
.end method

.method protected startCastingVideo()V
    .locals 4

    .prologue
    .line 347
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaStateListener:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;->getSourceUrl()Ljava/lang/String;

    move-result-object v0

    .line 348
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 349
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaStateListener:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;->getCookies()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->setDataSource(Landroid/net/Uri;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaStateListener:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;->getFrameUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaStateListener:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;->getStartPositionMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->prepareAsync(Ljava/lang/String;J)V

    .line 352
    return-void

    .line 348
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method protected stopWatchingRouteSelection()V
    .locals 2

    .prologue
    .line 514
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mWatchingRouteSelection:Z

    .line 515
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->getMediaRouter()Landroid/support/v7/media/MediaRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->getMediaRouter()Landroid/support/v7/media/MediaRouter;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mDeviceSelectionCallback:Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$DeviceSelectionCallback;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->a(Landroid/support/v7/media/g;)V

    .line 517
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mDebug:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AbstractMediaRouteController"

    const-string/jumbo v1, "Stopped route selection discovery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_0
    return-void
.end method

.method protected updateState(I)V
    .locals 4

    .prologue
    .line 561
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mDebug:Z

    if-eqz v0, :cond_0

    .line 562
    const-string/jumbo v0, "AbstractMediaRouteController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateState oldState: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mPlaybackState:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " newState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mPlaybackState:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    .line 566
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->setPlayerStateForMediaItemState(I)V

    .line 568
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mUiListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$UiListener;

    .line 569
    iget-object v3, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mPlaybackState:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    invoke-interface {v0, v1, v3}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$UiListener;->onPlaybackStateChanged(Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;)V

    goto :goto_0

    .line 572
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaStateListener:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mMediaStateListener:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mPlaybackState:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;->onPlaybackStateChanged(Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;)V

    .line 574
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mPlaybackState:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    if-eq v1, v0, :cond_3

    .line 576
    sget-object v0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController$1;->$SwitchMap$org$chromium$chrome$browser$media$remote$RemoteVideoInfo$PlayerState:[I

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mPlaybackState:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 597
    :cond_3
    :goto_1
    return-void

    .line 578
    :pswitch_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->onCasting()V

    goto :goto_1

    .line 581
    :pswitch_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->onCasting()V

    goto :goto_1

    .line 584
    :pswitch_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->release()V

    goto :goto_1

    .line 587
    :pswitch_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->clearItemState()V

    goto :goto_1

    .line 590
    :pswitch_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->sendErrorToListeners(I)V

    .line 591
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->release()V

    goto :goto_1

    .line 576
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected updateTitle(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/AbstractMediaRouteController;->mUiListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$UiListener;

    .line 601
    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$UiListener;->onTitleChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 603
    :cond_0
    return-void
.end method
