.class public Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo;
.super Ljava/lang/Object;
.source "CastSessionInfo.java"


# instance fields
.field public final appId:Ljava/lang/String;

.field public final displayName:Ljava/lang/String;

.field public final media:Ljava/util/List;

.field public final namespaces:Ljava/util/List;

.field public final receiver:Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;

.field public final sessionId:Ljava/lang/String;

.field public final status:Ljava/lang/String;

.field public final statusText:Ljava/lang/String;

.field public final transportId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo;->sessionId:Ljava/lang/String;

    .line 315
    iput-object p2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo;->statusText:Ljava/lang/String;

    .line 316
    iput-object p3, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo;->receiver:Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;

    .line 317
    iput-object p4, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo;->namespaces:Ljava/util/List;

    .line 318
    iput-object p5, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo;->media:Ljava/util/List;

    .line 319
    iput-object p6, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo;->status:Ljava/lang/String;

    .line 320
    iput-object p7, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo;->transportId:Ljava/lang/String;

    .line 321
    iput-object p8, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo;->appId:Ljava/lang/String;

    .line 322
    iput-object p9, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo;->displayName:Ljava/lang/String;

    .line 323
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$1;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p9}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
