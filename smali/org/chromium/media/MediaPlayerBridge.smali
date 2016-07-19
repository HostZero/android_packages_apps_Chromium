.class public Lorg/chromium/media/MediaPlayerBridge;
.super Ljava/lang/Object;
.source "MediaPlayerBridge.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# instance fields
.field private mLoadDataUriTask:Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;

.field private mNativeMediaPlayerBridge:J

.field private mPlayer:Landroid/media/MediaPlayer;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-wide p1, p0, Lorg/chromium/media/MediaPlayerBridge;->mNativeMediaPlayerBridge:J

    .line 54
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/media/MediaPlayerBridge;)J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lorg/chromium/media/MediaPlayerBridge;->mNativeMediaPlayerBridge:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/chromium/media/MediaPlayerBridge;JZ)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/media/MediaPlayerBridge;->nativeOnDidSetDataUriDataSource(JZ)V

    return-void
.end method

.method private static create(J)Lorg/chromium/media/MediaPlayerBridge;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lorg/chromium/media/MediaPlayerBridge;

    invoke-direct {v0, p0, p1}, Lorg/chromium/media/MediaPlayerBridge;-><init>(J)V

    return-object v0
.end method

.method private hasTrack(I)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 112
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/media/MediaPlayerBridge;->getLocalPlayer()Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v3

    .line 115
    array-length v2, v3

    if-nez v2, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v0

    .line 117
    :cond_1
    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 121
    invoke-virtual {v5}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v6

    if-eq p1, v6, :cond_0

    .line 122
    invoke-virtual {v5}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 129
    goto :goto_0

    .line 127
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private native nativeOnDidSetDataUriDataSource(JZ)V
.end method


# virtual methods
.method protected destroy()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lorg/chromium/media/MediaPlayerBridge;->mLoadDataUriTask:Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lorg/chromium/media/MediaPlayerBridge;->mLoadDataUriTask:Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->cancel(Z)Z

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/media/MediaPlayerBridge;->mLoadDataUriTask:Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;

    .line 65
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/media/MediaPlayerBridge;->mNativeMediaPlayerBridge:J

    .line 66
    return-void
.end method

