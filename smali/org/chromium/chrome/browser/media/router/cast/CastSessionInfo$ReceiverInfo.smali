.class public Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;
.super Ljava/lang/Object;
.source "CastSessionInfo.java"


# instance fields
.field public final capabilities:Ljava/util/List;

.field public final displayStatus:Ljava/lang/String;

.field public final friendlyName:Ljava/lang/String;

.field public final isActiveInput:I

.field public final label:Ljava/lang/String;

.field public final receiverType:Ljava/lang/String;

.field public final volume:Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;->label:Ljava/lang/String;

    .line 174
    iput-object p2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;->friendlyName:Ljava/lang/String;

    .line 175
    iput-object p3, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;->capabilities:Ljava/util/List;

    .line 176
    iput-object p4, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;->volume:Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo;

    .line 177
    iput p5, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;->isActiveInput:I

    .line 178
    iput-object p6, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;->displayStatus:Ljava/lang/String;

    .line 179
    iput-object p7, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;->receiverType:Ljava/lang/String;

    .line 180
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo;ILjava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$1;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct/range {p0 .. p7}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
