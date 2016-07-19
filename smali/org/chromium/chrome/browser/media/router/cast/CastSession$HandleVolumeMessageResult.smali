.class public Lorg/chromium/chrome/browser/media/router/cast/CastSession$HandleVolumeMessageResult;
.super Ljava/lang/Object;
.source "CastSession.java"


# instance fields
.field public final mShouldWaitForVolumeChange:Z

.field public final mSucceeded:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSession$HandleVolumeMessageResult;->mSucceeded:Z

    .line 32
    iput-boolean p2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSession$HandleVolumeMessageResult;->mShouldWaitForVolumeChange:Z

    .line 33
    return-void
.end method
