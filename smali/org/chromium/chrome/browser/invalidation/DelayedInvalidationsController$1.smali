.class Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController$1;
.super Landroid/os/AsyncTask;
.source "DelayedInvalidationsController.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$bundles:Ljava/util/List;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController;Landroid/content/Context;Ljava/util/List;Landroid/accounts/Account;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController$1;->this$0:Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController;

    iput-object p2, p0, Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController$1;->val$bundles:Ljava/util/List;

    iput-object p4, p0, Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController$1;->val$account:Landroid/accounts/Account;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/sync/AndroidSyncSettings;->getContractAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 79
    iget-object v0, p0, Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController$1;->val$bundles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 80
    iget-object v3, p0, Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController$1;->val$account:Landroid/accounts/Account;

    invoke-static {v3, v1, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 82
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
