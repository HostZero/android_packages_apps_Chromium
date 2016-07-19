.class Lorg/chromium/chrome/browser/signin/SigninHelper$1;
.super Landroid/os/AsyncTask;
.source "SigninHelper.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/signin/SigninHelper;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/signin/SigninHelper;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/SigninHelper$1;->this$0:Lorg/chromium/chrome/browser/signin/SigninHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 185
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/signin/SigninHelper$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninHelper$1;->this$0:Lorg/chromium/chrome/browser/signin/SigninHelper;

    iget-object v0, v0, Lorg/chromium/chrome/browser/signin/SigninHelper;->mContext:Landroid/content/Context;

    new-instance v1, Lorg/chromium/chrome/browser/signin/SigninHelper$SystemAccountChangeEventChecker;

    invoke-direct {v1}, Lorg/chromium/chrome/browser/signin/SigninHelper$SystemAccountChangeEventChecker;-><init>()V

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/signin/SigninHelper;->updateAccountRenameData(Landroid/content/Context;Lorg/chromium/chrome/browser/signin/SigninHelper$AccountChangeEventChecker;)V

    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 185
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/signin/SigninHelper$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninHelper$1;->this$0:Lorg/chromium/chrome/browser/signin/SigninHelper;

    iget-object v0, v0, Lorg/chromium/chrome/browser/signin/SigninHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninHelper;->getNewSignedInAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 195
    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninHelper$1;->this$0:Lorg/chromium/chrome/browser/signin/SigninHelper;

    # getter for: Lorg/chromium/chrome/browser/signin/SigninHelper;->mSigninManager:Lorg/chromium/chrome/browser/signin/SigninManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninHelper;->access$000(Lorg/chromium/chrome/browser/signin/SigninHelper;)Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->signOut()V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninHelper$1;->this$0:Lorg/chromium/chrome/browser/signin/SigninHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/signin/SigninHelper;->validateAccountSettings(Z)V

    goto :goto_0
.end method
