.class public Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;
.super Ljava/lang/Object;
.source "SystemDownloadNotifier.java"

# interfaces
.implements Lorg/chromium/chrome/browser/download/DownloadNotifier;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mActiveDownloadIds:Ljava/util/Set;

.field private final mApplicationContext:Landroid/content/Context;

.field private mBoundService:Lorg/chromium/chrome/browser/download/DownloadNotificationService;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mLock:Ljava/lang/Object;

.field private mPendingNotifications:Ljava/util/List;

.field private mServiceStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mLock:Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mActiveDownloadIds:Ljava/util/Set;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mPendingNotifications:Ljava/util/List;

    .line 72
    new-instance v0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier$1;-><init>(Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mConnection:Landroid/content/ServiceConnection;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mApplicationContext:Landroid/content/Context;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;Lorg/chromium/chrome/browser/download/DownloadNotificationService;)Lorg/chromium/chrome/browser/download/DownloadNotificationService;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mBoundService:Lorg/chromium/chrome/browser/download/DownloadNotificationService;

    return-object p1
.end method

.method static synthetic access$202(Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mServiceStarted:Z

    return p1
.end method

.method private startAndBindToServiceIfNeeded()V
    .locals 1

    .prologue
    .line 139
    sget-boolean v0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 140
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mServiceStarted:Z

    if-eqz v0, :cond_1

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->startService()V

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mServiceStarted:Z

    goto :goto_0
.end method

.method private stopServiceIfNeeded()V
    .locals 1

    .prologue
    .line 149
    sget-boolean v0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 150
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mActiveDownloadIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mServiceStarted:Z

    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->stopService()V

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mServiceStarted:Z

    .line 154
    :cond_1
    return-void
.end method

.method private updateDownloadNotification(ILorg/chromium/content/browser/DownloadInfo;Landroid/content/Intent;J)V
    .locals 10

    .prologue
    .line 216
    iget-object v9, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 217
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->startAndBindToServiceIfNeeded()V

    .line 218
    if-nez p1, :cond_2

    .line 219
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mActiveDownloadIds:Ljava/util/Set;

    invoke-virtual {p2}, Lorg/chromium/content/browser/DownloadInfo;->getDownloadId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mBoundService:Lorg/chromium/chrome/browser/download/DownloadNotificationService;

    if-nez v0, :cond_3

    .line 227
    iget-object v6, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mPendingNotifications:Ljava/util/List;

    new-instance v0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier$PendingNotificationInfo;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier$PendingNotificationInfo;-><init>(ILorg/chromium/content/browser/DownloadInfo;Landroid/content/Intent;J)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_1
    :goto_1
    monitor-exit v9

    return-void

    .line 220
    :cond_2
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 221
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mActiveDownloadIds:Ljava/util/Set;

    invoke-virtual {p2}, Lorg/chromium/content/browser/DownloadInfo;->getDownloadId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 230
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 262
    :try_start_1
    sget-boolean v0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 232
    :pswitch_0
    invoke-virtual {p2}, Lorg/chromium/content/browser/DownloadInfo;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 233
    sget-boolean v0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lorg/chromium/content/browser/DownloadInfo;->isResumable()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 234
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mBoundService:Lorg/chromium/chrome/browser/download/DownloadNotificationService;

    invoke-virtual {p2}, Lorg/chromium/content/browser/DownloadInfo;->getDownloadId()I

    move-result v1

    invoke-virtual {p2}, Lorg/chromium/content/browser/DownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/chromium/content/browser/DownloadInfo;->isResumable()Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->notifyDownloadPaused(ILjava/lang/String;ZZ)V

    goto :goto_1

    .line 237
    :cond_5
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mBoundService:Lorg/chromium/chrome/browser/download/DownloadNotificationService;

    invoke-virtual {p2}, Lorg/chromium/content/browser/DownloadInfo;->getDownloadId()I

    move-result v1

    invoke-virtual {p2}, Lorg/chromium/content/browser/DownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/chromium/content/browser/DownloadInfo;->getPercentCompleted()I

    move-result v3

    invoke-virtual {p2}, Lorg/chromium/content/browser/DownloadInfo;->getTimeRemainingInMillis()J

    move-result-wide v4

    invoke-virtual {p2}, Lorg/chromium/content/browser/DownloadInfo;->isResumable()Z

    move-result v8

    move-wide v6, p4

    invoke-virtual/range {v0 .. v8}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->notifyDownloadProgress(ILjava/lang/String;IJJZ)V

    goto :goto_1

    .line 244
    :pswitch_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mBoundService:Lorg/chromium/chrome/browser/download/DownloadNotificationService;

    invoke-virtual {p2}, Lorg/chromium/content/browser/DownloadInfo;->getDownloadId()I

    move-result v1

    invoke-virtual {p2}, Lorg/chromium/content/browser/DownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p3}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->notifyDownloadSuccessful(ILjava/lang/String;Landroid/content/Intent;)V

    .line 246
    invoke-direct {p0}, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->stopServiceIfNeeded()V

    goto :goto_1

    .line 249
    :pswitch_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mBoundService:Lorg/chromium/chrome/browser/download/DownloadNotificationService;

    invoke-virtual {p2}, Lorg/chromium/content/browser/DownloadInfo;->getDownloadId()I

    move-result v1

    invoke-virtual {p2}, Lorg/chromium/content/browser/DownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->notifyDownloadFailed(ILjava/lang/String;)V

    .line 251
    invoke-direct {p0}, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->stopServiceIfNeeded()V

    goto/16 :goto_1

    .line 254
    :pswitch_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mBoundService:Lorg/chromium/chrome/browser/download/DownloadNotificationService;

    invoke-virtual {p2}, Lorg/chromium/content/browser/DownloadInfo;->getDownloadId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->cancelNotification(I)V

    .line 255
    invoke-direct {p0}, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->stopServiceIfNeeded()V

    goto/16 :goto_1

    .line 258
    :pswitch_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mBoundService:Lorg/chromium/chrome/browser/download/DownloadNotificationService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/download/DownloadNotificationService;->clearPendingDownloads()V

    .line 259
    invoke-direct {p0}, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->stopServiceIfNeeded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public cancelNotification(I)V
    .locals 6

    .prologue
    .line 180
    new-instance v0, Lorg/chromium/content/browser/DownloadInfo$Builder;

    invoke-direct {v0}, Lorg/chromium/content/browser/DownloadInfo$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setDownloadId(I)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/DownloadInfo$Builder;->build()Lorg/chromium/content/browser/DownloadInfo;

    move-result-object v2

    .line 181
    const/4 v1, 0x3

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->updateDownloadNotification(ILorg/chromium/content/browser/DownloadInfo;Landroid/content/Intent;J)V

    .line 182
    return-void
