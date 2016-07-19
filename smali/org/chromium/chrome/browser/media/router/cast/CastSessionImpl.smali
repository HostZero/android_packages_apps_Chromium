.class public Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;
.super Ljava/lang/Object;
.source "CastSessionImpl.java"

# interfaces
.implements Lorg/chromium/chrome/browser/media/router/cast/CastSession;
.implements Lorg/chromium/chrome/browser/media/ui/MediaNotificationListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mApiClient:Lcom/google/android/gms/common/api/g;

.field private mApplicationMetadata:Lcom/google/android/gms/cast/ApplicationMetadata;

.field private mApplicationStatus:Ljava/lang/String;

.field private final mCastDevice:Lcom/google/android/gms/cast/CastDevice;

.field private mMediaPlayer:Lcom/google/android/gms/cast/w;

.field private final mMessageChannel:Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$CastMessagingChannel;

.field private final mMessageHandler:Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;

.field private mNamespaces:Ljava/util/Set;

.field private mNotificationBuilder:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

.field private final mRouteProvider:Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;

.field private mSessionId:Ljava/lang/String;

.field private final mSource:Lorg/chromium/chrome/browser/media/router/cast/MediaSource;

.field private mStoppingApplication:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/g;Ljava/lang/String;Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;ILorg/chromium/chrome/browser/media/router/cast/MediaSource;Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;)V
    .locals 6

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mNamespaces:Ljava/util/Set;

    .line 95
    iput-object p2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mSessionId:Ljava/lang/String;

    .line 96
    iput-object p9, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mRouteProvider:Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;

    .line 97
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mApiClient:Lcom/google/android/gms/common/api/g;

    .line 98
    iput-object p8, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mSource:Lorg/chromium/chrome/browser/media/router/cast/MediaSource;

    .line 99
    iput-object p3, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mApplicationMetadata:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 100
    iput-object p4, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mApplicationStatus:Ljava/lang/String;

    .line 101
    iput-object p5, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mCastDevice:Lcom/google/android/gms/cast/CastDevice;

    .line 102
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mRouteProvider:Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->getMessageHandler()Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mMessageHandler:Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;

    .line 103
    new-instance v0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$CastMessagingChannel;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$CastMessagingChannel;-><init>(Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mMessageChannel:Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$CastMessagingChannel;

    .line 104
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->updateNamespaces()V

    .line 106
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mNamespaces:Ljava/util/Set;

    const-string/jumbo v2, "urn:x-cast:com.google.cast.media"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    new-instance v1, Lcom/google/android/gms/cast/w;

    invoke-direct {v1}, Lcom/google/android/gms/cast/w;-><init>()V

    iput-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mMediaPlayer:Lcom/google/android/gms/cast/w;

    .line 110
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mMediaPlayer:Lcom/google/android/gms/cast/w;

    new-instance v2, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$1;

    invoke-direct {v2, p0, v0}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$1;-><init>(Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/w;->a(Lcom/google/android/gms/cast/B;)V

    .line 132
    :cond_0
    new-instance v1, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;-><init>()V

    new-instance v2, Lorg/chromium/content_public/common/MediaMetadata;

    iget-object v3, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mCastDevice:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/CastDevice;->d()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    invoke-direct {v2, v3, v4, v5}, Lorg/chromium/content_public/common/MediaMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->setMetadata(Lorg/chromium/content_public/common/MediaMetadata;)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->setPaused(Z)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p6}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->setOrigin(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p7}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->setTabId(I)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->setPrivate(Z)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$drawable;->ic_notification_media_route:I

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->setIcon(I)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->setActions(I)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    move-result-object v1

    invoke-static {p7}, Lorg/chromium/chrome/browser/tab/Tab;->createBringTabToFrontIntent(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->setContentIntent(Landroid/content/Intent;)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$id;->presentation_notification:I

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->setId(I)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->setListener(Lorg/chromium/chrome/browser/media/ui/MediaNotificationListener;)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mNotificationBuilder:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    .line 147
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mNotificationBuilder:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->build()Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->show(Landroid/content/Context;Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;)V

    .line 148
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;)Lcom/google/android/gms/cast/w;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mMediaPlayer:Lcom/google/android/gms/cast/w;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mNotificationBuilder:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;)Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mMessageHandler:Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mNamespaces:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->unregisterNamespace(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mSessionId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/g;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mApiClient:Lcom/google/android/gms/common/api/g;

    return-object p1
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;)Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mRouteProvider:Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;

    return-object v0
