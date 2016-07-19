.class public final Lorg/chromium/chrome/browser/signin/OAuth2TokenService;
.super Ljava/lang/Object;
.source "OAuth2TokenService.java"

# interfaces
.implements Lorg/chromium/chrome/browser/signin/AccountTrackerService$OnSystemAccountsSeededListener;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final STORED_ACCOUNTS_KEY:Ljava/lang/String; = "google.services.stored_accounts"


# instance fields
.field private final mNativeOAuth2TokenServiceDelegateAndroid:J

.field private final mObservers:Lorg/chromium/base/ObserverList;

.field private mPendingValidationContext:Landroid/content/Context;

.field private mPendingValidationForceNotifications:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->mPendingValidationContext:Landroid/content/Context;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->mPendingValidationForceNotifications:Z

    .line 60
    iput-wide p2, p0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->mNativeOAuth2TokenServiceDelegateAndroid:J

    .line 61
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->mObservers:Lorg/chromium/base/ObserverList;

    .line 62
    invoke-static {p1}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/AccountTrackerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->addSystemAccountsSeededListener(Lorg/chromium/chrome/browser/signin/AccountTrackerService$OnSystemAccountsSeededListener;)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;ZJ)V
    .locals 0

    .prologue
    .line 34
    invoke-static {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->nativeOAuth2TokenFetched(Ljava/lang/String;ZJ)V

    return-void
.end method

.method private static create(Landroid/content/Context;J)Lorg/chromium/chrome/browser/signin/OAuth2TokenService;
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 73
    new-instance v0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;-><init>(Landroid/content/Context;J)V

    return-object v0
.end method

.method private static getAccountOrNullFromUsername(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 89
    if-nez p1, :cond_0

    .line 90
    const-string/jumbo v1, "OAuth2TokenService"

    const-string/jumbo v2, "Username is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_0
    return-object v0

    .line 94
    :cond_0
    invoke-static {p0}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v1

    .line 95
    invoke-virtual {v1, p1}, Lorg/chromium/sync/signin/AccountManagerHelper;->getAccountFromName(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    .line 96
    if-nez v1, :cond_1

    .line 97
    const-string/jumbo v1, "OAuth2TokenService"

    const-string/jumbo v2, "Account not found for provided username."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 100
    goto :goto_0
.end method

.method public static getAccounts(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    invoke-static {p0}, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->getStoredAccounts(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getForProfile(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/chrome/browser/signin/OAuth2TokenService;
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 67
    invoke-static {p0}, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->nativeGetForProfile(Lorg/chromium/chrome/browser/profiles/Profile;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;

    return-object v0
.end method

.method public static getOAuth2AccessToken(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;)V
    .locals 2

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "oauth2:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {p0}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p3}, Lorg/chromium/sync/signin/AccountManagerHelper;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;)V

    .line 173
    return-void
.end method

.method public static getOAuth2AccessTokenWithTimeout(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 189
    sget-boolean v0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 190
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 191
    new-instance v2, Ljava/util/concurrent/Semaphore;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 192
    new-instance v3, Lorg/chromium/chrome/browser/signin/OAuth2TokenService$3;

    invoke-direct {v3, v0, v2}, Lorg/chromium/chrome/browser/signin/OAuth2TokenService$3;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Semaphore;)V

    invoke-static {p0, p1, p2, v3}, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->getOAuth2AccessToken(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;)V

    .line 207
    :try_start_0
    invoke-virtual {v2, p3, p4, p5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 216
    :goto_0
    return-object v0

    .line 210
    :cond_1
    const-string/jumbo v0, "OAuth2TokenService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed to retrieve auth token within timeout ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p5}, Ljava/util/concurrent/TimeUnit;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 212
    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    const-string/jumbo v0, "OAuth2TokenService"

    const-string/jumbo v2, "Got interrupted while waiting for auth token"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 216
    goto :goto_0
.end method

.method public static getOAuth2AuthToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    .prologue
    .line 135
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->getAccountOrNullFromUsername(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 136
    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService$1;

    invoke-direct {v0, p3, p4}, Lorg/chromium/chrome/browser/signin/OAuth2TokenService$1;-><init>(J)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 160
    :goto_0
    return-void

    .line 145
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "oauth2:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-static {p0}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v2

    .line 148
    new-instance v3, Lorg/chromium/chrome/browser/signin/OAuth2TokenService$2;

    invoke-direct {v3, p3, p4}, Lorg/chromium/chrome/browser/signin/OAuth2TokenService$2;-><init>(J)V

    invoke-virtual {v2, v0, v1, v3}, Lorg/chromium/sync/signin/AccountManagerHelper;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;)V

    goto :goto_0
.end method

.method private static getStoredAccounts(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3

    .prologue
    .line 361
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "google.services.stored_accounts"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 364
    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static getSystemAccountNames(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    invoke-static {p0}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lorg/chromium/sync/signin/AccountManagerHelper;->getGoogleAccountNames()Ljava/util/List;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static hasOAuth2RefreshToken(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 225
    invoke-static {p0}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/sync/signin/AccountManagerHelper;->hasAccountForName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static invalidateOAuth2AuthToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 233
    if-eqz p1, :cond_0

    .line 234
    invoke-static {p0}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/sync/signin/AccountManagerHelper;->invalidateAuthToken(Ljava/lang/String;)V

    .line 236
    :cond_0
    return-void
.end method

.method private isSignedInAccountChanged(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 293
    invoke-static {p1}, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->getSystemAccountNames(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    .line 294
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 295
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 297
    :goto_1
    return v0

    .line 294
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private native nativeFireRefreshTokenAvailableFromJava(JLjava/lang/String;)V
.end method

.method private native nativeFireRefreshTokenRevokedFromJava(JLjava/lang/String;)V
.end method

.method private native nativeFireRefreshTokensLoadedFromJava(J)V
.end method

.method private static native nativeGetForProfile(Lorg/chromium/chrome/browser/profiles/Profile;)Ljava/lang/Object;
.end method

.method private static native nativeOAuth2TokenFetched(Ljava/lang/String;ZJ)V
.end method

.method private native nativeValidateAccounts(JLjava/lang/String;Z)V
.end method

.method private notifyRefreshTokenAvailable(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 315
    sget-boolean v0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 316
    :cond_0
    invoke-static {p1}, Lorg/chromium/sync/signin/AccountManagerHelper;->createAccountFromName(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    .line 317
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService$OAuth2TokenServiceObserver;

    .line 318
    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/signin/OAuth2TokenService$OAuth2TokenServiceObserver;->onRefreshTokenAvailable(Landroid/accounts/Account;)V

    goto :goto_0

    .line 320
    :cond_1
    return-void
.end method

.method private static saveStoredAccounts(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 369
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 370
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "google.services.stored_accounts"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 372
    return-void
.end method

.method private validateAccountsWithSignedInAccountName(Landroid/content/Context;Z)V
    .locals 4

    .prologue
    .line 276
    invoke-static {p1}, Lorg/chromium/sync/signin/ChromeSigninController;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->getSignedInAccountName()Ljava/lang/String;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->isSignedInAccountChanged(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    const/4 v0, 0x0

    .line 288
    :cond_0
    iget-wide v2, p0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->mNativeOAuth2TokenServiceDelegateAndroid:J

    invoke-direct {p0, v2, v3, v0, p2}, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->nativeValidateAccounts(JLjava/lang/String;Z)V

    .line 290
    return-void
.end method


# virtual methods
.method public final addObserver(Lorg/chromium/chrome/browser/signin/OAuth2TokenService$OAuth2TokenServiceObserver;)V
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 79
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method public final fireRefreshTokenAvailable(Landroid/accounts/Account;)V
    .locals 3

    .prologue
    .line 307
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 308
    sget-boolean v0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 309
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->mNativeOAuth2TokenServiceDelegateAndroid:J

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->nativeFireRefreshTokenAvailableFromJava(JLjava/lang/String;)V

    .line 311
    return-void
.end method

.method public final fireRefreshTokenRevoked(Landroid/accounts/Account;)V
    .locals 3

    .prologue
    .line 328
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 329
    sget-boolean v0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 330
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->mNativeOAuth2TokenServiceDelegateAndroid:J

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->nativeFireRefreshTokenRevokedFromJava(JLjava/lang/String;)V

    .line 332
    return-void
.end method

.method public final fireRefreshTokensLoaded()V
    .locals 2

    .prologue
    .line 349
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 350
    iget-wide v0, p0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->mNativeOAuth2TokenServiceDelegateAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->nativeFireRefreshTokensLoadedFromJava(J)V

    .line 351
    return-void
.end method

.method public final notifyRefreshTokenRevoked(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 336
    sget-boolean v0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 337
    :cond_0
    invoke-static {p1}, Lorg/chromium/sync/signin/AccountManagerHelper;->createAccountFromName(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    .line 338
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService$OAuth2TokenServiceObserver;

    .line 339
    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/signin/OAuth2TokenService$OAuth2TokenServiceObserver;->onRefreshTokenRevoked(Landroid/accounts/Account;)V

    goto :goto_0

    .line 341
    :cond_1
    return-void
.end method

.method public final notifyRefreshTokensLoaded()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService$OAuth2TokenServiceObserver;

    .line 356
    invoke-interface {v0}, Lorg/chromium/chrome/browser/signin/OAuth2TokenService$OAuth2TokenServiceObserver;->onRefreshTokensLoaded()V

    goto :goto_0

    .line 358
    :cond_0
    return-void
.end method

.method public final onSystemAccountsChanged()V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->mPendingValidationContext:Landroid/content/Context;

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->mPendingValidationForceNotifications:Z

    .line 260
    return-void
.end method

.method public final onSystemAccountsSeedingComplete()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->mPendingValidationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->mPendingValidationContext:Landroid/content/Context;

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->mPendingValidationForceNotifications:Z

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->validateAccountsWithSignedInAccountName(Landroid/content/Context;Z)V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->mPendingValidationContext:Landroid/content/Context;

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->mPendingValidationForceNotifications:Z

    .line 250
    :cond_0
    return-void
.end method

.method public final removeObserver(Lorg/chromium/chrome/browser/signin/OAuth2TokenService$OAuth2TokenServiceObserver;)V
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 85
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public final validateAccounts(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 264
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 265
    invoke-static {p1}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/AccountTrackerService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/AccountTrackerService;->checkAndSeedSystemAccounts()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->mPendingValidationContext:Landroid/content/Context;

    .line 267
    iput-boolean p2, p0, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->mPendingValidationForceNotifications:Z

    .line 272
    :goto_0
    return-void

    .line 271
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->validateAccountsWithSignedInAccountName(Landroid/content/Context;Z)V

    goto :goto_0
.end method