.method protected getAllowedOperations()Lorg/chromium/media/MediaPlayerBridge$AllowedOperations;
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 357
    invoke-virtual {p0}, Lorg/chromium/media/MediaPlayerBridge;->getLocalPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    .line 362
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "getMetadata"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 364
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 365
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 366
    if-eqz v5, :cond_6

    .line 367
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 368
    const-string/jumbo v0, "has"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v6

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 369
    const-string/jumbo v0, "getBoolean"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v4, v7

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 371
    const-string/jumbo v0, "PAUSE_AVAILABLE"

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 372
    const-string/jumbo v0, "SEEK_FORWARD_AVAILABLE"

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 374
    const-string/jumbo v0, "SEEK_BACKWARD_AVAILABLE"

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 376
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 377
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 378
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v0, v3

    invoke-virtual {v6, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-virtual {v7, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v4, v2

    .line 380
    :goto_0
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v0, v3

    invoke-virtual {v6, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v3

    invoke-virtual {v7, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    move v3, v2

    .line 382
    :goto_1
    const/4 v0, 0x1

    :try_start_2
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v0, v8

    invoke-virtual {v6, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v6

    invoke-virtual {v7, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_5

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    move v0, v2

    :goto_2
    move v2, v3

    move v1, v4

    :goto_3
    move v11, v0

    move v0, v2

    move v2, v11

    .line 394
    :goto_4
    new-instance v3, Lorg/chromium/media/MediaPlayerBridge$AllowedOperations;

    invoke-direct {v3, v1, v0, v2}, Lorg/chromium/media/MediaPlayerBridge$AllowedOperations;-><init>(ZZZ)V

    return-object v3

    :cond_3
    move v4, v1

    .line 378
    goto :goto_0

    :cond_4
    move v3, v1

    .line 380
    goto :goto_1

    :cond_5
    move v0, v1

    .line 382
    goto :goto_2

    .line 385
    :catch_0
    move-exception v0

    move-object v4, v0

    move v3, v2

    move v0, v2

    .line 386
    :goto_5
    const-string/jumbo v5, "cr.media"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Cannot find getMetadata() method: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v4, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v3

    .line 393
    goto :goto_4

    .line 387
    :catch_1
    move-exception v0

    move-object v4, v0

    move v3, v2

    move v0, v2

    .line 388
    :goto_6
    const-string/jumbo v5, "cr.media"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Cannot invoke MediaPlayer.getMetadata() method: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v4, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v3

    .line 393
    goto :goto_4

    .line 389
    :catch_2
    move-exception v0

    move-object v4, v0

    move v3, v2

    move v0, v2

    .line 390
    :goto_7
    const-string/jumbo v5, "cr.media"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Cannot access metadata: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v4, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v3

    .line 393
    goto :goto_4

    .line 391
    :catch_3
    move-exception v0

    move-object v4, v0

    move v3, v2

    move v0, v2

    .line 392
    :goto_8
    const-string/jumbo v5, "cr.media"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Cannot find matching fields in Metadata class: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v4, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v3

    goto/16 :goto_4

    .line 391
    :catch_4
    move-exception v0

    move v3, v4

    move-object v4, v0

    move v0, v2

    goto :goto_8

    :catch_5
    move-exception v0

    move-object v11, v0

    move v0, v3

    move v3, v4

    move-object v4, v11

    goto :goto_8

    .line 389
    :catch_6
    move-exception v0

    move v3, v4

    move-object v4, v0

    move v0, v2

    goto :goto_7

    :catch_7
    move-exception v0

    move-object v11, v0

    move v0, v3

    move v3, v4

    move-object v4, v11

    goto :goto_7

    .line 387
    :catch_8
    move-exception v0

    move v3, v4

    move-object v4, v0

    move v0, v2

    goto :goto_6

    :catch_9
    move-exception v0

    move-object v11, v0

    move v0, v3

    move v3, v4

    move-object v4, v11

    goto :goto_6

    .line 385
    :catch_a
    move-exception v0

    move v3, v4

    move-object v4, v0

    move v0, v2

    goto/16 :goto_5

    :catch_b
    move-exception v0

    move-object v11, v0

    move v0, v3

    move v3, v4

    move-object v4, v11

    goto/16 :goto_5

    :cond_6
    move v0, v2

    move v1, v2

    goto/16 :goto_3
.end method

.method protected getCurrentPosition()I
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lorg/chromium/media/MediaPlayerBridge;->getLocalPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method protected getDuration()I
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lorg/chromium/media/MediaPlayerBridge;->getLocalPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method protected getLocalPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/chromium/media/MediaPlayerBridge;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/MediaPlayerBridge;->mPlayer:Landroid/media/MediaPlayer;

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/chromium/media/MediaPlayerBridge;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method protected getVideoHeight()I
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lorg/chromium/media/MediaPlayerBridge;->getLocalPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method protected getVideoWidth()I
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lorg/chromium/media/MediaPlayerBridge;->getLocalPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method protected hasAudio()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/chromium/media/MediaPlayerBridge;->hasTrack(I)Z

    move-result v0

    return v0
.end method

.method protected hasVideo()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/media/MediaPlayerBridge;->hasTrack(I)Z

    move-result v0

    return v0
.end method

.method protected isPlaying()Z
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/chromium/media/MediaPlayerBridge;->getLocalPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method protected pause()V
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lorg/chromium/media/MediaPlayerBridge;->getLocalPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 170
    return-void
.end method

.method protected prepareAsync()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/media/MediaPlayerBridge;->getLocalPlayer()Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    :goto_0
    return v0

    .line 84
    :catch_0
    move-exception v2

    .line 85
    const-string/jumbo v3, "cr.media"

    const-string/jumbo v4, "Unable to prepare MediaPlayer."

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v3, v4, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 86
    goto :goto_0

    .line 87
    :catch_1
    move-exception v2

    .line 89
    const-string/jumbo v3, "cr.media"

    const-string/jumbo v4, "Unable to prepare MediaPlayer."

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v3, v4, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 90
    goto :goto_0
.end method

.method protected release()V
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lorg/chromium/media/MediaPlayerBridge;->getLocalPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 155
    return-void
.end method

.method protected seekTo(I)V
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0}, Lorg/chromium/media/MediaPlayerBridge;->getLocalPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 175
    return-void
.end method

.method protected setDataSource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4

    .prologue
    .line 180
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 181
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 182
    if-eqz p5, :cond_0

    const-string/jumbo v2, "x-hide-urls-from-log"

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "Cookie"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "User-Agent"

    invoke-virtual {v1, v2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-le v2, v3, :cond_3

    .line 189
    const-string/jumbo v2, "allow-cross-domain-redirect"

    const-string/jumbo v3, "false"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/media/MediaPlayerBridge;->getLocalPlayer()Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setDataSourceFromFd(IJJ)Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 202
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .line 203
    invoke-virtual {p0}, Lorg/chromium/media/MediaPlayerBridge;->getLocalPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 204
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    const/4 v0, 0x1

    .line 208
    :goto_0
    return v0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    const-string/jumbo v1, "cr.media"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed to set data source from file descriptor: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v6

    .line 208
    goto :goto_0
.end method

.method protected setDataUriDataSource(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 214
    iget-object v2, p0, Lorg/chromium/media/MediaPlayerBridge;->mLoadDataUriTask:Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;

    if-eqz v2, :cond_0

    .line 215
    iget-object v2, p0, Lorg/chromium/media/MediaPlayerBridge;->mLoadDataUriTask:Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;

    invoke-virtual {v2, v1}, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->cancel(Z)Z

    .line 216
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/chromium/media/MediaPlayerBridge;->mLoadDataUriTask:Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;

    .line 219
    :cond_0
    const-string/jumbo v2, "data:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 232
    :cond_1
    :goto_0
    return v0

    .line 220
    :cond_2
    const/16 v2, 0x2c

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 221
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 222
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 223
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 225
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 226
    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 227
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 228
    const-string/jumbo v4, "base64"

    aget-object v3, v3, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 230
    new-instance v3, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;

    invoke-direct {v3, p0, p1, v2}, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;-><init>(Lorg/chromium/media/MediaPlayerBridge;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/chromium/media/MediaPlayerBridge;->mLoadDataUriTask:Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;

    .line 231
    iget-object v2, p0, Lorg/chromium/media/MediaPlayerBridge;->mLoadDataUriTask:Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v0}, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v1

    .line 232
    goto :goto_0
.end method

.method protected setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p0}, Lorg/chromium/media/MediaPlayerBridge;->getLocalPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 301
    return-void
.end method

.method protected setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1

    .prologue
    .line 304
    invoke-virtual {p0}, Lorg/chromium/media/MediaPlayerBridge;->getLocalPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 305
    return-void
.end method

.method protected setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 1

    .prologue
    .line 308
    invoke-virtual {p0}, Lorg/chromium/media/MediaPlayerBridge;->getLocalPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 309
    return-void
.end method

.method protected setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lorg/chromium/media/MediaPlayerBridge;->getLocalPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 313
    return-void
.end method

.method protected setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lorg/chromium/media/MediaPlayerBridge;->getLocalPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 317
    return-void
.end method

.method protected setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 1

    .prologue
    .line 320
    invoke-virtual {p0}, Lorg/chromium/media/MediaPlayerBridge;->getLocalPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 321
    return-void
.end method

.method protected setSurface(Landroid/view/Surface;)V
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lorg/chromium/media/MediaPlayerBridge;->getLocalPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 78
    return-void
.end method

.method protected setVolume(D)V
    .locals 3

    .prologue
    .line 159
    invoke-virtual {p0}, Lorg/chromium/media/MediaPlayerBridge;->getLocalPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    double-to-float v1, p1

    double-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 160
    return-void
.end method

.method protected start()V
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lorg/chromium/media/MediaPlayerBridge;->getLocalPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 165
    return-void
.end method
