.class Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;
.super Ljava/lang/Object;
.source "HttpNegotiateAuthenticator.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field private final mRequestData:Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;

.field final synthetic this$0:Lorg/chromium/net/HttpNegotiateAuthenticator;


# direct methods
.method public constructor <init>(Lorg/chromium/net/HttpNegotiateAuthenticator;Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->this$0:Lorg/chromium/net/HttpNegotiateAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p2, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->mRequestData:Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;

    .line 95
    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 8

    .prologue
    const/16 v7, -0x155

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 101
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    array-length v1, v0

    if-nez v1, :cond_0

    .line 109
    const-string/jumbo v0, "net_auth"

    const-string/jumbo v1, "ERR_MISSING_AUTH_CREDENTIALS: No account provided for the kerberos authentication. Please verify the configuration policies and that the CONTACTS runtime permission is granted. "

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->this$0:Lorg/chromium/net/HttpNegotiateAuthenticator;

    iget-object v1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->mRequestData:Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;

    iget-wide v2, v1, Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;->nativeResultObject:J

    invoke-virtual {v0, v2, v3, v7, v6}, Lorg/chromium/net/HttpNegotiateAuthenticator;->nativeSetResult(JILjava/lang/String;)V

    .line 143
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    :goto_1
    const-string/jumbo v1, "net_auth"

    const-string/jumbo v2, "ERR_UNEXPECTED: Error while attempting to retrieve accounts."

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->this$0:Lorg/chromium/net/HttpNegotiateAuthenticator;

    iget-object v1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->mRequestData:Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;

    iget-wide v2, v1, Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;->nativeResultObject:J

    const/16 v1, -0x9

    invoke-virtual {v0, v2, v3, v1, v6}, Lorg/chromium/net/HttpNegotiateAuthenticator;->nativeSetResult(JILjava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_0
    array-length v1, v0

    if-le v1, v4, :cond_1

    .line 118
    const-string/jumbo v1, "net_auth"

    const-string/jumbo v2, "ERR_MISSING_AUTH_CREDENTIALS: Found %d accounts eligible for the kerberos authentication. Please fix the configuration by providing a single account."

    new-array v3, v4, [Ljava/lang/Object;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->this$0:Lorg/chromium/net/HttpNegotiateAuthenticator;

    iget-object v1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->mRequestData:Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;

    iget-wide v2, v1, Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;->nativeResultObject:J

    invoke-virtual {v0, v2, v3, v7, v6}, Lorg/chromium/net/HttpNegotiateAuthenticator;->nativeSetResult(JILjava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_1
    iget-object v1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->this$0:Lorg/chromium/net/HttpNegotiateAuthenticator;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.USE_CREDENTIALS"

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/net/HttpNegotiateAuthenticator;->lacksPermission(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    const-string/jumbo v0, "net_auth"

    const-string/jumbo v1, "ERR_MISCONFIGURED_AUTH_ENVIRONMENT: USE_CREDENTIALS permission not granted. Aborting authentication."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->this$0:Lorg/chromium/net/HttpNegotiateAuthenticator;

    iget-object v1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->mRequestData:Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;

    iget-wide v2, v1, Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;->nativeResultObject:J

    const/16 v1, -0x157

    invoke-virtual {v0, v2, v3, v1, v6}, Lorg/chromium/net/HttpNegotiateAuthenticator;->nativeSetResult(JILjava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_2
    iget-object v1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->mRequestData:Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;

    aget-object v0, v0, v5

    iput-object v0, v1, Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;->account:Landroid/accounts/Account;

    .line 139
    iget-object v0, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->mRequestData:Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;

    iget-object v0, v0, Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;->accountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->mRequestData:Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;

    iget-object v1, v1, Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;->account:Landroid/accounts/Account;

    iget-object v2, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->mRequestData:Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;

    iget-object v2, v2, Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;->authTokenType:Ljava/lang/String;

    iget-object v3, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->mRequestData:Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;

    iget-object v3, v3, Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;->options:Landroid/os/Bundle;

    new-instance v5, Lorg/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;

    iget-object v6, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->this$0:Lorg/chromium/net/HttpNegotiateAuthenticator;

    iget-object v7, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;->mRequestData:Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;

    invoke-direct {v5, v6, v7}, Lorg/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;-><init>(Lorg/chromium/net/HttpNegotiateAuthenticator;Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;)V

    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->getUiThreadLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto/16 :goto_0

    .line 102
    :catch_1
    move-exception v0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_1
.end method
