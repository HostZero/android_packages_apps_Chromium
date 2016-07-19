.class public Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;
.super Ljava/lang/Object;
.source "RemoteMediaPlayerController.java"

# interfaces
.implements Lorg/chromium/chrome/browser/media/remote/MediaRouteController$UiListener;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sInstance:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;


# instance fields
.field private mCastContextApplicationContext:Landroid/content/Context;

.field private mChromeVideoActivity:Ljava/lang/ref/WeakReference;

.field private mCurrentRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

.field private mMediaRouteControllers:Ljava/util/List;

.field private mNotificationControl:Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->mChromeVideoActivity:Ljava/lang/ref/WeakReference;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->mMediaRouteControllers:Ljava/util/List;

    .line 67
    return-void
.end method

.method private createNotificationControl()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->mChromeVideoActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->mCurrentRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->getOrCreate(Landroid/content/Context;Lorg/chromium/chrome/browser/media/remote/MediaRouteController;)Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->mNotificationControl:Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;

    .line 284
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->mNotificationControl:Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->getPoster()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->setPosterBitmap(Landroid/graphics/Bitmap;)V

    .line 285
    return-void
.end method

.method static getIfExists()Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;
    .locals 1

    .prologue
    .line 363
    sget-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->sInstance:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;

    return-object v0
.end method

.method private getNotificationControl()Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->mNotificationControl:Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;

    return-object v0
.end method

.method public static instance()Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 84
    sget-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->sInstance:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->sInstance:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;

    .line 85
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->sInstance:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;

    iget-object v0, v0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->mChromeVideoActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->sInstance:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->linkToBrowserActivity()V

    .line 87
    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->sInstance:Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;

    return-object v0
.end method

.method private linkToBrowserActivity()V
    .locals 2

    .prologue
    .line 118
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->mChromeVideoActivity:Ljava/lang/ref/WeakReference;

    .line 122
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->mCastContextApplicationContext:Landroid/content/Context;

    .line 123
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->createMediaRouteControllers(Landroid/content/Context;)V

    .line 125
    :cond_0
    return-void
.end method

