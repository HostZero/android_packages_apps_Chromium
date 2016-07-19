.class public Lorg/chromium/sync/signin/AccountManagerHelper;
.super Ljava/lang/Object;
.source "AccountManagerHelper.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final AT_SYMBOL:Ljava/util/regex/Pattern;

.field public static final FEATURE_IS_CHILD_ACCOUNT_KEY:Ljava/lang/String; = "service_uca"

.field public static final GOOGLE_ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field private static sAccountManagerHelper:Lorg/chromium/sync/signin/AccountManagerHelper;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mAccountManager:Lorg/chromium/sync/signin/AccountManagerDelegate;

.field private mApplicationContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/chromium/sync/signin/AccountManagerHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/sync/signin/AccountManagerHelper;->$assertionsDisabled:Z

    .line 37
    const-string/jumbo v0, "@"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/chromium/sync/signin/AccountManagerHelper;->AT_SYMBOL:Ljava/util/regex/Pattern;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/sync/signin/AccountManagerHelper;->sLock:Ljava/lang/Object;

    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Lorg/chromium/sync/signin/AccountManagerDelegate;)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/sync/signin/AccountManagerHelper;->mApplicationContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lorg/chromium/sync/signin/AccountManagerHelper;->mAccountManager:Lorg/chromium/sync/signin/AccountManagerDelegate;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/sync/signin/AccountManagerHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/chromium/sync/signin/AccountManagerHelper;->canonicalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/sync/signin/AccountManagerHelper;)Lorg/chromium/sync/signin/AccountManagerDelegate;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/chromium/sync/signin/AccountManagerHelper;->mAccountManager:Lorg/chromium/sync/signin/AccountManagerDelegate;

    return-object v0
.end method