.end method

.method public clearPendingDownloads()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 202
    const/4 v1, 0x4

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->updateDownloadNotification(ILorg/chromium/content/browser/DownloadInfo;Landroid/content/Intent;J)V

    .line 204
    return-void
.end method

.method handlePendingNotifications()V
    .locals 6

    .prologue
    .line 108
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mPendingNotifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 132
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mPendingNotifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier$PendingNotificationInfo;

    .line 111
    iget v3, v0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier$PendingNotificationInfo;->type:I

    packed-switch v3, :pswitch_data_0

    .line 128
    sget-boolean v0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 113
    :pswitch_0
    :try_start_1
    iget-object v3, v0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier$PendingNotificationInfo;->downloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    iget-wide v4, v0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier$PendingNotificationInfo;->startTime:J

    invoke-virtual {p0, v3, v4, v5}, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->notifyDownloadProgress(Lorg/chromium/content/browser/DownloadInfo;J)V

    goto :goto_1

    .line 116
    :pswitch_1
    iget-object v3, v0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier$PendingNotificationInfo;->downloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    iget-object v0, v0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier$PendingNotificationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->notifyDownloadSuccessful(Lorg/chromium/content/browser/DownloadInfo;Landroid/content/Intent;)V

    goto :goto_1

    .line 119
    :pswitch_2
    iget-object v0, v0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier$PendingNotificationInfo;->downloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->notifyDownloadFailed(Lorg/chromium/content/browser/DownloadInfo;)V

    goto :goto_1

    .line 122
    :pswitch_3
    iget-object v0, v0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier$PendingNotificationInfo;->downloadInfo:Lorg/chromium/content/browser/DownloadInfo;

    invoke-virtual {v0}, Lorg/chromium/content/browser/DownloadInfo;->getDownloadId()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->cancelNotification(I)V

    goto :goto_1

    .line 125
    :pswitch_4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->clearPendingDownloads()V

    goto :goto_1

    .line 131
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mPendingNotifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 132
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public notifyDownloadFailed(Lorg/chromium/content/browser/DownloadInfo;)V
    .locals 6

    .prologue
    .line 191
    const/4 v1, 0x2

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->updateDownloadNotification(ILorg/chromium/content/browser/DownloadInfo;Landroid/content/Intent;J)V

    .line 192
    return-void
.end method

.method public notifyDownloadProgress(Lorg/chromium/content/browser/DownloadInfo;J)V
    .locals 6

    .prologue
    .line 196
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->updateDownloadNotification(ILorg/chromium/content/browser/DownloadInfo;Landroid/content/Intent;J)V

    .line 198
    return-void
.end method

.method public notifyDownloadSuccessful(Lorg/chromium/content/browser/DownloadInfo;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 186
    const/4 v1, 0x1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->updateDownloadNotification(ILorg/chromium/content/browser/DownloadInfo;Landroid/content/Intent;J)V

    .line 187
    return-void
.end method

.method setDownloadNotificationService(Lorg/chromium/chrome/browser/download/DownloadNotificationService;)V
    .locals 2

    .prologue
    .line 98
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    :try_start_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mBoundService:Lorg/chromium/chrome/browser/download/DownloadNotificationService;

    .line 100
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method startService()V
    .locals 4

    .prologue
    .line 161
    sget-boolean v0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 162
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mApplicationContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mApplicationContext:Landroid/content/Context;

    const-class v3, Lorg/chromium/chrome/browser/download/DownloadNotificationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 164
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mApplicationContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mApplicationContext:Landroid/content/Context;

    const-class v3, Lorg/chromium/chrome/browser/download/DownloadNotificationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 166
    return-void
.end method

.method stopService()V
    .locals 4

    .prologue
    .line 173
    sget-boolean v0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mApplicationContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/chromium/chrome/browser/download/SystemDownloadNotifier;->mApplicationContext:Landroid/content/Context;

    const-class v3, Lorg/chromium/chrome/browser/download/DownloadNotificationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 176
    return-void
.end method