.end method

.method static synthetic access$802(Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;Z)Z
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mStoppingApplication:Z

    return p1
.end method

.method private addNamespace(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 216
    sget-boolean v0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mNamespaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 218
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->isApiClientInvalid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    :cond_1
    :goto_0
    return-void

    .line 221
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mApplicationMetadata:Lcom/google/android/gms/cast/ApplicationMetadata;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mApplicationMetadata:Lcom/google/android/gms/cast/ApplicationMetadata;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/ApplicationMetadata;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    :cond_3
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/d;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mApiClient:Lcom/google/android/gms/common/api/g;

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mMessageChannel:Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$CastMessagingChannel;

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/cast/d;->a(Lcom/google/android/gms/common/api/g;Ljava/lang/String;Lcom/google/android/gms/cast/k;)V

    .line 227
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mNamespaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    const-string/jumbo v1, "MediaRouter"

    const-string/jumbo v2, "Failed to register namespace listener for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected static getCapabilities(Lcom/google/android/gms/cast/CastDevice;)Ljava/util/List;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/CastDevice;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    const-string/jumbo v1, "audio_in"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/CastDevice;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    const-string/jumbo v1, "audio_out"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/CastDevice;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    const-string/jumbo v1, "video_in"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/CastDevice;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 193
    const-string/jumbo v1, "video_out"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_3
    return-object v0
.end method

.method private unregisterNamespace(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 234
    sget-boolean v0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mNamespaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 236
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->isApiClientInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    :goto_0
    return-void

    .line 239
    :cond_1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/d;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mApiClient:Lcom/google/android/gms/common/api/g;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/cast/d;->b(Lcom/google/android/gms/common/api/g;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mNamespaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    const-string/jumbo v1, "MediaRouter"

    const-string/jumbo v2, "Failed to remove the namespace listener for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateNamespaces()V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mApplicationMetadata:Lcom/google/android/gms/cast/ApplicationMetadata;

    if-nez v0, :cond_1

    .line 213
    :cond_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mApplicationMetadata:Lcom/google/android/gms/cast/ApplicationMetadata;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/ApplicationMetadata;->d()Ljava/util/List;

    move-result-object v1

    .line 206
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mNamespaces:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 207
    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 208
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->unregisterNamespace(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 211
    iget-object v2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mNamespaces:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->addNamespace(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public getMessageHandler()Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mMessageHandler:Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;

    return-object v0
.end method

.method public getNamespaces()Ljava/util/Set;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mNamespaces:Ljava/util/Set;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionInfo()Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 281
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->isApiClientInvalid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    :goto_0
    return-object v0

    .line 283
    :cond_0
    new-instance v1, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo$Builder;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo$Builder;-><init>()V

    sget-object v2, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/d;

    iget-object v3, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mApiClient:Lcom/google/android/gms/common/api/g;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/cast/d;->a(Lcom/google/android/gms/common/api/g;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo$Builder;->setLevel(D)Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/d;

    iget-object v3, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mApiClient:Lcom/google/android/gms/common/api/g;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/cast/d;->b(Lcom/google/android/gms/common/api/g;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo$Builder;->setMuted(Z)Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo$Builder;

    move-result-object v1

    .line 288
    new-instance v2, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;

    invoke-direct {v2}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;-><init>()V

    iget-object v3, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mCastDevice:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/CastDevice;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;->setLabel(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mCastDevice:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/CastDevice;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;->setFriendlyName(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo$Builder;->build()Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;->setVolume(Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo;)Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/d;

    iget-object v3, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mApiClient:Lcom/google/android/gms/common/api/g;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/cast/d;->c(Lcom/google/android/gms/common/api/g;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;->setIsActiveInput(I)Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;->setDisplayStatus(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;

    move-result-object v0

    const-string/jumbo v1, "cast"

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;->setReceiverType(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mCastDevice:Lcom/google/android/gms/cast/CastDevice;

    invoke-static {v1}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->getCapabilities(Lcom/google/android/gms/cast/CastDevice;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;->addCapabilities(Ljava/util/Collection;)Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;

    move-result-object v0

    .line 298
    new-instance v1, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;-><init>()V

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mSessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->setSessionId(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mApplicationStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->setStatusText(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;->build()Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->setReceiver(Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;)Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;

    move-result-object v0

    const-string/jumbo v1, "connected"

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->setStatus(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;

    move-result-object v0

    const-string/jumbo v1, "web-4"

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->setTransportId(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mNamespaces:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->addNamespaces(Ljava/util/Collection;)Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;

    move-result-object v0

    .line 307
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mApplicationMetadata:Lcom/google/android/gms/cast/ApplicationMetadata;

    if-eqz v1, :cond_1

    .line 308
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mApplicationMetadata:Lcom/google/android/gms/cast/ApplicationMetadata;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/ApplicationMetadata;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->setAppId(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mApplicationMetadata:Lcom/google/android/gms/cast/ApplicationMetadata;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/ApplicationMetadata;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->setDisplayName(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;

    .line 315
    :goto_1
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->build()Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo;

    move-result-object v0

    goto/16 :goto_0

    .line 311
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mSource:Lorg/chromium/chrome/browser/media/router/cast/MediaSource;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->setAppId(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mCastDevice:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/CastDevice;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->setDisplayName(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;

    goto :goto_1
.end method

.method public getSinkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mCastDevice:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastDevice;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mSource:Lorg/chromium/chrome/browser/media/router/cast/MediaSource;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/router/cast/MediaSource;->getUrn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleVolumeMessage(Lorg/json/JSONObject;Ljava/lang/String;I)Lorg/chromium/chrome/browser/media/router/cast/CastSession$HandleVolumeMessageResult;
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 370
    if-nez p1, :cond_0

    new-instance v0, Lorg/chromium/chrome/browser/media/router/cast/CastSession$HandleVolumeMessageResult;

    invoke-direct {v0, v2, v2}, Lorg/chromium/chrome/browser/media/router/cast/CastSession$HandleVolumeMessageResult;-><init>(ZZ)V

    .line 397
    :goto_0
    return-object v0

    .line 372
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->isApiClientInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/chromium/chrome/browser/media/router/cast/CastSession$HandleVolumeMessageResult;

    invoke-direct {v0, v2, v2}, Lorg/chromium/chrome/browser/media/router/cast/CastSession$HandleVolumeMessageResult;-><init>(ZZ)V

    goto :goto_0

    .line 376
    :cond_1
    :try_start_0
    const-string/jumbo v0, "muted"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 377
    const-string/jumbo v0, "muted"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 378
    sget-object v3, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/d;

    iget-object v4, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mApiClient:Lcom/google/android/gms/common/api/g;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/cast/d;->b(Lcom/google/android/gms/common/api/g;)Z

    move-result v3

    if-eq v3, v0, :cond_3

    .line 379
    sget-object v3, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/d;

    iget-object v4, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mApiClient:Lcom/google/android/gms/common/api/g;

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/cast/d;->a(Lcom/google/android/gms/common/api/g;Z)V

    move v0, v1

    .line 383
    :goto_1
    const-string/jumbo v3, "level"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 384
    const-string/jumbo v3, "level"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 385
    sget-object v3, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/d;

    iget-object v6, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mApiClient:Lcom/google/android/gms/common/api/g;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/cast/d;->a(Lcom/google/android/gms/common/api/g;)D

    move-result-wide v6

    .line 386
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_2

    sub-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v3, v6, v8

    if-lez v3, :cond_2

    .line 388
    sget-object v0, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/d;

    iget-object v3, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mApiClient:Lcom/google/android/gms/common/api/g;

    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/cast/d;->a(Lcom/google/android/gms/common/api/g;D)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 397
    :cond_2
    new-instance v2, Lorg/chromium/chrome/browser/media/router/cast/CastSession$HandleVolumeMessageResult;

    invoke-direct {v2, v1, v0}, Lorg/chromium/chrome/browser/media/router/cast/CastSession$HandleVolumeMessageResult;-><init>(ZZ)V

    move-object v0, v2

    goto :goto_0

    .line 392
    :catch_0
    move-exception v0

    .line 393
    const-string/jumbo v1, "MediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failed to send volume command: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    new-instance v0, Lorg/chromium/chrome/browser/media/router/cast/CastSession$HandleVolumeMessageResult;

    invoke-direct {v0, v2, v2}, Lorg/chromium/chrome/browser/media/router/cast/CastSession$HandleVolumeMessageResult;-><init>(ZZ)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public isApiClientInvalid()Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mApiClient:Lcom/google/android/gms/common/api/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mApiClient:Lcom/google/android/gms/common/api/g;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/g;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mApiClient:Lcom/google/android/gms/common/api/g;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/g;->e()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClientConnected(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 462
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mMessageHandler:Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;

    const-string/jumbo v1, "new_session"

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mMessageHandler:Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->buildSessionMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->sendClientMessageTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 466
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mMediaPlayer:Lcom/google/android/gms/cast/w;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->isApiClientInvalid()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mMediaPlayer:Lcom/google/android/gms/cast/w;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mApiClient:Lcom/google/android/gms/common/api/g;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/w;->c(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/l;

    .line 467
    :cond_0
    return-void
.end method

.method public onMediaMessage(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 432
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mMediaPlayer:Lcom/google/android/gms/cast/w;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mMediaPlayer:Lcom/google/android/gms/cast/w;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mCastDevice:Lcom/google/android/gms/cast/CastDevice;

    const-string/jumbo v2, "urn:x-cast:com.google.cast.media"

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/cast/w;->onMessageReceived(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_0
    return-void
.end method

.method public onPause(I)V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mMediaPlayer:Lcom/google/android/gms/cast/w;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->isApiClientInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mMediaPlayer:Lcom/google/android/gms/cast/w;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mApiClient:Lcom/google/android/gms/common/api/g;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/w;->a(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/l;

    goto :goto_0
.end method

.method public onPlay(I)V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mMediaPlayer:Lcom/google/android/gms/cast/w;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->isApiClientInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mMediaPlayer:Lcom/google/android/gms/cast/w;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mApiClient:Lcom/google/android/gms/common/api/g;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/w;->b(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/l;

    goto :goto_0
.end method

.method public onStop(I)V
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->stopApplication()V

    .line 170
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mRouteProvider:Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->onSessionStopAction()V

    .line 171
    return-void
.end method

.method public onVolumeChanged()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mMessageHandler:Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->onVolumeChanged()V

    .line 441
    return-void
.end method

.method public sendStringCastMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 324
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->isApiClientInvalid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    :goto_0
    return v0

    .line 328
    :cond_0
    :try_start_0
    sget-object v2, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/d;

    iget-object v3, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mApiClient:Lcom/google/android/gms/common/api/g;

    invoke-virtual {v2, v3, p2, p1}, Lcom/google/android/gms/cast/d;->a(Lcom/google/android/gms/common/api/g;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/l;

    move-result-object v2

    new-instance v3, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$2;

    invoke-direct {v3, p0, p2, p3, p4}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$2;-><init>(Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/l;->a(Lcom/google/android/gms/common/api/m;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 353
    goto :goto_0

    .line 349
    :catch_0
    move-exception v2

    .line 350
    const-string/jumbo v3, "MediaRouter"

    const-string/jumbo v4, "Exception while sending message"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {v3, v4, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public stopApplication()V
    .locals 3

    .prologue
    .line 402
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mStoppingApplication:Z

    if-eqz v0, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->isApiClientInvalid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mStoppingApplication:Z

    .line 407
    sget-object v0, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/d;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mApiClient:Lcom/google/android/gms/common/api/g;

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/d;->a(Lcom/google/android/gms/common/api/g;Ljava/lang/String;)Lcom/google/android/gms/common/api/l;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$3;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$3;-><init>(Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/l;->a(Lcom/google/android/gms/common/api/m;)V

    goto :goto_0
.end method

.method public updateSessionStatus()V
    .locals 5

    .prologue
    .line 445
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->isApiClientInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    :goto_0
    return-void

    .line 448
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/d;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mApiClient:Lcom/google/android/gms/common/api/g;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/d;->e(Lcom/google/android/gms/common/api/g;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mApplicationStatus:Ljava/lang/String;

    .line 449
    sget-object v0, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/d;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mApiClient:Lcom/google/android/gms/common/api/g;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/d;->d(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/cast/ApplicationMetadata;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mApplicationMetadata:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 451
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->updateNamespaces()V

    .line 453
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mMessageHandler:Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;

    const-string/jumbo v1, "update_session"

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mMessageHandler:Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->buildSessionMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->broadcastClientMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    const-string/jumbo v1, "MediaRouter"

    const-string/jumbo v2, "Can\'t get application status"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
