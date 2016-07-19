.class public Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;
.super Landroid/support/v4/app/w;
.source "ExpandedControllerActivity.java"

# interfaces
.implements Lorg/chromium/chrome/browser/media/remote/MediaRouteController$UiListener;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMediaController:Lorg/chromium/third_party/android/media/MediaController;

.field private mMediaRouteButton:Lorg/chromium/chrome/browser/media/remote/FullscreenMediaRouteButton;

.field private mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

.field private mProgressUpdater:Ljava/lang/Runnable;

.field private mScreenName:Ljava/lang/String;

.field private mTransportMediator:Landroid/support/v4/media/g;

.field private mTransportPerformer:Landroid/support/v4/media/r;

.field private mVideoInfo:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/w;-><init>()V

    .line 55
    new-instance v0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity$1;-><init>(Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mTransportPerformer:Landroid/support/v4/media/r;

    .line 121
    new-instance v0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity$2;-><init>(Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mProgressUpdater:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;)Lorg/chromium/chrome/browser/media/remote/MediaRouteController;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;)Lorg/chromium/third_party/android/media/MediaController;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaController:Lorg/chromium/third_party/android/media/MediaController;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cleanup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 226
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mProgressUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 227
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->removeUiListener(Lorg/chromium/chrome/browser/media/remote/MediaRouteController$UiListener;)V

    .line 228
    :cond_1
    iput-object v2, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    .line 229
    iput-object v2, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mProgressUpdater:Ljava/lang/Runnable;

    .line 230
    return-void
.end method

