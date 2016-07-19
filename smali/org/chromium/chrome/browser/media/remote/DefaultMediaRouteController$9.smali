.class Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$9;
.super Ljava/lang/Object;
.source "DefaultMediaRouteController.java"

# interfaces
.implements Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$ResultBundleHandler;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$9;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$9;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    # invokes: Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->disconnect()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->access$1100(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;)V

    .line 463
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 441
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$9;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    # getter for: Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mDebug:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->access$600(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    const-string/jumbo v0, "android.media.intent.extra.SESSION_STATUS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/media/E;->a(Landroid/os/Bundle;)Landroid/support/v7/media/E;

    move-result-object v0

    .line 444
    invoke-virtual {v0}, Landroid/support/v7/media/E;->a()I

    move-result v0

    .line 445
    const-string/jumbo v1, "DefaultMediaRouteController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Session state after ending session: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$9;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getUiListeners()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$UiListener;

    .line 449
    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$9;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getPlayerState()Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    move-result-object v2

    sget-object v3, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->FINISHED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    invoke-interface {v0, v2, v3}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$UiListener;->onPlaybackStateChanged(Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;)V

    goto :goto_0

    .line 452
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$9;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getMediaStateListener()Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 453
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$9;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getMediaStateListener()Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    move-result-object v0

    sget-object v1, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->FINISHED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;->onPlaybackStateChanged(Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;)V

    .line 455
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$9;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    # getter for: Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mStreamDuration:J
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->access$1000(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$9;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    # getter for: Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->mStreamDuration:J
    invoke-static {v2}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->access$1000(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;)J

    move-result-wide v2

    iget-object v4, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$9;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/media/remote/RecordCastAction;->castEndedTimeRemaining(JJ)V

    .line 457
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController$9;->this$0:Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;

    # invokes: Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->disconnect()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;->access$1100(Lorg/chromium/chrome/browser/media/remote/DefaultMediaRouteController;)V

    .line 458
    return-void
.end method
