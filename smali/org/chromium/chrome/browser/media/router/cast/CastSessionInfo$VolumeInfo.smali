.class public Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo;
.super Ljava/lang/Object;
.source "CastSessionInfo.java"


# instance fields
.field public final level:D

.field public final muted:Z


# direct methods
.method private constructor <init>(DZ)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-wide p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo;->level:D

    .line 58
    iput-boolean p3, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo;->muted:Z

    .line 59
    return-void
.end method

.method synthetic constructor <init>(DZLorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$1;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo$VolumeInfo;-><init>(DZ)V

    return-void
.end method
