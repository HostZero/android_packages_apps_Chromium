.class public interface abstract Lorg/chromium/chrome/browser/media/remote/MediaRouteController$UiListener;
.super Ljava/lang/Object;
.source "MediaRouteController.java"


# virtual methods
.method public abstract onDurationUpdated(J)V
.end method

.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onPlaybackStateChanged(Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;)V
.end method

.method public abstract onPositionChanged(J)V
.end method

.method public abstract onPrepared(Lorg/chromium/chrome/browser/media/remote/MediaRouteController;)V
.end method

.method public abstract onRouteSelected(Ljava/lang/String;Lorg/chromium/chrome/browser/media/remote/MediaRouteController;)V
.end method

.method public abstract onRouteUnselected(Lorg/chromium/chrome/browser/media/remote/MediaRouteController;)V
.end method

.method public abstract onTitleChanged(Ljava/lang/String;)V
.end method
