.class Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$1;
.super Landroid/os/AsyncTask;
.source "AccountsChangedReceiver.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/services/AccountsChangedReceiver;

.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/services/AccountsChangedReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$1;->this$0:Lorg/chromium/chrome/browser/services/AccountsChangedReceiver;

    iput-object p2, p0, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$1;->val$appContext:Landroid/content/Context;

    iput-object p3, p0, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$1;->val$appContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninHelper;->updateAccountRenameData(Landroid/content/Context;)V

    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 72
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$1;->this$0:Lorg/chromium/chrome/browser/services/AccountsChangedReceiver;

    iget-object v1, p0, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$1;->val$appContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver$1;->val$intent:Landroid/content/Intent;

    # invokes: Lorg/chromium/chrome/browser/services/AccountsChangedReceiver;->continueHandleAccountChangeIfNeeded(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver;->access$000(Lorg/chromium/chrome/browser/services/AccountsChangedReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 82
    return-void
.end method
