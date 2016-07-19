.class Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$3;
.super Ljava/lang/Object;
.source "CastSessionImpl.java"

# interfaces
.implements Lcom/google/android/gms/common/api/m;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$3;->this$0:Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 411
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$3;->this$0:Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;

    # getter for: Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mMessageHandler:Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->access$200(Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;)Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->onApplicationStopped()V

    .line 415
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$3;->this$0:Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;

    # getter for: Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mNamespaces:Ljava/util/Set;
    invoke-static {v1}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->access$300(Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 416
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$3;->this$0:Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;

    # invokes: Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->unregisterNamespace(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->access$400(Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;Ljava/lang/String;)V

    goto :goto_0

    .line 417
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$3;->this$0:Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;

    # getter for: Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mNamespaces:Ljava/util/Set;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->access$300(Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 419
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$3;->this$0:Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;

    # setter for: Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mSessionId:Ljava/lang/String;
    invoke-static {v0, v3}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->access$502(Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 420
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$3;->this$0:Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;

    # setter for: Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mApiClient:Lcom/google/android/gms/common/api/g;
    invoke-static {v0, v3}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->access$602(Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/g;

    .line 422
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$3;->this$0:Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;

    # getter for: Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mRouteProvider:Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->access$700(Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;)Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->onSessionClosed()V

    .line 423
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$3;->this$0:Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->mStoppingApplication:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;->access$802(Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl;Z)Z

    .line 425
    sget v0, Lorg/chromium/chrome/R$id;->presentation_notification:I

    invoke-static {v0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->clear(I)V

    .line 426
    return-void
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/o;)V
    .locals 0

    .prologue
    .line 408
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/media/router/cast/CastSessionImpl$3;->onResult(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
