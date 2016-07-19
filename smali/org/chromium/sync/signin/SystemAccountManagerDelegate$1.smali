.class Lorg/chromium/sync/signin/SystemAccountManagerDelegate$1;
.super Landroid/os/AsyncTask;
.source "SystemAccountManagerDelegate.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/sync/signin/SystemAccountManagerDelegate;

.field final synthetic val$callback:Lorg/chromium/base/Callback;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/sync/signin/SystemAccountManagerDelegate;Ljava/lang/String;Lorg/chromium/base/Callback;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lorg/chromium/sync/signin/SystemAccountManagerDelegate$1;->this$0:Lorg/chromium/sync/signin/SystemAccountManagerDelegate;

    iput-object p2, p0, Lorg/chromium/sync/signin/SystemAccountManagerDelegate$1;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/sync/signin/SystemAccountManagerDelegate$1;->val$callback:Lorg/chromium/base/Callback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/sync/signin/SystemAccountManagerDelegate$1;->doInBackground([Ljava/lang/Void;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Landroid/accounts/Account;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lorg/chromium/sync/signin/SystemAccountManagerDelegate$1;->this$0:Lorg/chromium/sync/signin/SystemAccountManagerDelegate;

    iget-object v1, p0, Lorg/chromium/sync/signin/SystemAccountManagerDelegate$1;->val$type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/chromium/sync/signin/SystemAccountManagerDelegate;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    check-cast p1, [Landroid/accounts/Account;

    invoke-virtual {p0, p1}, Lorg/chromium/sync/signin/SystemAccountManagerDelegate$1;->onPostExecute([Landroid/accounts/Account;)V

    return-void
.end method

.method protected onPostExecute([Landroid/accounts/Account;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/chromium/sync/signin/SystemAccountManagerDelegate$1;->val$callback:Lorg/chromium/base/Callback;

    invoke-interface {v0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 72
    return-void
.end method
