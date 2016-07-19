.class Lorg/chromium/chrome/browser/signin/AccountTrackerService$1;
.super Ljava/lang/Object;
.source "AccountTrackerService.java"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/signin/AccountTrackerService;

.field final synthetic val$accountIdProvider:Lorg/chromium/chrome/browser/signin/AccountIdProvider;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/signin/AccountTrackerService;Lorg/chromium/chrome/browser/signin/AccountIdProvider;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$1;->this$0:Lorg/chromium/chrome/browser/signin/AccountTrackerService;

    iput-object p2, p0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$1;->val$accountIdProvider:Lorg/chromium/chrome/browser/signin/AccountIdProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 116
    check-cast p1, [Landroid/accounts/Account;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/signin/AccountTrackerService$1;->onResult([Landroid/accounts/Account;)V

    return-void
.end method

.method public onResult([Landroid/accounts/Account;)V
    .locals 3

    .prologue
    .line 119
    new-instance v0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$1$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/signin/AccountTrackerService$1$1;-><init>(Lorg/chromium/chrome/browser/signin/AccountTrackerService$1;[Landroid/accounts/Account;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/signin/AccountTrackerService$1$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 148
    return-void
.end method
