.class public interface abstract Lorg/chromium/chrome/browser/media/router/cast/CastSession;
.super Ljava/lang/Object;
.source "CastSession.java"


# virtual methods
.method public abstract getMessageHandler()Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;
.end method

.method public abstract getNamespaces()Ljava/util/Set;
.end method

.method public abstract getSessionId()Ljava/lang/String;
.end method

.method public abstract getSessionInfo()Lorg/chromium/chrome/browser/media/router/cast/CastSessionInfo;
.end method

.method public abstract getSinkId()Ljava/lang/String;
.end method

.method public abstract getSourceId()Ljava/lang/String;
.end method

.method public abstract handleVolumeMessage(Lorg/json/JSONObject;Ljava/lang/String;I)Lorg/chromium/chrome/browser/media/router/cast/CastSession$HandleVolumeMessageResult;
.end method

.method public abstract isApiClientInvalid()Z
.end method

.method public abstract onClientConnected(Ljava/lang/String;)V
.end method

.method public abstract onMediaMessage(Ljava/lang/String;)V
.end method

.method public abstract onVolumeChanged()V
.end method

.method public abstract sendStringCastMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract stopApplication()V
.end method

.method public abstract updateSessionStatus()V
.end method
