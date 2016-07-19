.class Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity$1;
.super Landroid/support/v4/media/r;
.source "ExpandedControllerActivity.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity$1;->this$0:Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;

    invoke-direct {p0}, Landroid/support/v4/media/r;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetCurrentPosition()J
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity$1;->this$0:Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;

    # getter for: Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->access$000(Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;)Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 90
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity$1;->this$0:Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;

    # getter for: Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->access$000(Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;)Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->getPosition()J

    move-result-wide v0

    goto :goto_0
.end method

.method public onGetDuration()J
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity$1;->this$0:Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;

    # getter for: Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->access$000(Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;)Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 84
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity$1;->this$0:Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;

    # getter for: Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->access$000(Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;)Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->getDuration()J

    move-result-wide v0

    goto :goto_0
.end method

.method public onGetTransportControlFlags()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity$1;->this$0:Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;

    # getter for: Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->access$000(Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;)Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity$1;->this$0:Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;

    # getter for: Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->access$000(Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;)Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const/16 v0, 0x52

    .line 117
    :goto_0
    return v0

    .line 115
    :cond_0
    const/16 v0, 0x46

    goto :goto_0
.end method

.method public onIsPlaying()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity$1;->this$0:Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;

    # getter for: Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->access$000(Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;)Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 105
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity$1;->this$0:Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;

    # getter for: Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->access$000(Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;)Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 74
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity$1;->this$0:Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;

    # getter for: Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->access$000(Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;)Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity$1;->this$0:Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;

    # getter for: Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->access$000(Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;)Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->pause()V

    .line 76
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity$1;->this$0:Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;

    # getter for: Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->access$000(Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;)Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->getMediaStateListener()Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/media/remote/RecordCastAction;->recordFullscreenControlsAction(IZ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onSeekTo(J)V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity$1;->this$0:Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;

    # getter for: Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->access$000(Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;)Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity$1;->this$0:Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;

    # getter for: Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->access$000(Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;)Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->seekTo(J)V

    .line 97
    const/4 v1, 0x2

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity$1;->this$0:Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;

    # getter for: Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->access$000(Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;)Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->getMediaStateListener()Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/media/remote/RecordCastAction;->recordFullscreenControlsAction(IZ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity$1;->this$0:Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;

    # getter for: Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->access$000(Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;)Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity$1;->this$0:Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;

    # getter for: Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->access$000(Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;)Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->resume()V

    .line 60
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity$1;->this$0:Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;

    # getter for: Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->access$000(Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;)Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->getMediaStateListener()Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/media/remote/RecordCastAction;->recordFullscreenControlsAction(IZ)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity$1;->this$0:Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;

    # getter for: Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->access$000(Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;)Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity$1;->onPause()V

    .line 69
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity$1;->this$0:Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;

    # getter for: Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->access$000(Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;)Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->release()V

    goto :goto_0
.end method
