.class public Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo$Builder;
.super Ljava/lang/Object;
.source "CastSessionInfo.java"


# instance fields
.field private mLevel:D

.field private mMuted:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo$Builder;->mLevel:D

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo$Builder;->mMuted:Z

    .line 49
    return-void
.end method


# virtual methods
.method public build()Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo;
    .locals 5

    .prologue
    .line 52
    new-instance v0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo;

    iget-wide v2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo$Builder;->mLevel:D

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo$Builder;->mMuted:Z

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo;-><init>(DZLorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$1;)V

    return-object v0
.end method

.method public setLevel(D)Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo$Builder;
    .locals 1

    .prologue
    .line 36
    iput-wide p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo$Builder;->mLevel:D

    .line 37
    return-object p0
.end method

.method public setMuted(Z)Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo$Builder;
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo$Builder;->mMuted:Z

    .line 42
    return-object p0
.end method
