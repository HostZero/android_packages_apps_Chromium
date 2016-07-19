.class public abstract Lorg/chromium/chrome/browser/precache/PrecacheLauncher;
.super Ljava/lang/Object;
.source "PrecacheLauncher.java"


# static fields
.field private static final sInstance:Lorg/chromium/chrome/browser/precache/PrecacheLauncher;


# instance fields
.field private mCalled:Z

.field private mListener:Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;

.field private mNativePrecacheLauncher:J

.field private mNetworkPredictionsAllowed:Z

.field private mShouldRun:Z

.field private mSyncInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher$1;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/precache/PrecacheLauncher$1;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->sInstance:Lorg/chromium/chrome/browser/precache/PrecacheLauncher;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->mListener:Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;

    .line 47
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->mCalled:Z

    .line 48
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->mSyncInitialized:Z

    .line 49
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->mNetworkPredictionsAllowed:Z

    .line 50
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->mShouldRun:Z

    return-void
.end method

.method static synthetic access$002(Lorg/chromium/chrome/browser/precache/PrecacheLauncher;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->mCalled:Z

    return p1
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/precache/PrecacheLauncher;)Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->mListener:Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;

    return-object v0
.end method

.method static synthetic access$102(Lorg/chromium/chrome/browser/precache/PrecacheLauncher;Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;)Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->mListener:Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;

    return-object p1
.end method

.method static synthetic access$202(Lorg/chromium/chrome/browser/precache/PrecacheLauncher;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->mSyncInitialized:Z

    return p1
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/precache/PrecacheLauncher;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->updateEnabledSync(Landroid/content/Context;)V

    return-void
.end method

.method public static get()Lorg/chromium/chrome/browser/precache/PrecacheLauncher;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->sInstance:Lorg/chromium/chrome/browser/precache/PrecacheLauncher;

    return-object v0
.end method

.method private native nativeCancel(J)V
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeInit()J
.end method

.method private native nativeStart(J)V
.end method

.method private onPrecacheCompletedCallback(Z)V
    .locals 0

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->onPrecacheCompleted(Z)V

    .line 96
    return-void
.end method

.method private updateEnabledSync(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 117
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 119
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->canPrefetchAndPrerender()Z

    move-result v0

    .line 121
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->nativeShouldRun()Z

    move-result v1

    .line 123
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->mNetworkPredictionsAllowed:Z

    .line 124
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->mShouldRun:Z

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lorg/chromium/chrome/browser/precache/PrecacheServiceLauncher;->setIsPrecachingEnabled(Landroid/content/Context;Z)V

    .line 129
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updatePrecachingEnabled(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->sInstance:Lorg/chromium/chrome/browser/precache/PrecacheLauncher;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->updateEnabled(Landroid/content/Context;)V

    .line 177
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 72
    iget-wide v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->mNativePrecacheLauncher:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 73
    invoke-direct {p0}, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->mNativePrecacheLauncher:J

    .line 75
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->mNativePrecacheLauncher:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->nativeCancel(J)V

    .line 76
    return-void
.end method

.method public destroy()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 54
    iget-wide v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->mNativePrecacheLauncher:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 55
    iget-wide v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->mNativePrecacheLauncher:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->nativeDestroy(J)V

    .line 56
    iput-wide v2, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->mNativePrecacheLauncher:J

    .line 58
    :cond_0
    return-void
.end method

.method public failureReasons()Ljava/util/EnumSet;
    .locals 2

    .prologue
    .line 181
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 182
    const-class v0, Lorg/chromium/chrome/browser/precache/FailureReason;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 183
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->mCalled:Z

    if-nez v1, :cond_0

    sget-object v1, Lorg/chromium/chrome/browser/precache/FailureReason;->UPDATE_PRECACHING_ENABLED_NEVER_CALLED:Lorg/chromium/chrome/browser/precache/FailureReason;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_0
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->mSyncInitialized:Z

    if-nez v1, :cond_1

    sget-object v1, Lorg/chromium/chrome/browser/precache/FailureReason;->SYNC_NOT_INITIALIZED:Lorg/chromium/chrome/browser/precache/FailureReason;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_1
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->mNetworkPredictionsAllowed:Z

    if-nez v1, :cond_2

    .line 186
    sget-object v1, Lorg/chromium/chrome/browser/precache/FailureReason;->PRERENDER_PRIVACY_PREFERENCE_NOT_ENABLED:Lorg/chromium/chrome/browser/precache/FailureReason;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_2
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->mShouldRun:Z

    if-nez v1, :cond_3

    sget-object v1, Lorg/chromium/chrome/browser/precache/FailureReason;->NATIVE_SHOULD_RUN_IS_FALSE:Lorg/chromium/chrome/browser/precache/FailureReason;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_3
    return-object v0
.end method

.method native nativeShouldRun()Z
.end method

.method protected abstract onPrecacheCompleted(Z)V
.end method

.method public start()V
    .locals 4

    .prologue
    .line 63
    iget-wide v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->mNativePrecacheLauncher:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 64
    invoke-direct {p0}, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->mNativePrecacheLauncher:J

    .line 66
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->mNativePrecacheLauncher:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->nativeStart(J)V

    .line 67
    return-void
.end method

.method updateEnabled(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher$2;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/precache/PrecacheLauncher$2;-><init>(Lorg/chromium/chrome/browser/precache/PrecacheLauncher;Landroid/content/Context;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 166
    return-void
.end method
