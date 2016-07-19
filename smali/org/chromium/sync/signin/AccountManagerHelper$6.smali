.class Lorg/chromium/sync/signin/AccountManagerHelper$6;
.super Ljava/lang/Object;
.source "AccountManagerHelper.java"

# interfaces
.implements Lorg/chromium/sync/signin/AccountManagerHelper$AuthTask;


# instance fields
.field final synthetic this$0:Lorg/chromium/sync/signin/AccountManagerHelper;

.field final synthetic val$authToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/sync/signin/AccountManagerHelper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lorg/chromium/sync/signin/AccountManagerHelper$6;->this$0:Lorg/chromium/sync/signin/AccountManagerHelper;

    iput-object p2, p0, Lorg/chromium/sync/signin/AccountManagerHelper$6;->val$authToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Z)V
    .locals 3

    .prologue
    .line 351
    const-string/jumbo v0, "Sync_Signin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Failed to invalidate auth token: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/chromium/sync/signin/AccountManagerHelper$6;->val$authToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    return-void
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 348
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 341
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/chromium/sync/signin/AccountManagerHelper$6;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method

.method public run()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lorg/chromium/sync/signin/AccountManagerHelper$6;->this$0:Lorg/chromium/sync/signin/AccountManagerHelper;

    # getter for: Lorg/chromium/sync/signin/AccountManagerHelper;->mAccountManager:Lorg/chromium/sync/signin/AccountManagerDelegate;
    invoke-static {v0}, Lorg/chromium/sync/signin/AccountManagerHelper;->access$100(Lorg/chromium/sync/signin/AccountManagerHelper;)Lorg/chromium/sync/signin/AccountManagerDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/sync/signin/AccountManagerHelper$6;->val$authToken:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/chromium/sync/signin/AccountManagerDelegate;->invalidateAuthToken(Ljava/lang/String;)V

    .line 345
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 341
    invoke-virtual {p0}, Lorg/chromium/sync/signin/AccountManagerHelper$6;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
