.class public Lorg/chromium/chrome/browser/signin/AccountTrackerService;
.super Ljava/lang/Object;
.source "AccountTrackerService.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field private static sAccountTrackerService:Lorg/chromium/chrome/browser/signin/AccountTrackerService;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSyncForceRefreshedForTest:Z

.field private mSystemAccountsChanged:Z

.field private final mSystemAccountsSeedingObservers:Lorg/chromium/base/ObserverList;

.field private mSystemAccountsSeedingStatus:Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->mSystemAccountsSeedingObservers:Lorg/chromium/base/ObserverList;

    .line 64
    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->mContext:Landroid/content/Context;

    .line 65
    sget-object v0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;->SEEDING_NOT_STARTED:Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->mSystemAccountsSeedingStatus:Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->mSystemAccountsChanged:Z

    .line 67
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/signin/AccountTrackerService;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/signin/AccountTrackerService;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->mSyncForceRefreshedForTest:Z

    return v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/signin/AccountTrackerService;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->mSystemAccountsChanged:Z

    return v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/signin/AccountTrackerService;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->seedSystemAccounts()V

    return-void
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/signin/AccountTrackerService;[Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->areAccountIdsValid([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->nativeSeedAccountsInfo([Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$602(Lorg/chromium/chrome/browser/signin/AccountTrackerService;Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;)Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->mSystemAccountsSeedingStatus:Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

    return-object p1
.end method

.method static synthetic access$700(Lorg/chromium/chrome/browser/signin/AccountTrackerService;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->notifyObserversOnSeedingComplete()V

    return-void
.end method

.method private areAccountIdsValid([Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 153
    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 154
    aget-object v2, p1, v0

    if-nez v2, :cond_0

    .line 156
    :goto_1
    return v1

    .line 153
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/AccountTrackerService;
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 57
    sget-object v0, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->sAccountTrackerService:Lorg/chromium/chrome/browser/signin/AccountTrackerService;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lorg/chromium/chrome/browser/signin/AccountTrackerService;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->sAccountTrackerService:Lorg/chromium/chrome/browser/signin/AccountTrackerService;

    .line 60
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->sAccountTrackerService:Lorg/chromium/chrome/browser/signin/AccountTrackerService;

    return-object v0
.end method

.method private static native nativeSeedAccountsInfo([Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method private notifyObserversOnAccountsChange()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->mSystemAccountsSeedingObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$OnSystemAccountsSeededListener;

    .line 190
    invoke-interface {v0}, Lorg/chromium/chrome/browser/signin/AccountTrackerService$OnSystemAccountsSeededListener;->onSystemAccountsChanged()V

    goto :goto_0

    .line 192
    :cond_0
    return-void
.end method

.method private notifyObserversOnSeedingComplete()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->mSystemAccountsSeedingObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$OnSystemAccountsSeededListener;

    .line 161
    invoke-interface {v0}, Lorg/chromium/chrome/browser/signin/AccountTrackerService$OnSystemAccountsSeededListener;->onSystemAccountsSeedingComplete()V

    goto :goto_0

    .line 163
    :cond_0
    return-void
.end method

.method private seedSystemAccounts()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 107
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->mSystemAccountsChanged:Z

    .line 108
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->mSyncForceRefreshedForTest:Z

    .line 109
    invoke-static {}, Lorg/chromium/chrome/browser/signin/AccountIdProvider;->getInstance()Lorg/chromium/chrome/browser/signin/AccountIdProvider;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/signin/AccountIdProvider;->canBeUsed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    sget-object v1, Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;->SEEDING_IN_PROGRESS:Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

    iput-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->mSystemAccountsSeedingStatus:Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

    .line 116
    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v1

    new-instance v2, Lorg/chromium/chrome/browser/signin/AccountTrackerService$1;

    invoke-direct {v2, p0, v0}, Lorg/chromium/chrome/browser/signin/AccountTrackerService$1;-><init>(Lorg/chromium/chrome/browser/signin/AccountTrackerService;Lorg/chromium/chrome/browser/signin/AccountIdProvider;)V

    invoke-virtual {v1, v2}, Lorg/chromium/sync/signin/AccountManagerHelper;->getGoogleAccounts(Lorg/chromium/base/Callback;)V

    .line 150
    :goto_0
    return-void

    .line 113
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;->SEEDING_NOT_STARTED:Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->mSystemAccountsSeedingStatus:Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

    goto :goto_0
.end method


# virtual methods
.method public addSystemAccountsSeededListener(Lorg/chromium/chrome/browser/signin/AccountTrackerService$OnSystemAccountsSeededListener;)V
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 91
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->mSystemAccountsSeedingObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->mSystemAccountsSeedingStatus:Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

    sget-object v1, Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;->SEEDING_DONE:Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

    if-ne v0, v1, :cond_0

    .line 93
    invoke-interface {p1}, Lorg/chromium/chrome/browser/signin/AccountTrackerService$OnSystemAccountsSeededListener;->onSystemAccountsSeedingComplete()V

    .line 95
    :cond_0
    return-void
.end method

.method public checkAndSeedSystemAccounts()Z
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 76
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->mSystemAccountsSeedingStatus:Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

    sget-object v1, Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;->SEEDING_DONE:Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->mSystemAccountsChanged:Z

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->mSystemAccountsSeedingStatus:Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

    sget-object v1, Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;->SEEDING_IN_PROGRESS:Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

    if-eq v0, v1, :cond_1

    .line 81
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->seedSystemAccounts()V

    .line 83
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateAccountSeedStatus(Z)V
    .locals 1

    .prologue
    .line 182
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->mSystemAccountsChanged:Z

    .line 184
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->notifyObserversOnAccountsChange()V

    .line 185
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->checkAndSeedSystemAccounts()Z

    .line 186
    :cond_0
    return-void
.end method

.method public removeSystemAccountsSeededListener(Lorg/chromium/chrome/browser/signin/AccountTrackerService$OnSystemAccountsSeededListener;)V
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 102
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->mSystemAccountsSeedingObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method public syncForceRefreshForTest([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 170
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 171
    sget-object v0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;->SEEDING_IN_PROGRESS:Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->mSystemAccountsSeedingStatus:Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->mSyncForceRefreshedForTest:Z

    .line 173
    invoke-static {p1, p2}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->nativeSeedAccountsInfo([Ljava/lang/String;[Ljava/lang/String;)V

    .line 174
    sget-object v0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;->SEEDING_DONE:Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->mSystemAccountsSeedingStatus:Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

    .line 175
    return-void
.end method
