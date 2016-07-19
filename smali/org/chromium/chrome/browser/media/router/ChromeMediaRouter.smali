.class public Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;
.super Ljava/lang/Object;
.source "ChromeMediaRouter.java"

# interfaces
.implements Lorg/chromium/chrome/browser/media/router/MediaRouteManager;


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sRouteProviderBuilder:Lorg/chromium/chrome/browser/media/router/MediaRouteProvider$Builder;


# instance fields
.field private final mNativeMediaRouterAndroid:J

.field private final mRouteIdsToProviders:Ljava/util/Map;

.field private final mRouteProviders:Ljava/util/List;

.field private final mSinksPerSource:Ljava/util/Map;

.field private final mSinksPerSourcePerProvider:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->$assertionsDisabled:Z

    .line 34
    new-instance v0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider$Builder;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider$Builder;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->sRouteProviderBuilder:Lorg/chromium/chrome/browser/media/router/MediaRouteProvider$Builder;

    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(J)V
    .locals 1

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mRouteProviders:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mRouteIdsToProviders:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mSinksPerSourcePerProvider:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mSinksPerSource:Ljava/util/Map;

    .line 338
    iput-wide p1, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mNativeMediaRouterAndroid:J

    .line 339
    return-void
.end method

.method public static create(JLandroid/content/Context;)Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;
    .locals 2

    .prologue
    .line 159
    new-instance v0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;-><init>(J)V

    .line 160
    sget-object v1, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->sRouteProviderBuilder:Lorg/chromium/chrome/browser/media/router/MediaRouteProvider$Builder;

    invoke-interface {v1, p2, v0}, Lorg/chromium/chrome/browser/media/router/MediaRouteProvider$Builder;->create(Landroid/content/Context;Lorg/chromium/chrome/browser/media/router/MediaRouteManager;)Lorg/chromium/chrome/browser/media/router/MediaRouteProvider;

    move-result-object v1

    .line 161
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->addMediaRouteProvider(Lorg/chromium/chrome/browser/media/router/MediaRouteProvider;)V

    .line 163
    :cond_0
    return-object v0
.end method

