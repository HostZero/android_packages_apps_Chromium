.class public Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;
.super Ljava/lang/Object;
.source "CastSessionInfo.java"


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mMedia:Ljava/util/List;

.field private mNamespaces:Ljava/util/List;

.field private mReceiver:Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;

.field private mSessionId:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;

.field private mStatusText:Ljava/lang/String;

.field private mTransportId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->mSessionId:Ljava/lang/String;

    .line 225
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->mStatusText:Ljava/lang/String;

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->mReceiver:Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->mNamespaces:Ljava/util/List;

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->mMedia:Ljava/util/List;

    .line 229
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->mStatus:Ljava/lang/String;

    .line 230
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->mTransportId:Ljava/lang/String;

    .line 231
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->mAppId:Ljava/lang/String;

    .line 232
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->mDisplayName:Ljava/lang/String;

    .line 288
    return-void
.end method


# virtual methods
.method public addNamespaces(Ljava/util/Collection;)Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->mNamespaces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 256
    return-object p0
.end method

.method public build()Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo;
    .locals 11

    .prologue
    .line 291
    new-instance v0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->mSessionId:Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->mStatusText:Ljava/lang/String;

    iget-object v3, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->mReceiver:Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;

    iget-object v4, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->mNamespaces:Ljava/util/List;

    iget-object v5, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->mMedia:Ljava/util/List;

    iget-object v6, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->mStatus:Ljava/lang/String;

    iget-object v7, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->mTransportId:Ljava/lang/String;

    iget-object v8, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->mAppId:Ljava/lang/String;

    iget-object v9, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->mDisplayName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$1;)V

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->mAppId:Ljava/lang/String;

    .line 276
    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->mDisplayName:Ljava/lang/String;

    .line 281
    return-object p0
.end method

.method public setReceiver(Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;)Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->mReceiver:Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;

    .line 246
    return-object p0
.end method

.method public setSessionId(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->mSessionId:Ljava/lang/String;

    .line 236
    return-object p0
.end method

.method public setStatus(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->mStatus:Ljava/lang/String;

    .line 266
    return-object p0
.end method

.method public setStatusText(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->mStatusText:Ljava/lang/String;

    .line 241
    return-object p0
.end method

.method public setTransportId(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$Builder;->mTransportId:Ljava/lang/String;

    .line 271
    return-object p0
.end method
