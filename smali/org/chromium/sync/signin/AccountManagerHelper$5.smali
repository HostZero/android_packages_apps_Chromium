.class Lorg/chromium/sync/signin/AccountManagerHelper$5;
.super Ljava/lang/Object;
.source "AccountManagerHelper.java"

# interfaces
.implements Lorg/chromium/sync/signin/AccountManagerHelper$AuthTask;


# instance fields
.field final synthetic this$0:Lorg/chromium/sync/signin/AccountManagerHelper;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$callback:Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;


# direct methods
.method constructor <init>(Lorg/chromium/sync/signin/AccountManagerHelper;Landroid/accounts/Account;Ljava/lang/String;Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lorg/chromium/sync/signin/AccountManagerHelper$5;->this$0:Lorg/chromium/sync/signin/AccountManagerHelper;

    iput-object p2, p0, Lorg/chromium/sync/signin/AccountManagerHelper$5;->val$account:Landroid/accounts/Account;

    iput-object p3, p0, Lorg/chromium/sync/signin/AccountManagerHelper$5;->val$authTokenType:Ljava/lang/String;

    iput-object p4, p0, Lorg/chromium/sync/signin/AccountManagerHelper$5;->val$callback:Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Z)V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lorg/chromium/sync/signin/AccountManagerHelper$5;->val$callback:Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;

    invoke-interface {v0, p1}, Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;->tokenUnavailable(Z)V

    .line 314
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 302
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/chromium/sync/signin/AccountManagerHelper$5;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lorg/chromium/sync/signin/AccountManagerHelper$5;->val$callback:Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;

    invoke-interface {v0, p1}, Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;->tokenAvailable(Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lorg/chromium/sync/signin/AccountManagerHelper$5;->run()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/String;
    .locals 3

    .prologue
    .line 305
    iget-object v0, p0, Lorg/chromium/sync/signin/AccountManagerHelper$5;->this$0:Lorg/chromium/sync/signin/AccountManagerHelper;

    # getter for: Lorg/chromium/sync/signin/AccountManagerHelper;->mAccountManager:Lorg/chromium/sync/signin/AccountManagerDelegate;
    invoke-static {v0}, Lorg/chromium/sync/signin/AccountManagerHelper;->access$100(Lorg/chromium/sync/signin/AccountManagerHelper;)Lorg/chromium/sync/signin/AccountManagerDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/sync/signin/AccountManagerHelper$5;->val$account:Landroid/accounts/Account;

    iget-object v2, p0, Lorg/chromium/sync/signin/AccountManagerHelper$5;->val$authTokenType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/chromium/sync/signin/AccountManagerDelegate;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
