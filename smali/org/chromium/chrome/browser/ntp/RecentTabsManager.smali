.class public Lorg/chromium/chrome/browser/ntp/RecentTabsManager;
.super Ljava/lang/Object;
.source "RecentTabsManager.java"

# interfaces
.implements Lorg/chromium/chrome/browser/ntp/RecentTabsPromoView$SyncPromoModel;
.implements Lorg/chromium/chrome/browser/signin/SigninManager$SignInStateObserver;
.implements Lorg/chromium/sync/AndroidSyncSettings$AndroidSyncSettingsObserver;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFaviconHelper:Lorg/chromium/chrome/browser/favicon/FaviconHelper;

.field private mForeignSessionHelper:Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;

.field private mForeignSessions:Ljava/util/List;

.field private mIsDestroyed:Z

.field private mNewTabPagePrefs:Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;

.field private final mObservers:Lorg/chromium/base/ObserverList;

.field private final mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

.field private mProfileDataCache:Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

.field private mRecentlyClosedBridge:Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;

.field private mRecentlyClosedTabs:Ljava/util/List;

.field private mSignInManager:Lorg/chromium/chrome/browser/signin/SigninManager;

.field private final mTab:Lorg/chromium/chrome/browser/tab/Tab;

.field private mUpdatedCallback:Lorg/chromium/chrome/browser/ntp/RecentTabsManager$UpdatedCallback;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/profiles/Profile;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mObservers:Lorg/chromium/base/ObserverList;

    .line 85
    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    .line 86
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 87
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->buildForeignSessionHelper(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mForeignSessionHelper:Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;

    .line 88
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->buildNewTabPagePrefs(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mNewTabPagePrefs:Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;

    .line 89
    invoke-static {}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->buildFaviconHelper()Lorg/chromium/chrome/browser/favicon/FaviconHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mFaviconHelper:Lorg/chromium/chrome/browser/favicon/FaviconHelper;

    .line 90
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->buildRecentlyClosedBridge(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mRecentlyClosedBridge:Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;

    .line 91
    invoke-static {p3}, Lorg/chromium/chrome/browser/signin/SigninManager;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mSignInManager:Lorg/chromium/chrome/browser/signin/SigninManager;

    .line 92
    iput-object p3, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mContext:Landroid/content/Context;

    .line 94
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->updateRecentlyClosedTabs()V

    .line 95
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->registerForForeignSessionUpdates()V

    .line 96
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->updateForeignSessions()V

    .line 97
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mForeignSessionHelper:Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;->triggerSessionSync()V

    .line 98
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->registerForSignInAndSyncNotifications()V

    .line 100
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/invalidation/InvalidationController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->onRecentTabsPageOpened()V

    .line 101
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/ntp/RecentTabsManager;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->updateRecentlyClosedTabs()V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/ntp/RecentTabsManager;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->updateForeignSessions()V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/ntp/RecentTabsManager;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/ntp/RecentTabsManager;)Lorg/chromium/base/ObserverList;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mObservers:Lorg/chromium/base/ObserverList;

    return-object v0
.end method

.method private static buildFaviconHelper()Lorg/chromium/chrome/browser/favicon/FaviconHelper;
    .locals 1

    .prologue
    .line 151
    new-instance v0, Lorg/chromium/chrome/browser/favicon/FaviconHelper;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/favicon/FaviconHelper;-><init>()V

    return-object v0
.end method

.method private static buildForeignSessionHelper(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;)V

    return-object v0
.end method

.method private static buildNewTabPagePrefs(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;)V

    return-object v0
.end method

.method private buildRecentlyClosedBridge(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;)V

    .line 156
    new-instance v1, Lorg/chromium/chrome/browser/ntp/RecentTabsManager$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager$1;-><init>(Lorg/chromium/chrome/browser/ntp/RecentTabsManager;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;->setRecentlyClosedCallback(Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedCallback;)V

    .line 163
    return-object v0
.end method

.method private registerForForeignSessionUpdates()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mForeignSessionHelper:Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;

    new-instance v1, Lorg/chromium/chrome/browser/ntp/RecentTabsManager$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager$2;-><init>(Lorg/chromium/chrome/browser/ntp/RecentTabsManager;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;->setOnForeignSessionCallback(Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionCallback;)V

    .line 174
    return-void
.end method

.method private registerForSignInAndSyncNotifications()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lorg/chromium/sync/AndroidSyncSettings;->registerObserver(Landroid/content/Context;Lorg/chromium/sync/AndroidSyncSettings$AndroidSyncSettingsObserver;)V

    .line 178
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mSignInManager:Lorg/chromium/chrome/browser/signin/SigninManager;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->addSignInStateObserver(Lorg/chromium/chrome/browser/signin/SigninManager$SignInStateObserver;)V

    .line 179
    return-void
.end method

.method private updateForeignSessions()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mForeignSessionHelper:Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;->getForeignSessions()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mForeignSessions:Ljava/util/List;

    .line 191
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mForeignSessions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 192
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mForeignSessions:Ljava/util/List;

    .line 194
    :cond_0
    return-void
.end method

.method private updateRecentlyClosedTabs()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mRecentlyClosedBridge:Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;->getRecentlyClosedTabs(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mRecentlyClosedTabs:Ljava/util/List;

    .line 187
    return-void
.end method


# virtual methods
.method public androidSyncSettingsChanged()V
    .locals 1

    .prologue
    .line 449
    new-instance v0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager$3;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager$3;-><init>(Lorg/chromium/chrome/browser/ntp/RecentTabsManager;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 460
    return-void
.end method

.method public clearRecentlyClosedTabs()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mRecentlyClosedBridge:Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;->clearRecentlyClosedTabs()V

    .line 381
    return-void
.end method

.method public closeTab(Lorg/chromium/chrome/browser/ntp/CurrentlyOpenTab;)V
    .locals 0

    .prologue
    .line 324
    return-void
.end method

.method public deleteForeignSession(Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;)V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mForeignSessionHelper:Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;->deleteForeignSession(Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;)V

    .line 374
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mIsDestroyed:Z

    .line 108
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lorg/chromium/sync/AndroidSyncSettings;->unregisterObserver(Landroid/content/Context;Lorg/chromium/sync/AndroidSyncSettings$AndroidSyncSettingsObserver;)V

    .line 110
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mSignInManager:Lorg/chromium/chrome/browser/signin/SigninManager;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/signin/SigninManager;->removeSignInStateObserver(Lorg/chromium/chrome/browser/signin/SigninManager$SignInStateObserver;)V

    .line 111
    iput-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mSignInManager:Lorg/chromium/chrome/browser/signin/SigninManager;

    .line 113
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mFaviconHelper:Lorg/chromium/chrome/browser/favicon/FaviconHelper;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/favicon/FaviconHelper;->destroy()V

    .line 114
    iput-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mFaviconHelper:Lorg/chromium/chrome/browser/favicon/FaviconHelper;

    .line 116
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mRecentlyClosedBridge:Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;->destroy()V

    .line 117
    iput-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mRecentlyClosedBridge:Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;

    .line 119
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mForeignSessionHelper:Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;->destroy()V

    .line 120
    iput-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mForeignSessionHelper:Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;

    .line 122
    iput-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mUpdatedCallback:Lorg/chromium/chrome/browser/ntp/RecentTabsManager$UpdatedCallback;

    .line 124
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mNewTabPagePrefs:Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;->destroy()V

    .line 125
    iput-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mNewTabPagePrefs:Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;

    .line 127
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mProfileDataCache:Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mProfileDataCache:Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;->destroy()V

    .line 129
    iput-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mProfileDataCache:Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/invalidation/InvalidationController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/invalidation/InvalidationController;->onRecentTabsPageClosed()V

    .line 133
    return-void
.end method

.method public enableSync()V
    .locals 1

    .prologue
    .line 475
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->get()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    .line 476
    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->requestStart()V

    .line 479
    :cond_0
    return-void
.end method

.method public getAccessPoint()I
    .locals 1

    .prologue
    .line 501
    const/16 v0, 0x10

    return v0
.end method

.method public getCurrentlyOpenTabs()Ljava/util/List;
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public getForeignSessionCollapsed(Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;)Z
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mNewTabPagePrefs:Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;->getForeignSessionCollapsed(Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;)Z

    move-result v0

    return v0
.end method

.method public getForeignSessions()Ljava/util/List;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mForeignSessions:Ljava/util/List;

    return-object v0
.end method

.method public getLocalFaviconForUrl(Ljava/lang/String;ILorg/chromium/chrome/browser/favicon/FaviconHelper$FaviconImageCallback;)Z
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mFaviconHelper:Lorg/chromium/chrome/browser/favicon/FaviconHelper;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/chromium/chrome/browser/favicon/FaviconHelper;->getLocalFaviconImageForURL(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;ILorg/chromium/chrome/browser/favicon/FaviconHelper$FaviconImageCallback;)Z

    move-result v0

    return v0
.end method

.method public getProfileDataCache()Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;
    .locals 3

    .prologue
    .line 493
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mProfileDataCache:Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    if-nez v0, :cond_0

    .line 494
    new-instance v0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/profiles/Profile;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mProfileDataCache:Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    .line 496
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mProfileDataCache:Lorg/chromium/chrome/browser/firstrun/ProfileDataCache;

    return-object v0
.end method

.method public getRecentlyClosedTabs()Ljava/util/List;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mRecentlyClosedTabs:Ljava/util/List;

    return-object v0
.end method

.method public getSyncedFaviconImageForURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mFaviconHelper:Lorg/chromium/chrome/browser/favicon/FaviconHelper;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    invoke-virtual {v0, v1, p1}, Lorg/chromium/chrome/browser/favicon/FaviconHelper;->getSyncedFaviconImageForURL(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public isCurrentlyOpenTabsCollapsed()Z
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mNewTabPagePrefs:Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;->getCurrentlyOpenTabsCollapsed()Z

    move-result v0

    return v0
.end method

.method public isCurrentlyOpenTabsShowingAll()Z
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mIsDestroyed:Z

    return v0
.end method

.method public isRecentlyClosedTabsCollapsed()Z
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mNewTabPagePrefs:Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;->getRecentlyClosedTabsCollapsed()Z

    move-result v0

    return v0
.end method

.method public isSignedIn()Z
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->isSignedIn()Z

    move-result v0

    return v0
.end method

.method public isSyncEnabled()Z
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/sync/AndroidSyncSettings;->isSyncEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isSyncPromoCollapsed()Z
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mNewTabPagePrefs:Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;->getSyncPromoCollapsed()Z

    move-result v0

    return v0
.end method

.method public onSignedIn()V
    .locals 0

    .prologue
    .line 438
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->androidSyncSettingsChanged()V

    .line 439
    return-void
.end method

.method public onSignedOut()V
    .locals 0

    .prologue
    .line 443
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->androidSyncSettingsChanged()V

    .line 444
    return-void
.end method

.method public openForeignSessionTab(Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;I)V
    .locals 2

    .prologue
    .line 226
    const/4 v0, 0x6

    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageUma;->recordAction(I)V

    .line 227
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mForeignSessionHelper:Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper;->openForeignSessionTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSessionTab;I)Z

    .line 228
    return-void
.end method

.method public openHistoryPage()V
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    new-instance v1, Lorg/chromium/content_public/browser/LoadUrlParams;

    const-string/jumbo v2, "chrome://history/"

    invoke-direct {v1, v2}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    .line 247
    invoke-static {}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->getInstance()Lorg/chromium/chrome/browser/metrics/StartupMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/metrics/StartupMetrics;->recordOpenedHistory()V

    .line 248
    return-void
.end method

.method public openRecentlyClosedTab(Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;I)V
    .locals 2

    .prologue
    .line 238
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageUma;->recordAction(I)V

    .line 239
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mRecentlyClosedBridge:Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0, v1, p1, p2}, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;->openRecentlyClosedTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;I)Z

    .line 240
    return-void
.end method

.method protected postUpdate()V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mUpdatedCallback:Lorg/chromium/chrome/browser/ntp/RecentTabsManager$UpdatedCallback;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mUpdatedCallback:Lorg/chromium/chrome/browser/ntp/RecentTabsManager$UpdatedCallback;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/ntp/RecentTabsManager$UpdatedCallback;->onUpdated()V

    .line 433
    :cond_0
    return-void
.end method

.method public registerForSyncUpdates(Lorg/chromium/sync/AndroidSyncSettings$AndroidSyncSettingsObserver;)V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 484
    return-void
.end method

.method public setCurrentlyOpenTabsCollapsed(Z)V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mNewTabPagePrefs:Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;->setCurrentlyOpenTabsCollapsed(Z)V

    .line 291
    return-void
.end method

.method public setCurrentlyOpenTabsShowAll(Z)V
    .locals 0

    .prologue
    .line 309
    return-void
.end method

.method public setForeignSessionCollapsed(Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;Z)V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mNewTabPagePrefs:Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;->setForeignSessionCollapsed(Lorg/chromium/chrome/browser/ntp/ForeignSessionHelper$ForeignSession;Z)V

    .line 334
    return-void
.end method

.method public setRecentlyClosedTabsCollapsed(Z)V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mNewTabPagePrefs:Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;->setRecentlyClosedTabsCollapsed(Z)V

    .line 354
    return-void
.end method

.method public setSigninPromoDeclined()V
    .locals 3

    .prologue
    .line 405
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 407
    const-string/jumbo v1, "recent_tabs_signin_promo_declined"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 408
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 409
    return-void
.end method

.method public setSyncPromoCollapsed(Z)V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mNewTabPagePrefs:Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/ntp/NewTabPagePrefs;->setSyncPromoCollapsed(Z)V

    .line 418
    return-void
.end method

.method public setUpdatedCallback(Lorg/chromium/chrome/browser/ntp/RecentTabsManager$UpdatedCallback;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mUpdatedCallback:Lorg/chromium/chrome/browser/ntp/RecentTabsManager$UpdatedCallback;

    .line 282
    return-void
.end method

.method public shouldDisplaySyncPromo()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 389
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/chromium/chrome/browser/signin/SigninManager;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/signin/SigninManager;->isSigninDisabledByPolicy()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 398
    :cond_0
    :goto_0
    return v0

    .line 393
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "recent_tabs_signin_promo_declined"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 398
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/chromium/sync/AndroidSyncSettings;->isSyncEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mForeignSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public unregisterForSyncUpdates(Lorg/chromium/sync/AndroidSyncSettings$AndroidSyncSettingsObserver;)V
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/RecentTabsManager;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 489
    return-void
.end method

.method protected updateCurrentlyOpenTabs()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method
