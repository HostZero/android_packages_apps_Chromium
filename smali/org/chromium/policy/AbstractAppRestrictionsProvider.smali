.class public abstract Lorg/chromium/policy/AbstractAppRestrictionsProvider;
.super Lorg/chromium/policy/PolicyProvider;
.source "AbstractAppRestrictionsProvider.java"


# static fields
.field private static sTestRestrictions:Landroid/os/Bundle;


# instance fields
.field private final mAppRestrictionsChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/policy/AbstractAppRestrictionsProvider;->sTestRestrictions:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/chromium/policy/PolicyProvider;-><init>()V

    .line 43
    new-instance v0, Lorg/chromium/policy/AbstractAppRestrictionsProvider$1;

    invoke-direct {v0, p0}, Lorg/chromium/policy/AbstractAppRestrictionsProvider$1;-><init>(Lorg/chromium/policy/AbstractAppRestrictionsProvider;)V

    iput-object v0, p0, Lorg/chromium/policy/AbstractAppRestrictionsProvider;->mAppRestrictionsChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 50
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lorg/chromium/policy/AbstractAppRestrictionsProvider;->mExecutor:Ljava/util/concurrent/Executor;

    .line 56
    iput-object p1, p0, Lorg/chromium/policy/AbstractAppRestrictionsProvider;->mContext:Landroid/content/Context;

    .line 57
    iget-object v0, p0, Lorg/chromium/policy/AbstractAppRestrictionsProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/policy/AbstractAppRestrictionsProvider;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/policy/AbstractAppRestrictionsProvider;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/chromium/policy/AbstractAppRestrictionsProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/policy/AbstractAppRestrictionsProvider;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/chromium/policy/AbstractAppRestrictionsProvider;->cachePolicies(Landroid/os/Bundle;)V

    return-void
.end method

.method private cachePolicies(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 138
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 140
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lorg/chromium/policy/AbstractAppRestrictionsProvider;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 142
    const-string/jumbo v2, "App Restrictions"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 143
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 144
    return-void
.end method

.method private getCachedPolicies()Landroid/os/Bundle;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 147
    iget-object v2, p0, Lorg/chromium/policy/AbstractAppRestrictionsProvider;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "App Restrictions"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    if-nez v2, :cond_0

    move-object v0, v1

    .line 165
    :goto_0
    return-object v0

    .line 151
    :cond_0
    invoke-static {v2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 156
    array-length v4, v2

    invoke-virtual {v3, v2, v0, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 157
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 160
    :try_start_0
    invoke-virtual {v3}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 164
    :goto_1
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Lorg/chromium/policy/AbstractAppRestrictionsProvider;->recordCacheLoadResultHistogram(Z)V

    move-object v0, v1

    .line 165
    goto :goto_0

    .line 162
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static setTestRestrictions(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    .line 200
    sput-object p0, Lorg/chromium/policy/AbstractAppRestrictionsProvider;->sTestRestrictions:Landroid/os/Bundle;

    .line 201
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 122
    invoke-virtual {p0}, Lorg/chromium/policy/AbstractAppRestrictionsProvider;->stopListening()V

    .line 123
    invoke-super {p0}, Lorg/chromium/policy/PolicyProvider;->destroy()V

    .line 124
    return-void
.end method

.method protected abstract getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method protected abstract getRestrictionChangeIntentAction()Ljava/lang/String;
.end method

.method protected recordCacheLoadResultHistogram(Z)V
    .locals 1

    .prologue
    .line 171
    const-string/jumbo v0, "Enterprise.AppRestrictionsCacheLoad"

    invoke-static {v0, p1}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    .line 173
    return-void
.end method

.method protected recordStartTimeHistogram(J)V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 92
    sget-object v0, Lorg/chromium/policy/AbstractAppRestrictionsProvider;->sTestRestrictions:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lorg/chromium/policy/AbstractAppRestrictionsProvider;->sTestRestrictions:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lorg/chromium/policy/AbstractAppRestrictionsProvider;->notifySettingsAvailable(Landroid/os/Bundle;)V

    .line 118
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-direct {p0}, Lorg/chromium/policy/AbstractAppRestrictionsProvider;->getCachedPolicies()Landroid/os/Bundle;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p0, v0}, Lorg/chromium/policy/AbstractAppRestrictionsProvider;->notifySettingsAvailable(Landroid/os/Bundle;)V

    .line 102
    :cond_1
    iget-object v0, p0, Lorg/chromium/policy/AbstractAppRestrictionsProvider;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/chromium/policy/AbstractAppRestrictionsProvider$2;

    invoke-direct {v1, p0}, Lorg/chromium/policy/AbstractAppRestrictionsProvider$2;-><init>(Lorg/chromium/policy/AbstractAppRestrictionsProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method setTaskExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lorg/chromium/policy/AbstractAppRestrictionsProvider;->mExecutor:Ljava/util/concurrent/Executor;

    .line 187
    return-void
.end method

.method public startListeningForPolicyChanges()V
    .locals 6

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/chromium/policy/AbstractAppRestrictionsProvider;->getRestrictionChangeIntentAction()Ljava/lang/String;

    move-result-object v0

    .line 79
    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v1, p0, Lorg/chromium/policy/AbstractAppRestrictionsProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/policy/AbstractAppRestrictionsProvider;->mAppRestrictionsChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->getUiThreadLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public stopListening()V
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lorg/chromium/policy/AbstractAppRestrictionsProvider;->getRestrictionChangeIntentAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lorg/chromium/policy/AbstractAppRestrictionsProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/policy/AbstractAppRestrictionsProvider;->mAppRestrictionsChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 134
    :cond_0
    return-void
.end method
