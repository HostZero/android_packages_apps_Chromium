.class final Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$3;
.super Ljava/lang/Object;
.source "AccountsChangedReceiver.java"

# interfaces
.implements Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$3;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public final onSuccess(Z)V
    .locals 4

    .prologue
    .line 136
    # getter for: Lorg/chromium/chrome/browser/services/AccountsChangedReceiver;->sObservers:Lorg/chromium/base/ObserverList;
    invoke-static {}, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver;->access$100()Lorg/chromium/base/ObserverList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$AccountsChangedObserver;

    .line 137
    iget-object v2, p0, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$3;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$3;->val$intent:Landroid/content/Intent;

    invoke-interface {v0, v2, v3}, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$AccountsChangedObserver;->onAccountsChanged(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method
