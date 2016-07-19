.class public interface abstract Lorg/chromium/chrome/browser/media/remote/MediaRouteController;
.super Ljava/lang/Object;
.source "MediaRouteController.java"


# virtual methods
.method public abstract addMediaStateListener(Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;)V
.end method

.method public abstract addUiListener(Lorg/chromium/chrome/browser/media/remote/MediaRouteController$UiListener;)V
.end method

.method public abstract buildMediaRouteSelector()Landroid/support/v7/media/e;
.end method

.method public abstract canPlayMedia(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract checkIfPlayableRemotely(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaValidationCallback;)V
.end method

.method public abstract getDuration()J
.end method

.method public abstract getMediaStateListener()Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;
.end method

.method public abstract getPlayerState()Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;
.end method

.method public abstract getPosition()J
.end method

.method public abstract getPoster()Landroid/graphics/Bitmap;
.end method

.method public abstract getRouteName()Ljava/lang/String;
.end method

.method public abstract getUriPlaying()Ljava/lang/String;
.end method

.method public abstract initialize()Z
.end method

.method public abstract isBeingCast()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract onRouteSelected(Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
.end method

.method public abstract pause()V
.end method

.method public abstract prepareMediaRoute()V
.end method

.method public abstract release()V
.end method

.method public abstract removeMediaStateListener(Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;)V
.end method

.method public abstract removeUiListener(Lorg/chromium/chrome/browser/media/remote/MediaRouteController$UiListener;)V
.end method

.method public abstract resume()V
.end method

.method public abstract routeIsDefaultRoute()Z
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract setMediaStateListener(Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;)V
.end method

.method public abstract setRemoteVolume(I)V
.end method

.method public abstract shouldResetState(Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;)Z
.end method