.method private onStateReset(Lorg/chromium/chrome/browser/media/remote/MediaRouteController;)V
    .locals 1

    .prologue
    .line 160
    invoke-interface {p1}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->initialize()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->mNotificationControl:Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->mNotificationControl:Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->setRouteController(Lorg/chromium/chrome/browser/media/remote/MediaRouteController;)V

    .line 165
    :cond_1
    invoke-interface {p1}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->prepareMediaRoute()V

    .line 167
    invoke-interface {p1, p0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->addUiListener(Lorg/chromium/chrome/browser/media/remote/MediaRouteController$UiListener;)V

    goto :goto_0
.end method

.method private resetPlayingVideo()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->mNotificationControl:Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->mNotificationControl:Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->mCurrentRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->setRouteController(Lorg/chromium/chrome/browser/media/remote/MediaRouteController;)V

    .line 359
    :cond_0
    return-void
.end method

.method private showMediaRouteControlDialog(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 232
    check-cast p1, Landroid/support/v4/app/w;

    invoke-virtual {p1}, Landroid/support/v4/app/w;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 233
    if-nez v0, :cond_0

    .line 234
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The activity must be a subclass of FragmentActivity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    new-instance v1, Lorg/chromium/chrome/browser/media/remote/MediaRouteControllerDialogFactory;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/media/remote/MediaRouteControllerDialogFactory;-><init>()V

    .line 238
    const-string/jumbo v2, "android.support.v7.mediarouter:MediaRouteControllerDialogFragment"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 240
    const-string/jumbo v0, "VideoFling"

    const-string/jumbo v1, "showDialog(): Route controller dialog already showing!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :goto_0
    return-void

    .line 243
    :cond_1
    invoke-virtual {v1}, Landroid/support/v7/app/ay;->onCreateControllerDialogFragment()Landroid/support/v7/app/ax;

    move-result-object v1

    .line 245
    const-string/jumbo v2, "android.support.v7.mediarouter:MediaRouteControllerDialogFragment"

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/app/ax;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showMediaRouteDialog(Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;Lorg/chromium/chrome/browser/media/remote/MediaRouteController;Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 211
    move-object v0, p3

    check-cast v0, Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 212
    if-nez v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The activity must be a subclass of FragmentActivity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    new-instance v1, Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory;

    invoke-direct {v1, p1, p2, p3}, Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory;-><init>(Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;Lorg/chromium/chrome/browser/media/remote/MediaRouteController;Landroid/content/Context;)V

    .line 219
    const-string/jumbo v2, "android.support.v7.mediarouter:MediaRouteChooserDialogFragment"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 221
    const-string/jumbo v0, "VideoFling"

    const-string/jumbo v1, "showDialog(): Route chooser dialog already showing!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :goto_0
    return-void

    .line 224
    :cond_1
    invoke-virtual {v1}, Landroid/support/v7/app/ay;->onCreateChooserDialogFragment()Landroid/support/v7/app/ai;

    move-result-object v1

    .line 226
    invoke-interface {p2}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->buildMediaRouteSelector()Landroid/support/v7/media/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ai;->setRouteSelector(Landroid/support/v7/media/e;)V

    .line 227
    const-string/jumbo v2, "android.support.v7.mediarouter:MediaRouteChooserDialogFragment"

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/app/ai;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showMessageToast(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->mCastContextApplicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/chromium/ui/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lorg/chromium/ui/widget/Toast;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Lorg/chromium/ui/widget/Toast;->show()V

    .line 353
    return-void
.end method


# virtual methods
.method public createMediaRouteControllers(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 133
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->mMediaRouteControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    :cond_0
    return-void

    .line 135
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 137
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 138
    const-string/jumbo v1, "org.chromium.content.browser.REMOTE_MEDIA_PLAYERS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_0

    .line 141
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 142
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 143
    const-string/jumbo v4, "VideoFling"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Adding remote media route controller "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 146
    sget-boolean v4, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    instance-of v4, v0, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    if-nez v4, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4

    .line 150
    :catch_0
    move-exception v0

    .line 153
    :goto_1
    const-string/jumbo v1, "VideoFling"

    const-string/jumbo v2, "Couldn\'t instatiate MediaRouteControllers"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    sget-boolean v0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 147
    :cond_2
    :try_start_1
    iget-object v4, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->mMediaRouteControllers:Ljava/util/List;

    check-cast v0, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4

    .line 142
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 150
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_1
.end method

.method public getCastingMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 332
    const-string/jumbo v0, "Casting to Chromecast"

    .line 333
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->mCastContextApplicationContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 334
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->mCastContextApplicationContext:Landroid/content/Context;

    sget v1, Lorg/chromium/chrome/R$string;->cast_casting_video:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 337
    :cond_0
    return-object v0
.end method

.method public getCurrentlyPlayingMediaRouteController()Lorg/chromium/chrome/browser/media/remote/MediaRouteController;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->mCurrentRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    return-object v0
.end method

.method public getMediaRouteController(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/media/remote/MediaRouteController;
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->mMediaRouteControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    .line 97
    invoke-interface {v0, p1, p2}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->canPlayMedia(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPoster()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->mCurrentRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->mCurrentRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->getPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public onDurationUpdated(J)V
    .locals 0

    .prologue
    .line 310
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 305
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->showMessageToast(Ljava/lang/String;)V

    .line 307
    :cond_0
    return-void
.end method

.method public onPlaybackStateChanged(Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;)V
    .locals 1

    .prologue
    .line 295
    sget-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->PLAYING:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    if-eq p2, v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->LOADING:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    if-eq p2, v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->PAUSED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    if-ne p2, v0, :cond_1

    .line 297
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->getNotificationControl()Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;

    move-result-object v0

    .line 298
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->show(Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;)V

    .line 300
    :cond_1
    return-void
.end method

.method public onPositionChanged(J)V
    .locals 0

    .prologue
    .line 313
    return-void
.end method

.method public onPrepared(Lorg/chromium/chrome/browser/media/remote/MediaRouteController;)V
    .locals 1

    .prologue
    .line 290
    sget-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->PLAYING:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    invoke-virtual {p0, v0, p1}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->startNotification(Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;Lorg/chromium/chrome/browser/media/remote/MediaRouteController;)V

    .line 291
    return-void
.end method

.method public onRouteSelected(Ljava/lang/String;Lorg/chromium/chrome/browser/media/remote/MediaRouteController;)V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->mCurrentRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    if-eq v0, p2, :cond_0

    .line 321
    iput-object p2, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->mCurrentRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    .line 322
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->resetPlayingVideo()V

    .line 324
    :cond_0
    return-void
.end method

.method public onRouteUnselected(Lorg/chromium/chrome/browser/media/remote/MediaRouteController;)V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->mCurrentRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    if-ne p1, v0, :cond_0

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->mCurrentRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    .line 348
    :cond_0
    return-void
.end method

.method public onTitleChanged(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 316
    return-void
.end method

.method public requestRemotePlayback(Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;Lorg/chromium/chrome/browser/media/remote/MediaRouteController;)V
    .locals 2

    .prologue
    .line 178
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 179
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->mChromeVideoActivity:Ljava/lang/ref/WeakReference;

    .line 181
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->mCurrentRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->mCurrentRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    if-eq p2, v1, :cond_0

    .line 182
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->mCurrentRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->release()V

    .line 185
    :cond_0
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->onStateReset(Lorg/chromium/chrome/browser/media/remote/MediaRouteController;)V

    .line 186
    invoke-interface {p2, p1}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->shouldResetState(Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->showMediaRouteDialog(Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;Lorg/chromium/chrome/browser/media/remote/MediaRouteController;Landroid/app/Activity;)V

    .line 190
    :cond_1
    return-void
.end method

.method public requestRemotePlaybackControl(Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->mCurrentRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    if-nez v0, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->mCurrentRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteController;->getMediaStateListener()Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 205
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->showMediaRouteControlDialog(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public startNotification(Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;Lorg/chromium/chrome/browser/media/remote/MediaRouteController;)V
    .locals 1

    .prologue
    .line 256
    iput-object p2, p0, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->mCurrentRouteController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    .line 257
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->createNotificationControl()V

    .line 258
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/remote/RemoteMediaPlayerController;->getNotificationControl()Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/media/remote/CastNotificationControl;->show(Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;)V

    .line 260
    :cond_0
    return-void
.end method
