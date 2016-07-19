.class public Lorg/chromium/chrome/browser/invalidation/InvalidationController;
.super Ljava/lang/Object;
.source "InvalidationController.java"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static sInstance:Lorg/chromium/chrome/browser/invalidation/InvalidationController;


# instance fields
.field private final mCanDisableSessionInvalidations:Z

.field private final mContext:Landroid/content/Context;

.field private mEnableSessionInvalidationsTimer:Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;

.field private mGcmInitialized:Z

.field private mNumRecentTabPages:I

.field private mSessionInvalidationsEnabled:Z

.field private mStarted:Z

.field private mUseGcmUpstream:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ZZ)V
    .locals 2

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 328
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Unable to get application context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_0
    iput-object v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mContext:Landroid/content/Context;

    .line 330
    iput-boolean p3, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mUseGcmUpstream:Z

    .line 331
    iput-boolean p2, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mCanDisableSessionInvalidations:Z

    .line 332
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mCanDisableSessionInvalidations:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mSessionInvalidationsEnabled:Z

    .line 333
    new-instance v0, Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mEnableSessionInvalidationsTimer:Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;

    .line 335
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->registerApplicationStateListener(Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;)V

    .line 336
    return-void

    .line 332
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/invalidation/InvalidationController;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mUseGcmUpstream:Z

    return v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/invalidation/InvalidationController;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$402(Lorg/chromium/chrome/browser/invalidation/InvalidationController;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mSessionInvalidationsEnabled:Z

    return p1
.end method

.method private ensureGcmIsInitialized()V
    .locals 3

    .prologue
    .line 202
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mGcmInitialized:Z

    if-eqz v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 203
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mGcmInitialized:Z

    .line 204
    new-instance v0, Lorg/chromium/chrome/browser/invalidation/InvalidationController$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/invalidation/InvalidationController$1;-><init>(Lorg/chromium/chrome/browser/invalidation/InvalidationController;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/invalidation/InvalidationController$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static get(Landroid/content/Context;)Lorg/chromium/chrome/browser/invalidation/InvalidationController;
    .locals 4

    .prologue
    .line 277
    sget-object v1, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 278
    :try_start_0
    sget-object v0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->sInstance:Lorg/chromium/chrome/browser/invalidation/InvalidationController;

    if-nez v0, :cond_0

    .line 282
    const-string/jumbo v0, "PageRevisitInstrumentation"

    invoke-static {v0}, Lorg/chromium/base/FieldTrialList;->findFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Enabled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 284
    const-string/jumbo v2, "AndroidSessionNotifications"

    invoke-static {v2}, Lorg/chromium/base/FieldTrialList;->findFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Disabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 287
    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 290
    :goto_0
    const-string/jumbo v2, "InvalidationsGCMUpstream"

    invoke-static {v2}, Lorg/chromium/base/FieldTrialList;->findFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Enabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 292
    new-instance v3, Lorg/chromium/chrome/browser/invalidation/InvalidationController;

    invoke-direct {v3, p0, v0, v2}, Lorg/chromium/chrome/browser/invalidation/InvalidationController;-><init>(Landroid/content/Context;ZZ)V

    sput-object v3, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->sInstance:Lorg/chromium/chrome/browser/invalidation/InvalidationController;

    .line 295
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->sInstance:Lorg/chromium/chrome/browser/invalidation/InvalidationController;

    monitor-exit v1

    return-object v0

    .line 287
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setSessionInvalidationsEnabled(ZJ)V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mEnableSessionInvalidationsTimer:Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;->cancel()V

    .line 307
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mSessionInvalidationsEnabled:Z

    if-ne v0, p1, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mEnableSessionInvalidationsTimer:Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;

    new-instance v1, Lorg/chromium/chrome/browser/invalidation/InvalidationController$2;

    invoke-direct {v1, p0, p1}, Lorg/chromium/chrome/browser/invalidation/InvalidationController$2;-><init>(Lorg/chromium/chrome/browser/invalidation/InvalidationController;Z)V

    invoke-virtual {v0, v1, p2, p3}, Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;->setRunnable(Ljava/lang/Runnable;J)V

    .line 316
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mStarted:Z

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mEnableSessionInvalidationsTimer:Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;->resume()V

    goto :goto_0
.end method

.method private start()V
    .locals 3

    .prologue
    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mStarted:Z

    .line 223
    iget-object v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mEnableSessionInvalidationsTimer:Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;->resume()V

    .line 224
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mContext:Landroid/content/Context;

    const-class v2, Lorg/chromium/components/invalidation/InvalidationClientService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    iget-object v1, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 226
    return-void
.end method


# virtual methods
.method public ensureStartedAndUpdateRegisteredTypes()V
    .locals 3

    .prologue
    .line 171
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->get()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    .line 172
    if-nez v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 174
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mStarted:Z

    .line 177
    invoke-direct {p0}, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->ensureGcmIsInitialized()V

    .line 181
    iget-object v1, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mEnableSessionInvalidationsTimer:Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;->resume()V

    .line 183
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 184
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->getPreferredDataTypes()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 185
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mSessionInvalidationsEnabled:Z

    if-nez v0, :cond_1

    .line 186
    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 187
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 188
    const/16 v0, 0x16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 191
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->getSignedInUser()Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/chromium/sync/notifier/InvalidationIntentProtocol;->createRegisterIntent(Landroid/accounts/Account;Ljava/util/Set;)Landroid/content/Intent;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mContext:Landroid/content/Context;

    const-class v2, Lorg/chromium/components/invalidation/InvalidationClientService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 195
    iget-object v1, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public isGcmInitialized()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mGcmInitialized:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mStarted:Z

    return v0
.end method

.method public onApplicationStateChange(I)V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/sync/AndroidSyncSettings;->isSyncEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 344
    invoke-direct {p0}, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->start()V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 346
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->stop()V

    goto :goto_0
.end method

.method public onRecentTabsPageClosed()V
    .locals 4

    .prologue
    .line 262
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mCanDisableSessionInvalidations:Z

    if-nez v0, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mNumRecentTabPages:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mNumRecentTabPages:I

    .line 265
    iget v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mNumRecentTabPages:I

    if-nez v0, :cond_0

    .line 266
    const/4 v0, 0x0

    const-wide/32 v2, 0x36ee80

    invoke-direct {p0, v0, v2, v3}, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->setSessionInvalidationsEnabled(ZJ)V

    goto :goto_0
.end method

.method public onRecentTabsPageOpened()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 250
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mCanDisableSessionInvalidations:Z

    if-nez v0, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mNumRecentTabPages:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mNumRecentTabPages:I

    .line 253
    iget v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mNumRecentTabPages:I

    if-ne v0, v2, :cond_0

    .line 254
    const-wide/16 v0, 0x4e20

    invoke-direct {p0, v2, v0, v1}, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->setSessionInvalidationsEnabled(ZJ)V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mStarted:Z

    .line 233
    iget-object v0, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mEnableSessionInvalidationsTimer:Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/invalidation/InvalidationController$Timer;->pause()V

    .line 234
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mContext:Landroid/content/Context;

    const-class v2, Lorg/chromium/components/invalidation/InvalidationClientService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    const-string/jumbo v1, "stop"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 236
    iget-object v1, p0, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 237
    return-void
.end method
