.class Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;
.super Ljava/lang/Object;
.source "RemoteMediaPlayerBridge.java"

# interfaces
.implements Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCookies()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    # getter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mCookies:Ljava/lang/String;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$1700(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFrameUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    # getter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mFrameUrl:Ljava/lang/String;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$1800(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPosition()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 107
    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    # getter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mNativeRemoteMediaPlayerBridge:J
    invoke-static {v2}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$300(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 108
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    # getter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mNativeRemoteMediaPlayerBridge:J
    invoke-static {v1}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$300(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)J

    move-result-wide v2

    # invokes: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->nativeGetLocalPosition(J)I
    invoke-static {v0, v2, v3}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$1300(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;J)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getPosterBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    # getter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mPosterBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$1100(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getSeekLocation()J
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    # getter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mSeekLocation:J
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$2200(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSourceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    # getter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mSourceUrl:Ljava/lang/String;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$1600(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartPositionMillis()J
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    # getter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mStartPositionMillis:J
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$1900(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    # getter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mNativeRemoteMediaPlayerBridge:J
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$300(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    # getter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mNativeRemoteMediaPlayerBridge:J
    invoke-static {v1}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$300(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)J

    move-result-wide v2

    # invokes: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->nativeGetTitle(J)Ljava/lang/String;
    invoke-static {v0, v2, v3}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$1000(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isPauseRequested()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    # getter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mPauseRequested:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$2000(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)Z

    move-result v0

    return v0
.end method

.method public isSeekRequested()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    # getter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mSeekRequested:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$2100(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)Z

    move-result v0

    return v0
.end method

.method public onCastStarting(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    # getter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mNativeRemoteMediaPlayerBridge:J
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$300(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    # getter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mNativeRemoteMediaPlayerBridge:J
    invoke-static {v1}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$300(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)J

    move-result-wide v2

    invoke-static {}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->instance()Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->getCastingMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->nativeOnCastStarting(JLjava/lang/String;)V
    invoke-static {v0, v2, v3, v1}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$1400(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;JLjava/lang/String;)V

    .line 117
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    const/4 v1, 0x1

    # setter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mActive:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$202(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;Z)Z

    .line 118
    return-void
.end method

.method public onCastStopping()V
    .locals 4

    .prologue
    .line 122
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    # getter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mNativeRemoteMediaPlayerBridge:J
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$300(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    # getter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mNativeRemoteMediaPlayerBridge:J
    invoke-static {v1}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$300(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)J

    move-result-wide v2

    # invokes: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->nativeOnCastStopping(J)V
    invoke-static {v0, v2, v3}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$1500(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;J)V

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mActive:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$202(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;Z)Z

    .line 127
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mPosterBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$1102(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 128
    return-void
.end method

.method public onError()V
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    # getter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mActive:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$200(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    # getter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mNativeRemoteMediaPlayerBridge:J
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$300(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    # getter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mNativeRemoteMediaPlayerBridge:J
    invoke-static {v1}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$300(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)J

    move-result-wide v2

    # invokes: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->nativeOnError(J)V
    invoke-static {v0, v2, v3}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$400(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;J)V

    .line 61
    :cond_0
    return-void
.end method

.method public onPlaybackStateChanged(Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;)V
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    # getter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mNativeRemoteMediaPlayerBridge:J
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$300(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->FINISHED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    if-eq p1, v0, :cond_2

    sget-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->INVALIDATED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    if-ne p1, v0, :cond_3

    .line 80
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    # getter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mNativeRemoteMediaPlayerBridge:J
    invoke-static {v1}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$300(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)J

    move-result-wide v2

    # invokes: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->nativeOnPlaybackFinished(J)V
    invoke-static {v0, v2, v3}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$700(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;J)V

    goto :goto_0

    .line 81
    :cond_3
    sget-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->PLAYING:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    if-ne p1, v0, :cond_4

    .line 82
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    # getter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mNativeRemoteMediaPlayerBridge:J
    invoke-static {v1}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$300(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)J

    move-result-wide v2

    # invokes: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->nativeOnPlaying(J)V
    invoke-static {v0, v2, v3}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$800(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;J)V

    goto :goto_0

    .line 83
    :cond_4
    sget-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->PAUSED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    if-ne p1, v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    # getter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mNativeRemoteMediaPlayerBridge:J
    invoke-static {v1}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$300(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)J

    move-result-wide v2

    # invokes: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->nativeOnPaused(J)V
    invoke-static {v0, v2, v3}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$900(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;J)V

    goto :goto_0
.end method

.method public onRouteAvailabilityChanged(Z)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    # setter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mRouteIsAvailable:Z
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$002(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;Z)Z

    .line 53
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    # invokes: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->onRouteAvailabilityChange()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$100(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)V

    .line 54
    return-void
.end method

.method public onRouteUnselected()V
    .locals 4

    .prologue
    .line 72
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    # getter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mNativeRemoteMediaPlayerBridge:J
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$300(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    # getter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mNativeRemoteMediaPlayerBridge:J
    invoke-static {v1}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$300(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)J

    move-result-wide v2

    # invokes: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->nativeOnRouteUnselected(J)V
    invoke-static {v0, v2, v3}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$600(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;J)V

    goto :goto_0
.end method

.method public onSeekCompleted()V
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    # getter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mActive:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$200(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    # getter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mNativeRemoteMediaPlayerBridge:J
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$300(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    # getter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mNativeRemoteMediaPlayerBridge:J
    invoke-static {v1}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$300(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)J

    move-result-wide v2

    # invokes: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->nativeOnSeekCompleted(J)V
    invoke-static {v0, v2, v3}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$500(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;J)V

    .line 68
    :cond_0
    return-void
.end method

.method public pauseLocal()V
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    # getter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mNativeRemoteMediaPlayerBridge:J
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$300(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge$1;->this$0:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;

    # getter for: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->mNativeRemoteMediaPlayerBridge:J
    invoke-static {v1}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$300(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;)J

    move-result-wide v2

    # invokes: Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->nativePauseLocal(J)V
    invoke-static {v0, v2, v3}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;->access$1200(Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerBridge;J)V

    goto :goto_0
.end method
