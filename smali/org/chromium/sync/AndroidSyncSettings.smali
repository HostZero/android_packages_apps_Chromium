.class public Lorg/chromium/sync/AndroidSyncSettings;
.super Ljava/lang/Object;
.source "AndroidSyncSettings.java"


# static fields
.field private static final CLASS_LOCK:Ljava/lang/Object;

.field public static final TAG:Ljava/lang/String; = "AndroidSyncSettings"

.field private static sInstance:Lorg/chromium/sync/AndroidSyncSettings;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private final mApplicationContext:Landroid/content/Context;

.field private mChromeSyncEnabled:Z

.field private final mContractAuthority:Ljava/lang/String;

.field private mIsSyncable:Z

.field private final mLock:Ljava/lang/Object;

.field private mMasterSyncEnabled:Z

.field private final mObservers:Lorg/chromium/base/ObserverList;

.field private final mSyncContentResolverDelegate:Lorg/chromium/sync/SyncContentResolverDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/sync/AndroidSyncSettings;->CLASS_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lorg/chromium/sync/SyncContentResolverDelegate;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/sync/AndroidSyncSettings;->mLock:Ljava/lang/Object;

    .line 52
    iput-object v3, p0, Lorg/chromium/sync/AndroidSyncSettings;->mAccount:Landroid/accounts/Account;

    .line 54
    iput-boolean v1, p0, Lorg/chromium/sync/AndroidSyncSettings;->mIsSyncable:Z

    .line 56
    iput-boolean v1, p0, Lorg/chromium/sync/AndroidSyncSettings;->mChromeSyncEnabled:Z

    .line 58
    iput-boolean v1, p0, Lorg/chromium/sync/AndroidSyncSettings;->mMasterSyncEnabled:Z

    .line 60
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/sync/AndroidSyncSettings;->mObservers:Lorg/chromium/base/ObserverList;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/sync/AndroidSyncSettings;->mApplicationContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lorg/chromium/sync/AndroidSyncSettings;->mSyncContentResolverDelegate:Lorg/chromium/sync/SyncContentResolverDelegate;

    .line 96
    invoke-direct {p0}, Lorg/chromium/sync/AndroidSyncSettings;->getContractAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/sync/AndroidSyncSettings;->mContractAuthority:Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Lorg/chromium/sync/AndroidSyncSettings;->updateCachedSettings()Z

    .line 100
    iget-object v0, p0, Lorg/chromium/sync/AndroidSyncSettings;->mSyncContentResolverDelegate:Lorg/chromium/sync/SyncContentResolverDelegate;

    const/4 v1, 0x1

    new-instance v2, Lorg/chromium/sync/AndroidSyncSettings$AndroidSyncSettingsChangedObserver;

    invoke-direct {v2, p0, v3}, Lorg/chromium/sync/AndroidSyncSettings$AndroidSyncSettingsChangedObserver;-><init>(Lorg/chromium/sync/AndroidSyncSettings;Lorg/chromium/sync/AndroidSyncSettings$1;)V

    invoke-interface {v0, v1, v2}, Lorg/chromium/sync/SyncContentResolverDelegate;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/sync/AndroidSyncSettings;)Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/chromium/sync/AndroidSyncSettings;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/sync/AndroidSyncSettings;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/chromium/sync/AndroidSyncSettings;->mContractAuthority:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/sync/AndroidSyncSettings;)Lorg/chromium/sync/SyncContentResolverDelegate;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/chromium/sync/AndroidSyncSettings;->mSyncContentResolverDelegate:Lorg/chromium/sync/SyncContentResolverDelegate;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/sync/AndroidSyncSettings;)Z
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/chromium/sync/AndroidSyncSettings;->updateCachedSettings()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/chromium/sync/AndroidSyncSettings;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/chromium/sync/AndroidSyncSettings;->notifyObservers()V

    return-void
.end method