.method private handleVolumeKeyEvent(Lorg/chromium/chrome/browser/media/remote/MediaRouteController;Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 345
    invoke-interface {p1}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->isBeingCast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 358
    :goto_0
    return v0

    .line 347
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 348
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 350
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 355
    :pswitch_0
    if-nez v2, :cond_1

    invoke-interface {p1, v1}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->setRemoteVolume(I)V

    :cond_1
    move v0, v1

    .line 356
    goto :goto_0

    .line 352
    :pswitch_1
    if-nez v2, :cond_2

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->setRemoteVolume(I)V

    :cond_2
    move v0, v1

    .line 353
    goto :goto_0

    .line 350
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onScreenNameChanged()V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->updateUi()V

    .line 265
    return-void
.end method

.method private onVideoInfoChanged()V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->updateUi()V

    .line 261
    return-void
.end method

.method private scheduleProgressUpdate()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mProgressUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 244
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mProgressUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 247
    :cond_0
    return-void
.end method

.method private setScreenName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mScreenName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mScreenName:Ljava/lang/String;

    .line 256
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->onScreenNameChanged()V

    goto :goto_0
.end method

.method private final setVideoInfo(Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;)V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mVideoInfo:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;

    if-nez v0, :cond_1

    if-nez p1, :cond_2

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mVideoInfo:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    :cond_2
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mVideoInfo:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;

    .line 239
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->onVideoInfoChanged()V

    goto :goto_0
.end method

.method private updateUi()V
    .locals 5

    .prologue
    .line 268
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaController:Lorg/chromium/third_party/android/media/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    if-nez v0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->getRouteName()Ljava/lang/String;

    move-result-object v1

    .line 271
    const-string/jumbo v0, ""

    .line 272
    if-eqz v1, :cond_2

    .line 273
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$string;->cast_casting_video:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 275
    :goto_1
    sget v0, Lorg/chromium/chrome/R$id;->cast_screen_title:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 276
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaController:Lorg/chromium/third_party/android/media/MediaController;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/media/MediaController;->refresh()V

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 216
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 217
    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mVideoInfo:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;

    iget-object v0, v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->state:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    sget-object v1, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->FINISHED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    if-ne v0, v1, :cond_2

    .line 219
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/app/w;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 222
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->handleVolumeKeyEvent(Lorg/chromium/chrome/browser/media/remote/MediaRouteController;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    const/16 v4, 0x400

    const/4 v1, 0x0

    .line 135
    invoke-super {p0, p1}, Landroid/support/v4/app/w;->onCreate(Landroid/os/Bundle;)V

    .line 137
    invoke-static {}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->instance()Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->getCurrentlyPlayingMediaRouteController()Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    .line 140
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->routeIsDefaultRoute()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->finish()V

    .line 186
    :goto_0
    return-void

    .line 147
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->requestWindowFeature(I)Z

    .line 148
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 152
    sget v0, Lorg/chromium/chrome/R$layout;->expanded_cast_controller:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->setContentView(I)V

    .line 153
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mHandler:Landroid/os/Handler;

    .line 155
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 156
    const/high16 v4, -0x1000000

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 158
    iget-object v4, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    invoke-interface {v4, p0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->addUiListener(Lorg/chromium/chrome/browser/media/remote/MediaRouteController$UiListener;)V

    .line 162
    new-instance v4, Landroid/support/v4/media/g;

    iget-object v5, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mTransportPerformer:Landroid/support/v4/media/r;

    invoke-direct {v4, p0, v5}, Landroid/support/v4/media/g;-><init>(Landroid/app/Activity;Landroid/support/v4/media/r;)V

    iput-object v4, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mTransportMediator:Landroid/support/v4/media/g;

    .line 165
    sget v4, Lorg/chromium/chrome/R$id;->cast_media_controller:I

    invoke-virtual {p0, v4}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/chromium/third_party/android/media/MediaController;

    iput-object v4, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaController:Lorg/chromium/third_party/android/media/MediaController;

    .line 166
    iget-object v4, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaController:Lorg/chromium/third_party/android/media/MediaController;

    iget-object v5, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mTransportMediator:Landroid/support/v4/media/g;

    invoke-virtual {v4, v5}, Lorg/chromium/third_party/android/media/MediaController;->setMediaPlayer(Landroid/support/v4/media/f;)V

    .line 168
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lorg/chromium/chrome/R$layout;->cast_controller_media_route_button:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 171
    instance-of v5, v4, Lorg/chromium/chrome/browser/media/remote/FullscreenMediaRouteButton;

    if-eqz v5, :cond_2

    .line 172
    check-cast v4, Lorg/chromium/chrome/browser/media/remote/FullscreenMediaRouteButton;

    iput-object v4, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteButton:Lorg/chromium/chrome/browser/media/remote/FullscreenMediaRouteButton;

    .line 173
    iget-object v4, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteButton:Lorg/chromium/chrome/browser/media/remote/FullscreenMediaRouteButton;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 174
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteButton:Lorg/chromium/chrome/browser/media/remote/FullscreenMediaRouteButton;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/remote/FullscreenMediaRouteButton;->bringToFront()V

    .line 175
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteButton:Lorg/chromium/chrome/browser/media/remote/FullscreenMediaRouteButton;

    iget-object v4, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    invoke-virtual {v0, v4}, Lorg/chromium/chrome/browser/media/remote/FullscreenMediaRouteButton;->initialize(Lorg/chromium/chrome/browser/media/remote/MediaRouteController;)V

    .line 181
    :goto_1
    new-instance v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;

    sget-object v4, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->STOPPED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    move-wide v5, v2

    move-object v7, v1

    invoke-direct/range {v0 .. v7}, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;-><init>(Ljava/lang/String;JLorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;JLjava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->setVideoInfo(Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;)V

    .line 183
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaController:Lorg/chromium/third_party/android/media/MediaController;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/media/MediaController;->refresh()V

    .line 185
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->scheduleProgressUpdate()V

    goto :goto_0

    .line 177
    :cond_2
    iput-object v1, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteButton:Lorg/chromium/chrome/browser/media/remote/FullscreenMediaRouteButton;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->cleanup()V

    .line 211
    invoke-super {p0}, Landroid/support/v4/app/w;->onDestroy()V

    .line 212
    return-void
.end method

.method public onDurationUpdated(J)V
    .locals 3

    .prologue
    .line 317
    new-instance v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mVideoInfo:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;-><init>(Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;)V

    .line 318
    iput-wide p1, v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->durationMillis:J

    .line 319
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->setVideoInfo(Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;)V

    .line 320
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->finish()V

    .line 299
    :cond_0
    return-void
.end method

.method public onPlaybackStateChanged(Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;)V
    .locals 2

    .prologue
    .line 303
    new-instance v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mVideoInfo:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;-><init>(Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;)V

    .line 304
    iput-object p2, v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->state:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    .line 305
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->setVideoInfo(Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;)V

    .line 307
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->scheduleProgressUpdate()V

    .line 309
    sget-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->FINISHED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    if-eq p2, v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->INVALIDATED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    if-ne p2, v0, :cond_1

    .line 311
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->finish()V

    .line 313
    :cond_1
    return-void
.end method

.method public onPositionChanged(J)V
    .locals 3

    .prologue
    .line 324
    new-instance v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mVideoInfo:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;-><init>(Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;)V

    .line 325
    iput-wide p1, v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->currentTimeMillis:J

    .line 326
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->setVideoInfo(Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;)V

    .line 327
    return-void
.end method

.method public onPrepared(Lorg/chromium/chrome/browser/media/remote/MediaRouteController;)V
    .locals 0

    .prologue
    .line 294
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0}, Landroid/support/v4/app/w;->onResume()V

    .line 191
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mVideoInfo:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;

    iget-object v0, v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->state:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    sget-object v1, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->FINISHED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->finish()V

    .line 192
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    if-nez v0, :cond_2

    .line 206
    :cond_1
    :goto_0
    return-void

    .line 196
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->getMediaStateListener()Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/remote/RecordCastAction;->recordFullscreenControlsShown(Z)V

    .line 199
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->prepareMediaRoute()V

    .line 201
    sget v0, Lorg/chromium/chrome/R$id;->cast_background_image:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 202
    if-eqz v0, :cond_1

    .line 203
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->getPoster()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 204
    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 205
    :cond_3
    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_0

    .line 196
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onRouteSelected(Ljava/lang/String;Lorg/chromium/chrome/browser/media/remote/MediaRouteController;)V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->setScreenName(Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public onRouteUnselected(Lorg/chromium/chrome/browser/media/remote/MediaRouteController;)V
    .locals 0

    .prologue
    .line 288
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->finish()V

    .line 289
    return-void
.end method

.method public onTitleChanged(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 331
    new-instance v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->mVideoInfo:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;-><init>(Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;)V

    .line 332
    iput-object p1, v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->title:Ljava/lang/String;

    .line 333
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;->setVideoInfo(Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;)V

    .line 334
    return-void
.end method
