.class public interface abstract Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;
.super Ljava/lang/Object;
.source "MediaRouteController.java"


# virtual methods
.method public abstract getCookies()Ljava/lang/String;
.end method

.method public abstract getFrameUrl()Ljava/lang/String;
.end method

.method public abstract getLocalPosition()J
.end method

.method public abstract getPosterBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getSeekLocation()J
.end method

.method public abstract getSourceUrl()Ljava/lang/String;
.end method

.method public abstract getStartPositionMillis()J
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract isPauseRequested()Z
.end method

.method public abstract isSeekRequested()Z
.end method

.method public abstract onCastStarting(Ljava/lang/String;)V
.end method

.method public abstract onCastStopping()V
.end method

.method public abstract onError()V
.end method

.method public abstract onPlaybackStateChanged(Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;)V
.end method

.method public abstract onRouteAvailabilityChanged(Z)V
.end method

.method public abstract onRouteUnselected()V
.end method

.method public abstract onSeekCompleted()V
.end method

.method public abstract pauseLocal()V
.end method
