.class final Lorg/chromium/chrome/browser/childaccounts/ChildAccountService$1;
.super Ljava/lang/Object;
.source "ChildAccountService.java"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field final synthetic val$callback:Lorg/chromium/base/Callback;

.field final synthetic val$helper:Lorg/chromium/sync/signin/AccountManagerHelper;


# direct methods
.method constructor <init>(Lorg/chromium/base/Callback;Lorg/chromium/sync/signin/AccountManagerHelper;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lorg/chromium/chrome/browser/childaccounts/ChildAccountService$1;->val$callback:Lorg/chromium/base/Callback;

    iput-object p2, p0, Lorg/chromium/chrome/browser/childaccounts/ChildAccountService$1;->val$helper:Lorg/chromium/sync/signin/AccountManagerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    check-cast p1, [Landroid/accounts/Account;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/childaccounts/ChildAccountService$1;->onResult([Landroid/accounts/Account;)V

    return-void
.end method

.method public final onResult([Landroid/accounts/Account;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lorg/chromium/chrome/browser/childaccounts/ChildAccountService$1;->val$callback:Lorg/chromium/base/Callback;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/childaccounts/ChildAccountService$1;->val$helper:Lorg/chromium/sync/signin/AccountManagerHelper;

    aget-object v1, p1, v2

    iget-object v2, p0, Lorg/chromium/chrome/browser/childaccounts/ChildAccountService$1;->val$callback:Lorg/chromium/base/Callback;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/sync/signin/AccountManagerHelper;->checkChildAccount(Landroid/accounts/Account;Lorg/chromium/base/Callback;)V

    goto :goto_0
.end method
