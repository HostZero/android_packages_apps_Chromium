.class public Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;
.super Ljava/lang/Object;
.source "CastNotificationControl.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lorg/chromium/chrome/browser/media/remote/MediaRouteController$UiListener;
.implements Lorg/chromium/chrome/browser/media/ui/MediaNotificationListener;


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static sInstance:Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mIsShowing:Z

.field protected mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

.field private mNotificationBuilder:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

.field private mPosterBitmap:Landroid/graphics/Bitmap;

.field private mState:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    .line 37
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mTitle:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mIsShowing:Z

    .line 46
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mContext:Landroid/content/Context;

    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mAudioManager:Landroid/media/AudioManager;

    .line 48
    return-void
.end method

.method static getForTests()Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->sInstance:Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;

    return-object v0
.end method

.method public static getOrCreate(Landroid/content/Context;Lorg/chromium/chrome/browser/media/remote/MediaRouteController;)Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;
    .locals 2

    .prologue
    .line 58
    sget-object v1, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 59
    :try_start_0
    sget-object v0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->sInstance:Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->sInstance:Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;

    .line 62
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->sInstance:Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;

    iput-object p1, v0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    .line 63
    sget-object v0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->sInstance:Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;

    monitor-exit v1

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateNotification()V
    .locals 5

    .prologue
    .line 121
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mNotificationBuilder:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    new-instance v1, Lorg/chromium/content_public/common/MediaMetadata;

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mTitle:Ljava/lang/String;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-direct {v1, v2, v3, v4}, Lorg/chromium/content_public/common/MediaMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->setMetadata(Lorg/chromium/content_public/common/MediaMetadata;)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    .line 122
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mState:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    sget-object v1, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->PAUSED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mState:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    sget-object v1, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->PLAYING:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    if-ne v0, v1, :cond_2

    .line 123
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mNotificationBuilder:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mState:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    sget-object v2, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->PLAYING:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    if-eq v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->setPaused(Z)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    .line 124
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mNotificationBuilder:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->setActions(I)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    .line 126
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mNotificationBuilder:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->build()Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->show(Landroid/content/Context;Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;)V

    .line 133
    :goto_1
    return-void

    .line 123
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 127
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mState:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    sget-object v1, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->LOADING:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    if-ne v0, v1, :cond_3

    .line 128
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mNotificationBuilder:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->setActions(I)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    .line 129
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mNotificationBuilder:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->build()Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->show(Landroid/content/Context;Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;)V

    goto :goto_1

    .line 131
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->hide()V

    goto :goto_1
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mIsShowing:Z

    .line 91
    const/4 v0, -0x1

    sget v1, Lorg/chromium/chrome/R$id;->remote_notification:I

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->hide(II)V

    .line 92
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 93
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->removeUiListener(Lorg/chromium/chrome/browser/media/remote/MediaRouteController$UiListener;)V

    .line 94
    return-void
.end method

.method isShowingForTests()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mIsShowing:Z

    return v0
.end method

.method public onAudioFocusChange(I)V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public onDurationUpdated(J)V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public onPause(I)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->pause()V

    .line 190
    return-void
.end method

.method public onPlay(I)V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->resume()V

    .line 185
    return-void
.end method

.method public onPlaybackStateChanged(Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;)V
    .locals 0

    .prologue
    .line 146
    iput-object p2, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mState:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    .line 147
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->updateNotification()V

    .line 148
    return-void
.end method

.method public onPositionChanged(J)V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public onPrepared(Lorg/chromium/chrome/browser/media/remote/MediaRouteController;)V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public onRouteSelected(Ljava/lang/String;Lorg/chromium/chrome/browser/media/remote/MediaRouteController;)V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public onRouteUnselected(Lorg/chromium/chrome/browser/media/remote/MediaRouteController;)V
    .locals 0

    .prologue
    .line 156
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->hide()V

    .line 157
    return-void
.end method

.method public onStop(I)V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->release()V

    .line 195
    return-void
.end method

.method public onTitleChanged(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 177
    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mTitle:Ljava/lang/String;

    .line 178
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->updateNotification()V

    .line 179
    return-void
.end method

.method public final setPosterBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mPosterBitmap:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mPosterBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mPosterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mPosterBitmap:Landroid/graphics/Bitmap;

    .line 84
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mNotificationBuilder:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mNotificationBuilder:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->getPoster()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->setImage(Landroid/graphics/Bitmap;)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    .line 86
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->updateNotification()V

    goto :goto_0
.end method

.method public setRouteController(Lorg/chromium/chrome/browser/media/remote/MediaRouteController;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    .line 118
    return-void
.end method

.method public show(Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->addUiListener(Lorg/chromium/chrome/browser/media/remote/MediaRouteController$UiListener;)V

    .line 100
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mAudioManager:Landroid/media/AudioManager;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, p0, v1, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 102
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mContext:Landroid/content/Context;

    const-class v2, Lorg/chromium/chrome/browser/media/remote/ExpandedControllerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    new-instance v1, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;-><init>()V

    invoke-virtual {v1, v3}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->setPaused(Z)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->setPrivate(Z)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$drawable;->ic_notification_media_route:I

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->setIcon(I)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->setContentIntent(Landroid/content/Intent;)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mMediaRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->getPoster()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->setImage(Landroid/graphics/Bitmap;)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$id;->remote_notification:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->setId(I)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->setListener(Lorg/chromium/chrome/browser/media/ui/MediaNotificationListener;)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mNotificationBuilder:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    .line 111
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mState:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    .line 112
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->updateNotification()V

    .line 113
    iput-boolean v4, p0, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->mIsShowing:Z

    .line 114
    return-void
.end method
