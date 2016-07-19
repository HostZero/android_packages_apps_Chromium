.class public Lorg/chromium/chrome/browser/signin/SigninHelper;
.super Ljava/lang/Object;
.source "SigninHelper.java"


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static sInstance:Lorg/chromium/chrome/browser/signin/SigninHelper;


# instance fields
.field private final mAccountTrackerService:Lorg/chromium/chrome/browser/signin/AccountTrackerService;

.field private final mChromeSigninController:Lorg/chromium/sync/signin/ChromeSigninController;

.field protected final mContext:Landroid/content/Context;

.field private final mOAuth2TokenService:Lorg/chromium/chrome/browser/signin/OAuth2TokenService;

.field private final mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mSigninManager:Lorg/chromium/chrome/browser/signin/SigninManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/signin/SigninHelper;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/SigninHelper;->mContext:Landroid/content/Context;

    .line 127
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->get()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninHelper;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 128
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninHelper;->mSigninManager:Lorg/chromium/chrome/browser/signin/SigninManager;

    .line 129
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/AccountTrackerService;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninHelper;->mAccountTrackerService:Lorg/chromium/chrome/browser/signin/AccountTrackerService;

    .line 130
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->getForProfile(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/chrome/browser/signin/OAuth2TokenService;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninHelper;->mOAuth2TokenService:Lorg/chromium/chrome/browser/signin/OAuth2TokenService;

    .line 131
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninHelper;->mChromeSigninController:Lorg/chromium/sync/signin/ChromeSigninController;

    .line 132
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/signin/SigninHelper;)Lorg/chromium/chrome/browser/signin/SigninManager;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninHelper;->mSigninManager:Lorg/chromium/chrome/browser/signin/SigninManager;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0}, Lorg/chromium/chrome/browser/signin/SigninHelper;->clearNewSignedInAccountName(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/signin/SigninHelper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/signin/SigninHelper;->performResignin(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/signin/SigninHelper;)Lorg/chromium/chrome/browser/sync/ProfileSyncService;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninHelper;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    return-object v0
.end method

.method private static accountExists(Landroid/content/Context;Landroid/accounts/Account;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 272
    invoke-static {p0}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/sync/signin/AccountManagerHelper;->getGoogleAccounts()[Landroid/accounts/Account;

    move-result-object v2

    .line 273
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 274
    invoke-virtual {v4, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 275
    const/4 v0, 0x1

    .line 278
    :cond_0
    return v0

    .line 273
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static checkAndClearAccountsChangedPref(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 385
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "prefs_sync_accounts_changed"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "prefs_sync_accounts_changed"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 390
    const/4 v0, 0x1

    .line 392
    :cond_0
    return v0
.end method

.method private static clearNewSignedInAccountName(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 300
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "prefs_sync_account_renamed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 304
    return-void
.end method

.method public static get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninHelper;
    .locals 3

    .prologue
    .line 117
    sget-object v1, Lorg/chromium/chrome/browser/signin/SigninHelper;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_0
    sget-object v0, Lorg/chromium/chrome/browser/signin/SigninHelper;->sInstance:Lorg/chromium/chrome/browser/signin/SigninHelper;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lorg/chromium/chrome/browser/signin/SigninHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/chromium/chrome/browser/signin/SigninHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/chrome/browser/signin/SigninHelper;->sInstance:Lorg/chromium/chrome/browser/signin/SigninHelper;

    .line 121
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    sget-object v0, Lorg/chromium/chrome/browser/signin/SigninHelper;->sInstance:Lorg/chromium/chrome/browser/signin/SigninHelper;

    return-object v0

    .line 121
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getLastKnownAccountName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 312
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "prefs_sync_account_renamed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/chromium/sync/signin/ChromeSigninController;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->getSignedInAccountName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getNewSignedInAccountName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 295
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "prefs_sync_account_renamed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleAccountRename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 233
    const-string/jumbo v0, "SigninHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "handleAccountRename from: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninHelper;->mSigninManager:Lorg/chromium/chrome/browser/signin/SigninManager;

    new-instance v1, Lorg/chromium/chrome/browser/signin/SigninHelper$2;

    invoke-direct {v1, p0, p2}, Lorg/chromium/chrome/browser/signin/SigninHelper$2;-><init>(Lorg/chromium/chrome/browser/signin/SigninHelper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/signin/SigninManager;->signOut(Ljava/lang/Runnable;)V

    .line 251
    return-void
.end method

.method public static markAccountsChangedPref(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 287
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "prefs_sync_accounts_changed"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 289
    return-void
.end method

.method private performResignin(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 255
    invoke-static {p1}, Lorg/chromium/sync/signin/AccountManagerHelper;->createAccountFromName(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/SigninHelper;->mSigninManager:Lorg/chromium/chrome/browser/signin/SigninManager;

    const/4 v2, 0x0

    new-instance v3, Lorg/chromium/chrome/browser/signin/SigninHelper$3;

    invoke-direct {v3, p0}, Lorg/chromium/chrome/browser/signin/SigninHelper$3;-><init>(Lorg/chromium/chrome/browser/signin/SigninHelper;)V

    invoke-virtual {v1, v0, v2, v3}, Lorg/chromium/chrome/browser/signin/SigninManager;->signIn(Landroid/accounts/Account;Landroid/app/Activity;Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;)V

    .line 269
    return-void
.end method

.method public static resetAccountRenameEventIndex(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 380
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "prefs_sync_account_rename_event_index"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 382
    return-void
.end method

.method public static updateAccountRenameData(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 320
    new-instance v0, Lorg/chromium/chrome/browser/signin/SigninHelper$SystemAccountChangeEventChecker;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/signin/SigninHelper$SystemAccountChangeEventChecker;-><init>()V

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/signin/SigninHelper;->updateAccountRenameData(Landroid/content/Context;Lorg/chromium/chrome/browser/signin/SigninHelper$AccountChangeEventChecker;)V

    .line 321
    return-void
.end method

.method public static updateAccountRenameData(Landroid/content/Context;Lorg/chromium/chrome/browser/signin/SigninHelper$AccountChangeEventChecker;)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 325
    invoke-static {p0}, Lorg/chromium/chrome/browser/signin/SigninHelper;->getLastKnownAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 328
    if-nez v5, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "prefs_sync_account_rename_event_index"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    move v1, v3

    move-object v2, v5

    .line 341
    :goto_1
    :try_start_0
    invoke-interface {p1, p0, v1, v2}, Lorg/chromium/chrome/browser/signin/SigninHelper$AccountChangeEventChecker;->getAccountChangeEvents(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 344
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    if-eqz v0, :cond_2

    .line 349
    :try_start_1
    invoke-static {p0}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    invoke-static {v0}, Lorg/chromium/sync/signin/AccountManagerHelper;->createAccountFromName(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/chromium/chrome/browser/signin/SigninHelper;->accountExists(Landroid/content/Context;Landroid/accounts/Account;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-nez v2, :cond_3

    move v1, v4

    move-object v2, v0

    .line 352
    goto :goto_1

    :cond_3
    move-object v2, v0

    .line 360
    :cond_4
    :try_start_2
    invoke-interface {v6}, Ljava/util/List;->size()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    move-object v1, v2

    .line 367
    :goto_2
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 368
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v4, "prefs_sync_account_renamed"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 372
    :cond_5
    if-eq v0, v3, :cond_0

    .line 373
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "prefs_sync_account_rename_event_index"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 363
    :catch_0
    move-exception v0

    move-object v9, v0

    move-object v0, v2

    move-object v2, v9

    .line 364
    :goto_3
    const-string/jumbo v6, "SigninHelper"

    const-string/jumbo v7, "Error while looking for rename events."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v4

    invoke-static {v6, v7, v8}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v9, v1

    move-object v1, v0

    move v0, v9

    goto :goto_2

    .line 363
    :catch_1
    move-exception v2

    goto :goto_3
.end method


# virtual methods
.method public validateAccountSettings(Z)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 136
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninHelper;->mAccountTrackerService:Lorg/chromium/chrome/browser/signin/AccountTrackerService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->checkAndSeedSystemAccounts()Z

    .line 138
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninHelper;->mChromeSigninController:Lorg/chromium/sync/signin/ChromeSigninController;

    invoke-virtual {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->getSignedInUser()Landroid/accounts/Account;

    move-result-object v0

    .line 139
    if-nez v0, :cond_5

    .line 140
    invoke-static {}, Lorg/chromium/chrome/browser/signin/SigninManager;->getAndroidSigninPromoExperimentGroup()I

    move-result v0

    if-gez v0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getSyncLastAccountName()Ljava/lang/String;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 148
    const-string/jumbo v1, "prefs_sync_android_accounts"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    .line 150
    if-eqz v1, :cond_3

    if-eqz p1, :cond_0

    .line 152
    :cond_3
    iget-object v2, p0, Lorg/chromium/chrome/browser/signin/SigninHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/sync/signin/AccountManagerHelper;->getGoogleAccountNames()Ljava/util/List;

    move-result-object v2

    .line 154
    if-eqz v1, :cond_4

    .line 155
    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/SigninHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    move-result-object v1

    .line 157
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getSigninPromoShown()Z

    move-result v3

    if-nez v3, :cond_4

    .line 158
    const-string/jumbo v3, "prefs_sync_android_accounts"

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 160
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 161
    invoke-interface {v4, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 162
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 163
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->setShowSigninPromo(Z)V

    .line 168
    :cond_4
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "prefs_sync_android_accounts"

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 173
    :cond_5
    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/SigninHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/chromium/chrome/browser/signin/SigninHelper;->getNewSignedInAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 174
    if-eqz p1, :cond_6

    if-eqz v1, :cond_6

    .line 175
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->getSignedInAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/signin/SigninHelper;->handleAccountRename(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    :cond_6
    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/SigninHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/signin/SigninHelper;->accountExists(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 185
    new-instance v0, Lorg/chromium/chrome/browser/signin/SigninHelper$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/signin/SigninHelper$1;-><init>(Lorg/chromium/chrome/browser/signin/SigninHelper;)V

    .line 202
    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 206
    :cond_7
    if-eqz p1, :cond_8

    .line 209
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninHelper;->mOAuth2TokenService:Lorg/chromium/chrome/browser/signin/OAuth2TokenService;

    iget-object v1, p0, Lorg/chromium/chrome/browser/signin/SigninHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->validateAccounts(Landroid/content/Context;Z)V

    .line 212
    :cond_8
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninHelper;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/sync/AndroidSyncSettings;->isSyncEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninHelper;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isFirstSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 214
    if-eqz p1, :cond_0

    .line 216
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/invalidation/InvalidationServiceFactory;->getForProfile(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/components/invalidation/InvalidationService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/components/invalidation/InvalidationService;->requestSyncFromNativeChromeForAllTypes()V

    goto/16 :goto_0

    .line 222
    :cond_9
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninHelper;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->requestStart()V

    goto/16 :goto_0
.end method
