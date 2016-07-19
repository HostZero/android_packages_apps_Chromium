.class Lorg/chromium/sync/signin/AccountManagerHelper$4;
.super Ljava/lang/Object;
.source "AccountManagerHelper.java"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field final synthetic this$0:Lorg/chromium/sync/signin/AccountManagerHelper;

.field final synthetic val$callback:Lorg/chromium/base/Callback;


# direct methods
.method constructor <init>(Lorg/chromium/sync/signin/AccountManagerHelper;Lorg/chromium/base/Callback;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lorg/chromium/sync/signin/AccountManagerHelper$4;->this$0:Lorg/chromium/sync/signin/AccountManagerHelper;

    iput-object p2, p0, Lorg/chromium/sync/signin/AccountManagerHelper$4;->val$callback:Lorg/chromium/base/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/accounts/Account;)V
    .locals 2

    .prologue
    .line 277
    iget-object v1, p0, Lorg/chromium/sync/signin/AccountManagerHelper$4;->val$callback:Lorg/chromium/base/Callback;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 278
    return-void

    .line 277
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 274
    check-cast p1, Landroid/accounts/Account;

    invoke-virtual {p0, p1}, Lorg/chromium/sync/signin/AccountManagerHelper$4;->onResult(Landroid/accounts/Account;)V

    return-void
.end method