.method public static disableChromeSync(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 152
    invoke-static {p0}, Lorg/chromium/sync/AndroidSyncSettings;->ensureInitialized(Landroid/content/Context;)V

    .line 153
    sget-object v0, Lorg/chromium/sync/AndroidSyncSettings;->sInstance:Lorg/chromium/sync/AndroidSyncSettings;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/sync/AndroidSyncSettings;->setChromeSyncEnabled(Z)V

    .line 154
    return-void
.end method

.method public static enableChromeSync(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 144
    invoke-static {p0}, Lorg/chromium/sync/AndroidSyncSettings;->ensureInitialized(Landroid/content/Context;)V

    .line 145
    sget-object v0, Lorg/chromium/sync/AndroidSyncSettings;->sInstance:Lorg/chromium/sync/AndroidSyncSettings;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/chromium/sync/AndroidSyncSettings;->setChromeSyncEnabled(Z)V

    .line 146
    return-void
.end method

.method private static ensureInitialized(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 71
    sget-object v1, Lorg/chromium/sync/AndroidSyncSettings;->CLASS_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_0
    sget-object v0, Lorg/chromium/sync/AndroidSyncSettings;->sInstance:Lorg/chromium/sync/AndroidSyncSettings;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lorg/chromium/sync/SystemSyncContentResolverDelegate;

    invoke-direct {v0}, Lorg/chromium/sync/SystemSyncContentResolverDelegate;-><init>()V

    .line 75
    new-instance v2, Lorg/chromium/sync/AndroidSyncSettings;

    invoke-direct {v2, p0, v0}, Lorg/chromium/sync/AndroidSyncSettings;-><init>(Landroid/content/Context;Lorg/chromium/sync/SyncContentResolverDelegate;)V

    sput-object v2, Lorg/chromium/sync/AndroidSyncSettings;->sInstance:Lorg/chromium/sync/AndroidSyncSettings;

    .line 77
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getContractAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lorg/chromium/sync/AndroidSyncSettings;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContractAuthority(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    invoke-static {p0}, Lorg/chromium/sync/AndroidSyncSettings;->ensureInitialized(Landroid/content/Context;)V

    .line 175
    sget-object v0, Lorg/chromium/sync/AndroidSyncSettings;->sInstance:Lorg/chromium/sync/AndroidSyncSettings;

    invoke-direct {v0}, Lorg/chromium/sync/AndroidSyncSettings;->getContractAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isChromeSyncEnabled(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 128
    invoke-static {p0}, Lorg/chromium/sync/AndroidSyncSettings;->ensureInitialized(Landroid/content/Context;)V

    .line 129
    sget-object v0, Lorg/chromium/sync/AndroidSyncSettings;->sInstance:Lorg/chromium/sync/AndroidSyncSettings;

    iget-boolean v0, v0, Lorg/chromium/sync/AndroidSyncSettings;->mChromeSyncEnabled:Z

    return v0
.end method

.method public static isMasterSyncEnabled(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 136
    invoke-static {p0}, Lorg/chromium/sync/AndroidSyncSettings;->ensureInitialized(Landroid/content/Context;)V

    .line 137
    sget-object v0, Lorg/chromium/sync/AndroidSyncSettings;->sInstance:Lorg/chromium/sync/AndroidSyncSettings;

    iget-boolean v0, v0, Lorg/chromium/sync/AndroidSyncSettings;->mMasterSyncEnabled:Z

    return v0
.end method

.method public static isSyncEnabled(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 114
    invoke-static {p0}, Lorg/chromium/sync/AndroidSyncSettings;->ensureInitialized(Landroid/content/Context;)V

    .line 115
    sget-object v0, Lorg/chromium/sync/AndroidSyncSettings;->sInstance:Lorg/chromium/sync/AndroidSyncSettings;

    iget-boolean v0, v0, Lorg/chromium/sync/AndroidSyncSettings;->mMasterSyncEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/sync/AndroidSyncSettings;->sInstance:Lorg/chromium/sync/AndroidSyncSettings;

    iget-boolean v0, v0, Lorg/chromium/sync/AndroidSyncSettings;->mChromeSyncEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyObservers()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lorg/chromium/sync/AndroidSyncSettings;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/sync/AndroidSyncSettings$AndroidSyncSettingsObserver;

    .line 297
    invoke-interface {v0}, Lorg/chromium/sync/AndroidSyncSettings$AndroidSyncSettingsObserver;->androidSyncSettingsChanged()V

    goto :goto_0

    .line 299
    :cond_0
    return-void
.end method

.method public static overrideForTests(Landroid/content/Context;Lorg/chromium/sync/SyncContentResolverDelegate;)V
    .locals 2

    .prologue
    .line 83
    sget-object v1, Lorg/chromium/sync/AndroidSyncSettings;->CLASS_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    :try_start_0
    new-instance v0, Lorg/chromium/sync/AndroidSyncSettings;

    invoke-direct {v0, p0, p1}, Lorg/chromium/sync/AndroidSyncSettings;-><init>(Landroid/content/Context;Lorg/chromium/sync/SyncContentResolverDelegate;)V

    sput-object v0, Lorg/chromium/sync/AndroidSyncSettings;->sInstance:Lorg/chromium/sync/AndroidSyncSettings;

    .line 85
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static registerObserver(Landroid/content/Context;Lorg/chromium/sync/AndroidSyncSettings$AndroidSyncSettingsObserver;)V
    .locals 2

    .prologue
    .line 182
    invoke-static {p0}, Lorg/chromium/sync/AndroidSyncSettings;->ensureInitialized(Landroid/content/Context;)V

    .line 183
    sget-object v0, Lorg/chromium/sync/AndroidSyncSettings;->sInstance:Lorg/chromium/sync/AndroidSyncSettings;

    iget-object v1, v0, Lorg/chromium/sync/AndroidSyncSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_0
    sget-object v0, Lorg/chromium/sync/AndroidSyncSettings;->sInstance:Lorg/chromium/sync/AndroidSyncSettings;

    iget-object v0, v0, Lorg/chromium/sync/AndroidSyncSettings;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 185
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setChromeSyncEnabled(Z)V
    .locals 5

    .prologue
    .line 199
    iget-object v1, p0, Lorg/chromium/sync/AndroidSyncSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 200
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/sync/AndroidSyncSettings;->updateSyncability()V

    .line 201
    iget-boolean v0, p0, Lorg/chromium/sync/AndroidSyncSettings;->mChromeSyncEnabled:Z

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/chromium/sync/AndroidSyncSettings;->mAccount:Landroid/accounts/Account;

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v1

    .line 209
    :goto_0
    return-void

    .line 202
    :cond_1
    iput-boolean p1, p0, Lorg/chromium/sync/AndroidSyncSettings;->mChromeSyncEnabled:Z

    .line 204
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 205
    iget-object v2, p0, Lorg/chromium/sync/AndroidSyncSettings;->mSyncContentResolverDelegate:Lorg/chromium/sync/SyncContentResolverDelegate;

    iget-object v3, p0, Lorg/chromium/sync/AndroidSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v4, p0, Lorg/chromium/sync/AndroidSyncSettings;->mContractAuthority:Ljava/lang/String;

    invoke-interface {v2, v3, v4, p1}, Lorg/chromium/sync/SyncContentResolverDelegate;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 206
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 207
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    invoke-direct {p0}, Lorg/chromium/sync/AndroidSyncSettings;->notifyObservers()V

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static unregisterObserver(Landroid/content/Context;Lorg/chromium/sync/AndroidSyncSettings$AndroidSyncSettingsObserver;)V
    .locals 2

    .prologue
    .line 192
    invoke-static {p0}, Lorg/chromium/sync/AndroidSyncSettings;->ensureInitialized(Landroid/content/Context;)V

    .line 193
    sget-object v0, Lorg/chromium/sync/AndroidSyncSettings;->sInstance:Lorg/chromium/sync/AndroidSyncSettings;

    iget-object v1, v0, Lorg/chromium/sync/AndroidSyncSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 194
    :try_start_0
    sget-object v0, Lorg/chromium/sync/AndroidSyncSettings;->sInstance:Lorg/chromium/sync/AndroidSyncSettings;

    iget-object v0, v0, Lorg/chromium/sync/AndroidSyncSettings;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 195
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static updateAccount(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 2

    .prologue
    .line 160
    invoke-static {p0}, Lorg/chromium/sync/AndroidSyncSettings;->ensureInitialized(Landroid/content/Context;)V

    .line 161
    sget-object v0, Lorg/chromium/sync/AndroidSyncSettings;->sInstance:Lorg/chromium/sync/AndroidSyncSettings;

    iget-object v1, v0, Lorg/chromium/sync/AndroidSyncSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 162
    :try_start_0
    sget-object v0, Lorg/chromium/sync/AndroidSyncSettings;->sInstance:Lorg/chromium/sync/AndroidSyncSettings;

    iput-object p1, v0, Lorg/chromium/sync/AndroidSyncSettings;->mAccount:Landroid/accounts/Account;

    .line 163
    sget-object v0, Lorg/chromium/sync/AndroidSyncSettings;->sInstance:Lorg/chromium/sync/AndroidSyncSettings;

    invoke-direct {v0}, Lorg/chromium/sync/AndroidSyncSettings;->updateSyncability()V

    .line 164
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    sget-object v0, Lorg/chromium/sync/AndroidSyncSettings;->sInstance:Lorg/chromium/sync/AndroidSyncSettings;

    invoke-direct {v0}, Lorg/chromium/sync/AndroidSyncSettings;->updateCachedSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    sget-object v0, Lorg/chromium/sync/AndroidSyncSettings;->sInstance:Lorg/chromium/sync/AndroidSyncSettings;

    invoke-direct {v0}, Lorg/chromium/sync/AndroidSyncSettings;->notifyObservers()V

    .line 168
    :cond_0
    return-void

    .line 164
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private updateCachedSettings()Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 273
    iget-object v3, p0, Lorg/chromium/sync/AndroidSyncSettings;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 274
    :try_start_0
    iget-boolean v4, p0, Lorg/chromium/sync/AndroidSyncSettings;->mChromeSyncEnabled:Z

    .line 275
    iget-boolean v5, p0, Lorg/chromium/sync/AndroidSyncSettings;->mMasterSyncEnabled:Z

    .line 277
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v6

    .line 278
    iget-object v2, p0, Lorg/chromium/sync/AndroidSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_3

    .line 279
    iget-object v2, p0, Lorg/chromium/sync/AndroidSyncSettings;->mSyncContentResolverDelegate:Lorg/chromium/sync/SyncContentResolverDelegate;

    iget-object v7, p0, Lorg/chromium/sync/AndroidSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v8, p0, Lorg/chromium/sync/AndroidSyncSettings;->mContractAuthority:Ljava/lang/String;

    invoke-interface {v2, v7, v8}, Lorg/chromium/sync/SyncContentResolverDelegate;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_2

    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lorg/chromium/sync/AndroidSyncSettings;->mIsSyncable:Z

    .line 281
    iget-object v2, p0, Lorg/chromium/sync/AndroidSyncSettings;->mSyncContentResolverDelegate:Lorg/chromium/sync/SyncContentResolverDelegate;

    iget-object v7, p0, Lorg/chromium/sync/AndroidSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v8, p0, Lorg/chromium/sync/AndroidSyncSettings;->mContractAuthority:Ljava/lang/String;

    invoke-interface {v2, v7, v8}, Lorg/chromium/sync/SyncContentResolverDelegate;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/chromium/sync/AndroidSyncSettings;->mChromeSyncEnabled:Z

    .line 287
    :goto_1
    iget-object v2, p0, Lorg/chromium/sync/AndroidSyncSettings;->mSyncContentResolverDelegate:Lorg/chromium/sync/SyncContentResolverDelegate;

    invoke-interface {v2}, Lorg/chromium/sync/SyncContentResolverDelegate;->getMasterSyncAutomatically()Z

    move-result v2

    iput-boolean v2, p0, Lorg/chromium/sync/AndroidSyncSettings;->mMasterSyncEnabled:Z

    .line 288
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 290
    iget-boolean v2, p0, Lorg/chromium/sync/AndroidSyncSettings;->mChromeSyncEnabled:Z

    if-ne v4, v2, :cond_0

    iget-boolean v2, p0, Lorg/chromium/sync/AndroidSyncSettings;->mMasterSyncEnabled:Z

    if-eq v5, v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    monitor-exit v3

    return v0

    :cond_2
    move v2, v0

    .line 279
    goto :goto_0

    .line 284
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/chromium/sync/AndroidSyncSettings;->mIsSyncable:Z

    .line 285
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/chromium/sync/AndroidSyncSettings;->mChromeSyncEnabled:Z

    goto :goto_1

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateSyncability()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 218
    iget-object v0, p0, Lorg/chromium/sync/AndroidSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    move v0, v1

    .line 219
    :goto_0
    iget-boolean v2, p0, Lorg/chromium/sync/AndroidSyncSettings;->mIsSyncable:Z

    if-ne v2, v0, :cond_1

    .line 247
    :goto_1
    return-void

    .line 218
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 221
    :cond_1
    iput-boolean v0, p0, Lorg/chromium/sync/AndroidSyncSettings;->mIsSyncable:Z

    .line 223
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 225
    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lorg/chromium/sync/AndroidSyncSettings;->mSyncContentResolverDelegate:Lorg/chromium/sync/SyncContentResolverDelegate;

    iget-object v3, p0, Lorg/chromium/sync/AndroidSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v4, p0, Lorg/chromium/sync/AndroidSyncSettings;->mContractAuthority:Ljava/lang/String;

    invoke-interface {v0, v3, v4, v1}, Lorg/chromium/sync/SyncContentResolverDelegate;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 228
    iget-object v0, p0, Lorg/chromium/sync/AndroidSyncSettings;->mSyncContentResolverDelegate:Lorg/chromium/sync/SyncContentResolverDelegate;

    iget-object v1, p0, Lorg/chromium/sync/AndroidSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lorg/chromium/sync/AndroidSyncSettings;->mContractAuthority:Ljava/lang/String;

    sget-object v4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-interface {v0, v1, v3, v4}, Lorg/chromium/sync/SyncContentResolverDelegate;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 231
    :cond_2
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 234
    iget-object v0, p0, Lorg/chromium/sync/AndroidSyncSettings;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v0

    new-instance v1, Lorg/chromium/sync/AndroidSyncSettings$1;

    invoke-direct {v1, p0}, Lorg/chromium/sync/AndroidSyncSettings$1;-><init>(Lorg/chromium/sync/AndroidSyncSettings;)V

    invoke-virtual {v0, v1}, Lorg/chromium/sync/signin/AccountManagerHelper;->getGoogleAccounts(Lorg/chromium/base/Callback;)V

    goto :goto_1
.end method
