.class Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest$CastListener;
.super Lcom/google/android/gms/cast/j;
.source "CreateRouteRequest.java"


# instance fields
.field private mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

.field final synthetic this$0:Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest$CastListener;->this$0:Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest;

    invoke-direct {p0}, Lcom/google/android/gms/cast/j;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplicationDisconnected(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 73
    if-eqz p1, :cond_0

    .line 74
    const-string/jumbo v0, "MediaRouter"

    const-string/jumbo v1, "Application disconnected with: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest$CastListener;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    if-nez v0, :cond_1

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest$CastListener;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/router/cast/CastSession;->stopApplication()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest$CastListener;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    goto :goto_0
.end method

.method public onApplicationMetadataChanged(Lcom/google/android/gms/cast/ApplicationMetadata;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest$CastListener;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    if-nez v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest$CastListener;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/router/cast/CastSession;->updateSessionStatus()V

    goto :goto_0
.end method

.method public onApplicationStatusChanged()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest$CastListener;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest$CastListener;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/router/cast/CastSession;->updateSessionStatus()V

    goto :goto_0
.end method

.method public onVolumeChanged()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest$CastListener;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest$CastListener;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/router/cast/CastSession;->onVolumeChanged()V

    goto :goto_0
.end method

.method setSession(Lorg/chromium/chrome/browser/media/router/cast/CastSession;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CreateRouteRequest$CastListener;->mSession:Lorg/chromium/chrome/browser/media/router/cast/CastSession;

    .line 55
    return-void
.end method
