.class public Lorg/chromium/media/MediaPlayerBridge$AllowedOperations;
.super Ljava/lang/Object;
.source "MediaPlayerBridge.java"


# instance fields
.field private final mCanPause:Z

.field private final mCanSeekBackward:Z

.field private final mCanSeekForward:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-boolean p1, p0, Lorg/chromium/media/MediaPlayerBridge$AllowedOperations;->mCanPause:Z

    .line 331
    iput-boolean p2, p0, Lorg/chromium/media/MediaPlayerBridge$AllowedOperations;->mCanSeekForward:Z

    .line 332
    iput-boolean p3, p0, Lorg/chromium/media/MediaPlayerBridge$AllowedOperations;->mCanSeekBackward:Z

    .line 333
    return-void
.end method

.method private canPause()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lorg/chromium/media/MediaPlayerBridge$AllowedOperations;->mCanPause:Z

    return v0
.end method

.method private canSeekBackward()Z
    .locals 1

    .prologue
    .line 347
    iget-boolean v0, p0, Lorg/chromium/media/MediaPlayerBridge$AllowedOperations;->mCanSeekBackward:Z

    return v0
.end method

.method private canSeekForward()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lorg/chromium/media/MediaPlayerBridge$AllowedOperations;->mCanSeekForward:Z

    return v0
.end method
