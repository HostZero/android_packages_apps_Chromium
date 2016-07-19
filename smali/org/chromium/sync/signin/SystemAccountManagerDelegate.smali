.class public Lorg/chromium/sync/signin/SystemAccountManagerDelegate;
.super Ljava/lang/Object;
.source "SystemAccountManagerDelegate.java"

# interfaces
.implements Lorg/chromium/sync/signin/AccountManagerDelegate;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mApplicationContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/chromium/sync/signin/SystemAccountManagerDelegate;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/sync/signin/SystemAccountManagerDelegate;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/sync/signin/SystemAccountManagerDelegate;->mApplicationContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/sync/signin/SystemAccountManagerDelegate;->mAccountManager:Landroid/accounts/AccountManager;

    .line 47
    return-void
.end method

.method protected static recordElapsedTimeHistogram(Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 146
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 147
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, p2, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    goto :goto_0
.end method


# virtual methods
.method public getAccountsByType(Ljava/lang/String;Lorg/chromium/base/Callback;)V
    .locals 3

    .prologue
    .line 63
    new-instance v0, Lorg/chromium/sync/signin/SystemAccountManagerDelegate$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/sync/signin/SystemAccountManagerDelegate$1;-><init>(Lorg/chromium/sync/signin/SystemAccountManagerDelegate;Ljava/lang/String;Lorg/chromium/base/Callback;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/sync/signin/SystemAccountManagerDelegate$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 74
    return-void
.end method

.method public getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 6

    .prologue
    .line 51
    iget-object v0, p0, Lorg/chromium/sync/signin/SystemAccountManagerDelegate;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/sync/signin/AccountManagerHelper;->hasGetAccountsPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/accounts/Account;

    .line 58
    :goto_0
    return-object v0

    .line 54
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 55
    iget-object v0, p0, Lorg/chromium/sync/signin/SystemAccountManagerDelegate;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 57
    const-string/jumbo v1, "Signin.AndroidGetAccountsTime_AccountManager"

    invoke-static {v1, v2, v3}, Lorg/chromium/sync/signin/SystemAccountManagerDelegate;->recordElapsedTimeHistogram(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public getAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 78
    sget-boolean v0, Lorg/chromium/sync/signin/SystemAccountManagerDelegate;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 79
    :cond_0
    sget-boolean v0, Lorg/chromium/sync/signin/SystemAccountManagerDelegate;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.google"

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 81
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/chromium/sync/signin/SystemAccountManagerDelegate;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/auth/b;->a(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/gms/auth/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/auth/a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    new-instance v1, Lorg/chromium/sync/signin/AuthException;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/d;->a()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v3, v2, v0}, Lorg/chromium/sync/signin/AuthException;-><init>(ZLandroid/content/Intent;Ljava/lang/Exception;)V

    throw v1

    .line 84
    :catch_1
    move-exception v0

    .line 85
    new-instance v1, Lorg/chromium/sync/signin/AuthException;

    invoke-direct {v1, v3, v4, v0}, Lorg/chromium/sync/signin/AuthException;-><init>(ZLandroid/content/Intent;Ljava/lang/Exception;)V

    throw v1

    .line 86
    :catch_2
    move-exception v0

    .line 87
    new-instance v1, Lorg/chromium/sync/signin/AuthException;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v4, v0}, Lorg/chromium/sync/signin/AuthException;-><init>(ZLandroid/content/Intent;Ljava/lang/Exception;)V

    throw v1
.end method

.method public getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/chromium/sync/signin/SystemAccountManagerDelegate;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    return-object v0
.end method

.method public hasFeatures(Landroid/accounts/Account;[Ljava/lang/String;Lorg/chromium/base/Callback;)V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lorg/chromium/sync/signin/SystemAccountManagerDelegate;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/sync/signin/AccountManagerHelper;->hasGetAccountsPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lorg/chromium/sync/signin/SystemAccountManagerDelegate$2;

    invoke-direct {v0, p0, p3}, Lorg/chromium/sync/signin/SystemAccountManagerDelegate$2;-><init>(Lorg/chromium/sync/signin/SystemAccountManagerDelegate;Lorg/chromium/base/Callback;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 135
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/chromium/sync/signin/SystemAccountManagerDelegate;->mAccountManager:Landroid/accounts/AccountManager;

    new-instance v1, Lorg/chromium/sync/signin/SystemAccountManagerDelegate$3;

    invoke-direct {v1, p0, p3}, Lorg/chromium/sync/signin/SystemAccountManagerDelegate$3;-><init>(Lorg/chromium/sync/signin/SystemAccountManagerDelegate;Lorg/chromium/base/Callback;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/accounts/AccountManager;->hasFeatures(Landroid/accounts/Account;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0
.end method

.method public invalidateAuthToken(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 94
    :try_start_0
    iget-object v0, p0, Lorg/chromium/sync/signin/SystemAccountManagerDelegate;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gms/auth/b;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/auth/c; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/auth/a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 101
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    new-instance v1, Lorg/chromium/sync/signin/AuthException;

    invoke-direct {v1, v2, v3, v0}, Lorg/chromium/sync/signin/AuthException;-><init>(ZLandroid/content/Intent;Ljava/lang/Exception;)V

    throw v1

    .line 97
    :catch_1
    move-exception v0

    .line 98
    new-instance v1, Lorg/chromium/sync/signin/AuthException;

    invoke-direct {v1, v2, v3, v0}, Lorg/chromium/sync/signin/AuthException;-><init>(ZLandroid/content/Intent;Ljava/lang/Exception;)V

    throw v1

    .line 99
    :catch_2
    move-exception v0

    .line 100
    new-instance v1, Lorg/chromium/sync/signin/AuthException;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3, v0}, Lorg/chromium/sync/signin/AuthException;-><init>(ZLandroid/content/Intent;Ljava/lang/Exception;)V

    throw v1
.end method
