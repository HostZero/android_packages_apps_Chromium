.class Lorg/chromium/sync/signin/AccountManagerHelper$2;
.super Ljava/lang/Object;
.source "AccountManagerHelper.java"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field final synthetic val$callback:Lorg/chromium/base/Callback;


# virtual methods
.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 202
    check-cast p1, [Landroid/accounts/Account;

    invoke-virtual {p0, p1}, Lorg/chromium/sync/signin/AccountManagerHelper$2;->onResult([Landroid/accounts/Account;)V

    return-void
.end method

.method public onResult([Landroid/accounts/Account;)V
    .locals 2

    .prologue
    .line 205
    iget-object v1, p0, Lorg/chromium/sync/signin/AccountManagerHelper$2;->val$callback:Lorg/chromium/base/Callback;

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 206
    return-void

    .line 205
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
