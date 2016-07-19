.class public Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;
.super Lorg/chromium/components/webrestrictions/WebRestrictionsContentProvider;
.source "SupervisedUserContentProvider.java"


# static fields
.field private static sEnabled:Ljava/lang/Boolean;

.field private static sEnabledLock:Ljava/lang/Object;


# instance fields
.field private mNativeSupervisedUserContentProvider:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->sEnabledLock:Ljava/lang/Object;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->sEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/chromium/components/webrestrictions/WebRestrictionsContentProvider;-><init>()V

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->mNativeSupervisedUserContentProvider:J

    .line 108
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;)J
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->getSupervisedUserContentProvider()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;J)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->nativeSetFilterForTesting(J)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->updateEnabledState()V

    return-void
.end method

.method private createEnabledBroadcastReceiver()V
    .locals 3

    .prologue
    .line 205
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 207
    new-instance v1, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$4;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$4;-><init>(Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;)V

    .line 213
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 214
    return-void
.end method

.method public static enableContentProviderForTesting()V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->setEnabled(Z)V

    .line 231
    return-void
.end method

.method private static getEnabled()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 181
    sget-object v1, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->sEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_0
    sget-object v0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->sEnabled:Ljava/lang/Boolean;

    monitor-exit v1

    return-object v0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getSupervisedUserContentProvider()J
    .locals 4

    .prologue
    .line 40
    iget-wide v0, p0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->mNativeSupervisedUserContentProvider:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 41
    iget-wide v0, p0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->mNativeSupervisedUserContentProvider:J

    .line 48
    :goto_0
    return-wide v0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/chromium/content/browser/BrowserStartupController;->get(Landroid/content/Context;I)Lorg/chromium/content/browser/BrowserStartupController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/BrowserStartupController;->startBrowserProcessesSync(Z)V

    .line 47
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->nativeCreateSupervisedUserContentProvider()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->mNativeSupervisedUserContentProvider:J

    .line 48
    iget-wide v0, p0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->mNativeSupervisedUserContentProvider:J

    goto :goto_0
.end method

.method private native nativeSetFilterForTesting(J)V
.end method

.method private static setEnabled(Z)V
    .locals 2

    .prologue
    .line 187
    sget-object v1, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->sEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 188
    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->sEnabled:Ljava/lang/Boolean;

    .line 189
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateEnabledState()V
    .locals 2

    .prologue
    .line 222
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 223
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 225
    const-string/jumbo v1, "SupervisedUserContentProviderEnabled"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->setEnabled(Z)V

    .line 226
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 155
    const-string/jumbo v0, "setFilterForTesting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->setFilterForTesting()V

    .line 156
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected canInsert()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method protected contentProviderEnabled()Z
    .locals 2

    .prologue
    .line 194
    invoke-static {}, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->getEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->getEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 200
    :goto_0
    return v0

    .line 197
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 198
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->updateEnabledState()V

    .line 199
    invoke-direct {p0}, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->createEnabledBroadcastReceiver()V

    .line 200
    invoke-static {}, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->getEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method native nativeCreateSupervisedUserContentProvider()J
.end method

.method native nativeRequestInsert(JLorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$SupervisedUserInsertReply;Ljava/lang/String;)V
.end method

.method native nativeShouldProceed(JLorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$SupervisedUserQueryReply;Ljava/lang/String;)V
.end method

.method onSupervisedUserFilterUpdated()V
    .locals 0

    .prologue
    .line 177
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->onFilterChanged()V

    .line 178
    return-void
.end method

.method protected requestInsert(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 134
    new-instance v0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$SupervisedUserInsertReply;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$SupervisedUserInsertReply;-><init>()V

    .line 135
    new-instance v1, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$2;

    invoke-direct {v1, p0, v0, p1}, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$2;-><init>(Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$SupervisedUserInsertReply;Ljava/lang/String;)V

    invoke-static {v1}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 146
    :try_start_0
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$SupervisedUserInsertReply;->getResult()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 148
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method setFilterForTesting()V
    .locals 1

    .prologue
    .line 161
    new-instance v0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$3;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$3;-><init>(Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThreadBlocking(Ljava/lang/Runnable;)V

    .line 172
    return-void
.end method

.method setNativeSupervisedUserContentProviderForTesting(J)V
    .locals 1

    .prologue
    .line 53
    iput-wide p1, p0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->mNativeSupervisedUserContentProvider:J

    .line 54
    return-void
.end method

.method protected shouldProceed(Ljava/lang/String;)Landroid/util/Pair;
    .locals 3

    .prologue
    .line 82
    new-instance v0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$SupervisedUserQueryReply;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$SupervisedUserQueryReply;-><init>()V

    .line 83
    new-instance v1, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$1;

    invoke-direct {v1, p0, v0, p1}, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$1;-><init>(Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$SupervisedUserQueryReply;Ljava/lang/String;)V

    invoke-static {v1}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 96
    :try_start_0
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$SupervisedUserQueryReply;->getResult()Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
