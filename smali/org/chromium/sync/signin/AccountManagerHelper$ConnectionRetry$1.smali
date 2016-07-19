.class Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry$1;
.super Landroid/os/AsyncTask;
.source "AccountManagerHelper.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;


# direct methods
.method constructor <init>(Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry$1;->this$0:Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 400
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 404
    :try_start_0
    iget-object v0, p0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry$1;->this$0:Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;

    # getter for: Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->mAuthTask:Lorg/chromium/sync/signin/AccountManagerHelper$AuthTask;
    invoke-static {v0}, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->access$200(Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;)Lorg/chromium/sync/signin/AccountManagerHelper$AuthTask;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/sync/signin/AccountManagerHelper$AuthTask;->run()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/chromium/sync/signin/AuthException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 418
    :goto_0
    return-object v0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    const-string/jumbo v1, "Sync_Signin"

    const-string/jumbo v2, "Failed to perform auth task"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    iget-object v1, p0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry$1;->this$0:Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;

    # getter for: Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->mIsTransientError:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->access$300(Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v0}, Lorg/chromium/sync/signin/AuthException;->isTransientError()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 412
    invoke-virtual {v0}, Lorg/chromium/sync/signin/AuthException;->getRecoveryIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 413
    invoke-virtual {v0}, Lorg/chromium/sync/signin/AuthException;->getRecoveryIntent()Landroid/content/Intent;

    move-result-object v0

    .line 414
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 415
    iget-object v1, p0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry$1;->this$0:Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;

    # getter for: Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->access$400(Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 418
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 422
    if-eqz p1, :cond_0

    .line 423
    iget-object v0, p0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry$1;->this$0:Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;

    # getter for: Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->mAuthTask:Lorg/chromium/sync/signin/AccountManagerHelper$AuthTask;
    invoke-static {v0}, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->access$200(Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;)Lorg/chromium/sync/signin/AccountManagerHelper$AuthTask;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/chromium/sync/signin/AccountManagerHelper$AuthTask;->onSuccess(Ljava/lang/Object;)V

    .line 434
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry$1;->this$0:Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;

    # getter for: Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->mIsTransientError:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->access$300(Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry$1;->this$0:Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;

    # getter for: Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->mNumTries:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->access$500(Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 429
    :cond_1
    iget-object v0, p0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry$1;->this$0:Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;

    # getter for: Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->mAuthTask:Lorg/chromium/sync/signin/AccountManagerHelper$AuthTask;
    invoke-static {v0}, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->access$200(Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;)Lorg/chromium/sync/signin/AccountManagerHelper$AuthTask;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry$1;->this$0:Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;

    # getter for: Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->mIsTransientError:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;->access$300(Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/chromium/sync/signin/AccountManagerHelper$AuthTask;->onFailure(Z)V

    goto :goto_0

    .line 432
    :cond_2
    iget-object v0, p0, Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry$1;->this$0:Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;

    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifier;->addConnectionTypeObserver(Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;)V

    goto :goto_0
.end method