.method private canonicalizeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 211
    sget-object v0, Lorg/chromium/sync/signin/AccountManagerHelper;->AT_SYMBOL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 212
    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 220
    :goto_0
    return-object p1

    .line 214
    :cond_0
    const-string/jumbo v1, "googlemail.com"

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    const-string/jumbo v1, "gmail.com"

    aput-object v1, v0, v4

    .line 217
    :cond_1
    const-string/jumbo v1, "gmail.com"

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    aget-object v1, v0, v5

    const-string/jumbo v2, "."

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 220
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v0, v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static createAccountFromName(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Landroid/accounts/Account;

    const-string/jumbo v1, "com.google"

    invoke-direct {v0, p0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;
    .locals 3

    .prologue
    .line 112
    sget-object v1, Lorg/chromium/sync/signin/AccountManagerHelper;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_0
    sget-object v0, Lorg/chromium/sync/signin/AccountManagerHelper;->sAccountManagerHelper:Lorg/chromium/sync/signin/AccountManagerHelper;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lorg/chromium/sync/signin/AccountManagerHelper;

    new-instance v2, Lorg/chromium/sync/signin/SystemAccountManagerDelegate;

    invoke-direct {v2, p0}, Lorg/chromium/sync/signin/SystemAccountManagerDelegate;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p0, v2}, Lorg/chromium/sync/signin/AccountManagerHelper;-><init>(Landroid/content/Context;Lorg/chromium/sync/signin/AccountManagerDelegate;)V

    sput-object v0, Lorg/chromium/sync/signin/AccountManagerHelper;->sAccountManagerHelper:Lorg/chromium/sync/signin/AccountManagerHelper;

    .line 117
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    sget-object v0, Lorg/chromium/sync/signin/AccountManagerHelper;->sAccountManagerHelper:Lorg/chromium/sync/signin/AccountManagerHelper;

    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static initializeAccountManagerHelper(Landroid/content/Context;Lorg/chromium/sync/signin/AccountManagerDelegate;)V
    .locals 2

    .prologue
    .line 98
    sget-object v1, Lorg/chromium/sync/signin/AccountManagerHelper;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    :try_start_0
    sget-boolean v0, Lorg/chromium/sync/signin/AccountManagerHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/sync/signin/AccountManagerHelper;->sAccountManagerHelper:Lorg/chromium/sync/signin/AccountManagerHelper;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 100
    :cond_0
    :try_start_1
    new-instance v0, Lorg/chromium/sync/signin/AccountManagerHelper;

    invoke-direct {v0, p0, p1}, Lorg/chromium/sync/signin/AccountManagerHelper;-><init>(Landroid/content/Context;Lorg/chromium/sync/signin/AccountManagerDelegate;)V

    sput-object v0, Lorg/chromium/sync/signin/AccountManagerHelper;->sAccountManagerHelper:Lorg/chromium/sync/signin/AccountManagerHelper;

    .line 101
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static overrideAccountManagerHelperForTests(Landroid/content/Context;Lorg/chromium/sync/signin/AccountManagerDelegate;)V
    .locals 2

    .prologue
    .line 132
    sget-object v1, Lorg/chromium/sync/signin/AccountManagerHelper;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 133
    :try_start_0
    new-instance v0, Lorg/chromium/sync/signin/AccountManagerHelper;

    invoke-direct {v0, p0, p1}, Lorg/chromium/sync/signin/AccountManagerHelper;-><init>(Landroid/content/Context;Lorg/chromium/sync/signin/AccountManagerDelegate;)V

    sput-object v0, Lorg/chromium/sync/signin/AccountManagerHelper;->sAccountManagerHelper:Lorg/chromium/sync/signin/AccountManagerHelper;

    .line 134
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public checkChildAccount(Landroid/accounts/Account;Lorg/chromium/base/Callback;)V
    .locals 3

    .prologue
    .line 357
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "service_uca"

    aput-object v2, v0, v1

    .line 358
    iget-object v1, p0, Lorg/chromium/sync/signin/AccountManagerHelper;->mAccountManager:Lorg/chromium/sync/signin/AccountManagerDelegate;

    invoke-interface {v1, p1, v0, p2}, Lorg/chromium/sync/signin/AccountManagerDelegate;->hasFeatures(Landroid/accounts/Account;[Ljava/lang/String;Lorg/chromium/base/Callback;)V

    .line 359
    return-void
.end method

.method public getAccountFromName(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 6

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lorg/chromium/sync/signin/AccountManagerHelper;->canonicalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 230
    invoke-virtual {p0}, Lorg/chromium/sync/signin/AccountManagerHelper;->getGoogleAccounts()[Landroid/accounts/Account;

    move-result-object v3

    .line 231
    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 232
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v5}, Lorg/chromium/sync/signin/AccountManagerHelper;->canonicalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 236
    :goto_1
    return-object v0

    .line 231
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 236
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getAccountFromName(Ljava/lang/String;Lorg/chromium/base/Callback;)V
    .locals 2

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lorg/chromium/sync/signin/AccountManagerHelper;->canonicalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    new-instance v1, Lorg/chromium/sync/signin/AccountManagerHelper$3;

    invoke-direct {v1, p0, v0, p2}, Lorg/chromium/sync/signin/AccountManagerHelper$3;-><init>(Lorg/chromium/sync/signin/AccountManagerHelper;Ljava/lang/String;Lorg/chromium/base/Callback;)V

    invoke-virtual {p0, v1}, Lorg/chromium/sync/signin/AccountManagerHelper;->getGoogleAccounts(Lorg/chromium/base/Callback;)V

    .line 257
    return-void
.end method

.method public getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;)V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lorg/chromium/sync/signin/AccountManagerHelper;->mApplicationContext:Landroid/content/Context;

    new-instance v1, Lorg/chromium/sync/signin/AccountManagerHelper$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/chromium/sync/signin/AccountManagerHelper$5;-><init>(Lorg/chromium/sync/signin/AccountManagerHelper;Landroid/accounts/Account;Ljava/lang/String;Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;)V

    invoke-static {v0, v1}, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->runAuthTask(Landroid/content/Context;Lorg/chromium/sync/signin/AccountManagerHelper$AuthTask;)V

    .line 316
    return-void
.end method

.method public getGoogleAccountNames()Ljava/util/List;
    .locals 5

    .prologue
    .line 150
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    invoke-virtual {p0}, Lorg/chromium/sync/signin/AccountManagerHelper;->getGoogleAccounts()[Landroid/accounts/Account;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 152
    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_0
    return-object v1
.end method

.method public getGoogleAccounts(Lorg/chromium/base/Callback;)V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lorg/chromium/sync/signin/AccountManagerHelper;->mAccountManager:Lorg/chromium/sync/signin/AccountManagerDelegate;

    const-string/jumbo v1, "com.google"

    invoke-interface {v0, v1, p1}, Lorg/chromium/sync/signin/AccountManagerDelegate;->getAccountsByType(Ljava/lang/String;Lorg/chromium/base/Callback;)V

    .line 187
    return-void
.end method

.method public getGoogleAccounts()[Landroid/accounts/Account;
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lorg/chromium/sync/signin/AccountManagerHelper;->mAccountManager:Lorg/chromium/sync/signin/AccountManagerDelegate;

    const-string/jumbo v1, "com.google"

    invoke-interface {v0, v1}, Lorg/chromium/sync/signin/AccountManagerDelegate;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getNewAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;)V
    .locals 0

    .prologue
    .line 330
    invoke-virtual {p0, p2}, Lorg/chromium/sync/signin/AccountManagerHelper;->invalidateAuthToken(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0, p1, p3, p4}, Lorg/chromium/sync/signin/AccountManagerHelper;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;)V

    .line 332
    return-void
.end method

.method public hasAccountForName(Ljava/lang/String;Lorg/chromium/base/Callback;)V
    .locals 1

    .prologue
    .line 274
    new-instance v0, Lorg/chromium/sync/signin/AccountManagerHelper$4;

    invoke-direct {v0, p0, p2}, Lorg/chromium/sync/signin/AccountManagerHelper$4;-><init>(Lorg/chromium/sync/signin/AccountManagerHelper;Lorg/chromium/base/Callback;)V

    invoke-virtual {p0, p1, v0}, Lorg/chromium/sync/signin/AccountManagerHelper;->getAccountFromName(Ljava/lang/String;Lorg/chromium/base/Callback;)V

    .line 280
    return-void
.end method

.method public hasAccountForName(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0, p1}, Lorg/chromium/sync/signin/AccountManagerHelper;->getAccountFromName(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGetAccountsPermission()Z
    .locals 4

    .prologue
    .line 319
    iget-object v0, p0, Lorg/chromium/sync/signin/AccountManagerHelper;->mApplicationContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.GET_ACCOUNTS"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGoogleAccountAuthenticator()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 286
    iget-object v1, p0, Lorg/chromium/sync/signin/AccountManagerHelper;->mAccountManager:Lorg/chromium/sync/signin/AccountManagerDelegate;

    invoke-interface {v1}, Lorg/chromium/sync/signin/AccountManagerDelegate;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    .line 287
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 288
    const-string/jumbo v5, "com.google"

    iget-object v4, v4, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    .line 290
    :cond_0
    return v0

    .line 287
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public hasGoogleAccounts()Z
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Lorg/chromium/sync/signin/AccountManagerHelper;->getGoogleAccounts()[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateAuthToken(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 338
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v0, p0, Lorg/chromium/sync/signin/AccountManagerHelper;->mApplicationContext:Landroid/content/Context;

    new-instance v1, Lorg/chromium/sync/signin/AccountManagerHelper$6;

    invoke-direct {v1, p0, p1}, Lorg/chromium/sync/signin/AccountManagerHelper$6;-><init>(Lorg/chromium/sync/signin/AccountManagerHelper;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->runAuthTask(Landroid/content/Context;Lorg/chromium/sync/signin/AccountManagerHelper$AuthTask;)V

    goto :goto_0
.end method
