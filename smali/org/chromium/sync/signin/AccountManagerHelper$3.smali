.class Lorg/chromium/sync/signin/AccountManagerHelper$3;
.super Ljava/lang/Object;
.source "AccountManagerHelper.java"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field final synthetic this$0:Lorg/chromium/sync/signin/AccountManagerHelper;

.field final synthetic val$callback:Lorg/chromium/base/Callback;

.field final synthetic val$canonicalName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/sync/signin/AccountManagerHelper;Ljava/lang/String;Lorg/chromium/base/Callback;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lorg/chromium/sync/signin/AccountManagerHelper$3;->this$0:Lorg/chromium/sync/signin/AccountManagerHelper;

    iput-object p2, p0, Lorg/chromium/sync/signin/AccountManagerHelper$3;->val$canonicalName:Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/sync/signin/AccountManagerHelper$3;->val$callback:Lorg/chromium/base/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 244
    check-cast p1, [Landroid/accounts/Account;

    invoke-virtual {p0, p1}, Lorg/chromium/sync/signin/AccountManagerHelper$3;->onResult([Landroid/accounts/Account;)V

    return-void
.end method

.method public onResult([Landroid/accounts/Account;)V
    .locals 6

    .prologue
    .line 247
    const/4 v1, 0x0

    .line 248
    array-length v3, p1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    .line 249
    iget-object v4, p0, Lorg/chromium/sync/signin/AccountManagerHelper$3;->this$0:Lorg/chromium/sync/signin/AccountManagerHelper;

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    # invokes: Lorg/chromium/sync/signin/AccountManagerHelper;->canonicalizeName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5}, Lorg/chromium/sync/signin/AccountManagerHelper;->access$000(Lorg/chromium/sync/signin/AccountManagerHelper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/chromium/sync/signin/AccountManagerHelper$3;->val$canonicalName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 254
    :goto_1
    iget-object v1, p0, Lorg/chromium/sync/signin/AccountManagerHelper$3;->val$callback:Lorg/chromium/base/Callback;

    invoke-interface {v1, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 255
    return-void

    .line 248
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method
