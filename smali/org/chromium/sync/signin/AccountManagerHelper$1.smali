.class Lorg/chromium/sync/signin/AccountManagerHelper$1;
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
    .line 161
    check-cast p1, [Landroid/accounts/Account;

    invoke-virtual {p0, p1}, Lorg/chromium/sync/signin/AccountManagerHelper$1;->onResult([Landroid/accounts/Account;)V

    return-void
.end method

.method public onResult([Landroid/accounts/Account;)V
    .locals 4

    .prologue
    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 166
    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lorg/chromium/sync/signin/AccountManagerHelper$1;->val$callback:Lorg/chromium/base/Callback;

    invoke-interface {v0, v1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 169
    return-void
.end method
