.class public Lorg/chromium/chrome/browser/sync/SyncController;
.super Ljava/lang/Object;
.source "SyncController.java"

# interfaces
.implements Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;
.implements Lorg/chromium/sync/AndroidSyncSettings$AndroidSyncSettingsObserver;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final GENERATOR_ID:Ljava/lang/String; = "SYNC"

.field public static final SESSION_TAG_PREFIX:Ljava/lang/String; = "session_sync"

.field private static sInitialized:Z

.field private static sInstance:Lorg/chromium/chrome/browser/sync/SyncController;


# instance fields
.field private final mChromeSigninController:Lorg/chromium/sync/signin/ChromeSigninController;

.field private final mContext:Landroid/content/Context;

.field private final mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

.field private final mSyncNotificationController:Lorg/chromium/chrome/browser/sync/SyncNotificationController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    const-class v0, Lorg/chromium/chrome/browser/sync/SyncController;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/sync/SyncController;->$assertionsDisabled:Z

    .line 64
    sput-boolean v1, Lorg/chromium/chrome/browser/sync/SyncController;->sInitialized:Z

    return-void

    :cond_0
    move v0, v1

    .line 49
    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/chromium/chrome/browser/sync/SyncController;->mContext:Landroid/content/Context;

    .line 73
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncController;->mChromeSigninController:Lorg/chromium/sync/signin/ChromeSigninController;

    .line 74
    invoke-static {p1, p0}, Lorg/chromium/sync/AndroidSyncSettings;->registerObserver(Landroid/content/Context;Lorg/chromium/sync/AndroidSyncSettings$AndroidSyncSettingsObserver;)V

    .line 75
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->get()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncController;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 76
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncController;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->addSyncStateChangedListener(Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;)V

    .line 77
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncController;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    new-instance v1, Lorg/chromium/chrome/browser/sync/SyncController$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/sync/SyncController$1;-><init>(Lorg/chromium/chrome/browser/sync/SyncController;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->setMasterSyncEnabledProvider(Lorg/chromium/chrome/browser/sync/ProfileSyncService$MasterSyncEnabledProvider;)V

    .line 84
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/SyncController;->setSessionsId()V

    .line 87
    new-instance v0, Lorg/chromium/chrome/browser/sync/SyncNotificationController;

    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/SyncController;->mContext:Landroid/content/Context;

    const-class v2, Lorg/chromium/chrome/browser/sync/ui/PassphraseActivity;

    const-class v3, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/sync/SyncNotificationController;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncController;->mSyncNotificationController:Lorg/chromium/chrome/browser/sync/SyncNotificationController;

    .line 89
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncController;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/SyncController;->mSyncNotificationController:Lorg/chromium/chrome/browser/sync/SyncNotificationController;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->addSyncStateChangedListener(Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;)V

    .line 91
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/SyncController;->updateSyncStateFromAndroid()V

    .line 94
    new-instance v0, Lorg/chromium/chrome/browser/sync/SyncController$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/sync/SyncController$2;-><init>(Lorg/chromium/chrome/browser/sync/SyncController;)V

    invoke-static {v0}, Lorg/chromium/base/ApplicationStatus;->registerStateListenerForAllActivities(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;)V

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeApplication;->createGmsCoreSyncListener()Lorg/chromium/chrome/browser/sync/GmsCoreSyncListener;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/SyncController;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->addSyncStateChangedListener(Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/sync/SyncController$3;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/sync/SyncController$3;-><init>(Lorg/chromium/chrome/browser/sync/SyncController;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/signin/SigninManager;->addSignInStateObserver(Lorg/chromium/chrome/browser/signin/SigninManager$SignInStateObserver;)V

    .line 118
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/sync/SyncController;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/sync/SyncController;)Lorg/chromium/chrome/browser/sync/ProfileSyncService;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncController;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/sync/SyncController;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/SyncController;->updateSyncStateFromAndroid()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lorg/chromium/chrome/browser/sync/SyncController;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 128
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 129
    sget-boolean v0, Lorg/chromium/chrome/browser/sync/SyncController;->sInitialized:Z

    if-nez v0, :cond_1

    .line 130
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->get()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Lorg/chromium/chrome/browser/sync/SyncController;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/sync/SyncController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/chrome/browser/sync/SyncController;->sInstance:Lorg/chromium/chrome/browser/sync/SyncController;

    .line 133
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/chrome/browser/sync/SyncController;->sInitialized:Z

    .line 135
    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/sync/SyncController;->sInstance:Lorg/chromium/chrome/browser/sync/SyncController;

    return-object v0
.end method

.method private setSessionsId()V
    .locals 4

    .prologue
    .line 224
    const-string/jumbo v0, "SYNC"

    invoke-static {v0}, Lorg/chromium/chrome/browser/identity/UniqueIdentificationGeneratorFactory;->getInstance(Ljava/lang/String;)Lorg/chromium/chrome/browser/identity/UniqueIdentificationGenerator;

    move-result-object v0

    .line 226
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/identity/UniqueIdentificationGenerator;->getUniqueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    const-string/jumbo v0, "SyncController"

    const-string/jumbo v1, "Unable to get unique tag for sync. This may lead to unexpected tab sync behavior."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/SyncController;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "session_sync"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->setSessionsId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateSyncStateFromAndroid()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 142
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/sync/AndroidSyncSettings;->isSyncEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 143
    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/SyncController;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isSyncRequested()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 156
    :goto_0
    return-void

    .line 144
    :cond_0
    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncController;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->requestStart()V

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/sync/AndroidSyncSettings;->isMasterSyncEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    const-string/jumbo v0, "Sync.StopSource"

    const/4 v1, 0x4

    invoke-static {v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 154
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncController;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->requestStop()V

    goto :goto_0

    .line 151
    :cond_2
    const-string/jumbo v0, "Sync.StopSource"

    const/4 v1, 0x5

    invoke-static {v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    goto :goto_1
.end method


# virtual methods
.method public androidSyncSettingsChanged()V
    .locals 1

    .prologue
    .line 195
    new-instance v0, Lorg/chromium/chrome/browser/sync/SyncController$4;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/sync/SyncController$4;-><init>(Lorg/chromium/chrome/browser/sync/SyncController;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 201
    return-void
.end method

.method public getSyncNotificationController()Lorg/chromium/chrome/browser/sync/SyncNotificationController;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncController;->mSyncNotificationController:Lorg/chromium/chrome/browser/sync/SyncNotificationController;

    return-object v0
.end method

.method public isSyncingUrlsWithKeystorePassphrase()Z
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncController;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isBackendInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncController;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->getPreferredDataTypes()Ljava/util/Set;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncController;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->getPassphraseType()Lorg/chromium/sync/PassphraseType;

    move-result-object v0

    sget-object v1, Lorg/chromium/sync/PassphraseType;->KEYSTORE_PASSPHRASE:Lorg/chromium/sync/PassphraseType;

    invoke-virtual {v0, v1}, Lorg/chromium/sync/PassphraseType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncStateChanged()V
    .locals 2

    .prologue
    .line 166
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 167
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/invalidation/InvalidationController;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/SyncController;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isSyncRequested()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 169
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->ensureStartedAndUpdateRegisteredTypes()V

    .line 172
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/sync/AndroidSyncSettings;->isSyncEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 173
    sget-boolean v0, Lorg/chromium/chrome/browser/sync/SyncController;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/sync/AndroidSyncSettings;->isMasterSyncEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 174
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/sync/AndroidSyncSettings;->enableChromeSync(Landroid/content/Context;)V

    .line 188
    :cond_2
    :goto_0
    return-void

    .line 177
    :cond_3
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 178
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->stop()V

    .line 180
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/sync/AndroidSyncSettings;->isSyncEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/sync/AndroidSyncSettings;->disableChromeSync(Landroid/content/Context;)V

    goto :goto_0
.end method
