.class public Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;
.super Ljava/lang/Object;
.source "MediaNotificationManager.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOCK:Ljava/lang/Object;

.field private static sManagers:Landroid/util/SparseArray;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultMediaSessionImage:Landroid/graphics/Bitmap;

.field private mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

.field private mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

.field private final mMediaSessionCallback:Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$MediaSessionCallback;

.field private mNotificationBuilder:Landroid/support/v4/app/Z;

.field private mNotificationIcon:Landroid/graphics/Bitmap;

.field private final mPauseDescription:Ljava/lang/String;

.field private final mPlayDescription:Ljava/lang/String;

.field private mService:Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;

.field private final mStopDescription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->$assertionsDisabled:Z

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->LOCK:Ljava/lang/Object;

    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    new-instance v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$MediaSessionCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$MediaSessionCallback;-><init>(Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$1;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaSessionCallback:Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$MediaSessionCallback;

    .line 409
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mContext:Landroid/content/Context;

    .line 410
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->accessibility_play:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mPlayDescription:Ljava/lang/String;

    .line 411
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->accessibility_pause:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mPauseDescription:Ljava/lang/String;

    .line 412
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->accessibility_stop:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mStopDescription:Ljava/lang/String;

    .line 415
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->media_session_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 416
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mDefaultMediaSessionImage:Landroid/graphics/Bitmap;

    .line 417
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mDefaultMediaSessionImage:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$color;->media_session_icon_color:I

    invoke-static {v1, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 419
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->onServiceDestroyed()V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->onServiceStarted(Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;)V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->onPlay(I)V

    return-void
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->onPause(I)V

    return-void
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->onStop(I)V

    return-void
.end method

.method static synthetic access$700(I)Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;
    .locals 1

    .prologue
    .line 45
    invoke-static {p0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->getManager(I)Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;

    move-result-object v0

    return-object v0
.end method

.method public static clear(I)V
    .locals 1

    .prologue
    .line 329
    invoke-static {p0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->getManager(I)Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;

    move-result-object v0

    .line 330
    if-nez v0, :cond_0

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-direct {v0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->clearNotification()V

    .line 333
    sget-object v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->sManagers:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method private clearNotification()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 468
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    if-nez v0, :cond_0

    .line 480
    :goto_0
    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/app/at;->a(Landroid/content/Context;)Landroid/support/v4/app/at;

    move-result-object v0

    .line 471
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget v1, v1, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/at;->a(I)V

    .line 473
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_1

    .line 474
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Z)V

    .line 475
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->b()V

    .line 476
    iput-object v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 478
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 479
    iput-object v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    goto :goto_0
.end method

.method private createContentView()Landroid/widget/RemoteViews;
    .locals 4

    .prologue
    .line 488
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$layout;->playback_notification_bar:I

    invoke-direct {v1, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 492
    sget v0, Lorg/chromium/chrome/R$id;->button1:I

    .line 495
    iget-object v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->supportsSwipeAway()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->supportsStop()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 498
    :cond_1
    sget v0, Lorg/chromium/chrome/R$id;->button1:I

    const-string/jumbo v2, "MediaNotificationManager.ListenerService.STOP"

    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 500
    sget v0, Lorg/chromium/chrome/R$id;->button1:I

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mStopDescription:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 503
    sget v0, Lorg/chromium/chrome/R$id;->button2:I

    .line 506
    :cond_2
    sget v2, Lorg/chromium/chrome/R$id;->title:I

    iget-object v3, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget-object v3, v3, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->metadata:Lorg/chromium/content_public/common/MediaMetadata;

    invoke-virtual {v3}, Lorg/chromium/content_public/common/MediaMetadata;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 507
    sget v2, Lorg/chromium/chrome/R$id;->status:I

    iget-object v3, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget-object v3, v3, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->origin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 508
    iget-object v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mNotificationIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 509
    sget v2, Lorg/chromium/chrome/R$id;->icon:I

    iget-object v3, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mNotificationIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 514
    :goto_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->supportsPlayPause()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 515
    iget-object v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget-boolean v2, v2, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->isPaused:Z

    if-eqz v2, :cond_4

    .line 516
    sget v2, Lorg/chromium/chrome/R$drawable;->ic_vidcontrol_play:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 517
    iget-object v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mPlayDescription:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 518
    const-string/jumbo v2, "MediaNotificationManager.ListenerService.PLAY"

    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 528
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 533
    :goto_2
    return-object v1

    .line 511
    :cond_3
    sget v2, Lorg/chromium/chrome/R$id;->icon:I

    iget-object v3, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget v3, v3, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->icon:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 522
    :cond_4
    sget v2, Lorg/chromium/chrome/R$drawable;->ic_vidcontrol_pause:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 523
    iget-object v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mPauseDescription:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 524
    const-string/jumbo v2, "MediaNotificationManager.ListenerService.PAUSE"

    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_1

    .line 530
    :cond_5
    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2
.end method

.method private createIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 251
    const/4 v0, 0x0

    .line 252
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget v1, v1, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->id:I

    # getter for: Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PlaybackListenerService;->NOTIFICATION_ID:I
    invoke-static {}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PlaybackListenerService;->access$800()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 253
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PlaybackListenerService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    :cond_0
    :goto_0
    return-object v0

    .line 254
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget v1, v1, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->id:I

    # getter for: Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PresentationListenerService;->NOTIFICATION_ID:I
    invoke-static {}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PresentationListenerService;->access$900()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 255
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PresentationListenerService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 256
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget v1, v1, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->id:I

    # getter for: Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$CastListenerService;->NOTIFICATION_ID:I
    invoke-static {}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$CastListenerService;->access$1000()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 257
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$CastListenerService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private createMediaSession()Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 659
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mContext:Landroid/content/Context;

    sget v3, Lorg/chromium/chrome/R$string;->app_name:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->getButtonReceiverClassName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    .line 665
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->a(I)V

    .line 667
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaSessionCallback:Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$MediaSessionCallback;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/support/v4/media/session/w;)V

    .line 672
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :goto_0
    return-object v0

    .line 678
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Z)V

    .line 679
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->a(I)V

    .line 680
    invoke-virtual {v0, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Z)V

    goto :goto_0
.end method

.method private createMetadata()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 4

    .prologue
    .line 537
    new-instance v1, Landroid/support/v4/media/d;

    invoke-direct {v1}, Landroid/support/v4/media/d;-><init>()V

    .line 540
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget-object v0, v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->image:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mDefaultMediaSessionImage:Landroid/graphics/Bitmap;

    .line 543
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_4

    .line 544
    const-string/jumbo v2, "android.media.metadata.DISPLAY_TITLE"

    iget-object v3, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget-object v3, v3, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->metadata:Lorg/chromium/content_public/common/MediaMetadata;

    invoke-virtual {v3}, Lorg/chromium/content_public/common/MediaMetadata;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/d;

    .line 546
    const-string/jumbo v2, "android.media.metadata.DISPLAY_SUBTITLE"

    iget-object v3, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget-object v3, v3, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->origin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/d;

    .line 548
    const-string/jumbo v2, "android.media.metadata.DISPLAY_ICON"

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/d;

    .line 552
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget-object v0, v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 553
    const-string/jumbo v0, "android.media.metadata.ART"

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget-object v2, v2, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/d;

    .line 564
    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget-object v0, v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->metadata:Lorg/chromium/content_public/common/MediaMetadata;

    invoke-virtual {v0}, Lorg/chromium/content_public/common/MediaMetadata;->getArtist()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 565
    const-string/jumbo v0, "android.media.metadata.ARTIST"

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget-object v2, v2, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->metadata:Lorg/chromium/content_public/common/MediaMetadata;

    invoke-virtual {v2}, Lorg/chromium/content_public/common/MediaMetadata;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/d;

    .line 568
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget-object v0, v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->metadata:Lorg/chromium/content_public/common/MediaMetadata;

    invoke-virtual {v0}, Lorg/chromium/content_public/common/MediaMetadata;->getAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 569
    const-string/jumbo v0, "android.media.metadata.ALBUM"

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget-object v2, v2, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->metadata:Lorg/chromium/content_public/common/MediaMetadata;

    invoke-virtual {v2}, Lorg/chromium/content_public/common/MediaMetadata;->getAlbum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/d;

    .line 573
    :cond_2
    invoke-virtual {v1}, Landroid/support/v4/media/d;->a()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    return-object v0

    .line 540
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget-object v0, v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->image:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 557
    :cond_4
    const-string/jumbo v2, "android.media.metadata.TITLE"

    iget-object v3, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget-object v3, v3, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->metadata:Lorg/chromium/content_public/common/MediaMetadata;

    invoke-virtual {v3}, Lorg/chromium/content_public/common/MediaMetadata;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/d;

    .line 559
    const-string/jumbo v2, "android.media.metadata.ARTIST"

    iget-object v3, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget-object v3, v3, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->origin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/d;

    .line 561
    const-string/jumbo v2, "android.media.metadata.ART"

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/d;

    goto :goto_1
.end method

.method private createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 263
    sget-boolean v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mService:Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 264
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mService:Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mService:Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 686
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 689
    :goto_0
    return-object v0

    .line 688
    :cond_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 689
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private getButtonReceiverClassName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget v0, v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->id:I

    # getter for: Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PlaybackListenerService;->NOTIFICATION_ID:I
    invoke-static {}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PlaybackListenerService;->access$800()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 270
    const-class v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PlaybackMediaButtonReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 282
    :goto_0
    return-object v0

    .line 273
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget v0, v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->id:I

    # getter for: Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PresentationListenerService;->NOTIFICATION_ID:I
    invoke-static {}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PresentationListenerService;->access$900()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 274
    const-class v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$PresentationMediaButtonReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 277
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget v0, v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->id:I

    # getter for: Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$CastListenerService;->NOTIFICATION_ID:I
    invoke-static {}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$CastListenerService;->access$1000()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 278
    const-class v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$CastMediaButtonReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 281
    :cond_2
    sget-boolean v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 282
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getManager(I)Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;
    .locals 1

    .prologue
    .line 350
    sget-object v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->sManagers:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 352
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->sManagers:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;

    goto :goto_0
.end method

.method protected static getNotificationInfoForTesting(I)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 363
    invoke-static {p0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->getManager(I)Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;

    move-result-object v0

    .line 364
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 365
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    goto :goto_0
.end method

.method protected static hasManagerForTesting(I)Z
    .locals 1

    .prologue
    .line 357
    invoke-static {p0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->getManager(I)Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hide(II)V
    .locals 1

    .prologue
    .line 317
    invoke-static {p1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->getManager(I)Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;

    move-result-object v0

    .line 318
    if-nez v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 320
    :cond_0
    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->hideNotification(I)V

    goto :goto_0
.end method

.method private hideNotification(I)V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget v0, v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->tabId:I

    if-eq p1, v0, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->clearNotification()V

    goto :goto_0
.end method

.method private onPause(I)V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget-object v0, v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->listener:Lorg/chromium/chrome/browser/media/ui/MediaNotificationListener;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationListener;->onPause(I)V

    .line 452
    return-void
.end method

.method private onPlay(I)V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget-object v0, v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->listener:Lorg/chromium/chrome/browser/media/ui/MediaNotificationListener;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationListener;->onPlay(I)V

    .line 448
    return-void
.end method

.method private onServiceDestroyed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 436
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mService:Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;

    if-nez v0, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget v0, v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->id:I

    invoke-static {v0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->clear(I)V

    .line 442
    iput-object v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mNotificationBuilder:Landroid/support/v4/app/Z;

    .line 443
    iput-object v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mService:Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;

    goto :goto_0
.end method

.method private onServiceStarted(Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mService:Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;

    .line 428
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->updateNotification()V

    .line 429
    return-void
.end method

.method private onStop(I)V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget-object v0, v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->listener:Lorg/chromium/chrome/browser/media/ui/MediaNotificationListener;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationListener;->onStop(I)V

    .line 456
    return-void
.end method

.method public static show(Landroid/content/Context;Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;)V
    .locals 3

    .prologue
    .line 295
    sget-object v1, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 296
    :try_start_0
    sget-object v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->sManagers:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->sManagers:Landroid/util/SparseArray;

    .line 299
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    sget-object v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->sManagers:Landroid/util/SparseArray;

    iget v1, p1, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;

    .line 302
    if-nez v0, :cond_1

    .line 303
    new-instance v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;

    iget v1, p1, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->id:I

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;-><init>(Landroid/content/Context;I)V

    .line 304
    sget-object v1, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->sManagers:Landroid/util/SparseArray;

    iget v2, p1, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 307
    :cond_1
    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->showNotification(Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;)V

    .line 308
    return-void

    .line 299
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private showNotification(Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;)V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    :goto_0
    return-void

    .line 461
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    .line 462
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 464
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->updateNotification()V

    goto :goto_0
.end method

.method private updateNotification()V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 577
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mService:Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;

    if-nez v0, :cond_1

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mNotificationIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 584
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget v3, v3, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->icon:I

    invoke-static {v0, v3}, Lorg/chromium/base/ApiCompatibilityUtils;->getUserBadgedIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 586
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mNotificationIcon:Landroid/graphics/Bitmap;

    .line 589
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mNotificationBuilder:Landroid/support/v4/app/Z;

    if-nez v0, :cond_3

    .line 590
    new-instance v0, Landroid/support/v4/app/Z;

    iget-object v3, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/support/v4/app/Z;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget v3, v3, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->icon:I

    invoke-virtual {v0, v3}, Landroid/support/v4/app/Z;->a(I)Landroid/support/v4/app/Z;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/Z;->c(Z)Landroid/support/v4/app/Z;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Z;->d(Z)Landroid/support/v4/app/Z;

    move-result-object v0

    const-string/jumbo v3, "MediaNotificationManager.ListenerService.STOP"

    invoke-direct {p0, v3}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/Z;->b(Landroid/app/PendingIntent;)Landroid/support/v4/app/Z;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mNotificationBuilder:Landroid/support/v4/app/Z;

    .line 597
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->supportsSwipeAway()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 598
    iget-object v3, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mNotificationBuilder:Landroid/support/v4/app/Z;

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget-boolean v0, v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->isPaused:Z

    if-nez v0, :cond_9

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/support/v4/app/Z;->b(Z)Landroid/support/v4/app/Z;

    .line 603
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget-object v0, v0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->contentIntent:Landroid/content/Intent;

    if-eqz v0, :cond_5

    .line 604
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mNotificationBuilder:Landroid/support/v4/app/Z;

    iget-object v3, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget v4, v4, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->tabId:I

    iget-object v5, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget-object v5, v5, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->contentIntent:Landroid/content/Intent;

    invoke-static {v3, v4, v5, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/Z;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/Z;

    .line 609
    :cond_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mNotificationBuilder:Landroid/support/v4/app/Z;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v3

    .line 2070
    iget-object v0, v0, Landroid/support/v4/app/Z;->q:Landroid/app/Notification;

    iput-object v3, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 610
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mNotificationBuilder:Landroid/support/v4/app/Z;

    iget-object v3, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget-boolean v3, v3, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->isPrivate:Z

    if-eqz v3, :cond_6

    move v1, v2

    :cond_6
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Z;->d(I)Landroid/support/v4/app/Z;

    .line 615
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->supportsPlayPause()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 617
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->createMediaSession()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 623
    :cond_7
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/media/MediaRouter;->a(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-static {v0}, Landroid/support/v7/media/MediaRouter;->a(Landroid/support/v4/media/session/MediaSessionCompat;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    :goto_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->createMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 630
    new-instance v0, Landroid/support/v4/media/session/V;

    invoke-direct {v0}, Landroid/support/v4/media/session/V;-><init>()V

    const-wide/16 v4, 0x6

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/media/session/V;->a(J)Landroid/support/v4/media/session/V;

    move-result-object v0

    .line 632
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget-boolean v1, v1, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->isPaused:Z

    if-eqz v1, :cond_a

    .line 633
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v8, v9, v6}, Landroid/support/v4/media/session/V;->a(IJF)Landroid/support/v4/media/session/V;

    .line 639
    :goto_3
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/V;->a()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 642
    :cond_8
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mNotificationBuilder:Landroid/support/v4/app/Z;

    invoke-virtual {v0}, Landroid/support/v4/app/Z;->a()Landroid/app/Notification;

    move-result-object v0

    .line 648
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->supportsSwipeAway()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget-boolean v1, v1, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->isPaused:Z

    if-eqz v1, :cond_b

    .line 649
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mService:Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;->stopForeground(Z)V

    .line 651
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/app/at;->a(Landroid/content/Context;)Landroid/support/v4/app/at;

    move-result-object v1

    .line 652
    iget-object v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget v2, v2, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/at;->a(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_9
    move v0, v2

    .line 598
    goto/16 :goto_1

    .line 636
    :cond_a
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v8, v9, v6}, Landroid/support/v4/media/session/V;->a(IJF)Landroid/support/v4/media/session/V;

    goto :goto_3

    .line 654
    :cond_b
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mService:Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    iget v2, v2, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;->id:I

    invoke-virtual {v1, v2, v0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager$ListenerService;->startForeground(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_2
.end method
