.class public Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;
.super Ljava/lang/Object;
.source "CastMessageHandler.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final GAMES_NAMESPACE:Ljava/lang/String; = "urn:x-cast:com.google.cast.games"

.field private static final INIT_LOCK:Ljava/lang/Object;

.field static final INVALID_SEQUENCE_NUMBER:I = -0x1

.field private static final MEDIA_MESSAGE_TYPES:[Ljava/lang/String;

.field static final MEDIA_NAMESPACE:Ljava/lang/String; = "urn:x-cast:com.google.cast.media"

.field private static final MEDIA_SUPPORTED_COMMANDS:[Ljava/lang/String;

.field private static sMediaOverloadedMessageTypes:Ljava/util/Map;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mRequests:Landroid/util/SparseArray;

.field private final mRouteProvider:Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;

.field private mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

.field private mStopRequests:Landroid/support/v4/g/a;

.field private mVolumeRequests:Ljava/util/Queue;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 29
    const-class v0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->$assertionsDisabled:Z

    .line 37
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "PLAY"

    aput-object v3, v0, v2

    const-string/jumbo v3, "LOAD"

    aput-object v3, v0, v1

    const-string/jumbo v3, "PAUSE"

    aput-object v3, v0, v5

    const-string/jumbo v3, "SEEK"

    aput-object v3, v0, v6

    const-string/jumbo v3, "STOP_MEDIA"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string/jumbo v4, "MEDIA_SET_VOLUME"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "MEDIA_GET_STATUS"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "EDIT_TRACKS_INFO"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "QUEUE_LOAD"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "QUEUE_INSERT"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "QUEUE_UPDATE"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "QUEUE_REMOVE"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "QUEUE_REORDER"

    aput-object v4, v0, v3

    sput-object v0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->MEDIA_MESSAGE_TYPES:[Ljava/lang/String;

    .line 53
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v3, "pause"

    aput-object v3, v0, v2

    const-string/jumbo v2, "seek"

    aput-object v2, v0, v1

    const-string/jumbo v1, "stream_volume"

    aput-object v1, v0, v5

    const-string/jumbo v1, "stream_mute"

    aput-object v1, v0, v6

    sput-object v0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->MEDIA_SUPPORTED_COMMANDS:[Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->INIT_LOCK:Ljava/lang/Object;

    return-void

    :cond_0
    move v0, v2

    .line 29
    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;)V
    .locals 4

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    .line 99
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mRouteProvider:Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;

    .line 100
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mRequests:Landroid/util/SparseArray;

    .line 101
    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mStopRequests:Landroid/support/v4/g/a;

    .line 102
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mVolumeRequests:Ljava/util/Queue;

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mHandler:Landroid/os/Handler;

    .line 105
    sget-object v1, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_0
    sget-object v0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->sMediaOverloadedMessageTypes:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 108
    sput-object v0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->sMediaOverloadedMessageTypes:Ljava/util/Map;

    const-string/jumbo v2, "STOP_MEDIA"

    const-string/jumbo v3, "STOP"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->sMediaOverloadedMessageTypes:Ljava/util/Map;

    const-string/jumbo v2, "MEDIA_SET_VOLUME"

    const-string/jumbo v3, "SET_VOLUME"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->sMediaOverloadedMessageTypes:Ljava/util/Map;

    const-string/jumbo v2, "MEDIA_GET_STATUS"

    const-string/jumbo v3, "GET_STATUS"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getMediaMessageTypesForTest()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->MEDIA_MESSAGE_TYPES:[Ljava/lang/String;

    return-object v0
.end method

.method static getMediaOverloadedMessageTypesForTest()Ljava/util/Map;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->sMediaOverloadedMessageTypes:Ljava/util/Map;

    return-object v0
.end method

.method private static removeNullFields(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 589
    instance-of v1, p0, Lorg/json/JSONArray;

    if-eqz v1, :cond_0

    .line 590
    check-cast p0, Lorg/json/JSONArray;

    .line 591
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->removeNullFields(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 592
    :cond_0
    instance-of v1, p0, Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 593
    check-cast p0, Lorg/json/JSONObject;

    .line 594
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v1

    .line 595
    if-nez v1, :cond_2

    .line 605
    :cond_1
    return-void

    .line 596
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 597
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 598
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 599
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 596
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 601
    :cond_3
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->removeNullFields(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private sanitizeMediaStatusMessage(Lorg/json/JSONObject;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 563
    const-string/jumbo v0, "sessionId"

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    invoke-interface {v2}, Lorg/chromium/chrome/browser/media/router/cast/CastSession;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 565
    const-string/jumbo v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v0, v1

    .line 566
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 567
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 568
    const-string/jumbo v2, "sessionId"

    iget-object v5, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    invoke-interface {v5}, Lorg/chromium/chrome/browser/media/router/cast/CastSession;->getSessionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 569
    const-string/jumbo v2, "supportedMediaCommands"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 571
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 572
    const-string/jumbo v2, "supportedMediaCommands"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    move v2, v1

    .line 573
    :goto_1
    const/4 v7, 0x4

    if-ge v2, v7, :cond_1

    .line 574
    const/4 v7, 0x1

    shl-int/2addr v7, v2

    and-int/2addr v7, v6

    if-eqz v7, :cond_0

    .line 575
    sget-object v7, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->MEDIA_SUPPORTED_COMMANDS:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 573
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 579
    :cond_1
    const-string/jumbo v2, "supportedMediaCommands"

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 566
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 581
    :cond_3
    return-void
.end method

.method private toJSONArray(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 3

    .prologue
    .line 618
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 619
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 620
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 622
    :cond_0
    return-object v1
.end method


# virtual methods
.method public broadcastClientMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 457
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mRouteProvider:Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->getClients()Ljava/util/Set;

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

    .line 458
    const/4 v2, -0x1

    invoke-virtual {p0, v0, p1, p2, v2}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->sendClientMessageTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 460
    :cond_0
    return-void
.end method

.method buildInternalMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 478
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 480
    :try_start_0
    const-string/jumbo v0, "type"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 481
    const-string/jumbo v0, "sequenceNumber"

    invoke-virtual {v1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 482
    const-string/jumbo v0, "timeoutMillis"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 483
    const-string/jumbo v0, "clientId"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 487
    if-eqz p2, :cond_0

    const-string/jumbo v0, "remove_session"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "disconnect_session"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 490
    :cond_0
    const-string/jumbo v0, "message"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 492
    :cond_1
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 493
    const-string/jumbo v2, "v2_message"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "MEDIA_STATUS"

    const-string/jumbo v3, "type"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 495
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->sanitizeMediaStatusMessage(Lorg/json/JSONObject;)V

    .line 497
    :cond_2
    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 499
    :catch_0
    move-exception v0

    .line 500
    const-string/jumbo v2, "MediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failed to build the reply: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public buildSessionMessage()Ljava/lang/String;
    .locals 7

    .prologue
    .line 510
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    if-nez v0, :cond_0

    const-string/jumbo v0, "{}"

    .line 552
    :goto_0
    return-object v0

    .line 512
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/router/cast/CastSession;->getSessionInfo()Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo;

    move-result-object v1

    .line 513
    if-nez v1, :cond_1

    const-string/jumbo v0, "{}"

    goto :goto_0

    .line 517
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 518
    const-string/jumbo v2, "level"

    iget-object v3, v1, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo;->receiver:Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;

    iget-object v3, v3, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;->volume:Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo;

    iget-wide v4, v3, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo;->level:D

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 519
    const-string/jumbo v2, "muted"

    iget-object v3, v1, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo;->receiver:Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;

    iget-object v3, v3, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;->volume:Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo;

    iget-boolean v3, v3, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo;->muted:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 522
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 523
    const-string/jumbo v3, "label"

    iget-object v4, v1, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo;->receiver:Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;

    iget-object v4, v4, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;->label:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 524
    const-string/jumbo v3, "friendlyName"

    iget-object v4, v1, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo;->receiver:Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;

    iget-object v4, v4, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;->friendlyName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 525
    const-string/jumbo v3, "capabilities"

    iget-object v4, v1, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo;->receiver:Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;

    iget-object v4, v4, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;->capabilities:Ljava/util/List;

    invoke-direct {p0, v4}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->toJSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 526
    const-string/jumbo v3, "volume"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 527
    const-string/jumbo v0, "isActiveInput"

    iget-object v3, v1, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo;->receiver:Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;

    iget v3, v3, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;->isActiveInput:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 528
    const-string/jumbo v0, "displayStatus"

    iget-object v3, v1, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo;->receiver:Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;

    iget-object v3, v3, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;->displayStatus:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 529
    const-string/jumbo v0, "receiverType"

    iget-object v3, v1, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo;->receiver:Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;

    iget-object v3, v3, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;->receiverType:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 531
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 532
    iget-object v0, v1, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo;->namespaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 533
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 534
    const-string/jumbo v6, "name"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 535
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 550
    :catch_0
    move-exception v0

    .line 551
    const-string/jumbo v1, "MediaRouter"

    const-string/jumbo v2, "Building session message failed"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 552
    const-string/jumbo v0, "{}"

    goto/16 :goto_0

    .line 538
    :cond_2
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 539
    const-string/jumbo v4, "sessionId"

    iget-object v5, v1, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 540
    const-string/jumbo v4, "statusText"

    iget-object v5, v1, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo;->statusText:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 541
    const-string/jumbo v4, "receiver"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 542
    const-string/jumbo v2, "namespaces"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 543
    const-string/jumbo v2, "media"

    iget-object v3, v1, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo;->media:Ljava/util/List;

    invoke-direct {p0, v3}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->toJSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 544
    const-string/jumbo v2, "status"

    iget-object v3, v1, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo;->status:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 545
    const-string/jumbo v2, "transportId"

    iget-object v3, v1, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo;->transportId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 546
    const-string/jumbo v2, "appId"

    iget-object v3, v1, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo;->appId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 547
    const-string/jumbo v2, "displayName"

    iget-object v1, v1, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 549
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0
.end method

.method getRequestsForTest()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mRequests:Landroid/util/SparseArray;

    return-object v0
.end method

.method getStopRequestsForTest()Ljava/util/Map;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mStopRequests:Landroid/support/v4/g/a;

    return-object v0
.end method

.method getVolumeRequestsForTest()Ljava/util/Queue;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mVolumeRequests:Ljava/util/Queue;

    return-object v0
.end method

.method handleAppMessage(Lorg/json/JSONObject;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 266
    sget-boolean v1, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "app_message"

    const-string/jumbo v2, "type"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 268
    :cond_0
    const-string/jumbo v1, "clientId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mRouteProvider:Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->getClients()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 294
    :cond_1
    :goto_0
    return v0

    .line 271
    :cond_2
    const-string/jumbo v2, "message"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 273
    iget-object v3, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    invoke-interface {v3}, Lorg/chromium/chrome/browser/media/router/cast/CastSession;->getSessionId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "sessionId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 277
    const-string/jumbo v3, "namespaceName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 278
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 280
    iget-object v4, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    invoke-interface {v4}, Lorg/chromium/chrome/browser/media/router/cast/CastSession;->getNamespaces()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 282
    const-string/jumbo v4, "sequenceNumber"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 284
    const-string/jumbo v5, "message"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 285
    if-eqz v5, :cond_1

    .line 287
    instance-of v0, v5, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 288
    const-string/jumbo v0, "message"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    iget-object v2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    invoke-interface {v2, v0, v3, v1, v4}, Lorg/chromium/chrome/browser/media/router/cast/CastSession;->sendStringCastMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    .line 293
    :cond_3
    const-string/jumbo v0, "message"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 294
    invoke-virtual {p0, v0, v3, v1, v4}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->sendJsonCastMessage(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method handleCastV2Message(Lorg/json/JSONObject;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 187
    sget-boolean v2, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const-string/jumbo v2, "v2_message"

    const-string/jumbo v3, "type"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 189
    :cond_0
    const-string/jumbo v2, "clientId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 190
    if-eqz v2, :cond_1

    iget-object v3, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mRouteProvider:Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->getClients()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    move v0, v1

    .line 237
    :cond_2
    :goto_0
    return v0

    .line 192
    :cond_3
    const-string/jumbo v3, "message"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 193
    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 194
    const-string/jumbo v5, "sequenceNumber"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 196
    const-string/jumbo v6, "STOP"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 197
    invoke-virtual {p0, v2, v5}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->handleStopMessage(Ljava/lang/String;I)V

    goto :goto_0

    .line 201
    :cond_4
    const-string/jumbo v6, "SET_VOLUME"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 202
    iget-object v4, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    const-string/jumbo v6, "volume"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-interface {v4, v3, v2, v5}, Lorg/chromium/chrome/browser/media/router/cast/CastSession;->handleVolumeMessage(Lorg/json/JSONObject;Ljava/lang/String;I)Lorg/chromium/chrome/browser/media/router/cast/CastSession$HandleVolumeMessageResult;

    move-result-object v3

    .line 205
    iget-boolean v4, v3, Lorg/chromium/chrome/browser/media/router/cast/CastSession$HandleVolumeMessageResult;->mSucceeded:Z

    if-nez v4, :cond_5

    move v0, v1

    goto :goto_0

    .line 214
    :cond_5
    iget-boolean v1, v3, Lorg/chromium/chrome/browser/media/router/cast/CastSession$HandleVolumeMessageResult;->mShouldWaitForVolumeChange:Z

    if-eqz v1, :cond_6

    .line 215
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mVolumeRequests:Ljava/util/Queue;

    new-instance v3, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler$RequestRecord;

    invoke-direct {v3, v2, v5}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler$RequestRecord;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    :cond_6
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mHandler:Landroid/os/Handler;

    new-instance v3, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler$1;

    invoke-direct {v3, p0, v2, v5}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler$1;-><init>(Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 229
    :cond_7
    sget-object v1, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->MEDIA_MESSAGE_TYPES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    sget-object v0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->sMediaOverloadedMessageTypes:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 231
    sget-object v0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->sMediaOverloadedMessageTypes:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 232
    const-string/jumbo v1, "type"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    :cond_8
    const-string/jumbo v0, "urn:x-cast:com.google.cast.media"

    invoke-virtual {p0, v3, v0, v2, v5}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->sendJsonCastMessage(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public handleSessionMessage(Lorg/json/JSONObject;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 162
    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    const-string/jumbo v2, "v2_message"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->handleCastV2Message(Lorg/json/JSONObject;)Z

    move-result v0

    .line 169
    :goto_0
    return v0

    .line 165
    :cond_0
    const-string/jumbo v2, "app_message"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->handleAppMessage(Lorg/json/JSONObject;)Z

    move-result v0

    goto :goto_0

    .line 168
    :cond_1
    const-string/jumbo v1, "MediaRouter"

    const-string/jumbo v2, "Unsupported message: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method handleStopMessage(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mStopRequests:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 243
    if-nez v0, :cond_0

    .line 244
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 245
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mStopRequests:Landroid/support/v4/g/a;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/router/cast/CastSession;->stopApplication()V

    .line 250
    return-void
.end method

.method isMediaStatusMessage(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 610
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 611
    const-string/jumbo v1, "MEDIA_STATUS"

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 613
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method onAppMessage(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler$RequestRecord;)V
    .locals 5

    .prologue
    .line 387
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 388
    const-string/jumbo v1, "sessionId"

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    invoke-interface {v2}, Lorg/chromium/chrome/browser/media/router/cast/CastSession;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 389
    const-string/jumbo v1, "namespaceName"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 390
    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 391
    if-eqz p3, :cond_0

    .line 392
    iget-object v1, p3, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler$RequestRecord;->clientId:Ljava/lang/String;

    const-string/jumbo v2, "app_message"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget v3, p3, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler$RequestRecord;->sequenceNumber:I

    invoke-virtual {p0, v1, v2, v0, v3}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->sendClientMessageTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 400
    :goto_0
    return-void

    .line 395
    :cond_0
    const-string/jumbo v1, "app_message"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->broadcastClientMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    const-string/jumbo v1, "MediaRouter"

    const-string/jumbo v2, "Failed to create the message wrapper"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onAppMessageSent(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 448
    const-string/jumbo v0, "app_message"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->sendClientMessageTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 449
    return-void
.end method

.method public onApplicationStopped()V
    .locals 6

    .prologue
    .line 406
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mRouteProvider:Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->getClients()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 407
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mStopRequests:Landroid/support/v4/g/a;

    invoke-virtual {v1, v0}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    .line 408
    if-nez v1, :cond_0

    .line 409
    const-string/jumbo v1, "remove_session"

    iget-object v3, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    invoke-interface {v3}, Lorg/chromium/chrome/browser/media/router/cast/CastSession;->getSessionId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {p0, v0, v1, v3, v4}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->sendClientMessageTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 415
    :cond_0
    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 416
    const-string/jumbo v4, "remove_session"

    iget-object v5, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    invoke-interface {v5}, Lorg/chromium/chrome/browser/media/router/cast/CastSession;->getSessionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v4, v5, v1}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->sendClientMessageTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 419
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mStopRequests:Landroid/support/v4/g/a;

    invoke-virtual {v1, v0}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    goto :goto_0

    .line 422
    :cond_2
    return-void
.end method

.method onMediaMessage(Ljava/lang/String;Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler$RequestRecord;)V
    .locals 4

    .prologue
    .line 361
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/media/router/cast/CastSession;->onMediaMessage(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->isMediaStatusMessage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 365
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mRouteProvider:Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->getClients()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 366
    if-eqz p2, :cond_1

    iget-object v2, p2, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler$RequestRecord;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 368
    :cond_1
    const-string/jumbo v2, "v2_message"

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v2, p1, v3}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->sendClientMessageTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 372
    :cond_2
    if-eqz p2, :cond_3

    .line 373
    iget-object v0, p2, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler$RequestRecord;->clientId:Ljava/lang/String;

    const-string/jumbo v1, "v2_message"

    iget v2, p2, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler$RequestRecord;->sequenceNumber:I

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->sendClientMessageTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 376
    :cond_3
    return-void
.end method

.method public onMessageReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 334
    const/4 v1, 0x0

    .line 336
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 337
    const-string/jumbo v2, "requestId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 338
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mRequests:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 339
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mRequests:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler$RequestRecord;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :try_start_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mRequests:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 345
    :goto_0
    const-string/jumbo v1, "urn:x-cast:com.google.cast.media"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    invoke-virtual {p0, p2, v0}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->onMediaMessage(Ljava/lang/String;Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler$RequestRecord;)V

    .line 351
    :goto_1
    return-void

    .line 350
    :cond_0
    invoke-virtual {p0, p2, p1, v0}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->onAppMessage(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler$RequestRecord;)V

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public onSessionCreated(Lorg/chromium/chrome/browser/media/router/cast/CastSession;)V
    .locals 3

    .prologue
    .line 145
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    .line 146
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mRouteProvider:Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->getClientRecords()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;

    .line 147
    iget-boolean v2, v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->isConnected:Z

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    iget-object v0, v0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->clientId:Ljava/lang/String;

    invoke-interface {v2, v0}, Lorg/chromium/chrome/browser/media/router/cast/CastSession;->onClientConnected(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_1
    return-void
.end method

.method public onVolumeChanged()V
    .locals 3

    .prologue
    .line 429
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/router/cast/CastSession;->updateSessionStatus()V

    .line 431
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mVolumeRequests:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    :goto_0
    return-void

    .line 433
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mVolumeRequests:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler$RequestRecord;

    iget-object v2, v0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler$RequestRecord;->clientId:Ljava/lang/String;

    iget v0, v0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler$RequestRecord;->sequenceNumber:I

    invoke-virtual {p0, v2, v0}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->onVolumeChanged(Ljava/lang/String;I)V

    goto :goto_1

    .line 434
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mVolumeRequests:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    goto :goto_0
.end method

.method onVolumeChanged(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 439
    const-string/jumbo v0, "v2_message"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->sendClientMessageTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 440
    return-void
.end method

.method public sendClientMessageTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mRouteProvider:Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;

    invoke-virtual {p0, p2, p3, p1, p4}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->buildInternalMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->onMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    return-void
.end method

.method sendJsonCastMessage(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 303
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/media/router/cast/CastSession;->isApiClientInvalid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    :goto_0
    return v0

    .line 305
    :cond_0
    invoke-static {p1}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->removeNullFields(Ljava/lang/Object;)V

    .line 308
    const/4 v1, -0x1

    if-eq p4, v1, :cond_2

    .line 312
    const-string/jumbo v1, "requestId"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 313
    if-nez v0, :cond_1

    .line 314
    invoke-static {}, Lorg/chromium/chrome/browser/media/router/cast/CastRequestIdGenerator;->getNextRequestId()I

    move-result v0

    .line 315
    const-string/jumbo v1, "requestId"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 317
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mRequests:Landroid/util/SparseArray;

    new-instance v2, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler$RequestRecord;

    invoke-direct {v2, p3, p4}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler$RequestRecord;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 320
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3, p4}, Lorg/chromium/chrome/browser/media/router/cast/CastSession;->sendStringCastMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method
