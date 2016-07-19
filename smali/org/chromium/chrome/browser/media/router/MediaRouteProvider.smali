.class public interface abstract Lorg/chromium/chrome/browser/media/router/MediaRouteProvider;
.super Ljava/lang/Object;
.source "MediaRouteProvider.java"


# virtual methods
.method public abstract closeRoute(Ljava/lang/String;)V
.end method

.method public abstract createRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract detachRoute(Ljava/lang/String;)V
.end method

.method public abstract joinRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract sendBinaryMessage(Ljava/lang/String;[BI)V
.end method

.method public abstract sendStringMessage(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract startObservingMediaSinks(Ljava/lang/String;)V
.end method

.method public abstract stopObservingMediaSinks(Ljava/lang/String;)V
.end method

.method public abstract supportsSource(Ljava/lang/String;)Z
.end method
