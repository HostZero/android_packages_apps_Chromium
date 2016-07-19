.class public Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;
.super Ljava/lang/Object;
.source "CastMediaRouteProvider.java"

# interfaces
.implements Lorg/chromium/chrome/browser/media/router/DiscoveryDelegate;
.implements Lorg/chromium/chrome/browser/media/router/MediaRouteProvider;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAndroidMediaRouter:Landroid/support/v7/media/MediaRouter;

.field private final mApplicationContext:Landroid/content/Context;

.field private final mClientRecords:Ljava/util/Map;

.field private final mDiscoveryCallbacks:Ljava/util/Map;

.field private mHandler:Landroid/os/Handler;

.field private mLastRemovedRouteRecord:Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;

.field private final mManager:Lorg/chromium/chrome/browser/media/router/MediaRouteManager;

.field private final mMessageHandler:Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;

.field private mPendingCreateRouteRequest:Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;

.field private final mRoutes:Ljava/util/Map;

.field private mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/support/v7/media/MediaRouter;Lorg/chromium/chrome/browser/media/router/MediaRouteManager;)V
    .locals 1

    .prologue
    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mDiscoveryCallbacks:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mRoutes:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mClientRecords:Ljava/util/Map;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mHandler:Landroid/os/Handler;

    .line 471
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mApplicationContext:Landroid/content/Context;

    .line 472
    iput-object p2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mAndroidMediaRouter:Landroid/support/v7/media/MediaRouter;

    .line 473
    iput-object p3, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mManager:Lorg/chromium/chrome/browser/media/router/MediaRouteManager;

    .line 474
    new-instance v0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;-><init>(Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mMessageHandler:Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;

    .line 475
    return-void
.end method

.method private addRoute(Lorg/chromium/chrome/browser/media/router/MediaRoute;Ljava/lang/String;I)V
    .locals 8

    .prologue
    .line 528
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mRoutes:Ljava/util/Map;

    iget-object v1, p1, Lorg/chromium/chrome/browser/media/router/MediaRoute;->id:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    iget-object v0, p1, Lorg/chromium/chrome/browser/media/router/MediaRoute;->sourceId:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->from(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/cast/MediaSource;

    move-result-object v4

    .line 531
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->getClientId()Ljava/lang/String;

    move-result-object v2

    .line 533
    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mClientRecords:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    iget-object v7, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mClientRecords:Ljava/util/Map;

    new-instance v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;

    iget-object v1, p1, Lorg/chromium/chrome/browser/media/router/MediaRoute;->id:Ljava/lang/String;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->getAutoJoinPolicy()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private buildInternalMessage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 453
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 454
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 455
    const-string/jumbo v1, "sequenceNumber"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 456
    const-string/jumbo v1, "timeoutMillis"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 457
    const-string/jumbo v1, "clientId"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 458
    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 459
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private canAutoJoin(Lorg/chromium/chrome/browser/media/router/cast/MediaSource;Ljava/lang/String;I)Z
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 479
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->getAutoJoinPolicy()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "page_scoped"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 500
    :goto_0
    return v0

    .line 481
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/router/cast/CastSession;->getSourceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->from(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/cast/MediaSource;

    move-result-object v0

    .line 482
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 484
    :cond_1
    const/4 v0, 0x0

    .line 485
    iget-object v3, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mClientRecords:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 486
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mClientRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;

    .line 492
    :cond_2
    if-nez v0, :cond_5

    move v0, v1

    goto :goto_0

    .line 487
    :cond_3
    iget-object v3, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mLastRemovedRouteRecord:Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;

    if-eqz v3, :cond_2

    .line 488
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mLastRemovedRouteRecord:Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;

    .line 489
    iget-object v3, v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->origin:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v0, v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->tabId:I

    if-ne p3, v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 494
    :cond_5
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->getAutoJoinPolicy()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "origin_scoped"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 495
    iget-object v0, v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->origin:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 496
    :cond_6
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->getAutoJoinPolicy()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "tab_and_origin_scoped"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 497
    iget-object v3, v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->origin:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget v0, v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->tabId:I

    if-ne p3, v0, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    move v0, v1

    .line 500
    goto :goto_0
.end method

.method private canJoinExistingSession(Ljava/lang/String;Ljava/lang/String;ILorg/chromium/chrome/browser/media/router/cast/MediaSource;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 505
    const-string/jumbo v0, "auto-join"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    invoke-direct {p0, p4, p2, p3}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->canAutoJoin(Lorg/chromium/chrome/browser/media/router/cast/MediaSource;Ljava/lang/String;I)Z

    move-result v0

    .line 516
    :goto_0
    return v0

    .line 507
    :cond_0
    const-string/jumbo v0, "cast-session_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 510
    iget-object v2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    invoke-interface {v2}, Lorg/chromium/chrome/browser/media/router/cast/CastSession;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    .line 512
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mRoutes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/router/MediaRoute;

    .line 513
    iget-object v0, v0, Lorg/chromium/chrome/browser/media/router/MediaRoute;->presentationId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 516
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;Lorg/chromium/chrome/browser/media/router/MediaRouteManager;)Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 96
    sget-boolean v0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 97
    :cond_0
    invoke-static {p0}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->getAndroidMediaRouter(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;

    move-result-object v1

    .line 99
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;

    invoke-direct {v0, p0, v1, p1}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;-><init>(Landroid/content/Context;Landroid/support/v7/media/MediaRouter;Lorg/chromium/chrome/browser/media/router/MediaRouteManager;)V

    goto :goto_0
.end method

.method static createCastMediaRouteProviderForTest(Landroid/content/Context;Landroid/support/v7/media/MediaRouter;Lorg/chromium/chrome/browser/media/router/MediaRouteManager;)Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;
    .locals 1

    .prologue
    .line 465
    new-instance v0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;-><init>(Landroid/content/Context;Landroid/support/v7/media/MediaRouter;Lorg/chromium/chrome/browser/media/router/MediaRouteManager;)V

    return-object v0
.end method

.method private getClientRecordByRouteId(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 521
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mClientRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;

    .line 522
    iget-object v2, v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->routeId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 524
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleClientConnectMessage(Lorg/json/JSONObject;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 388
    const-string/jumbo v0, "clientId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 389
    if-nez v3, :cond_0

    move v0, v1

    .line 404
    :goto_0
    return v0

    .line 391
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mClientRecords:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;

    .line 392
    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 394
    :cond_1
    iput-boolean v2, v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->isConnected:Z

    .line 395
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    invoke-interface {v1, v3}, Lorg/chromium/chrome/browser/media/router/cast/CastSession;->onClientConnected(Ljava/lang/String;)V

    .line 397
    :cond_2
    iget-object v1, v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->pendingMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    move v0, v2

    goto :goto_0

    .line 398
    :cond_3
    iget-object v1, v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->pendingMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 400
    iget-object v4, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mManager:Lorg/chromium/chrome/browser/media/router/MediaRouteManager;

    iget-object v5, v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->routeId:Ljava/lang/String;

    invoke-interface {v4, v5, v1}, Lorg/chromium/chrome/browser/media/router/MediaRouteManager;->onMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 402
    :cond_4
    iget-object v0, v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->pendingMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v0, v2

    .line 404
    goto :goto_0
.end method

.method private handleClientDisconnectMessage(Lorg/json/JSONObject;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 408
    const-string/jumbo v0, "clientId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    if-nez v0, :cond_0

    move v0, v1

    .line 419
    :goto_0
    return v0

    .line 411
    :cond_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mClientRecords:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;

    .line 412
    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 414
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mRoutes:Ljava/util/Map;

    iget-object v2, v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->routeId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->removeClient(Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;)V

    .line 417
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mManager:Lorg/chromium/chrome/browser/media/router/MediaRouteManager;

    iget-object v0, v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->routeId:Ljava/lang/String;

    invoke-interface {v1, v0}, Lorg/chromium/chrome/browser/media/router/MediaRouteManager;->onRouteClosed(Ljava/lang/String;)V

    .line 419
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleLeaveSessionMessage(Lorg/json/JSONObject;)Z
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 423
    const-string/jumbo v0, "clientId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 424
    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 448
    :goto_0
    return v0

    .line 426
    :cond_1
    const-string/jumbo v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 427
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/router/cast/CastSession;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 429
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mClientRecords:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;

    .line 430
    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    .line 432
    :cond_3
    const-string/jumbo v1, "sequenceNumber"

    invoke-virtual {p1, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 433
    const-string/jumbo v4, "leave_session"

    const/4 v5, 0x0

    invoke-direct {p0, v4, v1, v2, v5}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->buildInternalMessage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->onMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mClientRecords:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;

    .line 438
    const-string/jumbo v4, "tab_and_origin_scoped"

    iget-object v5, v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->autoJoinPolicy:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v1, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->origin:Ljava/lang/String;

    iget-object v5, v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->origin:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, v1, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->tabId:I

    iget v5, v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->tabId:I

    if-eq v4, v5, :cond_6

    :cond_5
    const-string/jumbo v4, "origin_scoped"

    iget-object v5, v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->autoJoinPolicy:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v1, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->origin:Ljava/lang/String;

    iget-object v5, v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->origin:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 443
    :cond_6
    iget-object v4, v1, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->clientId:Ljava/lang/String;

    const-string/jumbo v5, "disconnect_session"

    iget-object v1, v1, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->clientId:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v1, v3}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->buildInternalMessage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->onMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 448
    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private launchSession(Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;)V
    .locals 8

    .prologue
    .line 276
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->getSink()Lorg/chromium/chrome/browser/media/router/cast/MediaSink;

    move-result-object v6

    .line 277
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->getSource()Lorg/chromium/chrome/browser/media/router/cast/MediaSource;

    move-result-object v7

    .line 279
    new-instance v2, Lorg/chromium/chrome/browser/media/router/MediaRoute;

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->getUrn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->getPresentationId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lorg/chromium/chrome/browser/media/router/MediaRoute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->getOrigin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->getTabId()I

    move-result v1

    invoke-direct {p0, v2, v0, v1}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->addRoute(Lorg/chromium/chrome/browser/media/router/MediaRoute;Ljava/lang/String;I)V

    .line 282
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mManager:Lorg/chromium/chrome/browser/media/router/MediaRouteManager;

    iget-object v1, v2, Lorg/chromium/chrome/browser/media/router/MediaRoute;->id:Ljava/lang/String;

    iget-object v2, v2, Lorg/chromium/chrome/browser/media/router/MediaRoute;->sinkId:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->getNativeRequestId()I

    move-result v3

    const/4 v5, 0x1

    move-object v4, p0

    invoke-interface/range {v0 .. v5}, Lorg/chromium/chrome/browser/media/router/MediaRouteManager;->onRouteCreated(Ljava/lang/String;Ljava/lang/String;ILorg/chromium/chrome/browser/media/router/MediaRouteProvider;Z)V

    .line 284
    invoke-virtual {v7}, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->getClientId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mClientRecords:Ljava/util/Map;

    invoke-virtual {v7}, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;

    .line 286
    if-eqz v0, :cond_0

    .line 287
    iget-object v0, v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->routeId:Ljava/lang/String;

    invoke-virtual {v7}, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->getClientId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "cast"

    invoke-direct {p0, v0, v6, v1, v2}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->sendReceiverAction(Ljava/lang/String;Lorg/chromium/chrome/browser/media/router/cast/MediaSink;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;->start(Landroid/content/Context;)V

    .line 291
    return-void
.end method

.method private removeClient(Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;)V
    .locals 2

    .prologue
    .line 576
    if-nez p1, :cond_0

    .line 580
    :goto_0
    return-void

    .line 578
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mLastRemovedRouteRecord:Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;

    .line 579
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mClientRecords:Ljava/util/Map;

    iget-object v1, p1, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->clientId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private sendReceiverAction(Ljava/lang/String;Lorg/chromium/chrome/browser/media/router/cast/MediaSink;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 549
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 550
    const-string/jumbo v1, "label"

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 551
    const-string/jumbo v1, "friendlyName"

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 552
    const-string/jumbo v1, "capabilities"

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;->getDevice()Lcom/google/android/gms/cast/CastDevice;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->getCapabilities(Lcom/google/android/gms/cast/CastDevice;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 553
    const-string/jumbo v1, "volume"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 554
    const-string/jumbo v1, "isActiveInput"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 555
    const-string/jumbo v1, "displayStatus"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 556
    const-string/jumbo v1, "receiverType"

    const-string/jumbo v2, "cast"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 558
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 559
    const-string/jumbo v2, "receiver"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 560
    const-string/jumbo v0, "action"

    invoke-virtual {v1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 562
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 563
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "receiver_action"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 564
    const-string/jumbo v2, "sequenceNumber"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 565
    const-string/jumbo v2, "timeoutMillis"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 566
    const-string/jumbo v2, "clientId"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 567
    const-string/jumbo v2, "message"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 569
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->onMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :goto_0
    return-void

    .line 570
    :catch_0
    move-exception v0

    .line 571
    const-string/jumbo v1, "MediaRouter"

    const-string/jumbo v2, "Failed to send receiver action message"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public closeRoute(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 319
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mRoutes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/router/MediaRoute;

    .line 321
    if-nez v0, :cond_0

    .line 335
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    if-nez v0, :cond_1

    .line 324
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mRoutes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 328
    :cond_1
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->getClientRecordByRouteId(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_2

    .line 330
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/media/router/cast/CastSession;->getSinkId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mAndroidMediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;->fromSinkId(Ljava/lang/String;Landroid/support/v7/media/MediaRouter;)Lorg/chromium/chrome/browser/media/router/cast/MediaSink;

    move-result-object v1

    .line 331
    if-eqz v1, :cond_2

    iget-object v0, v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->clientId:Ljava/lang/String;

    const-string/jumbo v2, "stop"

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->sendReceiverAction(Ljava/lang/String;Lorg/chromium/chrome/browser/media/router/cast/MediaSink;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/router/cast/CastSession;->stopApplication()V

    goto :goto_0
.end method

.method public createRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8

    .prologue
    .line 245
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mAndroidMediaRouter:Landroid/support/v7/media/MediaRouter;

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mManager:Lorg/chromium/chrome/browser/media/router/MediaRouteManager;

    const-string/jumbo v1, "Not supported"

    invoke-interface {v0, v1, p6}, Lorg/chromium/chrome/browser/media/router/MediaRouteManager;->onRouteRequestError(Ljava/lang/String;I)V

    .line 273
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mAndroidMediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-static {p2, v0}, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;->fromSinkId(Ljava/lang/String;Landroid/support/v7/media/MediaRouter;)Lorg/chromium/chrome/browser/media/router/cast/MediaSink;

    move-result-object v2

    .line 251
    if-nez v2, :cond_1

    .line 252
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mManager:Lorg/chromium/chrome/browser/media/router/MediaRouteManager;

    const-string/jumbo v1, "No sink"

    invoke-interface {v0, v1, p6}, Lorg/chromium/chrome/browser/media/router/MediaRouteManager;->onRouteRequestError(Ljava/lang/String;I)V

    goto :goto_0

    .line 256
    :cond_1
    invoke-static {p1}, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->from(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/cast/MediaSource;

    move-result-object v1

    .line 257
    if-nez v1, :cond_2

    .line 258
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mManager:Lorg/chromium/chrome/browser/media/router/MediaRouteManager;

    const-string/jumbo v1, "Unsupported presentation URL"

    invoke-interface {v0, v1, p6}, Lorg/chromium/chrome/browser/media/router/MediaRouteManager;->onRouteRequestError(Ljava/lang/String;I)V

    goto :goto_0

    .line 262
    :cond_2
    new-instance v0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;-><init>(Lorg/chromium/chrome/browser/media/router/cast/MediaSource;Lorg/chromium/chrome/browser/media/router/cast/MediaSink;Ljava/lang/String;Ljava/lang/String;IILorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;)V

    .line 266
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    if-eqz v1, :cond_3

    .line 267
    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mPendingCreateRouteRequest:Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;

    .line 268
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/router/cast/CastSession;->stopApplication()V

    goto :goto_0

    .line 272
    :cond_3
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->launchSession(Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;)V

    goto :goto_0
.end method

.method public detachRoute(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mRoutes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->getClientRecordByRouteId(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->removeClient(Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;)V

    .line 342
    return-void
.end method

.method public getClientRecords()Ljava/util/Map;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mClientRecords:Ljava/util/Map;

    return-object v0
.end method

.method public getClients()Ljava/util/Set;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mClientRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getMessageHandler()Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mMessageHandler:Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;

    return-object v0
.end method

.method public joinRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    .prologue
    .line 296
    invoke-static {p1}, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->from(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/cast/MediaSource;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->getClientId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 298
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mManager:Lorg/chromium/chrome/browser/media/router/MediaRouteManager;

    const-string/jumbo v1, "Unsupported presentation URL"

    invoke-interface {v0, v1, p5}, Lorg/chromium/chrome/browser/media/router/MediaRouteManager;->onRouteRequestError(Ljava/lang/String;I)V

    .line 315
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    if-nez v1, :cond_2

    .line 303
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mManager:Lorg/chromium/chrome/browser/media/router/MediaRouteManager;

    const-string/jumbo v1, "No presentation"

    invoke-interface {v0, v1, p5}, Lorg/chromium/chrome/browser/media/router/MediaRouteManager;->onRouteRequestError(Ljava/lang/String;I)V

    goto :goto_0

    .line 307
    :cond_2
    invoke-direct {p0, p2, p3, p4, v0}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->canJoinExistingSession(Ljava/lang/String;Ljava/lang/String;ILorg/chromium/chrome/browser/media/router/cast/MediaSource;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 308
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mManager:Lorg/chromium/chrome/browser/media/router/MediaRouteManager;

    const-string/jumbo v1, "No matching route"

    invoke-interface {v0, v1, p5}, Lorg/chromium/chrome/browser/media/router/MediaRouteManager;->onRouteRequestError(Ljava/lang/String;I)V

    goto :goto_0

    .line 312
    :cond_3
    new-instance v2, Lorg/chromium/chrome/browser/media/router/MediaRoute;

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/router/cast/CastSession;->getSinkId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1, p2}, Lorg/chromium/chrome/browser/media/router/MediaRoute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-direct {p0, v2, p3, p4}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->addRoute(Lorg/chromium/chrome/browser/media/router/MediaRoute;Ljava/lang/String;I)V

    .line 314
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mManager:Lorg/chromium/chrome/browser/media/router/MediaRouteManager;

    iget-object v1, v2, Lorg/chromium/chrome/browser/media/router/MediaRoute;->id:Ljava/lang/String;

    iget-object v2, v2, Lorg/chromium/chrome/browser/media/router/MediaRoute;->sinkId:Ljava/lang/String;

    const/4 v5, 0x0

    move v3, p5

    move-object v4, p0

    invoke-interface/range {v0 .. v5}, Lorg/chromium/chrome/browser/media/router/MediaRouteManager;->onRouteCreated(Ljava/lang/String;Ljava/lang/String;ILorg/chromium/chrome/browser/media/router/MediaRouteProvider;Z)V

    goto :goto_0
.end method

.method public onMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mClientRecords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;

    .line 150
    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-boolean v1, v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->isConnected:Z

    if-nez v1, :cond_1

    .line 154
    iget-object v0, v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->pendingMessages:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mManager:Lorg/chromium/chrome/browser/media/router/MediaRouteManager;

    iget-object v0, v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->routeId:Ljava/lang/String;

    invoke-interface {v1, v0, p2}, Lorg/chromium/chrome/browser/media/router/MediaRouteManager;->onMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRouteRequestError(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mManager:Lorg/chromium/chrome/browser/media/router/MediaRouteManager;

    invoke-interface {v0, p1, p2}, Lorg/chromium/chrome/browser/media/router/MediaRouteManager;->onRouteRequestError(Ljava/lang/String;I)V

    .line 106
    return-void
.end method

.method public onSessionClosed()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 120
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    if-nez v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mClientRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mRoutes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 134
    :goto_1
    iput-object v4, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    .line 136
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mPendingCreateRouteRequest:Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;

    if-eqz v0, :cond_4

    .line 137
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mPendingCreateRouteRequest:Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->launchSession(Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;)V

    .line 138
    iput-object v4, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mPendingCreateRouteRequest:Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;

    goto :goto_0

    .line 125
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mClientRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mLastRemovedRouteRecord:Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;

    .line 126
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mClientRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;

    .line 127
    iget-object v2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mManager:Lorg/chromium/chrome/browser/media/router/MediaRouteManager;

    iget-object v3, v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->routeId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/chromium/chrome/browser/media/router/MediaRouteManager;->onRouteClosed(Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mRoutes:Ljava/util/Map;

    iget-object v0, v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->routeId:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 131
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mClientRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_1

    .line 139
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mAndroidMediaRouter:Landroid/support/v7/media/MediaRouter;

    if-eqz v0, :cond_0

    .line 140
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->b()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/media/MediaRouter;->a(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0
.end method

.method public onSessionCreated(Lorg/chromium/chrome/browser/media/router/cast/CastSession;)V
    .locals 2

    .prologue
    .line 115
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    .line 116
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mMessageHandler:Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->onSessionCreated(Lorg/chromium/chrome/browser/media/router/cast/CastSession;)V

    .line 117
    return-void
.end method

.method public onSessionStopAction()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    if-nez v0, :cond_1

    .line 112
    :cond_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mRoutes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->closeRoute(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSinksReceived(Ljava/lang/String;Ljava/util/List;)V
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider$OnSinksReceivedRunnable;

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mManager:Lorg/chromium/chrome/browser/media/router/MediaRouteManager;

    invoke-direct {v1, v2, p0, p1, p2}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider$OnSinksReceivedRunnable;-><init>(Lorg/chromium/chrome/browser/media/router/MediaRouteManager;Lorg/chromium/chrome/browser/media/router/MediaRouteProvider;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 177
    return-void
.end method

.method public sendBinaryMessage(Ljava/lang/String;[BI)V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mManager:Lorg/chromium/chrome/browser/media/router/MediaRouteManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p3}, Lorg/chromium/chrome/browser/media/router/MediaRouteManager;->onMessageSentResult(ZI)V

    .line 385
    return-void
.end method

.method public sendStringMessage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 348
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mRoutes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 349
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mManager:Lorg/chromium/chrome/browser/media/router/MediaRouteManager;

    invoke-interface {v1, v0, p3}, Lorg/chromium/chrome/browser/media/router/MediaRouteManager;->onMessageSentResult(ZI)V

    .line 376
    :goto_0
    return-void

    .line 355
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 357
    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 361
    const-string/jumbo v3, "client_connect"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 362
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->handleClientConnectMessage(Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 375
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mManager:Lorg/chromium/chrome/browser/media/router/MediaRouteManager;

    invoke-interface {v1, v0, p3}, Lorg/chromium/chrome/browser/media/router/MediaRouteManager;->onMessageSentResult(ZI)V

    goto :goto_0

    .line 363
    :cond_2
    :try_start_1
    const-string/jumbo v3, "client_disconnect"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 364
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->handleClientDisconnectMessage(Lorg/json/JSONObject;)Z

    move-result v0

    goto :goto_1

    .line 365
    :cond_3
    const-string/jumbo v3, "leave_session"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 366
    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->handleLeaveSessionMessage(Lorg/json/JSONObject;)Z

    move-result v0

    goto :goto_1

    .line 367
    :cond_4
    iget-object v2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    if-eqz v2, :cond_1

    .line 368
    iget-object v2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mMessageHandler:Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;

    invoke-virtual {v2, v1}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->handleSessionMessage(Lorg/json/JSONObject;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_1

    .line 370
    :catch_0
    move-exception v1

    .line 371
    const-string/jumbo v2, "MediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "JSONException while handling internal message: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public startObservingMediaSinks(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 186
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mAndroidMediaRouter:Landroid/support/v7/media/MediaRouter;

    if-nez v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-static {p1}, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->from(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/cast/MediaSource;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_0

    .line 194
    :try_start_0
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->buildRouteSelector()Landroid/support/v7/media/e;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 201
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    .line 202
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mDiscoveryCallbacks:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/router/cast/DiscoveryCallback;

    .line 203
    if-eqz v0, :cond_2

    .line 204
    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/media/router/cast/DiscoveryCallback;->addSourceUrn(Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->onSinksReceived(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 208
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 209
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 210
    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->a(Landroid/support/v7/media/e;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 211
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;->fromRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)Lorg/chromium/chrome/browser/media/router/cast/MediaSink;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 215
    :cond_4
    new-instance v0, Lorg/chromium/chrome/browser/media/router/cast/DiscoveryCallback;

    invoke-direct {v0, p1, v3, p0}, Lorg/chromium/chrome/browser/media/router/cast/DiscoveryCallback;-><init>(Ljava/lang/String;Ljava/util/List;Lorg/chromium/chrome/browser/media/router/DiscoveryDelegate;)V

    .line 216
    iget-object v3, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mAndroidMediaRouter:Landroid/support/v7/media/MediaRouter;

    const/4 v4, 0x4

    invoke-virtual {v3, v1, v0, v4}, Landroid/support/v7/media/MediaRouter;->a(Landroid/support/v7/media/e;Landroid/support/v7/media/g;I)V

    .line 220
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mDiscoveryCallbacks:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public stopObservingMediaSinks(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mAndroidMediaRouter:Landroid/support/v7/media/MediaRouter;

    if-nez v0, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    invoke-static {p1}, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->from(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/cast/MediaSource;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 231
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mDiscoveryCallbacks:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/router/cast/DiscoveryCallback;

    .line 232
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/media/router/cast/DiscoveryCallback;->removeSourceUrn(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/router/cast/DiscoveryCallback;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    iget-object v2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mAndroidMediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v2, v0}, Landroid/support/v7/media/MediaRouter;->a(Landroid/support/v7/media/g;)V

    .line 238
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->mDiscoveryCallbacks:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public supportsSource(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 181
    invoke-static {p1}, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->from(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/cast/MediaSource;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
