.class Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider$OnSinksReceivedRunnable;
.super Ljava/lang/Object;
.source "CastMediaRouteProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mRouteManager:Ljava/lang/ref/WeakReference;

.field private final mRouteProvider:Lorg/chromium/chrome/browser/media/router/MediaRouteProvider;

.field private final mSinks:Ljava/util/List;

.field private final mSourceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/media/router/MediaRouteManager;Lorg/chromium/chrome/browser/media/router/MediaRouteProvider;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider$OnSinksReceivedRunnable;->mRouteManager:Ljava/lang/ref/WeakReference;

    .line 77
    iput-object p2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider$OnSinksReceivedRunnable;->mRouteProvider:Lorg/chromium/chrome/browser/media/router/MediaRouteProvider;

    .line 78
    iput-object p3, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider$OnSinksReceivedRunnable;->mSourceId:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider$OnSinksReceivedRunnable;->mSinks:Ljava/util/List;

    .line 80
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 84
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider$OnSinksReceivedRunnable;->mRouteManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/router/MediaRouteManager;

    .line 85
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider$OnSinksReceivedRunnable;->mSourceId:Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider$OnSinksReceivedRunnable;->mRouteProvider:Lorg/chromium/chrome/browser/media/router/MediaRouteProvider;

    iget-object v3, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider$OnSinksReceivedRunnable;->mSinks:Ljava/util/List;

    invoke-interface {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/media/router/MediaRouteManager;->onSinksReceived(Ljava/lang/String;Lorg/chromium/chrome/browser/media/router/MediaRouteProvider;Ljava/util/List;)V

    .line 86
    :cond_0
    return-void
.end method