.method public static getAndroidMediaRouter(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 83
    :try_start_0
    invoke-static {p0}, Landroid/support/v7/media/MediaRouter;->a(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    .line 85
    :catch_0
    move-exception v1

    goto :goto_0

    .line 88
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private getProviderForSource(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/MediaRouteProvider;
    .locals 3

    .prologue
    .line 352
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mRouteProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/router/MediaRouteProvider;

    .line 353
    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/media/router/MediaRouteProvider;->supportsSource(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 355
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSink(Ljava/lang/String;I)Lorg/chromium/chrome/browser/media/router/cast/MediaSink;
    .locals 1

    .prologue
    .line 347
    sget-boolean v0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mSinksPerSource:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 348
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mSinksPerSource:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;

    return-object v0
.end method

.method public static setRouteProviderBuilderForTest(Lorg/chromium/chrome/browser/media/router/MediaRouteProvider$Builder;)V
    .locals 0

    .prologue
    .line 49
    sput-object p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->sRouteProviderBuilder:Lorg/chromium/chrome/browser/media/router/MediaRouteProvider$Builder;

    .line 50
    return-void
.end method


# virtual methods
.method protected addMediaRouteProvider(Lorg/chromium/chrome/browser/media/router/MediaRouteProvider;)V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mRouteProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    return-void
.end method

.method public closeRoute(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mRouteIdsToProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/router/MediaRouteProvider;

    .line 284
    if-nez v0, :cond_0

    .line 287
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/media/router/MediaRouteProvider;->closeRoute(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->getProviderForSource(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/MediaRouteProvider;

    move-result-object v0

    .line 242
    if-nez v0, :cond_0

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "No provider supports createRoute with source: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " and sink: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p6}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->onRouteRequestError(Ljava/lang/String;I)V

    .line 249
    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 248
    invoke-interface/range {v0 .. v6}, Lorg/chromium/chrome/browser/media/router/MediaRouteProvider;->createRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public detachRoute(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mRouteIdsToProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/router/MediaRouteProvider;

    .line 296
    if-nez v0, :cond_0

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_0
    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/media/router/MediaRouteProvider;->detachRoute(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mRouteIdsToProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected getRouteIdsToProvidersForTest()Ljava/util/Map;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mRouteIdsToProviders:Ljava/util/Map;

    return-object v0
.end method

.method protected getRouteProvidersForTest()Ljava/util/List;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mRouteProviders:Ljava/util/List;

    return-object v0
.end method

.method public getSinkName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->getSink(Ljava/lang/String;I)Lorg/chromium/chrome/browser/media/router/cast/MediaSink;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSinkUrn(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->getSink(Ljava/lang/String;I)Lorg/chromium/chrome/browser/media/router/cast/MediaSink;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/router/cast/MediaSink;->getUrn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSinksPerSourceForTest()Ljava/util/Map;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mSinksPerSource:Ljava/util/Map;

    return-object v0
.end method

.method protected getSinksPerSourcePerProviderForTest()Ljava/util/Map;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mSinksPerSourcePerProvider:Ljava/util/Map;

    return-object v0
.end method

.method public joinRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->getProviderForSource(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/MediaRouteProvider;

    move-result-object v0

    .line 269
    if-nez v0, :cond_0

    .line 270
    const-string/jumbo v0, "Route not found."

    invoke-virtual {p0, v0, p5}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->onRouteRequestError(Ljava/lang/String;I)V

    .line 275
    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 274
    invoke-interface/range {v0 .. v5}, Lorg/chromium/chrome/browser/media/router/MediaRouteProvider;->joinRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method native nativeOnMessage(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method native nativeOnMessageSentResult(JZI)V
.end method

.method native nativeOnRouteClosed(JLjava/lang/String;)V
.end method

.method native nativeOnRouteCreated(JLjava/lang/String;Ljava/lang/String;IZ)V
.end method

.method native nativeOnRouteRequestError(JLjava/lang/String;I)V
.end method

.method native nativeOnSinksReceived(JLjava/lang/String;I)V
.end method

.method public onMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mNativeMediaRouterAndroid:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->nativeOnMessage(JLjava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public onMessageSentResult(ZI)V
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mNativeMediaRouterAndroid:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->nativeOnMessageSentResult(JZI)V

    .line 143
    return-void
.end method

.method public onRouteClosed(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 134
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mNativeMediaRouterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 135
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mNativeMediaRouterAndroid:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->nativeOnRouteClosed(JLjava/lang/String;)V

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mRouteIdsToProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method

.method public onRouteCreated(Ljava/lang/String;Ljava/lang/String;ILorg/chromium/chrome/browser/media/router/MediaRouteProvider;Z)V
    .locals 8

    .prologue
    .line 118
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mRouteIdsToProviders:Ljava/util/Map;

    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mNativeMediaRouterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 120
    iget-wide v2, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mNativeMediaRouterAndroid:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->nativeOnRouteCreated(JLjava/lang/String;Ljava/lang/String;IZ)V

    .line 123
    :cond_0
    return-void
.end method

.method public onRouteRequestError(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 127
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mNativeMediaRouterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 128
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mNativeMediaRouterAndroid:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->nativeOnRouteRequestError(JLjava/lang/String;I)V

    .line 130
    :cond_0
    return-void
.end method

.method public onSinksReceived(Ljava/lang/String;Lorg/chromium/chrome/browser/media/router/MediaRouteProvider;Ljava/util/List;)V
    .locals 6

    .prologue
    .line 95
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mSinksPerSourcePerProvider:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mSinksPerSourcePerProvider:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mSinksPerSourcePerProvider:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 103
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mSinksPerSource:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-wide v2, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mNativeMediaRouterAndroid:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 110
    iget-wide v2, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mNativeMediaRouterAndroid:J

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v2, v3, p1, v0}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->nativeOnSinksReceived(JLjava/lang/String;I)V

    .line 112
    :cond_2
    return-void
.end method

.method public sendBinaryMessage(Ljava/lang/String;[BI)V
    .locals 3

    .prologue
    .line 327
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mRouteIdsToProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/router/MediaRouteProvider;

    .line 328
    if-nez v0, :cond_0

    .line 329
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mNativeMediaRouterAndroid:J

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p3}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->nativeOnMessageSentResult(JZI)V

    .line 334
    :goto_0
    return-void

    .line 333
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/media/router/MediaRouteProvider;->sendBinaryMessage(Ljava/lang/String;[BI)V

    goto :goto_0
.end method

.method public sendStringMessage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 310
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mRouteIdsToProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/router/MediaRouteProvider;

    .line 311
    if-nez v0, :cond_0

    .line 312
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mNativeMediaRouterAndroid:J

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p3}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->nativeOnMessageSentResult(JZI)V

    .line 317
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/media/router/MediaRouteProvider;->sendStringMessage(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public startObservingMediaSinks(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 174
    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 180
    :goto_0
    return v0

    .line 176
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mRouteProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/router/MediaRouteProvider;

    .line 177
    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/media/router/MediaRouteProvider;->startObservingMediaSinks(Ljava/lang/String;)V

    goto :goto_1

    .line 180
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public stopObservingMediaSinks(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mRouteProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/router/MediaRouteProvider;

    .line 191
    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/media/router/MediaRouteProvider;->stopObservingMediaSinks(Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mSinksPerSource:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->mSinksPerSourcePerProvider:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    return-void
.end method
