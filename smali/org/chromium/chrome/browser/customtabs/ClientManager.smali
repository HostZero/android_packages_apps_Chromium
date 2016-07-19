.class Lorg/chromium/chrome/browser/customtabs/ClientManager;
.super Ljava/lang/Object;
.source "ClientManager.java"


# static fields
.field static final NO_SESSION_NO_WARMUP:I = 0x0

.field static final NO_SESSION_WARMUP:I = 0x1

.field static final SESSION_NO_WARMUP_ALREADY_CALLED:I = 0x2

.field static final SESSION_NO_WARMUP_NOT_CALLED:I = 0x3

.field static final SESSION_WARMUP:I = 0x4

.field static final SESSION_WARMUP_COUNT:I = 0x5


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSessionParams:Ljava/util/Map;

.field private final mUidHasCalledWarmup:Landroid/util/SparseBooleanArray;

.field private mWarmupHasBeenCalled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager;->mSessionParams:Ljava/util/Map;

    .line 103
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager;->mUidHasCalledWarmup:Landroid/util/SparseBooleanArray;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager;->mWarmupHasBeenCalled:Z

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager;->mContext:Landroid/content/Context;

    .line 108
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->loadInBackground(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/customtabs/ClientManager;Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/customtabs/ClientManager;->cleanupSession(Landroid/os/IBinder;)V

    return-void
.end method

.method private declared-synchronized cleanupSession(Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 344
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager;->mSessionParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    if-nez v0, :cond_0

    .line 350
    :goto_0
    monitor-exit p0

    return-void

    .line 346
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager;->mSessionParams:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager;->mUidHasCalledWarmup:Landroid/util/SparseBooleanArray;

    iget v2, v0, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;->uid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 348
    iget-object v1, v0, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;->callback:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v1}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 349
    iget-object v0, v0, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cleanupAll()V
    .locals 2

    .prologue
    .line 339
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager;->mSessionParams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 340
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/customtabs/ClientManager;->cleanupSession(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 341
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized dontKeepAliveForSession(Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 313
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager;->mSessionParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;

    .line 314
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;->getKeepAliveConnection()Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_1

    .line 318
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 315
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;->getKeepAliveConnection()Landroid/content/ServiceConnection;

    move-result-object v1

    .line 316
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;->setKeepAliveConnection(Landroid/content/ServiceConnection;)V

    .line 317
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCallbackForSession(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsCallback;
    .locals 1

    .prologue
    .line 241
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager;->mSessionParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;

    .line 242
    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;->callback:Landroid/support/customtabs/ICustomTabsCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getClientPackageNameForSession(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager;->mSessionParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, v0, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;->packageName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIgnoreFragmentsForSession(Landroid/os/IBinder;)Z
    .locals 1

    .prologue
    .line 266
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager;->mSessionParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-boolean v0, v0, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;->mIgnoreFragments:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getReferrerForSession(Landroid/os/IBinder;)Lorg/chromium/content_public/common/Referrer;
    .locals 1

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager;->mSessionParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 226
    :goto_0
    monitor-exit p0

    return-object v0

    .line 225
    :cond_0
    :try_start_1
    iget-object v0, v0, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;->packageName:Ljava/lang/String;

    .line 226
    invoke-static {v0}, Lorg/chromium/chrome/browser/IntentHandler;->constructValidReferrerForAuthority(Ljava/lang/String;)Lorg/chromium/content_public/common/Referrer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getWarmupState(Landroid/os/IBinder;)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 175
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager;->mSessionParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;

    .line 176
    if-eqz v0, :cond_1

    move v4, v1

    .line 177
    :goto_0
    if-eqz v4, :cond_2

    iget-object v3, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager;->mUidHasCalledWarmup:Landroid/util/SparseBooleanArray;

    iget v0, v0, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;->uid:I

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v3, v1

    .line 178
    :goto_1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager;->mWarmupHasBeenCalled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    move v0, v1

    .line 179
    :goto_2
    if-eqz v4, :cond_0

    .line 180
    if-eqz v3, :cond_4

    .line 181
    const/4 v0, 0x4

    .line 187
    :cond_0
    :goto_3
    monitor-exit p0

    return v0

    :cond_1
    move v4, v2

    .line 176
    goto :goto_0

    :cond_2
    move v3, v2

    .line 177
    goto :goto_1

    :cond_3
    move v0, v2

    .line 178
    goto :goto_2

    .line 183
    :cond_4
    :try_start_1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager;->mWarmupHasBeenCalled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    goto :goto_3

    :cond_5
    const/4 v0, 0x3

    goto :goto_3

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPrerenderingAllowed(I)Z
    .locals 1

    .prologue
    .line 322
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->getForUid(Landroid/content/Context;I)Lorg/chromium/chrome/browser/customtabs/RequestThrottler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->isPrerenderingAllowed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized keepAliveForSession(Landroid/os/IBinder;Landroid/content/Intent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 281
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 308
    :goto_0
    monitor-exit p0

    return v0

    .line 282
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager;->mSessionParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;

    .line 283
    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 285
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 286
    iget-object v3, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 288
    iget v4, v0, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;->uid:I

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 289
    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 295
    new-instance v3, Lorg/chromium/chrome/browser/customtabs/ClientManager$2;

    invoke-direct {v3, p0}, Lorg/chromium/chrome/browser/customtabs/ClientManager$2;-><init>(Lorg/chromium/chrome/browser/customtabs/ClientManager;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    :try_start_2
    iget-object v4, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v3, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    .line 307
    if-eqz v1, :cond_4

    :try_start_3
    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;->setKeepAliveConnection(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    move v0, v1

    .line 308
    goto :goto_0

    .line 305
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public newSession(Landroid/support/customtabs/ICustomTabsCallback;ILorg/chromium/chrome/browser/customtabs/ClientManager$DisconnectCallback;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 120
    if-nez p1, :cond_0

    .line 146
    :goto_0
    return v0

    .line 121
    :cond_0
    invoke-interface {p1}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 122
    new-instance v2, Lorg/chromium/chrome/browser/customtabs/ClientManager$1;

    invoke-direct {v2, p0, v1, p3}, Lorg/chromium/chrome/browser/customtabs/ClientManager$1;-><init>(Lorg/chromium/chrome/browser/customtabs/ClientManager;Landroid/os/IBinder;Lorg/chromium/chrome/browser/customtabs/ClientManager$DisconnectCallback;)V

    .line 134
    new-instance v3, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;

    iget-object v4, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2, p1, v2}, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;-><init>(Landroid/content/Context;ILandroid/support/customtabs/ICustomTabsCallback;Landroid/os/IBinder$DeathRecipient;)V

    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v4, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager;->mSessionParams:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    monitor-exit p0

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 138
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-interface {v1, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :try_start_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager;->mSessionParams:Ljava/util/Map;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    monitor-exit p0

    .line 146
    const/4 v0, 0x1

    goto :goto_0

    .line 142
    :catch_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized recordUidHasCalledWarmup(I)V
    .locals 2

    .prologue
    .line 153
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager;->mWarmupHasBeenCalled:Z

    .line 154
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager;->mUidHasCalledWarmup:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerLaunch(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 194
    monitor-enter p0

    .line 196
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager;->mSessionParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;

    .line 197
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;->getPredictedUrl()Ljava/lang/String;

    move-result-object v2

    .line 199
    if-nez v2, :cond_2

    .line 202
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 203
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;->getLastMayLaunchUrlTimestamp()J

    move-result-wide v6

    sub-long/2addr v2, v6

    .line 204
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v5, v6, v7}, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;->setPredictionMetrics(Ljava/lang/String;J)V

    .line 205
    if-ne v1, v4, :cond_0

    .line 206
    iget-object v5, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager;->mContext:Landroid/content/Context;

    iget v0, v0, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;->uid:I

    invoke-static {v5, v0}, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->getForUid(Landroid/content/Context;I)Lorg/chromium/chrome/browser/customtabs/RequestThrottler;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->registerSuccess(Ljava/lang/String;)V

    :cond_0
    move v0, v1

    .line 209
    const-string/jumbo v1, "CustomTabs.PredictionStatus"

    const/4 v5, 0x3

    invoke-static {v1, v0, v5}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 211
    if-ne v0, v4, :cond_1

    .line 212
    const-string/jumbo v1, "CustomTabs.PredictionToLaunch"

    const-wide/16 v4, 0x1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x3

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v9, 0x64

    invoke-static/range {v1 .. v9}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomTimesHistogram(Ljava/lang/String;JJJLjava/util/concurrent/TimeUnit;I)V

    .line 215
    :cond_1
    const-string/jumbo v0, "CustomTabs.WarmupStateOnLaunch"

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/customtabs/ClientManager;->getWarmupState(Landroid/os/IBinder;)I

    move-result v1

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    monitor-exit p0

    return-void

    .line 199
    :cond_2
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    move v1, v4

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerPrerenderRequest(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 327
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->getForUid(Landroid/content/Context;I)Lorg/chromium/chrome/browser/customtabs/RequestThrottler;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->registerPrerenderRequest(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    monitor-exit p0

    return-void

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetThrottling(I)V
    .locals 1

    .prologue
    .line 332
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->getForUid(Landroid/content/Context;I)Lorg/chromium/chrome/browser/customtabs/RequestThrottler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    monitor-exit p0

    return-void

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setIgnoreFragmentsForSession(Landroid/os/IBinder;Z)V
    .locals 1

    .prologue
    .line 272
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager;->mSessionParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;

    .line 273
    iput-boolean p2, v0, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;->mIgnoreFragments:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    monitor-exit p0

    return-void

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldHideDomainForSession(Landroid/os/IBinder;)Z
    .locals 1

    .prologue
    .line 250
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager;->mSessionParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;

    .line 251
    if-eqz v0, :cond_0

    # getter for: Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;->mShouldHideDomain:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;->access$100(Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateStatsAndReturnWhetherAllowed(Landroid/os/IBinder;ILjava/lang/String;)Z
    .locals 4

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager;->mSessionParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;

    .line 167
    if-eqz v0, :cond_0

    iget v1, v0, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;->uid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 170
    :goto_0
    monitor-exit p0

    return v0

    .line 168
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, p3, v2, v3}, Lorg/chromium/chrome/browser/customtabs/ClientManager$SessionParams;->setPredictionMetrics(Ljava/lang/String;J)V

    .line 169
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/ClientManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->getForUid(Landroid/content/Context;I)Lorg/chromium/chrome/browser/customtabs/RequestThrottler;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/RequestThrottler;->updateStatsAndReturnWhetherAllowed()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
