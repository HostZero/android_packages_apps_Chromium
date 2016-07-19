.class public Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;
.super Ljava/lang/Object;
.source "CastSessionInfo.java"


# instance fields
.field private mCapabilities:Ljava/util/List;

.field private mDisplayStatus:Ljava/lang/String;

.field private mFriendlyName:Ljava/lang/String;

.field private mIsActiveInput:I

.field private mLabel:Ljava/lang/String;

.field private mReceiverType:Ljava/lang/String;

.field private mVolume:Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;->mLabel:Ljava/lang/String;

    .line 100
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;->mFriendlyName:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;->mCapabilities:Ljava/util/List;

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;->mVolume:Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;->mIsActiveInput:I

    .line 104
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;->mDisplayStatus:Ljava/lang/String;

    .line 105
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;->mReceiverType:Ljava/lang/String;

    .line 151
    return-void
.end method


# virtual methods
.method public addCapabilities(Ljava/util/Collection;)Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;->mCapabilities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 124
    return-object p0
.end method

.method public build()Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;
    .locals 9

    .prologue
    .line 154
    new-instance v0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;->mLabel:Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;->mFriendlyName:Ljava/lang/String;

    iget-object v3, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;->mCapabilities:Ljava/util/List;

    iget-object v4, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;->mVolume:Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo;

    iget v5, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;->mIsActiveInput:I

    iget-object v6, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;->mDisplayStatus:Ljava/lang/String;

    iget-object v7, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;->mReceiverType:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo;ILjava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$1;)V

    return-object v0
.end method

.method public setDisplayStatus(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;->mDisplayStatus:Ljava/lang/String;

    .line 139
    return-object p0
.end method

.method public setFriendlyName(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;->mFriendlyName:Ljava/lang/String;

    .line 114
    return-object p0
.end method

.method public setIsActiveInput(I)Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;
    .locals 0

    .prologue
    .line 133
    iput p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;->mIsActiveInput:I

    .line 134
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;->mLabel:Ljava/lang/String;

    .line 109
    return-object p0
.end method

.method public setReceiverType(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;->mReceiverType:Ljava/lang/String;

    .line 144
    return-object p0
.end method

.method public setVolume(Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo;)Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$ReceiverInfo$Builder;->mVolume:Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo;

    .line 129
    return-object p0
.end method
