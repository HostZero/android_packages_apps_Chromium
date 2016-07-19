.class Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;
.super Landroid/view/SurfaceView;
.source "ContentVideoView.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/ContentVideoView;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/ContentVideoView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    .line 83
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 84
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 90
    .line 92
    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    # getter for: Lorg/chromium/content/browser/ContentVideoView;->mVideoWidth:I
    invoke-static {v0}, Lorg/chromium/content/browser/ContentVideoView;->access$000(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    # getter for: Lorg/chromium/content/browser/ContentVideoView;->mVideoHeight:I
    invoke-static {v0}, Lorg/chromium/content/browser/ContentVideoView;->access$100(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v0

    if-lez v0, :cond_4

    .line 93
    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    # getter for: Lorg/chromium/content/browser/ContentVideoView;->mVideoWidth:I
    invoke-static {v0}, Lorg/chromium/content/browser/ContentVideoView;->access$000(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v0

    invoke-static {v0, p1}, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->getDefaultSize(II)I

    move-result v2

    .line 94
    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    # getter for: Lorg/chromium/content/browser/ContentVideoView;->mVideoHeight:I
    invoke-static {v0}, Lorg/chromium/content/browser/ContentVideoView;->access$100(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v0

    invoke-static {v0, p2}, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->getDefaultSize(II)I

    move-result v0

    .line 95
    iget-object v3, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    # getter for: Lorg/chromium/content/browser/ContentVideoView;->mVideoWidth:I
    invoke-static {v3}, Lorg/chromium/content/browser/ContentVideoView;->access$000(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v3

    mul-int/2addr v3, v0

    iget-object v4, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    # getter for: Lorg/chromium/content/browser/ContentVideoView;->mVideoHeight:I
    invoke-static {v4}, Lorg/chromium/content/browser/ContentVideoView;->access$100(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v4

    mul-int/2addr v4, v2

    if-le v3, v4, :cond_2

    .line 96
    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    # getter for: Lorg/chromium/content/browser/ContentVideoView;->mVideoHeight:I
    invoke-static {v0}, Lorg/chromium/content/browser/ContentVideoView;->access$100(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v0

    mul-int/2addr v0, v2

    iget-object v3, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    # getter for: Lorg/chromium/content/browser/ContentVideoView;->mVideoWidth:I
    invoke-static {v3}, Lorg/chromium/content/browser/ContentVideoView;->access$000(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v3

    div-int/2addr v0, v3

    .line 101
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    # getter for: Lorg/chromium/content/browser/ContentVideoView;->mUmaRecorded:Z
    invoke-static {v3}, Lorg/chromium/content/browser/ContentVideoView;->access$200(Lorg/chromium/content/browser/ContentVideoView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    iget-object v3, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    # getter for: Lorg/chromium/content/browser/ContentVideoView;->mPlaybackStartTime:J
    invoke-static {v3}, Lorg/chromium/content/browser/ContentVideoView;->access$300(Lorg/chromium/content/browser/ContentVideoView;)J

    move-result-wide v4

    iget-object v3, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    # getter for: Lorg/chromium/content/browser/ContentVideoView;->mOrientationChangedTime:J
    invoke-static {v3}, Lorg/chromium/content/browser/ContentVideoView;->access$400(Lorg/chromium/content/browser/ContentVideoView;)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 105
    iget-object v1, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    # invokes: Lorg/chromium/content/browser/ContentVideoView;->isOrientationPortrait()Z
    invoke-static {v1}, Lorg/chromium/content/browser/ContentVideoView;->access$500(Lorg/chromium/content/browser/ContentVideoView;)Z

    move-result v1

    iget-object v3, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    # getter for: Lorg/chromium/content/browser/ContentVideoView;->mInitialOrientation:Z
    invoke-static {v3}, Lorg/chromium/content/browser/ContentVideoView;->access$600(Lorg/chromium/content/browser/ContentVideoView;)Z

    move-result v3

    if-eq v1, v3, :cond_1

    .line 106
    iget-object v1, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # setter for: Lorg/chromium/content/browser/ContentVideoView;->mOrientationChangedTime:J
    invoke-static {v1, v4, v5}, Lorg/chromium/content/browser/ContentVideoView;->access$402(Lorg/chromium/content/browser/ContentVideoView;J)J

    .line 118
    :cond_1
    :goto_1
    invoke-virtual {p0, v2, v0}, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->setMeasuredDimension(II)V

    .line 119
    return-void

    .line 97
    :cond_2
    iget-object v3, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    # getter for: Lorg/chromium/content/browser/ContentVideoView;->mVideoWidth:I
    invoke-static {v3}, Lorg/chromium/content/browser/ContentVideoView;->access$000(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v3

    mul-int/2addr v3, v0

    iget-object v4, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    # getter for: Lorg/chromium/content/browser/ContentVideoView;->mVideoHeight:I
    invoke-static {v4}, Lorg/chromium/content/browser/ContentVideoView;->access$100(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v4

    mul-int/2addr v4, v2

    if-ge v3, v4, :cond_0

    .line 98
    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    # getter for: Lorg/chromium/content/browser/ContentVideoView;->mVideoWidth:I
    invoke-static {v2}, Lorg/chromium/content/browser/ContentVideoView;->access$000(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v2

    mul-int/2addr v2, v0

    iget-object v3, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    # getter for: Lorg/chromium/content/browser/ContentVideoView;->mVideoHeight:I
    invoke-static {v3}, Lorg/chromium/content/browser/ContentVideoView;->access$100(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v3

    div-int/2addr v2, v3

    goto :goto_0

    .line 111
    :cond_3
    iget-object v3, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    # getter for: Lorg/chromium/content/browser/ContentVideoView;->mPossibleAccidentalChange:Z
    invoke-static {v3}, Lorg/chromium/content/browser/ContentVideoView;->access$700(Lorg/chromium/content/browser/ContentVideoView;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    # invokes: Lorg/chromium/content/browser/ContentVideoView;->isOrientationPortrait()Z
    invoke-static {v3}, Lorg/chromium/content/browser/ContentVideoView;->access$500(Lorg/chromium/content/browser/ContentVideoView;)Z

    move-result v3

    iget-object v4, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    # getter for: Lorg/chromium/content/browser/ContentVideoView;->mInitialOrientation:Z
    invoke-static {v4}, Lorg/chromium/content/browser/ContentVideoView;->access$600(Lorg/chromium/content/browser/ContentVideoView;)Z

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    # getter for: Lorg/chromium/content/browser/ContentVideoView;->mOrientationChangedTime:J
    invoke-static {v3}, Lorg/chromium/content/browser/ContentVideoView;->access$400(Lorg/chromium/content/browser/ContentVideoView;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1388

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    .line 114
    iget-object v3, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    # setter for: Lorg/chromium/content/browser/ContentVideoView;->mPossibleAccidentalChange:Z
    invoke-static {v3, v1}, Lorg/chromium/content/browser/ContentVideoView;->access$702(Lorg/chromium/content/browser/ContentVideoView;Z)Z

    goto :goto_1

    :cond_4
    move v0, v1

    move v2, v1

    goto/16 :goto_0
.end method
