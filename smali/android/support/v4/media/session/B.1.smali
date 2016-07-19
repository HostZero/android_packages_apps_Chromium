.class final Landroid/support/v4/media/session/B;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/z;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/ComponentName;

.field private final c:Landroid/app/PendingIntent;

.field private final d:Ljava/lang/Object;

.field private final e:Landroid/support/v4/media/session/F;

.field private final f:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field private final g:Landroid/support/v4/media/session/G;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Landroid/media/AudioManager;

.field private final k:Ljava/lang/Object;

.field private final l:Landroid/os/RemoteCallbackList;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Landroid/support/v4/media/session/w;

.field private r:I

.field private s:Landroid/support/v4/media/MediaMetadataCompat;

.field private t:Landroid/support/v4/media/session/PlaybackStateCompat;

.field private u:I

.field private v:I

.field private w:I

.field private x:Landroid/support/v4/media/VolumeProviderCompat;

.field private y:Landroid/support/v4/media/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1013
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/B;->k:Ljava/lang/Object;

    .line 1014
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/B;->l:Landroid/os/RemoteCallbackList;

    .line 1017
    iput-boolean v2, p0, Landroid/support/v4/media/session/B;->m:Z

    .line 1018
    iput-boolean v2, p0, Landroid/support/v4/media/session/B;->n:Z

    .line 1019
    iput-boolean v2, p0, Landroid/support/v4/media/session/B;->o:Z

    .line 1020
    iput-boolean v2, p0, Landroid/support/v4/media/session/B;->p:Z

    .line 1037
    new-instance v0, Landroid/support/v4/media/session/C;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/C;-><init>(Landroid/support/v4/media/session/B;)V

    iput-object v0, p0, Landroid/support/v4/media/session/B;->y:Landroid/support/v4/media/t;

    .line 1053
    if-nez p3, :cond_0

    .line 1054
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "MediaButtonReceiver component may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1057
    :cond_0
    iput-object p1, p0, Landroid/support/v4/media/session/B;->a:Landroid/content/Context;

    .line 1058
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/B;->h:Ljava/lang/String;

    .line 1059
    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/support/v4/media/session/B;->j:Landroid/media/AudioManager;

    .line 1060
    iput-object p2, p0, Landroid/support/v4/media/session/B;->i:Ljava/lang/String;

    .line 1061
    iput-object p3, p0, Landroid/support/v4/media/session/B;->b:Landroid/content/ComponentName;

    .line 1062
    iput-object p4, p0, Landroid/support/v4/media/session/B;->c:Landroid/app/PendingIntent;

    .line 1063
    new-instance v0, Landroid/support/v4/media/session/F;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/F;-><init>(Landroid/support/v4/media/session/B;)V

    iput-object v0, p0, Landroid/support/v4/media/session/B;->e:Landroid/support/v4/media/session/F;

    .line 1064
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v1, p0, Landroid/support/v4/media/session/B;->e:Landroid/support/v4/media/session/F;

    invoke-direct {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/session/B;->f:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 1065
    new-instance v0, Landroid/support/v4/media/session/G;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/session/G;-><init>(Landroid/support/v4/media/session/B;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/support/v4/media/session/B;->g:Landroid/support/v4/media/session/G;

    .line 1067
    iput v2, p0, Landroid/support/v4/media/session/B;->u:I

    .line 1068
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/media/session/B;->v:I

    .line 1069
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/v4/media/session/B;->w:I

    .line 1070
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 2074
    new-instance v0, Landroid/media/RemoteControlClient;

    invoke-direct {v0, p4}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    .line 1071
    iput-object v0, p0, Landroid/support/v4/media/session/B;->d:Ljava/lang/Object;

    .line 1075
    :goto_0
    return-void

    .line 1073
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/media/session/B;->d:Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/VolumeProviderCompat;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Landroid/support/v4/media/session/B;->x:Landroid/support/v4/media/VolumeProviderCompat;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v4/media/session/B;II)V
    .locals 2

    .prologue
    .line 1001
    .line 6409
    iget v0, p0, Landroid/support/v4/media/session/B;->v:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6410
    iget-object v0, p0, Landroid/support/v4/media/session/B;->x:Landroid/support/v4/media/VolumeProviderCompat;

    if-eqz v0, :cond_0

    .line 6411
    iget-object v0, p0, Landroid/support/v4/media/session/B;->x:Landroid/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/VolumeProviderCompat;->c(I)V

    :cond_0
    :goto_0
    return-void

    .line 6414
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/session/B;->j:Landroid/media/AudioManager;

    iget v1, p0, Landroid/support/v4/media/session/B;->w:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v4/media/session/B;Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    .locals 0

    .prologue
    .line 1001
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/B;->a(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    return-void
.end method

.method private a(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    .locals 2

    .prologue
    .line 1466
    iget-object v0, p0, Landroid/support/v4/media/session/B;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1467
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1468
    iget-object v0, p0, Landroid/support/v4/media/session/B;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/a;

    .line 1470
    :try_start_0
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/a;->a(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1467
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1474
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/B;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1475
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic b(Landroid/support/v4/media/session/B;)I
    .locals 1

    .prologue
    .line 1001
    iget v0, p0, Landroid/support/v4/media/session/B;->v:I

    return v0
.end method

.method static synthetic b(Landroid/support/v4/media/session/B;II)V
    .locals 2

    .prologue
    .line 1001
    .line 6419
    iget v0, p0, Landroid/support/v4/media/session/B;->v:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6420
    iget-object v0, p0, Landroid/support/v4/media/session/B;->x:Landroid/support/v4/media/VolumeProviderCompat;

    if-eqz v0, :cond_0

    .line 6421
    iget-object v0, p0, Landroid/support/v4/media/session/B;->x:Landroid/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/VolumeProviderCompat;->b(I)V

    :cond_0
    :goto_0
    return-void

    .line 6424
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/session/B;->j:Landroid/media/AudioManager;

    iget v1, p0, Landroid/support/v4/media/session/B;->w:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method static synthetic c(Landroid/support/v4/media/session/B;)I
    .locals 1

    .prologue
    .line 1001
    iget v0, p0, Landroid/support/v4/media/session/B;->w:I

    return v0
.end method

.method static synthetic d(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/G;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Landroid/support/v4/media/session/B;->g:Landroid/support/v4/media/session/G;

    return-object v0
.end method

.method static synthetic e(Landroid/support/v4/media/session/B;)I
    .locals 1

    .prologue
    .line 1001
    iget v0, p0, Landroid/support/v4/media/session/B;->r:I

    return v0
.end method

.method private f()Z
    .locals 5

    .prologue
    const/16 v4, 0x12

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1342
    .line 1343
    iget-boolean v0, p0, Landroid/support/v4/media/session/B;->n:Z

    if-eqz v0, :cond_5

    .line 1346
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v0, v3, :cond_0

    .line 1347
    iget-boolean v0, p0, Landroid/support/v4/media/session/B;->p:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroid/support/v4/media/session/B;->r:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 1348
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_1

    .line 1349
    iget-object v0, p0, Landroid/support/v4/media/session/B;->a:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v4/media/session/B;->c:Landroid/app/PendingIntent;

    iget-object v4, p0, Landroid/support/v4/media/session/B;->b:Landroid/content/ComponentName;

    invoke-static {v0, v3, v4}, Landroid/support/v4/media/session/M;->a(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 1355
    :goto_0
    iput-boolean v2, p0, Landroid/support/v4/media/session/B;->p:Z

    .line 1369
    :cond_0
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_7

    .line 1370
    iget-boolean v0, p0, Landroid/support/v4/media/session/B;->o:Z

    if-nez v0, :cond_4

    iget v0, p0, Landroid/support/v4/media/session/B;->r:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 1371
    iget-object v0, p0, Landroid/support/v4/media/session/B;->a:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/media/session/B;->d:Ljava/lang/Object;

    .line 6094
    const-string/jumbo v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 6095
    check-cast v1, Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 1372
    iput-boolean v2, p0, Landroid/support/v4/media/session/B;->o:Z

    move v0, v2

    .line 1405
    :goto_2
    return v0

    .line 1352
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/session/B;->a:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v4/media/session/B;->b:Landroid/content/ComponentName;

    .line 6024
    const-string/jumbo v4, "audio"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 6025
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 1356
    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/media/session/B;->p:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v4/media/session/B;->r:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 1357
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_3

    .line 1358
    iget-object v0, p0, Landroid/support/v4/media/session/B;->a:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v4/media/session/B;->c:Landroid/app/PendingIntent;

    iget-object v4, p0, Landroid/support/v4/media/session/B;->b:Landroid/content/ComponentName;

    invoke-static {v0, v3, v4}, Landroid/support/v4/media/session/M;->b(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 1364
    :goto_3
    iput-boolean v1, p0, Landroid/support/v4/media/session/B;->p:Z

    goto :goto_1

    .line 1361
    :cond_3
    iget-object v0, p0, Landroid/support/v4/media/session/B;->a:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v4/media/session/B;->b:Landroid/content/ComponentName;

    invoke-static {v0, v3}, Landroid/support/v4/media/session/g;->a(Landroid/content/Context;Landroid/content/ComponentName;)V

    goto :goto_3

    .line 1374
    :cond_4
    iget-boolean v0, p0, Landroid/support/v4/media/session/B;->o:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/support/v4/media/session/B;->r:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_7

    .line 1379
    iget-object v0, p0, Landroid/support/v4/media/session/B;->d:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/support/v4/media/session/g;->a(Ljava/lang/Object;I)V

    .line 1380
    iget-object v0, p0, Landroid/support/v4/media/session/B;->a:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/media/session/B;->d:Ljava/lang/Object;

    invoke-static {v0, v2}, Landroid/support/v4/media/session/g;->b(Landroid/content/Context;Ljava/lang/Object;)V

    .line 1381
    iput-boolean v1, p0, Landroid/support/v4/media/session/B;->o:Z

    move v0, v1

    goto :goto_2

    .line 1386
    :cond_5
    iget-boolean v0, p0, Landroid/support/v4/media/session/B;->p:Z

    if-eqz v0, :cond_6

    .line 1387
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_8

    .line 1388
    iget-object v0, p0, Landroid/support/v4/media/session/B;->a:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/media/session/B;->c:Landroid/app/PendingIntent;

    iget-object v3, p0, Landroid/support/v4/media/session/B;->b:Landroid/content/ComponentName;

    invoke-static {v0, v2, v3}, Landroid/support/v4/media/session/M;->b(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 1394
    :goto_4
    iput-boolean v1, p0, Landroid/support/v4/media/session/B;->p:Z

    .line 1396
    :cond_6
    iget-boolean v0, p0, Landroid/support/v4/media/session/B;->o:Z

    if-eqz v0, :cond_7

    .line 1400
    iget-object v0, p0, Landroid/support/v4/media/session/B;->d:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/support/v4/media/session/g;->a(Ljava/lang/Object;I)V

    .line 1401
    iget-object v0, p0, Landroid/support/v4/media/session/B;->a:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/media/session/B;->d:Ljava/lang/Object;

    invoke-static {v0, v2}, Landroid/support/v4/media/session/g;->b(Landroid/content/Context;Ljava/lang/Object;)V

    .line 1402
    iput-boolean v1, p0, Landroid/support/v4/media/session/B;->o:Z

    :cond_7
    move v0, v1

    goto :goto_2

    .line 1391
    :cond_8
    iget-object v0, p0, Landroid/support/v4/media/session/B;->a:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/media/session/B;->b:Landroid/content/ComponentName;

    invoke-static {v0, v2}, Landroid/support/v4/media/session/g;->a(Landroid/content/Context;Landroid/content/ComponentName;)V

    goto :goto_4
.end method

.method static synthetic f(Landroid/support/v4/media/session/B;)Z
    .locals 1

    .prologue
    .line 1001
    iget-boolean v0, p0, Landroid/support/v4/media/session/B;->m:Z

    return v0
.end method

.method static synthetic g(Landroid/support/v4/media/session/B;)Landroid/os/RemoteCallbackList;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Landroid/support/v4/media/session/B;->l:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method private g()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 12

    .prologue
    const-wide/16 v0, 0x0

    .line 1430
    const-wide/16 v2, -0x1

    .line 1431
    iget-object v4, p0, Landroid/support/v4/media/session/B;->k:Ljava/lang/Object;

    monitor-enter v4

    .line 1432
    :try_start_0
    iget-object v7, p0, Landroid/support/v4/media/session/B;->t:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 1433
    iget-object v5, p0, Landroid/support/v4/media/session/B;->s:Landroid/support/v4/media/MediaMetadataCompat;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/support/v4/media/session/B;->s:Landroid/support/v4/media/MediaMetadataCompat;

    const-string/jumbo v6, "android.media.metadata.DURATION"

    invoke-virtual {v5, v6}, Landroid/support/v4/media/MediaMetadataCompat;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1435
    iget-object v2, p0, Landroid/support/v4/media/session/B;->s:Landroid/support/v4/media/MediaMetadataCompat;

    const-string/jumbo v3, "android.media.metadata.DURATION"

    invoke-virtual {v2, v3}, Landroid/support/v4/media/MediaMetadataCompat;->b(Ljava/lang/String;)J

    move-result-wide v2

    .line 1437
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1439
    const/4 v4, 0x0

    .line 1440
    if-eqz v7, :cond_5

    .line 1441
    invoke-virtual {v7}, Landroid/support/v4/media/session/PlaybackStateCompat;->a()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    invoke-virtual {v7}, Landroid/support/v4/media/session/PlaybackStateCompat;->a()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    invoke-virtual {v7}, Landroid/support/v4/media/session/PlaybackStateCompat;->a()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_5

    .line 1444
    :cond_1
    invoke-virtual {v7}, Landroid/support/v4/media/session/PlaybackStateCompat;->e()J

    move-result-wide v8

    .line 1445
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1446
    cmp-long v10, v8, v0

    if-lez v10, :cond_5

    .line 1447
    invoke-virtual {v7}, Landroid/support/v4/media/session/PlaybackStateCompat;->c()F

    move-result v4

    sub-long v8, v5, v8

    long-to-float v8, v8

    mul-float/2addr v4, v8

    float-to-long v8, v4

    invoke-virtual {v7}, Landroid/support/v4/media/session/PlaybackStateCompat;->b()J

    move-result-wide v10

    add-long/2addr v8, v10

    .line 1449
    cmp-long v4, v2, v0

    if-ltz v4, :cond_3

    cmp-long v4, v8, v2

    if-lez v4, :cond_3

    .line 1454
    :goto_0
    new-instance v0, Landroid/support/v4/media/session/V;

    invoke-direct {v0, v7}, Landroid/support/v4/media/session/V;-><init>(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 1456
    invoke-virtual {v7}, Landroid/support/v4/media/session/PlaybackStateCompat;->a()I

    move-result v1

    invoke-virtual {v7}, Landroid/support/v4/media/session/PlaybackStateCompat;->c()F

    move-result v4

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/media/session/V;->a(IJFJ)Landroid/support/v4/media/session/V;

    .line 1458
    invoke-virtual {v0}, Landroid/support/v4/media/session/V;->a()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    .line 1462
    :goto_1
    if-nez v0, :cond_2

    move-object v0, v7

    :cond_2
    return-object v0

    .line 1437
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1451
    :cond_3
    cmp-long v2, v8, v0

    if-gez v2, :cond_4

    move-wide v2, v0

    .line 1452
    goto :goto_0

    :cond_4
    move-wide v2, v8

    goto :goto_0

    :cond_5
    move-object v0, v4

    goto :goto_1
.end method

.method static synthetic h(Landroid/support/v4/media/session/B;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Landroid/support/v4/media/session/B;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Landroid/support/v4/media/session/B;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Landroid/support/v4/media/session/B;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Landroid/support/v4/media/session/B;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Landroid/support/v4/media/session/B;->k:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic k(Landroid/support/v4/media/session/B;)Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Landroid/support/v4/media/session/B;->j:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic l(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Landroid/support/v4/media/session/B;->s:Landroid/support/v4/media/MediaMetadataCompat;

    return-object v0
.end method

.method static synthetic m(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 1

    .prologue
    .line 1001
    invoke-direct {p0}, Landroid/support/v4/media/session/B;->g()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    return-object v0
.end method

.method static synthetic n(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/w;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Landroid/support/v4/media/session/B;->q:Landroid/support/v4/media/session/w;

    return-object v0
.end method

.method static synthetic o(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Landroid/support/v4/media/session/B;->t:Landroid/support/v4/media/session/PlaybackStateCompat;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 1169
    iget-object v1, p0, Landroid/support/v4/media/session/B;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 1170
    :try_start_0
    iput p1, p0, Landroid/support/v4/media/session/B;->r:I

    .line 1171
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1172
    invoke-direct {p0}, Landroid/support/v4/media/session/B;->f()Z

    .line 1173
    return-void

    .line 1171
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 1306
    return-void
.end method

.method public final a(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const v10, 0x10000001

    const/4 v6, 0x1

    .line 1278
    iget-object v2, p0, Landroid/support/v4/media/session/B;->k:Ljava/lang/Object;

    monitor-enter v2

    .line 1279
    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/session/B;->s:Landroid/support/v4/media/MediaMetadataCompat;

    .line 1280
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4515
    iget-object v0, p0, Landroid/support/v4/media/session/B;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 4516
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_0

    .line 4517
    iget-object v0, p0, Landroid/support/v4/media/session/B;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/a;

    .line 4519
    :try_start_1
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/a;->a(Landroid/support/v4/media/MediaMetadataCompat;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4516
    :goto_1
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 1280
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 4523
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/B;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1282
    iget-boolean v0, p0, Landroid/support/v4/media/session/B;->n:Z

    if-nez v0, :cond_2

    .line 1294
    :cond_1
    :goto_2
    return-void

    .line 1286
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_9

    .line 1287
    iget-object v0, p0, Landroid/support/v4/media/session/B;->d:Ljava/lang/Object;

    if-nez p1, :cond_7

    :goto_3
    iget-object v2, p0, Landroid/support/v4/media/session/B;->t:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-nez v2, :cond_8

    move-wide v2, v4

    .line 5043
    :goto_4
    check-cast v0, Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v6}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    .line 5045
    invoke-static {v1, v0}, Landroid/support/v4/media/session/g;->a(Landroid/os/Bundle;Landroid/media/RemoteControlClient$MetadataEditor;)V

    .line 5068
    if-eqz v1, :cond_5

    .line 5071
    const-string/jumbo v6, "android.media.metadata.YEAR"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 5072
    const/16 v6, 0x8

    const-string/jumbo v7, "android.media.metadata.YEAR"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v0, v6, v8, v9}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 5075
    :cond_3
    const-string/jumbo v6, "android.media.metadata.RATING"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 5076
    const/16 v6, 0x65

    const-string/jumbo v7, "android.media.metadata.RATING"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/media/RemoteControlClient$MetadataEditor;->putObject(ILjava/lang/Object;)Landroid/media/MediaMetadataEditor;

    .line 5079
    :cond_4
    const-string/jumbo v6, "android.media.metadata.USER_RATING"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 5080
    const-string/jumbo v6, "android.media.metadata.USER_RATING"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putObject(ILjava/lang/Object;)Landroid/media/MediaMetadataEditor;

    .line 5047
    :cond_5
    const-wide/16 v6, 0x80

    and-long/2addr v2, v6

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6

    .line 5048
    invoke-virtual {v0, v10}, Landroid/media/RemoteControlClient$MetadataEditor;->addEditableKey(I)V

    .line 5050
    :cond_6
    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    goto :goto_2

    .line 1287
    :cond_7
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->b()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_3

    :cond_8
    iget-object v2, p0, Landroid/support/v4/media/session/B;->t:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->d()J

    move-result-wide v2

    goto :goto_4

    .line 1290
    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_1

    .line 1291
    iget-object v0, p0, Landroid/support/v4/media/session/B;->d:Ljava/lang/Object;

    if-nez p1, :cond_a

    .line 5087
    :goto_5
    check-cast v0, Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v6}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    .line 5089
    invoke-static {v1, v0}, Landroid/support/v4/media/session/g;->a(Landroid/os/Bundle;Landroid/media/RemoteControlClient$MetadataEditor;)V

    .line 5090
    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    goto/16 :goto_2

    .line 1291
    :cond_a
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->b()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_5

    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method public final a(Landroid/support/v4/media/VolumeProviderCompat;)V
    .locals 6

    .prologue
    .line 1190
    if-nez p1, :cond_0

    .line 1191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "volumeProvider may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1193
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/B;->x:Landroid/support/v4/media/VolumeProviderCompat;

    if-eqz v0, :cond_1

    .line 1194
    iget-object v0, p0, Landroid/support/v4/media/session/B;->x:Landroid/support/v4/media/VolumeProviderCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/media/VolumeProviderCompat;->a(Landroid/support/v4/media/t;)V

    .line 1196
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v4/media/session/B;->v:I

    .line 1197
    iput-object p1, p0, Landroid/support/v4/media/session/B;->x:Landroid/support/v4/media/VolumeProviderCompat;

    .line 1198
    new-instance v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    iget v1, p0, Landroid/support/v4/media/session/B;->v:I

    iget v2, p0, Landroid/support/v4/media/session/B;->w:I

    iget-object v3, p0, Landroid/support/v4/media/session/B;->x:Landroid/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v3}, Landroid/support/v4/media/VolumeProviderCompat;->b()I

    move-result v3

    iget-object v4, p0, Landroid/support/v4/media/session/B;->x:Landroid/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v4}, Landroid/support/v4/media/VolumeProviderCompat;->c()I

    move-result v4

    iget-object v5, p0, Landroid/support/v4/media/session/B;->x:Landroid/support/v4/media/VolumeProviderCompat;

    invoke-virtual {v5}, Landroid/support/v4/media/VolumeProviderCompat;->a()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    .line 1201
    invoke-direct {p0, v0}, Landroid/support/v4/media/session/B;->a(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    .line 1203
    iget-object v0, p0, Landroid/support/v4/media/session/B;->y:Landroid/support/v4/media/t;

    invoke-virtual {p1, v0}, Landroid/support/v4/media/VolumeProviderCompat;->a(Landroid/support/v4/media/t;)V

    .line 1204
    return-void
.end method

.method public final a(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/16 v8, 0x12

    const/16 v7, 0xe

    .line 1243
    iget-object v1, p0, Landroid/support/v4/media/session/B;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 1244
    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/session/B;->t:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 1245
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3503
    iget-object v0, p0, Landroid/support/v4/media/session/B;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 3504
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 3505
    iget-object v0, p0, Landroid/support/v4/media/session/B;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/a;

    .line 3507
    :try_start_1
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/a;->a(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3504
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1245
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 3511
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/B;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1247
    iget-boolean v0, p0, Landroid/support/v4/media/session/B;->n:Z

    if-nez v0, :cond_2

    .line 1274
    :cond_1
    :goto_2
    return-void

    .line 1251
    :cond_2
    if-nez p1, :cond_3

    .line 1252
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_1

    .line 1253
    iget-object v0, p0, Landroid/support/v4/media/session/B;->d:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/media/session/g;->a(Ljava/lang/Object;I)V

    .line 1254
    iget-object v0, p0, Landroid/support/v4/media/session/B;->d:Ljava/lang/Object;

    invoke-static {v0, v10, v11}, Landroid/support/v4/media/session/g;->a(Ljava/lang/Object;J)V

    goto :goto_2

    .line 1258
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_6

    .line 1259
    iget-object v0, p0, Landroid/support/v4/media/session/B;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->a()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->b()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->c()F

    move-result v4

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->e()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Landroid/support/v4/media/session/M;->a(Ljava/lang/Object;IJFJ)V

    .line 1266
    :cond_4
    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_7

    .line 1267
    iget-object v0, p0, Landroid/support/v4/media/session/B;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->d()J

    move-result-wide v2

    .line 4034
    check-cast v0, Landroid/media/RemoteControlClient;

    .line 4059
    invoke-static {v2, v3}, Landroid/support/v4/media/session/M;->a(J)I

    move-result v1

    .line 4061
    const-wide/16 v4, 0x80

    and-long/2addr v2, v4

    cmp-long v2, v2, v10

    if-eqz v2, :cond_5

    .line 4062
    or-int/lit16 v1, v1, 0x200

    .line 4034
    :cond_5
    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    goto :goto_2

    .line 1261
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_4

    .line 1262
    iget-object v0, p0, Landroid/support/v4/media/session/B;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->a()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/media/session/g;->a(Ljava/lang/Object;I)V

    goto :goto_3

    .line 1268
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_8

    .line 1269
    iget-object v0, p0, Landroid/support/v4/media/session/B;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->d()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/support/v4/media/session/M;->a(Ljava/lang/Object;J)V

    goto :goto_2

    .line 1270
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_1

    .line 1271
    iget-object v0, p0, Landroid/support/v4/media/session/B;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->d()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/support/v4/media/session/g;->a(Ljava/lang/Object;J)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method public final a(Landroid/support/v4/media/session/w;Landroid/os/Handler;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x13

    const/16 v2, 0x12

    .line 1079
    iget-object v0, p0, Landroid/support/v4/media/session/B;->q:Landroid/support/v4/media/session/w;

    if-ne p1, v0, :cond_0

    .line 1165
    :goto_0
    return-void

    .line 1082
    :cond_0
    if-eqz p1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v2, :cond_4

    .line 1085
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_2

    .line 1086
    iget-object v0, p0, Landroid/support/v4/media/session/B;->d:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/support/v4/media/session/M;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1088
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_3

    .line 1089
    iget-object v0, p0, Landroid/support/v4/media/session/B;->d:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/support/v4/media/session/j;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1164
    :cond_3
    :goto_1
    iput-object p1, p0, Landroid/support/v4/media/session/B;->q:Landroid/support/v4/media/session/w;

    goto :goto_0

    .line 1092
    :cond_4
    if-nez p2, :cond_5

    .line 1093
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1095
    :cond_5
    new-instance v0, Landroid/support/v4/media/session/D;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/session/D;-><init>(Landroid/support/v4/media/session/B;Landroid/support/v4/media/session/w;)V

    .line 1151
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_6

    .line 1152
    invoke-static {v0}, Landroid/support/v4/media/session/M;->a(Landroid/support/v4/media/session/L;)Ljava/lang/Object;

    move-result-object v1

    .line 1154
    iget-object v2, p0, Landroid/support/v4/media/session/B;->d:Ljava/lang/Object;

    invoke-static {v2, v1}, Landroid/support/v4/media/session/M;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1157
    :cond_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_3

    .line 3039
    new-instance v1, Landroid/support/v4/media/session/O;

    invoke-direct {v1, v0}, Landroid/support/v4/media/session/O;-><init>(Landroid/support/v4/media/session/L;)V

    .line 1160
    iget-object v0, p0, Landroid/support/v4/media/session/B;->d:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/support/v4/media/session/j;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 1208
    iget-boolean v0, p0, Landroid/support/v4/media/session/B;->n:Z

    if-ne p1, v0, :cond_1

    .line 1216
    :cond_0
    :goto_0
    return-void

    .line 1211
    :cond_1
    iput-boolean p1, p0, Landroid/support/v4/media/session/B;->n:Z

    .line 1212
    invoke-direct {p0}, Landroid/support/v4/media/session/B;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Landroid/support/v4/media/session/B;->s:Landroid/support/v4/media/MediaMetadataCompat;

    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/B;->a(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 1214
    iget-object v0, p0, Landroid/support/v4/media/session/B;->t:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/B;->a(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 1220
    iget-boolean v0, p0, Landroid/support/v4/media/session/B;->n:Z

    return v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 1230
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/media/session/B;->n:Z

    .line 1231
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/media/session/B;->m:Z

    .line 1232
    invoke-direct {p0}, Landroid/support/v4/media/session/B;->f()Z

    .line 3478
    iget-object v0, p0, Landroid/support/v4/media/session/B;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 3479
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 3480
    iget-object v0, p0, Landroid/support/v4/media/session/B;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/a;

    .line 3482
    :try_start_0
    invoke-interface {v0}, Landroid/support/v4/media/session/a;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3479
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 3486
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/B;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3487
    iget-object v0, p0, Landroid/support/v4/media/session/B;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 1234
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final b(I)V
    .locals 7

    .prologue
    .line 1177
    iget-object v0, p0, Landroid/support/v4/media/session/B;->x:Landroid/support/v4/media/VolumeProviderCompat;

    if-eqz v0, :cond_0

    .line 1178
    iget-object v0, p0, Landroid/support/v4/media/session/B;->x:Landroid/support/v4/media/VolumeProviderCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/media/VolumeProviderCompat;->a(Landroid/support/v4/media/t;)V

    .line 1180
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/media/session/B;->v:I

    .line 1181
    new-instance v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    iget v1, p0, Landroid/support/v4/media/session/B;->v:I

    iget v2, p0, Landroid/support/v4/media/session/B;->w:I

    const/4 v3, 0x2

    iget-object v4, p0, Landroid/support/v4/media/session/B;->j:Landroid/media/AudioManager;

    iget v5, p0, Landroid/support/v4/media/session/B;->w:I

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    iget-object v5, p0, Landroid/support/v4/media/session/B;->j:Landroid/media/AudioManager;

    iget v6, p0, Landroid/support/v4/media/session/B;->w:I

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    .line 1185
    invoke-direct {p0, v0}, Landroid/support/v4/media/session/B;->a(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    .line 1186
    return-void
.end method

.method public final c()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .prologue
    .line 1238
    iget-object v0, p0, Landroid/support/v4/media/session/B;->f:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1322
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1327
    iget-object v0, p0, Landroid/support/v4/media/session/B;->d:Ljava/lang/Object;

    return-object v0
.end method
